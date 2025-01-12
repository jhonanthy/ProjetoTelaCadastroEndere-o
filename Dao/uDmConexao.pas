unit uDmConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,Vcl.Forms,Vcl.Dialogs,Winapi.Windows, Winapi.Messages;

type
  TDMConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure ConectaBanco;
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



{ TDMConexao }

procedure TDMConexao.ConectaBanco;
begin
  DMConexao.FDConnection1.Params.Database := ExtractFilePath(ParamStr(0))+'Base\DB_SISCADASTROENDERECO.FDB';
  DMConexao.FDTransaction1.Connection:= DMConexao.FDConnection1;
end;

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  ConectaBanco;
end;

end.
