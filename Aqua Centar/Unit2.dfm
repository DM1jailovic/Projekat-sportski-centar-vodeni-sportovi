object DataModule2: TDataModule2
  Height = 480
  Width = 640
  object ACConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\David\Database\AQUACENTAR.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 32
  end
  object KQSource: TDataSource
    DataSet = KorisnikQuery
    Left = 32
    Top = 192
  end
  object KTSource: TDataSource
    DataSet = KorisnikTable
    Left = 32
    Top = 96
  end
  object KorisnikTable: TFDTable
    Active = True
    IndexFieldNames = 'ID_KOR'
    Connection = ACConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'KORISNIK'
    Left = 32
    Top = 48
    object KorisnikTableID_KOR: TIntegerField
      FieldName = 'ID_KOR'
      Origin = 'ID_KOR'
      Required = True
    end
    object KorisnikTableIME: TStringField
      FieldName = 'IME'
      Origin = 'IME'
      Required = True
    end
    object KorisnikTablePREZIME: TStringField
      FieldName = 'PREZIME'
      Origin = 'PREZIME'
      Required = True
    end
    object KorisnikTableKONTAKT_TELEFON: TIntegerField
      FieldName = 'KONTAKT_TELEFON'
      Origin = 'KONTAKT_TELEFON'
      Required = True
    end
    object KorisnikTableEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 30
    end
    object KorisnikTablePASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
      Size = 30
    end
    object KorisnikTablePASSWORDHASH: TStringField
      FieldName = 'PASSWORDHASH'
      Origin = 'PASSWORDHASH'
    end
    object KorisnikTablePASSWORDSALT: TStringField
      FieldName = 'PASSWORDSALT'
      Origin = 'PASSWORDSALT'
    end
  end
  object KorisnikQuery: TFDQuery
    Connection = ACConnection1
    SQL.Strings = (
      'Select * from korisnik')
    Left = 32
    Top = 144
  end
  object ZaposleniTable: TFDTable
    Active = True
    IndexFieldNames = 'ID_ZAP'
    Connection = ACConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'ZAPOSLENI'
    Left = 32
    Top = 240
    object ZaposleniTableID_ZAP: TIntegerField
      FieldName = 'ID_ZAP'
      Origin = 'ID_ZAP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZaposleniTableIME: TStringField
      FieldName = 'IME'
      Origin = 'IME'
      Required = True
    end
    object ZaposleniTablePREZIME: TStringField
      FieldName = 'PREZIME'
      Origin = 'PREZIME'
      Required = True
    end
    object ZaposleniTableKONTAKT_TELEFON: TIntegerField
      FieldName = 'KONTAKT_TELEFON'
      Origin = 'KONTAKT_TELEFON'
      Required = True
    end
    object ZaposleniTableEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 30
    end
    object ZaposleniTablePASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
    end
    object ZaposleniTablePLATA: TIntegerField
      FieldName = 'PLATA'
      Origin = 'PLATA'
      Required = True
    end
    object ZaposleniTableSPECIJALIZACIJA: TStringField
      FieldName = 'SPECIJALIZACIJA'
      Origin = 'SPECIJALIZACIJA'
      Required = True
      Size = 50
    end
    object ZaposleniTablePASSWORDHASH: TStringField
      FieldName = 'PASSWORDHASH'
      Origin = 'PASSWORDHASH'
    end
    object ZaposleniTablePASSWORDSALT: TStringField
      FieldName = 'PASSWORDSALT'
      Origin = 'PASSWORDSALT'
    end
  end
  object ZTSource: TDataSource
    DataSet = ZaposleniTable
    Left = 32
    Top = 288
  end
  object ZaposleniQuery: TFDQuery
    Connection = ACConnection1
    SQL.Strings = (
      'Select * from Zaposleni')
    Left = 32
    Top = 336
  end
  object ZQSource: TDataSource
    DataSet = ZaposleniQuery
    Left = 32
    Top = 384
  end
  object OpremaTable: TFDTable
    Active = True
    IndexFieldNames = 'ID_OPREME'
    Connection = ACConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'OPREMA'
    Left = 120
    Top = 48
    object OpremaTableID_OPREME: TIntegerField
      FieldName = 'ID_OPREME'
      Origin = 'ID_OPREME'
      Required = True
    end
    object OpremaTableNAZIV: TStringField
      FieldName = 'NAZIV'
      Origin = 'NAZIV'
      Required = True
      Size = 50
    end
    object OpremaTableTIP: TStringField
      FieldName = 'TIP'
      Origin = 'TIP'
      Required = True
      Size = 30
    end
    object OpremaTableCENA: TIntegerField
      FieldName = 'CENA'
      Origin = 'CENA'
      Required = True
    end
    object OpremaTableSTANJE: TIntegerField
      FieldName = 'STANJE'
      Origin = 'STANJE'
      Required = True
    end
  end
  object OpremaQuery: TFDQuery
    Active = True
    Connection = ACConnection1
    SQL.Strings = (
      'Select * from Oprema')
    Left = 120
    Top = 144
  end
  object OTSource: TDataSource
    DataSet = OpremaTable
    Left = 120
    Top = 96
  end
  object OQSource: TDataSource
    DataSet = OpremaQuery
    Left = 120
    Top = 192
  end
  object RezOpremeQuery: TFDQuery
    Active = True
    Connection = ACConnection1
    SQL.Strings = (
      'Select * from rezervacijaopreme')
    Left = 120
    Top = 240
  end
  object ROQSource: TDataSource
    DataSet = RezOpremeQuery
    Left = 120
    Top = 288
  end
  object AktivnostQuery: TFDQuery
    Active = True
    Connection = ACConnection1
    SQL.Strings = (
      'Select * from aktivnost')
    Left = 120
    Top = 336
  end
  object ASource: TDataSource
    DataSet = AktivnostQuery
    Left = 120
    Top = 384
  end
  object RezAktivnostiQuery: TFDQuery
    Active = True
    Connection = ACConnection1
    SQL.Strings = (
      'Select * from RezervacijaAktivnosti')
    Left = 224
    Top = 48
  end
  object RASource: TDataSource
    DataSet = RezAktivnostiQuery
    Left = 224
    Top = 96
  end
end
