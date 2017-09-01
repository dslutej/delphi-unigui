unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS;

type
  TUniServerModule = class(TUniGUIServerModule)
    UniConnection1: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
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

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
