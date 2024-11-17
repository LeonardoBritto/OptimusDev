unit View.Herancas.Cadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB;

type
  TViewHerancasCadastrar = class(TForm)
    pnDados: TPanel;
    pnRodape: TPanel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    DataSource: TDataSource;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    FCodRegistroAlterar: Integer;
    FUltCod: Integer;
  public
    property CodRegistroAlterar: Integer read FCodRegistroAlterar write FCodRegistroAlterar;
    property UltCod: Integer read FUltCod;
  end;

var
  ViewHerancasCadastrar: TViewHerancasCadastrar;

implementation

{$R *.dfm}

procedure TViewHerancasCadastrar.btnCancelarClick(Sender: TObject);
begin
  if (DataSource.DataSet.State in [dsInsert, dsEdit]) then
    DataSource.DataSet.Cancel;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TViewHerancasCadastrar.btnGravarClick(Sender: TObject);
begin
  FUltCod := DataSource.DataSet.FieldByName('codigo').AsInteger;
  Self.Close;
  Self.ModalResult := mrOk;
end;

procedure TViewHerancasCadastrar.FormCreate(Sender: TObject);
begin
  FCodRegistroAlterar := 0;
end;

procedure TViewHerancasCadastrar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case (Key) of
    VK_F3: btnGravar.Click;
    VK_F4:
    begin
      if (ssAlt in Shift) then
        Key := 0;
    end;
    VK_ESCAPE: btnCancelar.Click;
  end;
end;

procedure TViewHerancasCadastrar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(CM_DIALOGKEY, VK_TAB, 0);
    Key := #0;
  end;
end;

end.
