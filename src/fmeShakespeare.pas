unit fmeShakespeare;

interface

uses
  MainModule,

  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, MemDS, DBAccess, Uni, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid;

type
  TFrameShakespeare = class(TUniFrame)
    tableWork: TUniTable;
    UniDBGrid1: TUniDBGrid;
    sourceWork: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



end.
