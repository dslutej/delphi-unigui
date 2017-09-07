program uniGUI_playground;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  frmLogin in 'src\frmLogin.pas' {UniLoginForm1: TUniLoginForm},
  fmeDvdRentals in 'src\fmeDvdRentals.pas' {FrameDvdRentals: TUniFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
