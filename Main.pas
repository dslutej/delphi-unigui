unit Main;

interface

uses
  System.SyncObjs,
  fmeShakeSpeare,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniButton, uniSyntaxEditorBase, uniSyntaxEditorEx, uniSplitter,
  uniEdit, uniPanel, uniScreenMask, uniMemo, uniDBMemo, uniLabel, uniPageControl,
  uniGUIFrame, uniToolBar, uniBitBtn, uniMenuButton, uniTrackBar,
  uniImageList, uniSpeedButton, Vcl.Imaging.pngimage, uniImage, uniMultiItem,
  uniListBox, uniTimer;

type
  TMainForm = class(TUniForm)
    UniPageControl1: TUniPageControl;
    pnlLeft: TUniPanel;
    pnlTop: TUniPanel;
    UniPanel1: TUniPanel;
    UniImageList1: TUniImageList;
    UniTimer1: TUniTimer;
    UniPanel2: TUniPanel;
    UniListBox1: TUniListBox;
    procedure UniFormCreate(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
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

  for i := 1 to 15 do
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

procedure TMainForm.UniTimer1Timer(Sender: TObject);
var
  str: string;
begin
  UniListBox1.BeginUpdate;
  UniSession.AddJS('Ext.suspendLayouts()');
  while UniMainModule.MsgQueue.PopItem(str)=wrSignaled do
  begin
    UniListBox1.Items.Insert(0, str);
  end;
  while UniListBox1.Items.Count>32 do
  begin
    UniListBox1.Items.Delete(UniListBox1.Items.Count-1);
  end;
  UniSession.AddJS('Ext.resumeLayouts(true)');
  UniListBox1.EndUpdate;


end;

initialization
  RegisterAppFormClass(TMainForm);

end.
