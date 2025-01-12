unit uCadastroEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uLkJSON,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  uEnderecoEnum, uEnderecoController, uEndereco.Model, uDmEndereco, uDmConexao, uViaCEP.API;

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
    GbTipoConsulta: TGroupBox;
    RbConsultaviaXML: TRadioButton;
    RbConsultaviaJson: TRadioButton;
    Memo1: TMemo;
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
    procedure RbConsultaviaJsonClick(Sender: TObject);
    procedure RbConsultaviaXMLClick(Sender: TObject);
  private
    FTipoOperacao: TTipoOperacao;
    FTipoRetornoApi: TTipoRetornoApi;
    FTipoConsulta: TTipoConsulta;
    procedure SetTipoOperacao(const Value: TTipoOperacao);
    procedure CarregarEndereco(CodigoEndereco: string);
    procedure Inserir;
    procedure Alterar;
    procedure Excluir;
    procedure Gravar;
    procedure HabilitaControles(Value:TTipoOperacao);
    procedure LimpaControles;
    procedure SetTipoRetornoApi(const Value: TTipoRetornoApi);
    procedure SetTipoConsulta(const Value: TTipoConsulta);
  public
    property TipoOperacao: TTipoOperacao  read FTipoOperacao write SetTipoOperacao;
    property TipoRetornoApi: TTipoRetornoApi read FTipoRetornoApi write SetTipoRetornoApi;
    property TipoConsulta: TTipoConsulta read FTipoConsulta write SetTipoConsulta;
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

procedure TfrmCadastro.CarregarEndereco(CodigoEndereco:string);
var
 Endereco:          TEndereco;
 EnderecoControler: TEnderecoController;

