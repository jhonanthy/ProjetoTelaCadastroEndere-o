unit uEnderecoController;

interface

uses
  uEndereco.Model, uDmEndereco,System.SysUtils;

type
  TEnderecoController = class
  private
    { private declarations }

  public
    constructor Create;
    destructor Destroy; override;
    procedure ConsultaEndereco(TextoConsulta: string; TipoPesquisa: Integer);
    procedure CarregaControles(Endereco: TEndereco; codigoEndereco: string);
    function Inserir(Endereco: TEndereco; var sErro: string ): boolean;
    function Alterar(Endereco: TEndereco; var sErro: string ): boolean;
    function Excluir(codigoEndereco: Integer; var sErro: string ): boolean;
    function TestandoDuplicacao(Chave: string; Tabela: string): string;
    function ConsultaEnderecoBanco(Endereco: TEndereco): boolean;
  end;

implementation



{ TEnderecoController }

function TEnderecoController.Alterar(Endereco: TEndereco; var sErro: string): boolean;
begin
  Result := DMEndereco.Alterar(Endereco, sErro);
end;

procedure TEnderecoController.CarregaControles(Endereco: TEndereco;
  codigoEndereco: string);
begin
  DMEndereco.CarregaControles(Endereco, codigoEndereco);
end;

procedure TEnderecoController.ConsultaEndereco(TextoConsulta: string;
  TipoPesquisa: Integer);
begin
  DMEndereco.ConsultaEndereco(TextoConsulta,TipoPesquisa);
end;

function TEnderecoController.ConsultaEnderecoBanco(Endereco: TEndereco): boolean;
begin
  Result:= DMEndereco.ConsultaEnderecoBanco(Endereco);
end;

constructor TEnderecoController.Create;
begin
//  DMEndereco := DMEndereco.Create(nil);
end;

destructor TEnderecoController.Destroy;
begin
//  FreeAndNil(DMEndereco);
  inherited;
end;

function TEnderecoController.Excluir(codigoEndereco: Integer; var sErro: string): boolean;
begin
  Result := DMEndereco.Excluir(codigoEndereco, sErro);
end;

function TEnderecoController.Inserir(Endereco: TEndereco; var sErro: string): boolean;
begin
  Result := DMEndereco.Inserir(Endereco, sErro);
end;

function TEnderecoController.TestandoDuplicacao(Chave, Tabela: string): string;
begin
    //rotina que evita duplicacao do campo chave
   Result := DMEndereco.TestandoDuplicacao(Chave, Tabela);
end;


end.
