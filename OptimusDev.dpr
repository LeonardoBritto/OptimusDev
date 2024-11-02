program OptimusDev;

uses
  Vcl.Forms,
  View.Principal in 'src\view\View.Principal.pas' {ViewPrincipal},
  Model.Conexao.DM in 'Src\Model\Conexao\Model.Conexao.DM.pas' {ModelConexaoDM: TDataModule},
  Model.Cidades.DM in 'Src\Model\Cidades\Model.Cidades.DM.pas' {ModelCidadesDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'OptimusDev - Sistema de Vendas';
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TModelConexaoDM, ModelConexaoDM);
  Application.CreateForm(TModelCidadesDM, ModelCidadesDM);
  Application.Run;
end.
