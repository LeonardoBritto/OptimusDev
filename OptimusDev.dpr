program OptimusDev;

uses
  Vcl.Forms,
  View.Principal in 'src\view\View.Principal.pas' {ViewPrincipal},
  Model.Conexao.DM in 'Src\Model\Conexao\Model.Conexao.DM.pas' {ModelConexaoDM: TDataModule},
  Model.Cidades.DM in 'Src\Model\Cidades\Model.Cidades.DM.pas' {ModelCidadesDM: TDataModule},
  View.Herancas.Buscar in 'Src\View\Herancas\View.Herancas.Buscar.pas' {ViewHerancasBuscar},
  View.Cidades.Buscar in 'Src\View\Cidades\View.Cidades.Buscar.pas' {ViewCidadesBuscar},
  View.Herancas.Cadastrar in 'Src\View\Herancas\View.Herancas.Cadastrar.pas' {ViewHerancasCadastrar},
  View.Cidades.Cadastrar in 'Src\View\Cidades\View.Cidades.Cadastrar.pas' {ViewCidadesCadastrar},
  Model.Pessoas.DM in 'Src\Model\Pessoas\Model.Pessoas.DM.pas' {ModelPessoasDM: TDataModule},
  View.Pessoas.Buscar in 'Src\View\Pessoas\View.Pessoas.Buscar.pas' {ViewPessoasBuscar},
  Exceptions.FieldName in 'Src\Exceptions\Exceptions.FieldName.pas',
  RTTI.FieldName in 'Src\RTTI\RTTI.FieldName.pas',
  Utils in 'Src\Utils\Utils.pas',
  View.Pessoas.Cadastrar in 'Src\View\Pessoas\View.Pessoas.Cadastrar.pas' {ViewPessoasCadastrar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'OptimusDev - Sistema de Vendas';
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TModelConexaoDM, ModelConexaoDM);
  Application.CreateForm(TModelPessoasDM, ModelPessoasDM);
  Application.CreateForm(TViewPessoasBuscar, ViewPessoasBuscar);
  Application.CreateForm(TViewPessoasCadastrar, ViewPessoasCadastrar);
  Application.Run;
end.
