object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 781
  ClientWidth = 1126
  Caption = 'MainForm'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 49
    Width = 1126
    Height = 591
    Hint = ''
    DataSource = UniMainModule.UniDataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
    WebOptions.Paged = False
    WebOptions.FetchAll = True
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Summary.Enabled = True
    Summary.GrandTotal = True
    Columns = <
      item
        FieldName = 'title'
        Title.Caption = 'title'
        Width = 300
      end
      item
        FieldName = 'description'
        Title.Caption = 'description'
        Width = 64
      end
      item
        FieldName = 'release_year'
        Title.Caption = 'release_year'
        Width = 67
      end
      item
        FieldName = 'language_id'
        Title.Caption = 'language_id'
        Width = 64
      end
      item
        FieldName = 'rental_duration'
        Title.Caption = 'rental_duration'
        Width = 78
      end
      item
        FieldName = 'rental_rate'
        Title.Caption = 'rental_rate'
        Width = 64
      end
      item
        FieldName = 'length'
        Title.Caption = 'length'
        Width = 64
      end
      item
        FieldName = 'rating'
        Title.Caption = 'rating'
        Width = 64
      end
      item
        FieldName = 'special_features'
        Title.Caption = 'special_features'
        Width = 83
      end
      item
        FieldName = 'fulltext'
        Title.Caption = 'fulltext'
        Width = 64
        Expanded = True
      end>
  end
  object UniSyntaxEditEx1: TUniSyntaxEditEx
    Left = 0
    Top = 640
    Width = 1126
    Height = 141
    Hint = ''
    Language = 'SQL'
    Font.Height = -13
    Font.Name = 'Courier New'
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
  end
  object UniSplitter1: TUniSplitter
    Left = 0
    Top = 43
    Width = 1126
    Height = 6
    Cursor = crVSplit
    Hint = ''
    Align = alTop
    ParentColor = False
    Color = clBtnFace
    ExplicitTop = 259
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 43
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    Caption = 'UniPanel1'
    ExplicitTop = 8
    object edtFilter: TUniEdit
      Left = 0
      Top = 3
      Width = 230
      Hint = ''
      Text = ''
      TabOrder = 1
      CheckChangeDelay = 100
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Executing'
      ScreenMask.Target = edtFilter
      FieldLabel = 'Filter'
      OnKeyPress = edtFilterKeyPress
    end
  end
end
