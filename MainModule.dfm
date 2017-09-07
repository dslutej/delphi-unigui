object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 336
  Width = 521
  object UniConnection1: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'dvdrentals'
    Pooling = True
    Username = 'postgres'
    Server = 'localhost'
    Connected = True
    Left = 392
    Top = 48
    EncryptedPassword = '8FFF90FF8CFF8BFF98FF8DFF9AFF8CFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 264
    Top = 8
  end
end
