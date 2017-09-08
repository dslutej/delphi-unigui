unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniButton, uniSyntaxEditorBase, uniSyntaxEditorEx, uniSplitter,
  uniEdit, uniPanel, uniScreenMask, uniMemo, uniDBMemo, uniLabel, uniPageControl,
  uniGUIFrame, fmeDvdRentals, uniToolBar, uniBitBtn, uniMenuButton, uniTrackBar;

type
  TMainForm = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniTrackBar1: TUniTrackBar;
    procedure UniFormCreate(Sender: TObject);
  private
    FDvdRentals: TFrameDvdRentals;
  public
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

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  FDvdRentals := TFrameDvdRentals.Create(UniTabSheet1);
  FDvdRentals.Parent := UniTabSheet1;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
