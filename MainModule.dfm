object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 336
  Width = 521
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 128
    Top = 30
  end
  object UniQuery1: TUniQuery
    Connection = UniServerModule.UniConnection1
    ReadOnly = True
    Left = 40
    Top = 24
  end
end
