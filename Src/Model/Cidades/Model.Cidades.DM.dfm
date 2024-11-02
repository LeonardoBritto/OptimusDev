object ModelCidadesDM: TModelCidadesDM
  Height = 106
  Width = 248
  object QCidadesCadastro: TFDQuery
    Connection = ModelConexaoDM.FDConnection
    Left = 48
    Top = 24
  end
  object QCidadesBusca: TFDQuery
    Connection = ModelConexaoDM.FDConnection
    Left = 168
    Top = 24
  end
end
