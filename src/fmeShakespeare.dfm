object FrameShakespeare: TFrameShakespeare
  Left = 0
  Top = 0
  Width = 1058
  Height = 758
  TabOrder = 0
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 1058
    Height = 758
    Hint = ''
    DataSource = sourceWork
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object tableWork: TUniTable
    TableName = 'work'
    Connection = UniMainModule.connectionShakespeare
    Active = True
    Left = 48
    Top = 56
  end
  object sourceWork: TUniDataSource
    DataSet = tableWork
    Left = 136
    Top = 32
  end
end
