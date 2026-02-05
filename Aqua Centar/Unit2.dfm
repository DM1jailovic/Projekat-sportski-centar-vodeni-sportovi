object DataModule2: TDataModule2
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\David\Database\AQUACENTAR.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 96
    Top = 224
  end
  object UserQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Users')
    Left = 288
    Top = 96
  end
  object UserTable: TFDTable
    Active = True
    IndexFieldNames = 'EMAIL'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Users'
    Left = 288
    Top = 360
    object UserTableEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 30
    end
    object UserTablePASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
    end
    object UserTableROLE: TStringField
      FieldName = 'ROLE'
      Origin = '"ROLE"'
      Required = True
      Size = 10
    end
    object UserTableNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 30
    end
  end
  object UserQuerySource: TDataSource
    DataSet = UserQuery
    Left = 488
    Top = 112
  end
  object UserTableSource: TDataSource
    DataSet = UserTable
    Left = 488
    Top = 352
  end
end
