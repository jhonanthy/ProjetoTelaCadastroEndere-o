unit uViaCEP.API;

interface
uses  Rest.Client, REST.Json, sysUtils, StrUtils, RegularExpressions, uLkJSON,System.JSON, SuperObject,
  System.Classes, System.Variants, REST.Types, uEndereco.Model, uEnderecoEnum, XMLDoc,Xml.XMLIntf,
  uEnderecoController;

type
  TViacepApi = class
    private
      const URL_VIACEP_API =  'viacep.com.br/ws/';
    public
     class function ConsultaAPI(const TipoConsulta: TTipoConsulta;TipoRetorno: TTipoRetornoApi; Endereco: TEndereco):TEndereco;
  end;

const NAO_USAR_VARIAVEIS_GOLBAIS = '';

implementation

{ TViacepApi }



class function TViacepApi.ConsultaAPI(const TipoConsulta: TTipoConsulta; TipoRetorno: TTipoRetornoApi; Endereco: TEndereco):TEndereco;
var
  sErro:string;
  vConsulta: string;
  vTipoRetorno: string;
  XMLDoc: IXMLDocument;
  LNodeList: IXMLNodeList;
  Node: IXMLNode;
  JSONString: string;
  JSONObject: ISuperObject;
  JSONArray: TSuperArray;
  i: integer;
  vCEPexitente: string;
  EnderecoController: TEnderecoController;
begin
  EnderecoController := TEnderecoController.Create;
   //TipoConsulta cep ou endereço completo
   case TipoConsulta of
     toCEP:
     begin
       vConsulta := Endereco.CEP;
     end;
     toEnderecoCompleto:
     begin
       vCEPexitente := Endereco.CEP;
       vConsulta := Endereco.UF+'/'+Endereco.Localidade+'/'+Endereco.Logradouro;
     end;
   end;

   // tipo de extensão de retorno da consulta
   case TipoRetorno of
     toJson: vTipoRetorno := 'json';
     toXML: vTipoRetorno := 'xml';
   end;

   vConsulta:= vConsulta+ '/'+vTipoRetorno+'/';
   var vRest := TRESTClient.Create(URL_VIACEP_API + vConsulta);
   var vReq  := TRESTRequest.Create(vRest);
   try
      vRest.Accept := '*/*';
      vRest.ContentType := 'application/'+vTipoRetorno;
      vReq.Client := vRest;
      vReq.Method := rmGET;

      vReq.Execute;
      if TipoConsulta = toCEP then
      begin
         case TipoRetorno of
           toJson:
           begin
             Result := TJson.JsonToObject<TEndereco>(vReq.Response.JSonValue.ToString);
           end;
           toXML:
           begin
            // manipula resultado do request para pegar o xml
             XMLDoc := TXMLDocument.Create(nil);
             XMLDoc.LoadFromXML(vReq.Response.Content);
             Endereco.CEP := XMLDoc.DocumentElement.ChildNodes['cep'].text;
             Endereco.Logradouro := XMLDoc.DocumentElement.ChildNodes['logradouro'].text;
             Endereco.Localidade := XMLDoc.DocumentElement.ChildNodes['localidade'].text;
             Endereco.Bairro     := XMLDoc.DocumentElement.ChildNodes['bairro'].Text;
             Endereco.UF         := XMLDoc.DocumentElement.ChildNodes['uf'].Text;

             Result := Endereco;
           end;
         end;
      end
      else // ao pesquisar por endereço as informações vem dentro de um array
      begin
        case TipoRetorno of
          toJson:
          begin
           JSONString :=   vReq.Response.JSonValue.ToString;
           JSONObject := SO(JSONString);
           JSONArray := JSONObject.AsArray;
           Endereco.CodigoEndereco:=  strtoint(EnderecoController.TestandoDuplicacao('END_CODIGO', 'ENDERECO'));
           for i := 0 to JSONArray.Length - 1 do
           begin
            { Quando a entrada for de pesquisa por endereco , e o registro existir no banco
              não insere o registro novamente.}
             if vCEPexitente <> JSONArray[i].S['cep'] then
             begin
               Endereco.CleanupInstance;
               Endereco.CEP        := JSONArray[i].S['cep'];
               Endereco.Logradouro := JSONArray[i].S['logradouro'];
               Endereco.Localidade := JSONArray[i].S['localidade'];
               Endereco.Bairro     := JSONArray[i].S['bairro'];
               Endereco.UF         := JSONArray[i].S['uf'];
               Endereco.CodigoEndereco := Endereco.CodigoEndereco + 1 ;
               EnderecoController.Inserir(Endereco,sErro)
             end;
           end;

          end;
        end;
      end;

   finally
      vReq.Free;
      vRest.Free;
   end;
end;

end.
