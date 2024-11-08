unit Model.Cidades.DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Model.Conexao.DM;

type
  TModelCidadesDM = class(TDataModule)
    QCidadesCadastro: TFDQuery;
    QCidadesBusca: TFDQuery;
    QCidadesCadastroCODIGO: TIntegerField;
    QCidadesCadastroNOME: TStringField;
    QCidadesCadastroUF: TStringField;
    QCidadesCadastroCODIGO_IBGE: TIntegerField;
    QCidadesBuscaCODIGO: TIntegerField;
    QCidadesBuscaNOME: TStringField;
    QCidadesBuscaUF: TStringField;
    QCidadesBuscaCODIGO_IBGE: TIntegerField;
  private
    { Private declarations }
  public
    procedure CidadesBuscar(const ACondicao: string);
    procedure CadastrarGet(const ACodCidade: Integer);
  end;

var
  ModelCidadesDM: TModelCidadesDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TModelCidadesDM }



procedure TModelCidadesDM.CadastrarGet(const ACodCidade: Integer);
begin
  QCidadesCadastro.Close;
  QCidadesCadastro.SQL.Clear;
  QCidadesCadastro.SQL.Add('select * from cidades');
  QCidadesCadastro.SQL.Add('where codigo = :codigo');
  QCidadesCadastro.ParamByName('codigo').AsInteger := ACodCidade;
  QCidadesCadastro.Open;
end;

procedure TModelCidadesDM.CidadesBuscar(const ACondicao: string);
begin
  QCidadesBusca.Close;
  QCidadesBusca.SQL.Clear;
  QCidadesBusca.SQL.Add('select * from cidades');
  QCidadesBusca.SQL.Add(ACondicao);
  QCidadesBusca.Open;
end;

end.
