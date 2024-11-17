object ViewHerancasCadastrar: TViewHerancasCadastrar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastrar'
  ClientHeight = 400
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  TextHeight = 15
  object pnDados: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 365
    Align = alClient
    TabOrder = 0
  end
  object pnRodape: TPanel
    Left = 0
    Top = 365
    Width = 650
    Height = 35
    Align = alBottom
    TabOrder = 1
    object btnGravar: TBitBtn
      Left = 449
      Top = 1
      Width = 100
      Height = 33
      Align = alRight
      Caption = 'Gravar (F3)'
      TabOrder = 0
      OnClick = btnGravarClick
      ExplicitTop = 6
    end
    object btnCancelar: TBitBtn
      Left = 549
      Top = 1
      Width = 100
      Height = 33
      Align = alRight
      Caption = 'Cancelar (Esc)'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object DataSource: TDataSource
    Left = 600
    Top = 16
  end
end
