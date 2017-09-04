object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 336
  Width = 521
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 128
    Top = 64
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from film '
      'where lower(title) like lower(:title_search)'
      'order by title;')
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
    Left = 136
    Top = 104
  end
  object UniQuery2: TUniQuery
    Connection = UniConnection1
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
    Left = 56
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
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
  object UniConnection1: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'dvdrentals'
    Pooling = True
    Username = 'postgres'
    Server = 'localhost'
    Left = 16
    Top = 16
    EncryptedPassword = '8FFF90FF8CFF8BFF98FF8DFF9AFF8CFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 264
    Top = 8
  end
end
