unit Main;

interface

uses
  fmeShakeSpeare,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniButton, uniSyntaxEditorBase, uniSyntaxEditorEx, uniSplitter,
  uniEdit, uniPanel, uniScreenMask, uniMemo, uniDBMemo, uniLabel, uniPageControl,
  uniGUIFrame, uniToolBar, uniBitBtn, uniMenuButton, uniTrackBar,
  uniImageList, uniSpeedButton, Vcl.Imaging.pngimage, uniImage;

type
  TMainForm = class(TUniForm)
    UniPageControl1: TUniPageControl;
    pnlLeft: TUniPanel;
    pnlTop: TUniPanel;
    UniPanel1: TUniPanel;
    UniImageList1: TUniImageList;
    procedure UniFormCreate(Sender: TObject);
  private
    FShakeSpeares: TArray<TFrameShakespeare>;
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
var
  newPage: TUniTabSheet;
  i: Integer;
begin

  for i := 1 to 5 do
  begin
    newPage := TUniTabSheet.Create(UniPageControl1);

    newPage.PageControl := UniPageControl1;
    newPage.Caption     := 'Shakespeare ' + i.ToString;

    FShakeSpeares := FShakeSpeares + [TFrameShakespeare.Create(newPage)];

    with FShakeSpeares[High(FShakeSpeares)] do
    begin
      Parent  := newPage;
      Align   := alClient;
    end;
  end;

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
