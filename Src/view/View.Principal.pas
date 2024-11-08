unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TViewPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    Financeiro1: TMenuItem;
    Fiscal1: TMenuItem;
    Cidades1: TMenuItem;
    Cidades2: TMenuItem;
    Pessoas1: TMenuItem;
    Pessoas2: TMenuItem;
    CategoriadeProdutos1: TMenuItem;
    CategoriadeProdutos2: TMenuItem;
    Vendas1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Configuraes1: TMenuItem;
    Configuraes2: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    procedure Cidades1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Pessoas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses
  View.Cidades.Buscar, View.Pessoas.Buscar;

procedure TViewPrincipal.Cidades1Click(Sender: TObject);
begin
  ViewCidadesBuscar := TViewCidadesBuscar.Create(nil);
  try
    ViewCidadesBuscar.ShowModal;
  finally
    FreeAndNil(ViewCidadesBuscar);
  end;
end;

procedure TViewPrincipal.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

procedure TViewPrincipal.Pessoas1Click(Sender: TObject);
begin
  ViewPessoasBuscar := TViewPessoasBuscar.Create(nil);
  try
    ViewPessoasBuscar.ShowModal;
  finally
    FreeAndNil(ViewPessoasBuscar);
  end;
end;

end.
