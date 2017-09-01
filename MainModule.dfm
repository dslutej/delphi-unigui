object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 336
  Width = 521
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    Left = 128
    Top = 30
  end
  object UniTable1: TUniTable
    TableName = 'actor'
    Connection = UniServerModule.UniConnection1
    Active = True
    Left = 49
    Top = 24
  end
end
