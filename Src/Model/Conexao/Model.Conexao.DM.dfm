object ModelConexaoDM: TModelConexaoDM
  Height = 90
  Width = 340
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Leonardo\Documents\Projetos GIT\OptimusDev\Dad' +
        'os\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 16
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 256
    Top = 16
  end
end
