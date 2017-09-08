unit fmeDvdRentals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniMemo, uniDBMemo, uniBasicGrid,
  uniDBGrid, uniEdit, uniGUIBaseClasses, uniPanel, Data.DB, MemDS, DBAccess, Uni;

type
  TFrameDvdRentals = class(TUniFrame)
    UniPanel1: TUniPanel;
    edtFilter: TUniEdit;
    UniPanel2: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel3: TUniPanel;
    UniDBMemo1: TUniDBMemo;
    UniDBGrid2: TUniDBGrid;
    UniDBMemo2: TUniDBMemo;
    UniLabel1: TUniLabel;
    UniDataSource1: TUniDataSource;
    UniQuery1: TUniQuery;
    UniDataSource2: TUniDataSource;
    UniQuery2: TUniQuery;
    UniQuery2first_name: TStringField;
    UniQuery2last_name: TStringField;
    UniQuery2Name: TStringField;
    procedure edtFilterKeyPress(Sender: TObject; var Key: Char);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniQuery2NameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    procedure ExecuteFilmQuery(const filter: string);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule;



{ TUniFrame1 }

procedure TFrameDvdRentals.edtFilterKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edtFilter.ScreenMask.Enabled := True;
    ExecuteFilmQuery(edtFilter.Text);
    edtFilter.ScreenMask.Enabled := False;
  end;
end;

procedure TFrameDvdRentals.ExecuteFilmQuery(const filter: string);
begin
  UniDBGrid1.BeginUpdate;
  UniQuery1.Close;
  UniQuery2.Close;
  UniQuery1.ParamByName('title_search').AsString := '%' + filter + '%';
  UniQuery1.Open;
  UniQuery2.Open;
  UniDBGrid1.EndUpdate;
end;

procedure TFrameDvdRentals.UniFrameCreate(Sender: TObject);
begin
  ExecuteFilmQuery('');
end;

procedure TFrameDvdRentals.UniQuery2NameGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := UniQuery2first_name.AsString + ' ' + UniQuery2last_name.AsString;
end;

end.
