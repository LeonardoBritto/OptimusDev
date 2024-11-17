unit View.Cidades.Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Herancas.Buscar, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Model.Cidades.DM,
  Vcl.Menus, View.Cidades.Cadastrar;

type
  TViewCidadesBuscar = class(TViewHerancasBuscar)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
  protected
    procedure BuscarDados; override;
    procedure ChamarTelaCadastrar(const ACodigo: Integer = 0); override;
  public
  end;

var
  ViewCidadesBuscar: TViewCidadesBuscar;

implementation

{$R *.dfm}

procedure TViewCidadesBuscar.BuscarDados;
var
  LStrBuscar: string;
  LCondicao: string;
begin
  LStrBuscar := QuotedStr('%' + edtBuscar.Text + '%').ToUpper;
  LCondicao := '';
  case rdGroupFiltros.ItemIndex of
    0:
      LCondicao := 'where(codigo like ' + LStrBuscar + ')';
    1:
      LCondicao := 'where(upper(nome) like ' + LStrBuscar + ')';
    2:
      LCondicao := 'where(upper(uf) like ' + LStrBuscar + ')';
  end;

  ModelCidadesDM.CidadesBuscar(LCondicao);

  inherited;
end;

procedure TViewCidadesBuscar.ChamarTelaCadastrar(const ACodigo: Integer);
var
  LViewCidadesCadastrar: TViewCidadesCadastrar;
begin
  inherited;
  LViewCidadesCadastrar := TViewCidadesCadastrar.Create(nil);
  try
    LViewCidadesCadastrar.CodRegistroAlterar := ACodigo;
    if (LViewCidadesCadastrar.ShowModal = mrOk) then
    begin
      inherited UltCod := LViewCidadesCadastrar.UltCod;
      Self.BuscarDados;
    end;
  finally
    LViewCidadesCadastrar.Free;
  end;
end;

procedure TViewCidadesBuscar.FormCreate(Sender: TObject);
begin
  inherited;
  if ModelCidadesDM = nil then
    ModelCidadesDM := TModelCidadesDM.Create(nil);
end;

procedure TViewCidadesBuscar.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(ModelCidadesDM);
end;

end.
