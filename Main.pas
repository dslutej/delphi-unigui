unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniButton, uniSyntaxEditorBase, uniSyntaxEditorEx, uniSplitter,
  uniEdit, uniPanel, uniScreenMask;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniSyntaxEditEx1: TUniSyntaxEditEx;
    UniSplitter1: TUniSplitter;
    UniPanel1: TUniPanel;
    edtFilter: TUniEdit;
    procedure UniButton1Click(Sender: TObject);
    procedure edtFilterKeyPress(Sender: TObject; var Key: Char);
    procedure UniFormShow(Sender: TObject);
  private
    procedure ExecuteFilmQuery(const filter: string);
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

procedure TMainForm.edtFilterKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edtFilter.ScreenMask.Enabled := True;
    ExecuteFilmQuery(edtFilter.Text);
    edtFilter.ScreenMask.Enabled := False;
  end;
end;

procedure TMainForm.ExecuteFilmQuery(const filter: string);
begin
    UniDBGrid1.BeginUpdate;
    UniMainModule.UniQuery1.Close;
    UniMainModule.UniQuery1.ParamByName('title_search').AsString := '%' + filter + '%';
    UniSyntaxEditEx1.Lines.Assign(UniMainModule.UniQuery1.SQL);
    UniMainModule.UniQuery1.Open;
    UniDBGrid1.EndUpdate;
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniMainModule.UniQuery1.Close;
  UniMainModule.UniQuery1.SQL.Assign(UniSyntaxEditEx1.Lines);
  UniMainModule.UniQuery1.Open;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  ExecuteFilmQuery('');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
