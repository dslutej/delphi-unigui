unit ServerModule;

interface

uses
  MainModule,
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  Vcl.ExtCtrls, uniGUIBaseClasses, uniGUIClasses, uniTimer;

type
  TUniServerModule = class(TUniGUIServerModule)
    Timer1: TTimer;
    procedure UniTimer1Timer(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniTimer1Timer(Sender: TObject);
var
  i: Integer;
  session: TUniGUISession;
  mainModule: TUniMainModule;
begin
  SessionManager.Sessions.Lock;

  for i := 0 to SessionManager.Sessions.SessionList.Count-1 do
  begin
    session := TUniGuiSession(SessionManager.Sessions.SessionList[i]);

    mainModule := TUniMainModule(session.UniMainModule);
    if Assigned(mainModule) then
    begin
      mainModule.MsgQueue.PushItem(DateTimeToStr(Now));
    end;
  end;

  SessionManager.Sessions.Unlock;

end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
