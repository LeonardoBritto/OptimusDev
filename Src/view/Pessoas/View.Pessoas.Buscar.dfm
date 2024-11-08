inherited ViewPessoasBuscar: TViewPessoasBuscar
  Caption = 'Pessoas buscar'
  ClientWidth = 750
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 766
  TextHeight = 15
  inherited pnTopo: TPanel
    Width = 750
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 750
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edtBuscar: TEdit
      Width = 710
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 710
    end
  end
  inherited pnGrid: TPanel
    Width = 750
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 750
    inherited DBGrid: TDBGrid
      Width = 748
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FANTASIA'
          Width = 250
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CLIENTE'
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FORNECEDOR'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CELULAR'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Width = 140
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UF'
          Width = 23
          Visible = True
        end>
    end
  end
  inherited pnRodape: TPanel
    Width = 750
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 750
    inherited rdGroupFiltros: TRadioGroup
      Width = 446
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo (F1)'
        'Nome/Fantasia (F2)'
        'Cidade (F3)')
      ExplicitWidth = 446
    end
    inherited btnFechar: TBitBtn
      Left = 674
      ExplicitLeft = 674
    end
    inherited btnCadastrar: TBitBtn
      Left = 446
      ExplicitLeft = 446
    end
    inherited btnSelecionar: TBitBtn
      Left = 598
      ExplicitLeft = 598
    end
    inherited btnAlterar: TBitBtn
      Left = 522
      ExplicitLeft = 522
    end
  end
  inherited pnTotal: TPanel
    Width = 750
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 750
    inherited lblTotal: TLabel
      Left = 586
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 586
    end
  end
  inherited DataSource: TDataSource
    DataSet = ModelPessoasDM.QPessoasBusca
  end
end
