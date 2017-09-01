object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 411
  Width = 546
  object UniConnection1: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'dvdrentals'
    Username = 'postgres'
    Server = 'localhost'
    Connected = True
    Left = 32
    Top = 24
    EncryptedPassword = '8FFF90FF8CFF8BFF98FF8DFF9AFF8CFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 128
    Top = 24
  end
  object UniTable1: TUniTable
    TableName = 'actor'
    Connection = UniConnection1
    Active = True
    Left = 145
    Top = 160
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    Left = 152
    Top = 232
  end
end
