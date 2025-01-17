unit uViaCEP.Model;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TViaCep = class(TJsonDTO)
  private
    FBairro: string;
    FCep: string;
    FComplemento: string;
    FDdd: string;
    FEstado: string;
    FGia: string;
    FIbge: string;
    FLocalidade: string;
    FLogradouro: string;
    FRegiao: string;
    FSiafi: string;
    FUf: string;
    FUnidade: string;
  published
    property Bairro: string read FBairro write FBairro;
    property Cep: string read FCep write FCep;
    property Complemento: string read FComplemento write FComplemento;
    property Ddd: string read FDdd write FDdd;
    property Estado: string read FEstado write FEstado;
    property Gia: string read FGia write FGia;
    property Ibge: string read FIbge write FIbge;
    property Localidade: string read FLocalidade write FLocalidade;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Regiao: string read FRegiao write FRegiao;
    property Siafi: string read FSiafi write FSiafi;
    property Uf: string read FUf write FUf;
    property Unidade: string read FUnidade write FUnidade;
  end;

implementation

end.
