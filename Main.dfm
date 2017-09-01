object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 667
  ClientWidth = 929
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 929
    Height = 417
    Hint = ''
    DataSource = UniServerModule.UniDataSource1
    LoadMask.Message = 'Loading data...'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
end
