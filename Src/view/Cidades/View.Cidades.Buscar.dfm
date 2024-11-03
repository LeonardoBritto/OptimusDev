inherited ViewCidadesBuscar: TViewCidadesBuscar
  Caption = 'ViewCidadesBuscar'
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
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'UF')
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
