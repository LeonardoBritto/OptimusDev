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
    procedure FormShow(Sender: TObject);
  private
  public
  end;

implementation

{$R *.dfm}

uses
  Exceptions.FieldName;

procedure TViewCidadesCadastrar.btnGravarClick(Sender: TObject);
begin
  try
    DataSource.DataSet.Post;
  except
    on E: ExceptionsFieldName do
    begin
      ShowMessage('Erro: ' + E.Message + sLineBreak + 'FieldName: ' + E.FieldName);
      Exit;
    end;
  end;
  inherited;
end;

procedure TViewCidadesCadastrar.FormShow(Sender: TObject);
begin
  inherited;
  ModelCidadesDM.CadastrarGet(inherited CodRegistroAlterar);

  if (DataSource.DataSet.IsEmpty) then
    DataSource.DataSet.Append
  else
    DataSource.DataSet.Edit;

    edtNome.SetFocus;
end;

end.
