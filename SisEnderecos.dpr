program SisEnderecos;

uses
  Vcl.Forms,
  uEndereco.Model in 'Model\uEndereco.Model.pas',
  uEnderecoController in 'Controler\uEnderecoController.pas',
  uDmConexao in 'Dao\uDmConexao.pas' {DMConexao: TDataModule},
  uDmEndereco in 'Dao\uDmEndereco.pas' {DMEndereco: TDataModule},
  uEnderecoEnum in 'Enum\uEnderecoEnum.pas',
  uCadastroEndereco in 'View\uCadastroEndereco.pas' {frmCadastro},
  uLkJSON in 'Biblioteca\JSON\uLkJSON.pas',
  Pkg.Json.DTO in 'Biblioteca\JSON\Pkg.Json.DTO.pas',
  uViaCEP.API in 'Controler\uViaCEP.API.pas',
  superobject in 'Biblioteca\JSON\superobject-master\superobject-master\superobject.pas',
  supertypes in 'Biblioteca\JSON\superobject-master\superobject-master\supertypes.pas',
  superdate in 'Biblioteca\JSON\superobject-master\superobject-master\superdate.pas',
  supertimezone in 'Biblioteca\JSON\superobject-master\superobject-master\supertimezone.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TDMEndereco, DMEndereco);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.Run;
end.
