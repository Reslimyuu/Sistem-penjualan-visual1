object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 378
  Top = 147
  Height = 332
  Width = 407
  object dskategori: TDataSource
    DataSet = zkategori
    Left = 80
    Top = 96
  end
  object zconnection: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 'C:\Windows\System\libmysql.dll'
    Left = 24
    Top = 32
  end
  object zkategori: TZQuery
    Connection = zconnection
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 80
    Top = 32
  end
  object zsatuan: TZQuery
    Connection = zconnection
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 136
    Top = 32
  end
  object zbarang: TZQuery
    Connection = zconnection
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 192
    Top = 32
  end
  object zsupplier: TZQuery
    Connection = zconnection
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 248
    Top = 32
  end
  object zuser: TZQuery
    Params = <>
    Left = 304
    Top = 32
  end
  object dssatuan: TDataSource
    DataSet = zsatuan
    Left = 136
    Top = 96
  end
  object dsbarang: TDataSource
    DataSet = zbarang
    Left = 192
    Top = 96
  end
  object dssupplier: TDataSource
    DataSet = zsupplier
    Left = 248
    Top = 96
  end
  object dsuser: TDataSource
    Left = 304
    Top = 96
  end
end
