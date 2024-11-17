object ViewHerancasBuscar: TViewHerancasBuscar
  Left = 0
  Top = 0
  Margins.Top = 7
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Base'
  ClientHeight = 450
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      650
      50)
    object Label1: TLabel
      Left = 20
      Top = 4
      Width = 71
      Height = 15
      Caption = 'Pesquisar por'
    end
    object edtBuscar: TEdit
      Left = 20
      Top = 18
      Width = 610
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      TabOrder = 0
      OnChange = edtBuscarChange
      OnKeyDown = edtBuscarKeyDown
      OnKeyPress = edtBuscarKeyPress
    end
  end
  object pnGrid: TPanel
    Left = 0
    Top = 50
    Width = 650
    Height = 325
    Align = alClient
    TabOrder = 1
    object DBGrid: TDBGrid
      Left = 1
      Top = 1
      Width = 648
      Height = 323
      Align = alClient
      DataSource = DataSource
      PopupMenu = PopupMenu
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridDrawColumnCell
      OnDblClick = DBGridDblClick
      OnKeyPress = DBGridKeyPress
      OnTitleClick = DBGridTitleClick
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 400
    Width = 650
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object rdGroupFiltros: TRadioGroup
      Left = 0
      Top = 0
      Width = 346
      Height = 50
      Align = alClient
      Caption = 'Buscar por:'
      TabOrder = 0
      OnClick = rdGroupFiltrosClick
    end
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 574
      Top = 10
      Width = 75
      Height = 37
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 1
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = btnFecharClick
    end
    object btnCadastrar: TBitBtn
      AlignWithMargins = True
      Left = 346
      Top = 10
      Width = 75
      Height = 37
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 1
      Align = alRight
      Caption = 'Cadastrar'
      TabOrder = 1
      OnClick = btnCadastrarClick
    end
    object btnSelecionar: TBitBtn
      AlignWithMargins = True
      Left = 498
      Top = 10
      Width = 75
      Height = 37
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 1
      Align = alRight
      Caption = 'Selecionar'
      Layout = blGlyphRight
      TabOrder = 3
      OnClick = btnSelecionarClick
    end
    object btnAlterar: TBitBtn
      AlignWithMargins = True
      Left = 422
      Top = 10
      Width = 75
      Height = 37
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 1
      Align = alRight
      Caption = 'Alterar'
      TabOrder = 4
      OnClick = btnAlterarClick
    end
  end
  object pnTotal: TPanel
    Left = 0
    Top = 375
    Width = 650
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object lblTotal: TLabel
      AlignWithMargins = True
      Left = 486
      Top = 0
      Width = 154
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Registros localizados: 000000'
      Layout = tlCenter
      ExplicitLeft = 496
    end
  end
  object DataSource: TDataSource
    Left = 584
    Top = 58
  end
  object PopupMenu: TPopupMenu
    Left = 584
    Top = 114
    object Atualizar1: TMenuItem
      Caption = 'Atualizar'
      OnClick = Atualizar1Click
    end
    object Atualizar2: TMenuItem
      Caption = '-'
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
end
