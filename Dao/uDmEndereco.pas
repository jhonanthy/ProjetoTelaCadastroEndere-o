unit uDmEndereco;

interface

uses
  System.SysUtils,System.StrUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Data.DB, Datasnap.DBClient, uEnderecoEnum, uDmConexao,
  uEndereco.Model,Vcl.Forms,Vcl.Dialogs,Winapi.Windows, Winapi.Messages;

type
  TDMEndereco = class(TDataModule)
    FDQueryConsulta: TFDQuery;
    FDQueryCRUD: TFDQuery;
    FDQueryConsultaEND_CODIGO: TIntegerField;
    FDQueryConsultaEND_CEP: TStringField;
    FDQueryConsultaEND_LOGRADOURO: TStringField;
    FDQueryConsultaEND_LOCALIDADE: TStringField;
    FDQueryConsultaEND_BAIRRO: TStringField;
    FDQueryConsultaEND_UF: TStringField;
  private
    { Private declarations }
  public
    Procedure CarregaControles(Endereco :TEndereco; codigoEndereco: string);
    procedure ConsultaEndereco(TextoConsulta: string; TipoPesquisa: Integer);
    function  Inserir(Endereco :TEndereco; out sErro: string):boolean;
    function  Alterar(Endereco :TEndereco; out sErro: string):boolean;
    function  Excluir(codigoEndereco: Integer; out sErro: string): boolean;
    function  TestandoDuplicacao(Chave: string; Tabela: string): string;
    function ConsultaEnderecoBanco(Endereco: TEndereco):boolean;
end;

var
  DMEndereco: TDMEndereco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}



{$R *.dfm}

{ TDMEndereco }

function TDMEndereco.Alterar(Endereco: TEndereco; out sErro: string): boolean;
begin
  Result:= false;
  try
    FDQueryCRUD.Close;
    FDQueryCRUD.sql.Clear;
    FDQueryCRUD.ExecSQL('UPDATE ENDERECO  set END_CEP = :Cep, END_LOGRADOURO = :Logradouro, END_LOCALIDADE = :Localidade, END_BAIRRO = :Bairro, END_UF = :UF  WHERE END_CODIGO = :codigoEndereco',
    [Endereco.CEP, Endereco.Logradouro, Endereco.Localidade, Endereco.Bairro, Endereco.UF, Endereco.CodigoEndereco]);
    Result:= true;
  except on E: Exception do
  begin
    sErro := 'Não foi possivel realizar a Operação de Alteração no banco, verificar erro : '+sLineBreak+ E.Message +' !';
  end;

  end;
end;

procedure TDMEndereco.CarregaControles(Endereco: TEndereco; codigoEndereco: string);
begin
//receber um codigo de endereço que pode ser o codigo do registro ou o codigo do endereço(cep)
  FDQueryConsulta.close;
  FDQueryConsulta.SQL.Clear;
  FDQueryConsulta.sql.Add('SELECT END_CODIGO, END_CEP, END_LOGRADOURO, END_LOCALIDADE ,END_BAIRRO, END_UF FROM ENDERECO WHERE ');
  if copy(codigoEndereco,6,1) = '-' then
    FDQueryConsulta.sql.Add(' END_CEP =:codigo')
  else
    FDQueryConsulta.sql.Add(' END_CODIGO = :codigo ');

    FDQueryConsulta.ParamByName('codigo').asstring:= codigoEndereco;


  FDQueryConsulta.Open;


  Endereco.CodigoEndereco :=   FDQueryConsulta.FieldByName('END_CODIGO').AsInteger;
  Endereco.CEP            :=   FDQueryConsulta.FieldByName('END_CEP').AsString;
  Endereco.Logradouro     :=   FDQueryConsulta.FieldByName('END_LOGRADOURO').AsString;
  Endereco.Localidade     :=   FDQueryConsulta.FieldByName('END_LOCALIDADE').AsString;
  Endereco.Bairro         :=   FDQueryConsulta.FieldByName('END_BAIRRO').AsString;
  Endereco.UF             :=   FDQueryConsulta.FieldByName('END_UF').AsString;
end;

procedure TDMEndereco.ConsultaEndereco(TextoConsulta: string;
  TipoPesquisa: Integer);
var
  strComando: string;
