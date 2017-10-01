unit ServerModule;

interface

uses
  IdThreadSafe,
  MainModule,
  System.SyncObjs,
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  Vcl.ExtCtrls, uniGUIBaseClasses, uniGUIClasses, uniTimer;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
    procedure UniGUIServerModuleDestroy(Sender: TObject);
  private
    FMsgSenderThreads: TArray<TThread>;
    FTerminator: TIdThreadSafeBoolean;
  protected
    procedure FirstInit; override;
  public
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

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
var
  thread: TThread;
  t: Integer;
begin

  FTerminator := TIdThreadSafeBoolean.Create;
  FTerminator.Value := False;

  for t := 0 to 9 do
  FMsgSenderThreads := FMsgSenderThreads + [TThread.CreateAnonymousThread(
    procedure
    var
      i: Integer;
      session: TUniGUISession;
      mainModule: TUniMainModule;
    begin
      while not FTerminator.Value do
      begin

        SessionManager.Sessions.Lock;

        for i := 0 to SessionManager.Sessions.SessionList.Count-1 do
        begin
          session := TUniGuiSession(SessionManager.Sessions.SessionList[i]);

          mainModule := TUniMainModule(session.UniMainModule);
          if Assigned(mainModule) then
          begin
            mainModule.MsgQueue.PushItem(TThread.CurrentThread.Handle.ToHexString  + ' - ' +  DateTimeToStr(Now));
          end;
        end;

        SessionManager.Sessions.Unlock;

        Sleep(1000);

      end;
    end
  )];

  for thread in FMsgSenderThreads do
  begin
   thread.FreeOnTerminate := False;
   thread.Start;
  end;

end;

procedure TUniServerModule.UniGUIServerModuleDestroy(Sender: TObject);
var
  thread: TThread;
begin

  FTerminator.Value := True;
  for thread in FMsgSenderThreads do
  begin
    thread.WaitFor;
    thread.Free;
  end;

  FTerminator.Free;

end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
