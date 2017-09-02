object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 336
  Width = 521
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 128
    Top = 24
  end
  object UniQuery1: TUniQuery
    Connection = UniServerModule.UniConnection1
    SQL.Strings = (
      'select * from film '
      'where lower(title) like lower(:title_search)'
      'order by title;')
    ReadOnly = True
    Active = True
    Left = 48
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'title_search'
        ParamType = ptInput
        Value = 'a'
      end>
  end
end
