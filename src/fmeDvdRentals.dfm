object FrameDvdRentals: TFrameDvdRentals
  Left = 0
  Top = 0
  Width = 998
  Height = 757
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 998
    Height = 25
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Caption = ''
    ExplicitTop = 8
    ExplicitWidth = 281
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
    Top = 25
    Width = 998
    Height = 732
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    Caption = 'UniPanel2'
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 789
    ExplicitHeight = 667
    object UniDBGrid1: TUniDBGrid
      Left = 1
      Top = 1
      Width = 672
      Height = 730
      Hint = ''
      DataSource = UniDataSource1
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
      Left = 673
      Top = 1
      Width = 324
      Height = 730
      Hint = ''
      Align = alRight
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 2
      Caption = 'UniPanel3'
      ExplicitLeft = 679
      ExplicitTop = 6
      object UniDBMemo1: TUniDBMemo
        Left = 1
        Top = 1
        Width = 322
        Height = 112
        Hint = ''
        DataField = 'description'
        DataSource = UniDataSource1
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
        DataSource = UniDataSource2
        Options = [dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        Columns = <
          item
            FieldName = 'first_name'
            Title.Caption = 'first_name'
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
        DataSource = UniDataSource1
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
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 168
    Top = 56
  end
  object UniQuery1: TUniQuery
    Connection = UniMainModule.UniConnection1
    SQL.Strings = (
      'select * from film '
      'where lower(title) like lower(:title_search)'
      'order by title;')
    Active = True
    Left = 64
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'title_search'
        ParamType = ptInput
        Value = 'a'
      end>
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniQuery2
    Left = 176
    Top = 136
  end
  object UniQuery2: TUniQuery
    Connection = UniMainModule.UniConnection1
    SQL.Strings = (
      '-- This is a comment... '
      ''
      'select actor.first_name, actor.last_name from actor'
      'inner join film_actor '
      'on actor.actor_id=film_actor.actor_id  '
      'order by first_name;')
    MasterSource = UniDataSource1
    MasterFields = 'film_id'
    DetailFields = 'film_id'
    Active = True
    Left = 64
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'film_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniQuery2first_name: TStringField
      FieldName = 'first_name'
      Required = True
      Size = 45
    end
    object UniQuery2last_name: TStringField
      FieldName = 'last_name'
      Required = True
      Size = 45
    end
    object UniQuery2Name: TStringField
      FieldKind = fkCalculated
      FieldName = 'Name'
      OnGetText = UniQuery2NameGetText
      Calculated = True
    end
  end
end
