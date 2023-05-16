object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 310
  Width = 797
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2110020034'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\2110020034\libmysql.dll'
    Left = 272
    Top = 48
  end
  object Querydetail: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_detail ORDER BY id_reservasi ASC')
    Params = <>
    Left = 88
    Top = 120
    object Querydetailid_reservasi: TWideStringField
      FieldName = 'id_reservasi'
      Required = True
      Size = 5
    end
    object Querydetailno_kamar: TWideStringField
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
  end
  object DSdetail: TDataSource
    DataSet = Querydetail
    Left = 88
    Top = 184
  end
  object Querykamar: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_kamar ORDER BY jenis_kamar ASC')
    Params = <>
    Left = 184
    Top = 120
    object Querykamarjenis_kamar: TWideStringField
      FieldName = 'jenis_kamar'
      Required = True
      Size = 10
    end
    object Querykamarno_kamar: TWideStringField
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
    object Querykamarharga_weekday: TIntegerField
      FieldName = 'harga_weekday'
      Required = True
    end
    object Querykamarharga_weekend: TIntegerField
      FieldName = 'harga_weekend'
      Required = True
    end
    object Querykamarstatus_kamar: TWideStringField
      FieldName = 'status_kamar'
      Required = True
      Size = 10
    end
    object Querykamarharga_high_season: TIntegerField
      FieldName = 'harga_high_season'
      Required = True
    end
  end
  object Queryreservasi: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_reservasi ORDER BY id_reservasi ASC')
    Params = <>
    Left = 272
    Top = 120
    object Queryreservasiid_reservasi: TWideStringField
      FieldName = 'id_reservasi'
      Required = True
      Size = 5
    end
    object Queryreservasiemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 15
    end
    object Queryreservasijenis_kamar: TWideStringField
      FieldName = 'jenis_kamar'
      Required = True
      Size = 10
    end
    object Queryreservasitgl_check_in: TWideStringField
      FieldName = 'tgl_check_in'
      Required = True
      Size = 15
    end
    object Queryreservasitgl_check_out: TWideStringField
      FieldName = 'tgl_check_out'
      Required = True
      Size = 15
    end
    object Queryreservasijumlah_kamar: TIntegerField
      FieldName = 'jumlah_kamar'
      Required = True
    end
    object Queryreservasiid_tamu: TWideStringField
      FieldName = 'id_tamu'
      Required = True
      Size = 5
    end
    object Queryreservasikebangsaan: TWideStringField
      FieldName = 'kebangsaan'
      Required = True
      Size = 15
    end
    object Queryreservasipekerjaan: TWideStringField
      FieldName = 'pekerjaan'
      Required = True
      Size = 10
    end
    object Queryreservasitotal_harga: TLargeintField
      FieldName = 'total_harga'
      Required = True
    end
  end
  object Querytamu: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_tamu ORDER BY id_tamu ASC')
    Params = <>
    Left = 360
    Top = 120
    object Querytamuid_tamu: TWideStringField
      FieldName = 'id_tamu'
      Required = True
      Size = 5
    end
    object Querytamunama_pemesan: TWideStringField
      FieldName = 'nama_pemesan'
      Required = True
      Size = 15
    end
    object Querytamualamat: TWideStringField
      FieldName = 'alamat'
      Required = True
      Size = 30
    end
    object Querytamutelepon: TWideStringField
      FieldName = 'telepon'
      Required = True
      Size = 12
    end
  end
  object Querytipekamar: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_tipekamar ORDER BY id_type ASC')
    Params = <>
    Left = 448
    Top = 120
    object Querytipekamarid_type: TIntegerField
      FieldName = 'id_type'
      Required = True
    end
    object Querytipekamarnama_kamar: TWideStringField
      FieldName = 'nama_kamar'
      Required = True
      Size = 15
    end
    object Querytipekamarharga: TIntegerField
      FieldName = 'harga'
      Required = True
    end
  end
  object DSkamar: TDataSource
    DataSet = Querykamar
    Left = 184
    Top = 184
  end
  object DSreservasi: TDataSource
    DataSet = Queryreservasi
    Left = 272
    Top = 184
  end
  object DStamu: TDataSource
    DataSet = Querytamu
    Left = 360
    Top = 184
  end
  object DStipekamar: TDataSource
    DataSet = Querytipekamar
    Left = 448
    Top = 184
  end
end
