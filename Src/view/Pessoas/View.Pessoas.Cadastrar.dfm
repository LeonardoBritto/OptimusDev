inherited ViewPessoasCadastrar: TViewPessoasCadastrar
  Caption = 'Cadastrar/Alterar Pessoas'
  ClientHeight = 386
  ClientWidth = 780
  StyleElements = [seFont, seClient, seBorder]
  OnShow = FormShow
  ExplicitWidth = 796
  ExplicitHeight = 425
  TextHeight = 15
  inherited pnDados: TPanel
    Width = 780
    Height = 351
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = -8
    ExplicitTop = 16
    ExplicitWidth = 780
    object Label1: TLabel
      Left = 25
      Top = 15
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 90
      Top = 15
      Width = 69
      Height = 15
      Caption = 'Nome/Raz'#227'o'
      FocusControl = edtNome
    end
    object Label3: TLabel
      Left = 431
      Top = 15
      Width = 43
      Height = 15
      Caption = 'Fantasia'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 25
      Top = 80
      Width = 21
      Height = 15
      Caption = 'CEP'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 111
      Top = 80
      Width = 79
      Height = 15
      Caption = 'C'#243'digo Cidade'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 431
      Top = 80
      Width = 49
      Height = 15
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 687
      Top = 80
      Width = 44
      Height = 15
      Caption = 'N'#250'mero'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 25
      Top = 130
      Width = 31
      Height = 15
      Caption = 'Bairro'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 431
      Top = 130
      Width = 77
      Height = 15
      Caption = 'Complemento'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 687
      Top = 130
      Width = 64
      Height = 15
      Caption = 'Nascimento'
    end
    object Label11: TLabel
      Left = 25
      Top = 184
      Width = 45
      Height = 15
      Caption = 'Telefone'
      FocusControl = DBEdit10
    end
    object Label12: TLabel
      Left = 260
      Top = 184
      Width = 37
      Height = 15
      Caption = 'Celular'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 495
      Top = 184
      Width = 34
      Height = 15
      Caption = 'E-mail'
      FocusControl = DBEdit12
    end
    object Label14: TLabel
      Left = 260
      Top = 242
      Width = 21
      Height = 15
      Caption = 'CPF'
      FocusControl = DBEdit13
    end
    object Label15: TLabel
      Left = 416
      Top = 242
      Width = 15
      Height = 15
      Caption = 'RG'
      FocusControl = DBEdit14
    end
    object Label16: TLabel
      Left = 512
      Top = 242
      Width = 27
      Height = 15
      Caption = 'CNPJ'
      FocusControl = DBEdit15
    end
    object Label17: TLabel
      Left = 668
      Top = 242
      Width = 9
      Height = 15
      Caption = 'IE'
      FocusControl = DBEdit16
    end
    object Label18: TLabel
      Left = 25
      Top = 296
      Width = 47
      Height = 15
      Caption = 'Cadastro'
      FocusControl = DBEdit17
    end
    object DBEdit1: TDBEdit
      Left = 25
      Top = 31
      Width = 60
      Height = 23
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = DataSource
      ReadOnly = True
      TabOrder = 0
    end
    object edtNome: TDBEdit
      Left = 90
      Top = 31
      Width = 335
      Height = 23
      DataField = 'NOME'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 431
      Top = 31
      Width = 325
      Height = 23
      DataField = 'FANTASIA'
      DataSource = DataSource
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 25
      Top = 60
      Width = 59
      Height = 17
      Caption = 'Ativo'
      DataField = 'ATIVO'
      DataSource = DataSource
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 90
      Top = 60
      Width = 57
      Height = 17
      Caption = 'Cliente'
      DataField = 'CLIENTE'
      DataSource = DataSource
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 167
      Top = 60
      Width = 97
      Height = 17
      Caption = 'Fornecedor'
      DataField = 'FORNECEDOR'
      DataSource = DataSource
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit4: TDBEdit
      Left = 25
      Top = 96
      Width = 80
      Height = 23
      DataField = 'CEP'
      DataSource = DataSource
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 111
      Top = 96
      Width = 90
      Height = 23
      DataField = 'COD_CIDADE'
      DataSource = DataSource
      TabOrder = 7
    end
    object edtCidade: TEdit
      Left = 207
      Top = 96
      Width = 218
      Height = 23
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit6: TDBEdit
      Left = 431
      Top = 96
      Width = 250
      Height = 23
      DataField = 'ENDERECO'
      DataSource = DataSource
      TabOrder = 9
    end
    object DBEdit7: TDBEdit
      Left = 687
      Top = 96
      Width = 69
      Height = 23
      DataField = 'NUMERO'
      DataSource = DataSource
      TabOrder = 10
    end
    object DBEdit8: TDBEdit
      Left = 25
      Top = 146
      Width = 400
      Height = 23
      DataField = 'BAIRRO'
      DataSource = DataSource
      TabOrder = 11
    end
    object DBEdit9: TDBEdit
      Left = 431
      Top = 146
      Width = 250
      Height = 23
      DataField = 'COMPLEMENTO'
      DataSource = DataSource
      TabOrder = 12
    end
    object DBEdit10: TDBEdit
      Left = 25
      Top = 200
      Width = 229
      Height = 23
      DataField = 'TELEFONE'
      DataSource = DataSource
      TabOrder = 13
    end
    object DBEdit11: TDBEdit
      Left = 260
      Top = 200
      Width = 229
      Height = 23
      DataField = 'CELULAR'
      DataSource = DataSource
      TabOrder = 14
    end
    object DBEdit12: TDBEdit
      Left = 495
      Top = 200
      Width = 261
      Height = 23
      DataField = 'EMAIL'
      DataSource = DataSource
      TabOrder = 15
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 25
      Top = 240
      Width = 229
      Height = 41
      Caption = ' Tipo Jur'#237'dico'
      Columns = 2
      DataField = 'TIPO_JURIDICO'
      DataSource = DataSource
      Items.Strings = (
        'Pessoa F'#237'sica'
        'Pessoa Jur'#237'dica')
      TabOrder = 16
      Values.Strings = (
        '1'
        '2')
    end
    object DBEdit13: TDBEdit
      Left = 260
      Top = 258
      Width = 150
      Height = 23
      DataField = 'CPF'
      DataSource = DataSource
      TabOrder = 17
      TextHint = 'asd'
    end
    object DBEdit14: TDBEdit
      Left = 416
      Top = 258
      Width = 90
      Height = 23
      DataField = 'RG'
      DataSource = DataSource
      TabOrder = 18
    end
    object DBEdit15: TDBEdit
      Left = 512
      Top = 258
      Width = 150
      Height = 23
      DataField = 'CNPJ'
      DataSource = DataSource
      TabOrder = 19
    end
    object DBEdit16: TDBEdit
      Left = 668
      Top = 258
      Width = 90
      Height = 23
      DataField = 'IE'
      DataSource = DataSource
      TabOrder = 20
    end
    object DBEdit17: TDBEdit
      Left = 25
      Top = 312
      Width = 80
      Height = 23
      Color = clBtnFace
      DataField = 'DT_CADASTRO'
      DataSource = DataSource
      ReadOnly = True
      TabOrder = 21
    end
  end
  inherited pnRodape: TPanel
    Top = 351
    Width = 780
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 784
    inherited btnGravar: TBitBtn
      Left = 579
      ExplicitLeft = 583
    end
    inherited btnCancelar: TBitBtn
      Left = 679
      ExplicitLeft = 683
    end
  end
  inherited DataSource: TDataSource
    DataSet = ModelPessoasDM.QPessoasCadastro
  end
  object DataSource1: TDataSource
    DataSet = ModelPessoasDM.QPessoasCadastro
    Left = 424
    Top = 264
  end
end
