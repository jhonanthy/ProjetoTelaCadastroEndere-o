object DMConexao: TDMConexao
  OnCreate = DataModuleCreate
  Height = 486
  Width = 768
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\teste2\Documents\GitHub\ProjetoTelaCadastroEnd' +
        'ere-o\Aplica'#231#227'o\Base\DB_SISCADASTROENDERECO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 29
    Top = 74
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 109
    Top = 82
  end
end
