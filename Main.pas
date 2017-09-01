unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniButton, uniSyntaxEditorBase, uniSyntaxEditorEx;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniSyntaxEditEx1: TUniSyntaxEditEx;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, ServerModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniMainModule.UniQuery1.Close;
  UniDBGrid1.BeginUpdate;
  UniMainModule.UniQuery1.SQL.Assign(UniSyntaxEditEx1.Lines);
  UniDBGrid1.EndUpdate;
  UniMainModule.UniQuery1.Open;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
