unit View.Pessoas.Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Herancas.Buscar, Data.DB,
  Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Model.Pessoas.DM;

type
  TViewPessoasBuscar = class(TViewHerancasBuscar)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
  public
  protected
    procedure BuscarDados; override;
    procedure ChamarTelaCadastrar(const ACodigo: Integer = 0); override;
  end;

var
  ViewPessoasBuscar: TViewPessoasBuscar;

implementation

{$R *.dfm}

procedure TViewPessoasBuscar.BuscarDados;
var
  LStrBuscar: string;
  LCondicao: string;
begin
  LStrBuscar := QuotedStr('%' + edtBuscar.Text + '%').ToUpper;
  LCondicao := '';
  case rdGroupFiltros.ItemIndex of
    0:
      LCondicao := 'where(p.codigo like ' + LStrBuscar + ')';
    1:
      LCondicao := 'where(upper(p.nome) like ' + LStrBuscar + ') or (upper(p.fantasia) like ' + LStrBuscar + ')';
    2:
      LCondicao := 'where(upper(c.nome) like ' + LStrBuscar + ')';
  end;

  ModelPessoasDM.PessoasBuscar(LCondicao);

  inherited;
end;

procedure TViewPessoasBuscar.ChamarTelaCadastrar(const ACodigo: Integer);
begin
  inherited;

end;

procedure TViewPessoasBuscar.FormCreate(Sender: TObject);
begin
  inherited;
  if ModelPessoasDM = nil then
    ModelPessoasDM := TModelPessoasDM.Create(nil);
end;

procedure TViewPessoasBuscar.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(ModelPessoasDM);
end;

end.
