unit MainModule;

interface

uses
  System.Generics.Collections,

  uniGUIMainModule, SysUtils, Classes, Data.DB, DBAccess, Uni, MemDS,
  UniProvider, PostgreSQLUniProvider, uniGUIBaseClasses, uniGUIClasses, uniTimer;

type
  TUniMainModule = class(TUniGUIMainModule)
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    connectionShakespeare: TUniConnection;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure UniGUIMainModuleDestroy(Sender: TObject);
  private
    FMsgQueue: TThreadedQueue<string>;
  public
    property MsgQueue: TThreadedQueue<string> read FMsgQueue;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
  FMsgQueue := TThreadedQueue<string>.Create(16, 0, 0);
end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
  FMsgQueue.Free;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
