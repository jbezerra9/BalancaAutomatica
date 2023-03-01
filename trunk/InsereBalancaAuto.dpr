program InsereBalancaAuto;

uses
  Vcl.Forms,
  uFuncoes in 'uFuncoes.pas',
  ulibsis in 'ulibsis.pas' {FLibsis},
  uMensagem in 'uMensagem.pas' {FrMensagem},
  uModulo in 'uModulo.pas' {dm: TDataModule},
  uPrinc in 'uPrinc.pas' {fPrinc},
  Utransacao in 'Utransacao.pas',
  usplash in 'usplash.pas' {FSplash},
  upesqcad in 'upesqcad.pas' {FPesqcad},
  uselecionaprod in 'uselecionaprod.pas' {fSelecionaProd},
  urelPagamento in 'urelPagamento.pas' {frelpagamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFSplash, FSplash);
  Application.Run;
end.
