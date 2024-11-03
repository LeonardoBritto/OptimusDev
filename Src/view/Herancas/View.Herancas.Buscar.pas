unit View.Herancas.Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TViewHerancasBuscar = class(TForm)
    pnTopo: TPanel;
    pnGrid: TPanel;
    pnRodape: TPanel;
    Label1: TLabel;
    edtBuscar: TEdit;
    rdGroupFiltros: TRadioGroup;
    btnFechar: TBitBtn;
    btnCadastrar: TBitBtn;
    btnSelecionar: TBitBtn;
    DBGrid: TDBGrid;
    pnTotal: TPanel;
    lblTotal: TLabel;
    DataSource: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscarChange(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rdGroupFiltrosClick(Sender: TObject);
  private
  protected
    procedure BuscarDados; virtual;
  public
    { Public declarations }
  end;

var
  ViewHerancasBuscar: TViewHerancasBuscar;

implementation

{$R *.dfm}

procedure TViewHerancasBuscar.btnFecharClick(Sender: TObject);
begin
  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TViewHerancasBuscar.btnSelecionarClick(Sender: TObject);
begin
  if DataSource.DataSet.IsEmpty then
    raise Exception.Create('Selecione um registro!');

  Self.Close;
  Self.ModalResult := mrOk;
end;

procedure TViewHerancasBuscar.BuscarDados;
begin
  lblTotal.Caption := 'Registros localizados: 000000';
  if DataSource.DataSet.IsEmpty then
    Exit;

  lblTotal.Caption := 'Registros localizados: ' + FormatFloat('000000', DataSource.DataSet.RecordCount);
end;

procedure TViewHerancasBuscar.DBGridDblClick(Sender: TObject);
begin
  btnSelecionar.Click;
end;

procedure TViewHerancasBuscar.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (not Odd(DataSource.DataSet.RecNo)) then
    DBGrid.Canvas.Brush.Color := $00DDDDDD;

  DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TViewHerancasBuscar.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnSelecionar.Click;
end;

procedure TViewHerancasBuscar.edtBuscarChange(Sender: TObject);
begin
  Self.BuscarDados;
end;

procedure TViewHerancasBuscar.edtBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case (Key) of
    VK_UP: DataSource.DataSet.Prior;
    VK_DOWN: DataSource.DataSet.Next;
  end;
end;

procedure TViewHerancasBuscar.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (not DataSource.DataSet.IsEmpty) then
    btnSelecionar.Click;
end;

procedure TViewHerancasBuscar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case (Key) of
    VK_F4:
    begin
      if (ssAlt in Shift) then
        Key := 0;
    end;
    VK_ESCAPE: btnFechar.Click;
  end;
end;

procedure TViewHerancasBuscar.FormShow(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
  edtBuscar.SetFocus;
end;

procedure TViewHerancasBuscar.rdGroupFiltrosClick(Sender: TObject);
begin
  edtBuscar.SetFocus;
end;

end.
