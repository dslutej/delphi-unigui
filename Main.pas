unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniButton, uniSyntaxEditorBase, uniSyntaxEditorEx, uniSplitter,
  uniEdit, uniPanel, uniScreenMask, uniMemo, uniDBMemo, uniLabel, uniPageControl,
  uniGUIFrame, fmeDvdRentals, uniToolBar, uniBitBtn, uniMenuButton, uniTrackBar,
  uniImageList, uniSpeedButton, Vcl.Imaging.pngimage, uniImage;

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
    pnlLeft: TUniPanel;
    pnlTop: TUniPanel;
    UniPanel1: TUniPanel;
    UniSpeedButton1: TUniSpeedButton;
    UniBitBtn1: TUniBitBtn;
    UniButton1: TUniButton;
    UniImageList1: TUniImageList;
    UniMenuButton1: TUniMenuButton;
    pnlTool1: TUniPanel;
    UniLabel1: TUniLabel;
    UniImage1: TUniImage;
    pnlTool2: TUniPanel;
    UniLabel2: TUniLabel;
    UniImage2: TUniImage;
    procedure UniFormCreate(Sender: TObject);
    procedure UniPageControl1Change(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure pnlTool1Click(Sender: TObject);
    procedure pnlTool2Click(Sender: TObject);
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


procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  UniPageControl1.ActivePage := UniTabSheet2;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  FDvdRentals := TFrameDvdRentals.Create(UniTabSheet1);
  FDvdRentals.Parent := UniTabSheet1;
end;

procedure TMainForm.UniPageControl1Change(Sender: TObject);
var
  i: Integer;
  page: TUniTabSheet;
begin
  for i:= 0 to UniPageControl1.PageCount-1 do
  begin
    page := UniPageControl1.Pages[i];
  end;
end;

procedure TMainForm.pnlTool1Click(Sender: TObject);
begin
  UniPageControl1.ActivePage := UniTabSheet1;
  pnlTool1.Color := clBlue;
  pnlTool2.Color := clSkyBlue;
end;

procedure TMainForm.pnlTool2Click(Sender: TObject);
begin
  UniPageControl1.ActivePage := UniTabSheet2;
  pnlTool2.Color := clBlue;
  pnlTool1.Color := clSkyBlue;
end;

procedure TMainForm.UniSpeedButton1Click(Sender: TObject);
begin
  UniPageControl1.ActivePage := UniTabSheet1;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
