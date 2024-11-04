inherited ViewCidadesBuscar: TViewCidadesBuscar
  Caption = 'Cidades buscar'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited pnTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edtBuscar: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnGrid: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited DBGrid: TDBGrid
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'CODIGO'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_IBGE'
          Width = 78
          Visible = True
        end>
    end
  end
  inherited pnRodape: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited rdGroupFiltros: TRadioGroup
      Width = 422
      Align = alClient
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo (F1)'
        'Nome (F2)'
        'UF (F3)')
    end
    inherited btnFechar: TBitBtn
      Left = 574
      Top = 10
      Width = 75
      Height = 37
      Margins.Top = 10
      Margins.Bottom = 3
      ExplicitLeft = 574
      ExplicitTop = 8
      ExplicitWidth = 75
    end
    inherited btnCadastrar: TBitBtn
      Left = 422
      Top = 10
      Width = 75
      Height = 37
      Margins.Top = 10
      Margins.Bottom = 3
      Glyph.Data = {00000000}
      ExplicitLeft = 346
      ExplicitTop = 8
      ExplicitWidth = 75
    end
    inherited btnSelecionar: TBitBtn
      Left = 498
      Top = 10
      Width = 75
      Height = 37
      Margins.Top = 10
      Margins.Bottom = 3
      ExplicitLeft = 498
      ExplicitTop = 8
      ExplicitWidth = 75
    end
  end
  inherited pnTotal: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTotal: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited DataSource: TDataSource
    DataSet = ModelCidadesDM.QCidadesBusca
    Left = 592
    Top = 2
  end
end
