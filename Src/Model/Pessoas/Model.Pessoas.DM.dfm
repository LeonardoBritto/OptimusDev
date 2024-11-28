object ModelPessoasDM: TModelPessoasDM
  Height = 117
  Width = 259
  object QPessoasCadastro: TFDQuery
    Connection = ModelConexaoDM.FDConnection
    SQL.Strings = (
      'select * from pessoas')
    Left = 56
    Top = 32
    object QPessoasCadastroCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPessoasCadastroNOME: TStringField
      DisplayLabel = 'Nome/Raz'#227'o'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object QPessoasCadastroFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 60
    end
    object QPessoasCadastroCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object QPessoasCadastroFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object QPessoasCadastroCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object QPessoasCadastroCOD_CIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo Cidade'
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object QPessoasCadastroENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object QPessoasCadastroNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object QPessoasCadastroBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object QPessoasCadastroCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object QPessoasCadastroTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object QPessoasCadastroCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object QPessoasCadastroEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object QPessoasCadastroTIPO_JURIDICO: TIntegerField
      DisplayLabel = 'Tipo Jur'#237'dico'
      FieldName = 'TIPO_JURIDICO'
      Origin = 'TIPO_JURIDICO'
    end
    object QPessoasCadastroCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      FixedChar = True
      Size = 14
    end
    object QPessoasCadastroRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 14
    end
    object QPessoasCadastroCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object QPessoasCadastroIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 14
    end
    object QPessoasCadastroATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object QPessoasCadastroDT_NASCIMENTO: TDateField
      DisplayLabel = 'Nascimento'
      FieldName = 'DT_NASCIMENTO'
      Origin = 'DT_NASCIMENTO'
    end
    object QPessoasCadastroDT_CADASTRO: TSQLTimeStampField
      DisplayLabel = 'Cadastro'
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
  end
  object QPessoasBusca: TFDQuery
    Connection = ModelConexaoDM.FDConnection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select '
      'p.codigo, '
      'p.nome, '
      'p.fantasia, '
      'p.cliente, '
      'p.fornecedor,'
      'p.telefone,'
      'p.celular,'
      'p.endereco, '
      'c.nome cidade,'
      'c.uf '
      'from pessoas p'
      'join cidades c on (c.codigo = p.cod_cidade)')
    Left = 176
    Top = 32
    object QPessoasBuscaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPessoasBuscaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object QPessoasBuscaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 60
    end
    object QPessoasBuscaCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object QPessoasBuscaFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object QPessoasBuscaTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object QPessoasBuscaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object QPessoasBuscaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object QPessoasBuscaCIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QPessoasBuscaUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
end
