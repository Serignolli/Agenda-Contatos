object DM: TDM
  OldCreateOrder = False
  Height = 386
  Width = 589
  object SQLConnection: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMSSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver240.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMsSqlMetaDataCommandFactory,DbxMSSQLDr' +
        'iver240.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMsSqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMSSQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMSSQL'
      'LibraryName=dbxmss.dll'
      'VendorLib=sqlncli10.dll'
      'VendorLibWin64=sqlncli10.dll'
      'MaxBlobSize=-1'
      'OSAuthentication=False'
      'PrepareSQL=True'
      'SchemaOverride=sa.dbo'
      'DriverName=MSSQL'
      'HostName=PC-MORENO-1\SLIPKNOT'
      'Database=Schedule'
      'User_Name=sa'
      'Password=201422Stx@'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OS Authentication=False'
      'Prepare SQL=False'
      'ConnectTimeout=60'
      'Mars_Connection=False')
    Left = 40
    Top = 8
  end
  object QryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 128
    Top = 8
  end
  object SQLQuery: TSQLQuery
    DataSource = DataSource
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 64
  end
  object DataSetProvider: TDataSetProvider
    DataSet = SQLQuery
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 40
    Top = 120
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 40
    Top = 232
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from contacts'
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 40
    Top = 176
    object ClientDataSetid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object ClientDataSetname: TWideStringField
      FieldName = 'name'
      Size = 200
    end
    object ClientDataSetphone: TWideStringField
      FieldName = 'phone'
      Size = 32
    end
    object ClientDataSetblocked: TBooleanField
      FieldName = 'blocked'
    end
    object ClientDataSetdate: TSQLTimeStampField
      FieldName = 'date'
    end
    object ClientDataSetobservations: TWideMemoField
      FieldName = 'observations'
      BlobType = ftWideMemo
      Size = 1
    end
  end
end
