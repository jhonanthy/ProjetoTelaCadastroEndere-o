unit uCadastroEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uLkJSON,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  uEnderecoEnum, uEnderecoController, uEndereco.Model, uDmEndereco, uDmConexao;

type
  TfrmCadastro = class(TForm)
    Panel1: TPanel;
    pgCadastroEndereco: TPageControl;
    tbFicha: TTabSheet;
    pnlTop: TPanel;
    Panel3: TPanel;
    Imprimir: TSpeedButton;
    Sb_Limpar: TSpeedButton;
    Sb_Excluir: TSpeedButton;
    SbGravar: TSpeedButton;
    SbAlterar: TSpeedButton;
    SbNovo: TSpeedButton;
    tbConsulta: TTabSheet;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    lbConsulta: TLabel;
    edtConsulta: TEdit;
    cbPesquisa: TComboBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    lbNome: TLabel;
    edtNome: TEdit;
    DataSource1: TDataSource;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    edtCodigo: TEdit;
    Label3: TLabel;
    MaskEdtCEP: TMaskEdit;
    sbConsultar: TSpeedButton;
    Label2: TLabel;
    edtLogradouro: TEdit;
    Label4: TLabel;
    edtbairro: TEdit;
    lbUF: TLabel;
    edtUF: TEdit;
    Label5: TLabel;
    edtLocalidade: TEdit;
    procedure sbConsultarClick(Sender: TObject);
    procedure SbNovoClick(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure cbPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SbAlterarClick(Sender: TObject);
    procedure SbGravarClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Sb_LimparClick(Sender: TObject);
    procedure Sb_ExcluirClick(Sender: TObject);
  private
    FTipoOperacao: TTipoOperacao;
    procedure SetTipoOperacao(const Value: TTipoOperacao);
    procedure CarregarPessoa;
    procedure Inserir;
    procedure Alterar;
    procedure Excluir;
    procedure Gravar;
    procedure HabilitaControles(Value:TTipoOperacao);
    procedure LimpaControles;
  public
    property TipoOperacao: TTipoOperacao  read FTipoOperacao write SetTipoOperacao;
  end;

var
  frmCadastro: TfrmCadastro;

implementation
{$R *.dfm}

procedure TfrmCadastro.Alterar;
var
 Endereco:          TEndereco;
 EnderecoControler: TEnderecoController;
 sErro: string;
begin
  Endereco  := TEndereco.Create;
  EnderecoControler :=  TEnderecoController.Create;
  try
    Endereco.CodigoEndereco := strtointdef(edtCodigo.Text,0);
    Endereco.CEP          := trim(MaskEdtCEP.Text);
    Endereco.Logradouro   := trim(edtLogradouro.Text);
    Endereco.Localidade   := trim(edtLocalidade.Text);
    Endereco.Bairro       := trim(edtbairro.Text);
    Endereco.UF           := trim(edtUF.Text);
    if EnderecoControler.Alterar(Endereco, sErro) = false then
       raise Exception.Create(sErro);
  finally
    FreeAndNil(Endereco);
    FreeAndNil(EnderecoControler);
  end;

end;

procedure TfrmCadastro.CarregarPessoa;
var
 Endereco:          TEndereco;
 EnderecoControler: TEnderecoController;

begin
  Endereco  := TEndereco.Create;
  EnderecoControler :=  TEnderecoController.Create;
  try
   EnderecoControler.CarregaControles(Endereco,strtoint(edtCodigo.Text));
   edtCodigo.Text       := inttostr(Endereco.CodigoEndereco);
   MaskEdtCEP.Text      := Endereco.CEP;
   edtLogradouro.Text   := Endereco.Logradouro;
   edtLocalidade.Text   := Endereco.Localidade;
   edtbairro.Text       := Endereco.Bairro;
   edtUF.Text           := Endereco.UF;
  finally
   FreeAndNil(Endereco);
   FreeAndNil(EnderecoControler);
   pgCadastroEndereco.ActivePage:=tbFicha;
  end;
end;

procedure TfrmCadastro.cbPesquisaChange(Sender: TObject);
var
Text:string;
begin
Text:=trim(edtConsulta.text);
  if cbPesquisa.ItemIndex = 2 then
  begin
    edtConsulta.Text:=' ';
    edtConsulta.Enabled:=false;
  end
  else
  begin
   edtConsulta.Enabled:=true;

  end;

   if not Text.isEmpty then
    edtConsulta.Clear;

  if edtConsulta.CanFocus then
    edtConsulta.SetFocus;
end;

procedure TfrmCadastro.DBGrid1DblClick(Sender: TObject);
var
  Endereco:          TEndereco;
  EnderecoControler: TEnderecoController;
begin
   EnderecoControler  := TEnderecoController.Create;
   Endereco           := TEndereco.Create;
   try
      EnderecoControler.CarregaControles(Endereco,DMEndereco.FDQueryConsulta.FieldByName('END_CODIGO').AsInteger);
      edtCodigo.Text       := inttostr(Endereco.CodigoEndereco);
      MaskEdtCEP.Text      := Endereco.CEP;
      edtLogradouro.Text   := Endereco.Logradouro;
      edtLocalidade.Text   := Endereco.Localidade;
      edtbairro.Text       := Endereco.Bairro;
      edtUF.Text           := Endereco.UF;
   finally
     FreeAndNil(EnderecoControler);
     FreeAndNil(Endereco);
     pgCadastroEndereco.ActivePage:=tbFicha;
   end;
end;

procedure TfrmCadastro.edtConsultaChange(Sender: TObject);
var
  EnderecoControler: TEnderecoController;
begin
   EnderecoControler  := TEnderecoController.Create;
   try
     EnderecoControler.ConsultaEndereco(edtConsulta.Text,cbPesquisa.ItemIndex);
   finally
     FreeAndNil(EnderecoControler);
   end;
end;

procedure TfrmCadastro.Excluir;
var
  codigoEndereco: integer;
  EnderecoControler: TEnderecoController;
  sErro: string;
  confExcl:integer;
begin
  codigoEndereco:= strtoint(edtCodigo.Text);
  EnderecoControler  := TEnderecoController.Create;
  beep;
  confExcl:= Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YesNo+mb_DefButton2+mb_IconQuestion);
  if confExcl = IDYes then
  begin
    try
      EnderecoControler.Excluir(codigoEndereco,sErro);
      DMConexao.FDTransaction1.CommitRetaining;
       HabilitaControles(toselect);
       LimpaControles;
    except
      Application.MessageBox('Não foi Possivel Deletar o registro!','ERRO',MB_OK+MB_ICONEXCLAMATION);
      exit;
    end;
    Application.MessageBox('Registro Excluido com Sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
  end
  else if confExcl = IDNO then
  begin
  //FDTransaction1.RollbackRetaining;
   Application.MessageBox('A Exclusão do registro foi abortada!','Informação',MB_OK+MB_ICONINFORMATION);
   exit;
  end;

end;

procedure TfrmCadastro.FormCreate(Sender: TObject);

begin
  DMConexao.FDTransaction1.StartTransaction;
  HabilitaControles(toselect);
end;

procedure TfrmCadastro.Gravar;
var
 EnderecoControler: TEnderecoController;
begin
  EnderecoControler  := TEnderecoController.Create;
  try
    case TipoOperacao of
      toInsert: Inserir;
      toUpdate: Alterar;
    end;
   DMConexao.FDTransaction1.CommitRetaining;
  finally
   FreeAndNil(EnderecoControler);
  end;
end;

procedure TfrmCadastro.HabilitaControles(Value: TTipoOperacao);
begin

case  TipoOperacao of

  toInsert,toUpdate :
     begin
       SbAlterar.Enabled      :=  false;
       Sb_Excluir.Enabled     :=  false;
       SbNovo.Enabled         :=  false;
       SbGravar.Enabled       :=  true;
       MaskEdtCEP.Enabled     :=  true;
       edtLogradouro.Enabled  :=  true;
       edtLocalidade.Enabled  :=  true;
       edtbairro.Enabled      :=  true;
       edtUF.Enabled          :=  true;


     end
  else
     begin

      Sb_Excluir.Enabled:=true;
      SbAlterar.Enabled:=true;
      SbNovo.Enabled:=true;
      SbGravar.Enabled:=false;
      MaskEdtCEP.Enabled     :=  true;
      edtLogradouro.Enabled  :=  true;
      edtLocalidade.Enabled  :=  true;
      edtbairro.Enabled      :=  true;
      edtUF.Enabled          :=  true;
     end;
  end;
end;

procedure TfrmCadastro.Inserir;
var
 Endereco:          TEndereco;
 EnderecoControler: TEnderecoController;
 sErro: string;
begin
  Endereco  := TEndereco.Create;
  EnderecoControler  := TEnderecoController.Create;
  try
   Endereco.CodigoEndereco := strtoint(edtCodigo.text);
   Endereco.CEP         := Trim(MaskEdtCEP.Text);
   Endereco.Logradouro  := Trim(edtLogradouro.Text);
   Endereco.Localidade  := Trim(edtLocalidade.Text);
   Endereco.Bairro      := Trim(edtbairro.Text);
   Endereco.UF          := Trim(edtUF.Text);
   if EnderecoControler.Inserir(Endereco, sErro) = false then
      raise Exception.Create(sErro);
  finally
    application.MessageBox('Pessoa cadastrada com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);

  end;
end;

procedure TfrmCadastro.LimpaControles;
begin
   MaskEdtCEP.Clear;
   edtLogradouro.Clear;
   edtLocalidade.Clear;
   edtbairro.Clear;
   edtUF.clear;
end;

procedure TfrmCadastro.SbAlterarClick(Sender: TObject);
begin
 FTipoOperacao := toUpdate;
 HabilitaControles(toUpdate);
end;

procedure TfrmCadastro.SbCancelarClick(Sender: TObject);
begin
HabilitaControles(toSelect);
end;

procedure TfrmCadastro.sbConsultarClick(Sender: TObject);
var
  http:              TIdHTTP;
  js:                TlkJSONobject;
begin
  try
  RESTClient1.BaseURL:= 'viacep.com.br/ws/'+trim(MaskEdtCEP.Text)+'/json/';
  RESTRequest1.Execute;
  js    := TlkJSON.ParseText(RESTRequest1.Response.JSONText) as TlkJSONobject;

  edtLogradouro.Text := js.Field['logradouro'].Value;
  edtbairro.Text     := js.Field['bairro'].Value;
  edtUF.Text         := js.Field['uf'].Value;
  except
    Application.MessageBox('Não foi Possivel Consultar o CEP!','ERRO',MB_OK+MB_ICONEXCLAMATION);
      exit;
  end;


end;

procedure TfrmCadastro.SbGravarClick(Sender: TObject);
begin
  Gravar;
  FTipoOperacao := toSelect;
  HabilitaControles(toSelect);
end;

procedure TfrmCadastro.SbNovoClick(Sender: TObject);
var
  EnderecoControler: TEnderecoController;
begin
  LimpaControles;
  EnderecoControler  := TEnderecoController.Create;
  FTipoOperacao := toInsert;
  HabilitaControles(toInsert);

   edtCodigo.Text := EnderecoControler.TestandoDuplicacao('PES_CODIGO', 'PESSOA');
end;

procedure TfrmCadastro.Sb_ExcluirClick(Sender: TObject);
begin
Excluir;
HabilitaControles(toselect);
LimpaControles;
end;

procedure TfrmCadastro.Sb_LimparClick(Sender: TObject);
begin
LimpaControles;
end;

procedure TfrmCadastro.SetTipoOperacao(const Value: TTipoOperacao);
begin
  FTipoOperacao := Value;
end;

end.
