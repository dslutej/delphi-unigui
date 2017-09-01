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
    Height = 265
    Hint = ''
    DataSource = UniMainModule.UniDataSource1
    WebOptions.Paged = False
    WebOptions.FetchAll = True
    LoadMask.Message = 'Loading data...'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object UniSyntaxEditEx1: TUniSyntaxEditEx
    Left = 0
    Top = 265
    Width = 929
    Height = 209
    Hint = ''
    Lines.Strings = (
      'select * from film;')
    Language = 'SQL'
    Font.Height = -13
    Font.Name = 'Courier New'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    ExplicitTop = 271
  end
  object UniButton1: TUniButton
    Left = 8
    Top = 496
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Execute'
    TabOrder = 2
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Executing Query'
    ScreenMask.Target = Owner
    OnClick = UniButton1Click
  end
end
