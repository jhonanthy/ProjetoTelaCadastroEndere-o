object DMEndereco: TDMEndereco
  Height = 410
  Width = 752
  object FDQueryConsulta: TFDQuery
    Connection = DMConexao.FDConnection1
    SQL.Strings = (
      'SELECT * FROM ENDERECO '
      'ORDER BY END_LOGRADOURO ASC')
    Left = 184
    Top = 184
    object FDQueryConsultaEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryConsultaEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
      Size = 10
    end
    object FDQueryConsultaEND_LOGRADOURO: TStringField
      FieldName = 'END_LOGRADOURO'
      Origin = 'END_LOGRADOURO'
      Size = 100
    end
    object FDQueryConsultaEND_LOCALIDADE: TStringField
      FieldName = 'END_LOCALIDADE'
      Origin = 'END_LOCALIDADE'
      Size = 100
    end
    object FDQueryConsultaEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 50
    end
    object FDQueryConsultaEND_UF: TStringField
      FieldName = 'END_UF'
      Origin = 'END_UF'
      Size = 2
    end
  end
  object FDQueryCRUD: TFDQuery
    Connection = DMConexao.FDConnection1
    Left = 80
    Top = 176
  end
end
