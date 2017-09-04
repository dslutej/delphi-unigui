unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, DBAccess, Uni, MemDS,
  UniProvider, PostgreSQLUniProvider;

type
  TUniMainModule = class(TUniGUIMainModule)
    UniDataSource1: TUniDataSource;
    UniQuery1: TUniQuery;
    UniDataSource2: TUniDataSource;
    UniQuery2: TUniQuery;
    UniQuery2first_name: TStringField;
    UniQuery2last_name: TStringField;
    UniQuery2Name: TStringField;
    UniConnection1: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    procedure UniQuery2NameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
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

procedure TUniMainModule.UniQuery2NameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := UniQuery2first_name.AsString + ' ' + UniQuery2last_name.AsString;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
