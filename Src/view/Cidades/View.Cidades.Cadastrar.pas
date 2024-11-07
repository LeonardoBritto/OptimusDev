unit View.Cidades.Cadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Herancas.Cadastrar, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Model.Cidades.DM, Vcl.DBCtrls,
  Vcl.Mask;

type
  TViewCidadesCadastrar = class(TViewHerancasCadastrar)
    Label1: TLabel;
    edtCodigo: TDBEdit;
    Label2: TLabel;
    edtNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtCodigoIBGE: TDBEdit;
    cBoxUF: TDBComboBox;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCodRegistroAlterar: Integer;
  public
    property CodRegistroAlterar: Integer read FCodRegistroAlterar write FCodRegistroAlterar;
  end;

implementation

{$R *.dfm}

procedure TViewCidadesCadastrar.btnGravarClick(Sender: TObject);
begin
  if (Trim(edtNome.Text).IsEmpty) then
  begin
    edtNome.SetFocus;
    raise Exception.Create('Preencha o campo nome!');
  end;

  if (Trim(cBoxUF.Text).IsEmpty) then
  begin
    cBoxUF.SetFocus;
    raise Exception.Create('Preencha o campo UF!');
  end;

  if (not Trim(edtCodigoIBGE.Text).IsEmpty) then
  begin
    if (Length(edtCodigoIBGE.Text) <> 7) then
    begin
      edtCodigoIBGE.SetFocus;
      raise Exception.Create('Código do IBGE deve conter 7 caracteres!');
    end;
  end;

  DataSource.DataSet.Post;
  inherited;
end;

procedure TViewCidadesCadastrar.FormCreate(Sender: TObject);
begin
  inherited;
  FCodRegistroAlterar := 0;
end;

procedure TViewCidadesCadastrar.FormShow(Sender: TObject);
begin
  inherited;
  ModelCidadesDM.CadastrarGet(FCodRegistroAlterar);

  if (DataSource.DataSet.IsEmpty) then
    DataSource.DataSet.Append
  else
    DataSource.DataSet.Edit;

    edtNome.SetFocus;
end;

end.
