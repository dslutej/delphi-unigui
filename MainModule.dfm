object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  DocumentKeyOptions = [dkDisableBackSpace, dkDisableESC, dkDisableF5]
  MonitoredKeys.Keys = <>
  Height = 336
  Width = 521
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 80
    Top = 176
  end
  object connectionShakespeare: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'shakespeare'
    Username = 'demo'
    Server = 'localhost'
    Connected = True
    Left = 56
    Top = 88
    EncryptedPassword = '9BFF9AFF92FF90FF'
  end
end
