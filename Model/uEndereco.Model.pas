unit uEndereco.Model;

interface

uses
   System.SysUtils;

type
  TEndereco = class
  private
    FCodigoEndereco: Integer;
    FDataInclusao: TDate;
    FDataAlteracao: TDate;
    FLogradouro: string;
    FBairro: string;
    FUF: string;
    FCEP: string;
    FComplemento: string;
    FLocalidade: string;
    procedure SetCodigoEndereco(const Value: Integer);
    procedure SetDataInclusao(const Value: TDate);
    procedure SetDataAlteracao(const Value: TDate);
    procedure SetBairro(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetLogradouro(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetLocalidade(const Value: string);
    { private declarations }
  public
    property CodigoEndereco: Integer read FCodigoEndereco write SetCodigoEndereco;
    property CEP: string read FCEP write SetCEP;
    property Logradouro: string read FLogradouro write SetLogradouro;
    property Bairro: string read FBairro write SetBairro;
    property UF: string read FUF write SetUF;
    property Complemento: string read FComplemento write SetComplemento;
    property Localidade: string read FLocalidade write SetLocalidade;
    property DataInclusao: TDate read FDataInclusao write SetDataInclusao;
    property DataAlteracao: TDate read FDataAlteracao write SetDataAlteracao;
  end;

implementation

{ TEndereco }

procedure TEndereco.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TEndereco.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TEndereco.SetCodigoEndereco(const Value: Integer);
begin
  FCodigoEndereco := Value;
end;

procedure TEndereco.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TEndereco.SetDataAlteracao(const Value: TDate);
begin
  FDataAlteracao := Date;
end;

procedure TEndereco.SetDataInclusao(const Value: TDate);
begin
  FDataInclusao := Date;
end;

procedure TEndereco.SetLocalidade(const Value: string);
begin
  FLocalidade := Value;
end;

procedure TEndereco.SetLogradouro(const Value: string);
begin
  if Value = ''  then
  raise Exception.Create('Não foi informado um Logradouro , por favor informar!');
  FLogradouro := Value;
end;

procedure TEndereco.SetUF(const Value: string);
begin
  FUF := Value;
end;

end.
