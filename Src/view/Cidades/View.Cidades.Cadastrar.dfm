inherited ViewCidadesCadastrar: TViewCidadesCadastrar
  Caption = 'Cadastro de Cidades'
  ClientHeight = 303
  ClientWidth = 474
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 490
  ExplicitHeight = 342
  TextHeight = 15
  inherited pnDados: TPanel
    Width = 474
    Height = 268
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 474
    ExplicitHeight = 268
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 38
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = edtCodigo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 88
      Width = 34
      Height = 15
      Caption = 'Nome'
      FocusControl = edtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 136
      Width = 15
      Height = 15
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 189
      Width = 66
      Height = 15
      Caption = 'C'#243'digo IBGE'
      FocusControl = edtCodigoIBGE
    end
    object edtCodigo: TDBEdit
      Left = 16
      Top = 61
      Width = 81
      Height = 23
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = DataSource
      ReadOnly = True
      TabOrder = 0
    end
    object edtNome: TDBEdit
      Left = 16
      Top = 109
      Width = 400
      Height = 23
      DataField = 'NOME'
      DataSource = DataSource
      TabOrder = 1
    end
    object edtCodigoIBGE: TDBEdit
      Left = 16
      Top = 210
      Width = 113
      Height = 23
      DataField = 'CODIGO_IBGE'
      DataSource = DataSource
      TabOrder = 2
    end
    object cBoxUF: TDBComboBox
      Left = 16
      Top = 157
      Width = 66
      Height = 23
      Style = csDropDownList
      DataField = 'UF'
      DataSource = DataSource
      Items.Strings = (
        'AC'
        'AL '
        'AP'
        'AM'
        'BA'
        'CE'
        'DF '
        'ES'
        'GO '
        'MA '
        'MT '
        'MS '
        'MG '
        'PA '
        'PB '
        'PR '
        'PE '
        'PI '
        'RJ '
        'RN '
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      TabOrder = 3
    end
  end
  inherited pnRodape: TPanel
    Top = 268
    Width = 474
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 268
    ExplicitWidth = 474
    inherited btnGravar: TBitBtn
      Left = 273
      ExplicitLeft = 273
    end
    inherited btnCancelar: TBitBtn
      Left = 373
      ExplicitLeft = 373
    end
  end
  inherited DataSource: TDataSource
    DataSet = ModelCidadesDM.QCidadesCadastro
  end
end