begin
//  if trim(TextoConsulta) = '' then
//      Strcomando := Strcomando + '  ';

  FDQueryConsulta.close;
  FDQueryConsulta.SQL.Clear;
  strComando := ' SELECT * FROM ENDERECO ';

  case TipoPesquisa of
    0:  //Codigo do Endereço
      begin
         strComando := strComando + ' WHERE END_CODIGO = '+ trim(TextoConsulta);
      end;
    1:  // Logradouro
      begin
        strComando := strComando + '  WHERE upper(END_LOGRADOURO) LIKE '+quotedstr('%'+ uppercase(TextoConsulta)+'%');
      end;
    2:  //Todos os Registros
      begin
        strComando:= strComando + '  ';
      end;
  end;

  strComando:= strComando + '    order by END_LOGRADOURO ASC';


  FDQueryConsulta.sql.Add(strcomando);
  FDQueryConsulta.Open;

  if FDQueryConsulta.IsEmpty then
      application.MessageBox('Consulta não encontrada na Base!','Informação',MB_OK+MB_ICONINFORMATION);
end;

function TDMEndereco.ConsultaEnderecoBanco(Endereco: TEndereco): boolean;
var
  vqueryConsulta:TFDQuery;
  vstrComando: string;
begin
  vqueryConsulta :=  TFDQuery.Create(nil);
  vqueryConsulta.Connection := DMConexao.FDConnection1;
  vqueryConsulta.close;
  vqueryConsulta.SQL.add(' SELECT END_CEP FROM ENDERECO where ');
  if not(Endereco.CEP.IsEmpty) then
  begin
    vqueryConsulta.SQL.add(' END_CEP =:cep  ');
    vqueryConsulta.ParamByName('cep').AsString := Endereco.CEP;
  end
  else
  begin
    vqueryConsulta.SQL.add(' END_UF =:uf ');
    vstrComando:=' AND END_LOCALIDADE LIKE '+quotedstr('%'+ (Endereco.Localidade)+'%') + sLineBreak;
    vstrComando:= vstrComando +' AND END_Logradouro LIKE '+quotedstr('%'+ (Endereco.Localidade)+'%');
    vqueryConsulta.SQL.add(vstrComando);
    vqueryConsulta.ParamByName('uf').AsString := Endereco.UF;
  end;
  vqueryConsulta.Open;
  if not  vqueryConsulta.IsEmpty then
    Endereco.CEP := vqueryConsulta.FieldByName('END_CEP').AsString;

  result := not vqueryConsulta.IsEmpty;

  vqueryConsulta.Free;
end;

function TDMEndereco.Excluir(codigoEndereco: Integer; out sErro: string): boolean;
begin
  Result:= false;
 try
  FDQueryCRUD.Close;
  FDQueryCRUD.sql.Clear;
  FDQueryCRUD.sql.Add('DELETE FROM ENDERECO WHERE END_CODIGO = :codigoEndereco');
  FDQueryCRUD.ParamByName('codigoEndereco').AsInteger :=codigoEndereco;
  FDQueryCRUD.ExecSQL;
  Result:= true;
 except on E: Exception do
  begin
    sErro := 'Não foi possivel realizar a Operação de Delete no banco, verificar erro : '+sLineBreak+ E.Message +' !';
  end;

 end;
end;

function TDMEndereco.Inserir(Endereco: TEndereco; out sErro: string): boolean;
begin
  Result:= false;
  try
    FDQueryCRUD.Close;
    FDQueryCRUD.sql.Clear;
    FDQueryCRUD.ExecSQL('INSERT INTO ENDERECO  (END_CODIGO, END_CEP, END_LOGRADOURO, END_LOCALIDADE, END_BAIRRO, END_UF) VALUES(:Codigo, :Cep, :Logradouro, :Localidade, :Bairro, :UF)',
      [Endereco.CodigoEndereco, Endereco.CEP, Endereco.Logradouro, Endereco.Localidade, Endereco.Bairro, Endereco.UF]);
    Result:= true;
  except on E: Exception do
  begin
    sErro := 'Não foi possivel realizar a Operação de inserção no banco, verificar erro : '+sLineBreak+ E.Message +' !';
  end;

  end;
end;

function TDMEndereco.TestandoDuplicacao(Chave, Tabela: string): string;
var
  strComando: string;
  NovoID, i : integer;
begin
    //rotina que evita duplicacao do campo chave

  with FDQueryCRUD do
  begin
      close;
      SQL.Clear;
      SQL.Add('select max('+chave+') as UltimoRegistro from '+Tabela);

      open;
      NovoID:=(FieldByName('UltimoRegistro').AsInteger)+1;  //encontrei o novo registro e vou incrementar
      for i:=1 to 10 do
        try
          result:=inttostr(NovoID);
          break;
        except
          NovoID:=NovoID+1;
        end;

  end;

end;

end.
