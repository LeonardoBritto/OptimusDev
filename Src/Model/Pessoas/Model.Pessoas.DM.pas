unit Model.Pessoas.DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Model.Conexao.DM;

type
  TModelPessoasDM = class(TDataModule)
    QPessoasCadastro: TFDQuery;
    QPessoasBusca: TFDQuery;
    QPessoasCadastroCODIGO: TIntegerField;
    QPessoasCadastroNOME: TStringField;
    QPessoasCadastroFANTASIA: TStringField;
    QPessoasCadastroCLIENTE: TStringField;
    QPessoasCadastroFORNECEDOR: TStringField;
    QPessoasCadastroCEP: TStringField;
    QPessoasCadastroCOD_CIDADE: TIntegerField;
    QPessoasCadastroENDERECO: TStringField;
    QPessoasCadastroNUMERO: TStringField;
    QPessoasCadastroBAIRRO: TStringField;
    QPessoasCadastroCOMPLEMENTO: TStringField;
    QPessoasCadastroTELEFONE: TStringField;
    QPessoasCadastroCELULAR: TStringField;
    QPessoasCadastroEMAIL: TStringField;
    QPessoasCadastroTIPO_JURIDICO: TIntegerField;
    QPessoasCadastroCPF: TStringField;
    QPessoasCadastroRG: TStringField;
    QPessoasCadastroCNPJ: TStringField;
    QPessoasCadastroIE: TStringField;
    QPessoasCadastroATIVO: TStringField;
    QPessoasCadastroDT_NASCIMENTO: TDateField;
    QPessoasCadastroDT_CADASTRO: TSQLTimeStampField;
    QPessoasBuscaCODIGO: TIntegerField;
    QPessoasBuscaNOME: TStringField;
    QPessoasBuscaFANTASIA: TStringField;
    QPessoasBuscaCLIENTE: TStringField;
    QPessoasBuscaFORNECEDOR: TStringField;
    QPessoasBuscaTELEFONE: TStringField;
    QPessoasBuscaCELULAR: TStringField;
    QPessoasBuscaENDERECO: TStringField;
    QPessoasBuscaCIDADE: TStringField;
    QPessoasBuscaUF: TStringField;
  private
  public
    procedure PessoasBuscar(const ACondicao: string);
    procedure CadastrarGet(const ACodPessoa: Integer);
  end;

var
  ModelPessoasDM: TModelPessoasDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

{ TModelPessoasDM }

procedure TModelPessoasDM.CadastrarGet(const ACodPessoa: Integer);
begin
  QPessoasCadastro.Close;
  QPessoasCadastro.SQL.Clear;
  QPessoasCadastro.SQL.Add('select * from pessoas');
  QPessoasCadastro.SQL.Add('where codigo = :codigo');
  QPessoasCadastro.ParamByName('codigo').AsInteger := ACodPessoa;
  QPessoasCadastro.Open;
end;

procedure TModelPessoasDM.PessoasBuscar(const ACondicao: string);
begin
  QPessoasBusca.Close;
  QPessoasBusca.SQL.Clear;
  QPessoasBusca.SQL.Add('select');
  QPessoasBusca.SQL.Add('p.codigo,');
  QPessoasBusca.SQL.Add('p.nome,');
  QPessoasBusca.SQL.Add('p.fantasia,');
  QPessoasBusca.SQL.Add('p.cliente,');
  QPessoasBusca.SQL.Add('p.fornecedor,');
  QPessoasBusca.SQL.Add('p.telefone,');
  QPessoasBusca.SQL.Add('p.celular,');
  QPessoasBusca.SQL.Add('p.endereco,');
  QPessoasBusca.SQL.Add('c.nome cidade,');
  QPessoasBusca.SQL.Add('c.uf');
  QPessoasBusca.SQL.Add('from pessoas p');
  QPessoasBusca.SQL.Add('join cidades c on (c.codigo = p.cod_cidade)');
  QPessoasBusca.SQL.Add(ACondicao);
  QPessoasBusca.Open;
end;

end.