begin
  Endereco  := TEndereco.Create;
  EnderecoControler :=  TEnderecoController.Create;
  try
   EnderecoControler.CarregaControles(Endereco,CodigoEndereco);
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
      EnderecoControler.CarregaControles(Endereco,DMEndereco.FDQueryConsulta.FieldByName('END_CODIGO').AsString);
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
       sbConsultar.Enabled    :=  true;
       MaskEdtCEP.Enabled     :=  true;
       edtLogradouro.Enabled  :=  true;
       edtLocalidade.Enabled  :=  true;
       edtbairro.Enabled      :=  true;
       edtUF.Enabled          :=  true;
       GbTipoConsulta.Enabled := true;
     end
  else
     begin

      Sb_Excluir.Enabled:=true;
      SbAlterar.Enabled:=true;
      SbNovo.Enabled:=true;
      SbGravar.Enabled:=false;
      sbConsultar.Enabled := false;
      MaskEdtCEP.Enabled     :=  false;
      edtLogradouro.Enabled  :=  false;
      edtLocalidade.Enabled  :=  false;
      edtbairro.Enabled      :=  false;
      edtUF.Enabled          :=  false;
      GbTipoConsulta.Enabled := false;
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
    application.MessageBox('Endereço cadastrado com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);

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

procedure TfrmCadastro.RbConsultaviaJsonClick(Sender: TObject);
begin
 FTipoRetornoApi := toJson;
end;

procedure TfrmCadastro.RbConsultaviaXMLClick(Sender: TObject);
begin
  FTipoRetornoApi := toXML;
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
  viaCep:            TViacepApi;
  Endereco:          TEndereco;
  EnderecoControler: TEnderecoController;
  sErro: string;
  vmascaraEdit: string;
  confExcl:integer;
begin
  try
   // tira a mascara para verificar se o campo está vazio.
   vmascaraEdit := MaskEdtCEP.EditMask;
   MaskEdtCEP.EditMask := '';

   if (trim(MaskEdtCEP.Text) <> '') and (edtLogradouro.Text <> '') then
    begin
     application.MessageBox('Caro usuario, se deseja pesquisar pelo CEP digite apenas ele , agora se deseja pesquisar pelo enbdereço completo não preencha o campo CEP!','Informação',MB_OK+MB_ICONINFORMATION);
     exit;
   end;

   if ((Length(trim(MaskEdtCEP.Text))>3 ) or (Length(trim(edtLogradouro.Text))>3) or (Length(trim(edtLocalidade.Text))>3)) then
   begin
     application.MessageBox('Caro Usuario os campos a serem utilizados, devem ter no minimo 3 caracteres com excessão do campo UF!','Informação',MB_OK+MB_ICONINFORMATION);
     exit;
   end;
   if trim(MaskEdtCEP.Text) <> '' then
     FTipoConsulta := toCEP
   else
     FTipoConsulta := toEnderecoCompleto;

   MaskEdtCEP.EditMask := vmascaraEdit;

   Endereco := TEndereco.Create;
   EnderecoControler := TEnderecoController.Create;
   viaCep :=  TViacepApi.Create;
   // se for por endereço completo
   case TipoConsulta of
     toCEP: Endereco.CEP := trim(MaskEdtCEP.Text);
     toEnderecoCompleto:
     begin
      Endereco.UF := trim(edtUF.text);
      Endereco.Localidade := trim(edtLocalidade.Text);
      Endereco.Logradouro := trim(edtLogradouro.Text);
     end;
   end;

   if not(self.RbConsultaviaJson.Checked) and not(self.RbConsultaviaXML.Checked) then
   begin
     application.MessageBox('Não foi selecionada nenhuma opção para o tipo de consulta JSON ou XML!','Atenção',MB_OK+MB_ICONWARNING);
     exit;
   end;

   if EnderecoControler.ConsultaEnderecoBanco(Endereco) then
   begin
     // se existe o registro no banco eu ja deixo previamente o Endereco carregado.
     EnderecoControler.CarregaControles(Endereco,Endereco.CEP);
     beep;
    confExcl:= Application.MessageBox('Caro Usuario o cep digitado já está cadastro , deseja visualizar o endereço', 'Informação', MB_YesNo +mb_DefButton2 +MB_ICONINFORMATION);
    if confExcl = IDYes then
    begin
     // se quiser visualizar os dados.
      edtCodigo.Text       := inttostr(Endereco.CodigoEndereco);
      MaskEdtCEP.Text      := Endereco.CEP;
      edtLogradouro.Text   := Endereco.Logradouro;
      edtLocalidade.Text   := Endereco.Localidade;
      edtbairro.Text       := Endereco.Bairro;
      edtUF.Text           := Endereco.UF;
      exit;
    end
    else
    begin
      beep;
      confExcl:= Application.MessageBox('Caro Usuario você deseja Atualizar o registro do endereço existente', 'Informação', MB_YesNo +mb_DefButton2 +MB_ICONINFORMATION);
      if confExcl = IDYes then
      begin
        //caso deseja alterar o registro existente.
        viaCep.ConsultaAPI(TipoConsulta,TipoRetornoApi,Endereco);
        EnderecoControler.Alterar(Endereco,sErro);
      end
      else
      begin
        // se não quiser atualizar  jogo o foco de volta no campo do cep.
        if MaskEdtCEP.CanFocus then
          MaskEdtCEP.SetFocus;
      end;
    end;
   end
   else
   begin
    //se o registro não existe no banco.
    //inserir no banco
     Endereco := viaCep.ConsultaAPI(TipoConsulta,TipoRetornoApi,Endereco);
     Endereco.CodigoEndereco:=  strtoint(EnderecoControler.TestandoDuplicacao('END_CODIGO', 'ENDERECO'));
     EnderecoControler.Inserir(Endereco,sErro);
     CarregarEndereco(Endereco.CodigoEndereco.ToString);

   end;

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

   edtCodigo.Text := EnderecoControler.TestandoDuplicacao('END_CODIGO', 'ENDERECO');
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

procedure TfrmCadastro.SetTipoConsulta(const Value: TTipoConsulta);
begin
  FTipoConsulta := Value;
end;

procedure TfrmCadastro.SetTipoOperacao(const Value: TTipoOperacao);
begin
  FTipoOperacao := Value;
end;

procedure TfrmCadastro.SetTipoRetornoApi(const Value: TTipoRetornoApi);
begin
  FTipoRetornoApi := Value;
end;

end.
