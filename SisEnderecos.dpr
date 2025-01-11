program SisEnderecos;

uses
  Vcl.Forms,
  uEnderecoModel in 'Model\uEnderecoModel.pas',
  uEnderecoController in 'Controler\uEnderecoController.pas',
  uDmConexao in 'Dao\uDmConexao.pas' {DMConexao: TDataModule},
  uDmEndereco in 'Dao\uDmEndereco.pas' {DMEndereco: TDataModule},
  uEnderecoEnum in 'Enum\uEnderecoEnum.pas',
  uCadastroEndereco in 'View\uCadastroEndereco.pas' {frmCadastro},
  uLkJSON in 'Biblioteca\JSON\uLkJSON.pas',
  uViaCEP.api in 'Controler\uViaCEP.API.pas',
  Pkg.Json.DTO in 'Biblioteca\JSON\Pkg.Json.DTO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TDMEndereco, DMEndereco);
  Application.Run;
end.
