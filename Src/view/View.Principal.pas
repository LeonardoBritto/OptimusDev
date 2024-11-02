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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

end.
