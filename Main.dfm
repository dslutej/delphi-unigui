object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 695
  ClientWidth = 797
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniSplitter1: TUniSplitter
    Left = 0
    Top = 25
    Width = 797
    Height = 6
    Cursor = crVSplit
    Hint = ''
    Align = alTop
    ParentColor = False
    Color = clBtnFace
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 25
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Caption = ''
    object edtFilter: TUniEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 230
      Height = 17
      Hint = ''
      Text = ''
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
      CheckChangeDelay = 100
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Executing'
      ScreenMask.Target = edtFilter
      FieldLabel = 'Filter'
      OnKeyPress = edtFilterKeyPress
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 31
    Width = 797
    Height = 664
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    Caption = 'UniPanel2'
    object UniDBGrid1: TUniDBGrid
      Left = 1
      Top = 1
      Width = 471
      Height = 662
      Hint = ''
      DataSource = UniMainModule.UniDataSource1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
      WebOptions.Paged = False
      WebOptions.FetchAll = True
      LoadMask.Message = 'Loading data...'
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      Summary.Enabled = True
      Summary.GrandTotal = True
      Columns = <
        item
          FieldName = 'title'
          Title.Caption = 'title'
          Width = 246
        end
        item
          FieldName = 'release_year'
          Title.Caption = 'release_year'
          Width = 67
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
        end>
    end
    object UniPanel3: TUniPanel
      Left = 472
      Top = 1
      Width = 324
      Height = 662
      Hint = ''
      Align = alRight
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 2
      Caption = 'UniPanel3'
      object UniDBMemo1: TUniDBMemo
        Left = 1
        Top = 1
        Width = 322
        Height = 112
        Hint = ''
        DataField = 'description'
        DataSource = UniMainModule.UniDataSource1
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object UniDBGrid2: TUniDBGrid
        Left = 1
        Top = 238
        Width = 322
        Height = 223
        Hint = ''
        DataSource = UniMainModule.UniDataSource2
        Options = [dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        Columns = <
          item
            FieldName = 'Name'
            Title.Caption = 'Name'
            Width = 274
          end>
      end
      object UniDBMemo2: TUniDBMemo
        Left = 1
        Top = 113
        Width = 322
        Height = 112
        Hint = ''
        DataField = 'rating'
        DataSource = UniMainModule.UniDataSource1
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
      end
      object UniLabel1: TUniLabel
        Left = 1
        Top = 225
        Width = 79
        Height = 13
        Hint = ''
        Caption = 'Featuring actors'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
      end
    end
  end
end
