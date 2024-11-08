object ModelCidadesDM: TModelCidadesDM
  Height = 106
  Width = 248
  object QCidadesCadastro: TFDQuery
    BeforePost = QCidadesCadastroBeforePost
    Connection = ModelConexaoDM.FDConnection
    SQL.Strings = (
      'select * from cidades')
    Left = 48
    Top = 24
    object QCidadesCadastroCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QCidadesCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object QCidadesCadastroUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QCidadesCadastroCODIGO_IBGE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'CODIGO_IBGE'
      Origin = 'CODIGO_IBGE'
    end
  end
  object QCidadesBusca: TFDQuery
    Connection = ModelConexaoDM.FDConnection
    SQL.Strings = (
      'select * from cidades')
    Left = 168
    Top = 24
    object QCidadesBuscaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCidadesBuscaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object QCidadesBuscaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QCidadesBuscaCODIGO_IBGE: TIntegerField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'CODIGO_IBGE'
      Origin = 'CODIGO_IBGE'
    end
  end
end
