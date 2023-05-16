object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 411
  ClientWidth = 441
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object id_type: TLabel
    Left = 48
    Top = 56
    Width = 36
    Height = 13
    Caption = 'id_type'
  end
  object nama_kamar: TLabel
    Left = 48
    Top = 96
    Width = 61
    Height = 13
    Caption = 'nama_kamar'
  end
  object harga: TLabel
    Left = 48
    Top = 144
    Width = 28
    Height = 13
    Caption = 'harga'
  end
  object cari: TLabel
    Left = 48
    Top = 368
    Width = 17
    Height = 13
    Caption = 'cari'
  end
  object TIPE_KAMAR: TLabel
    Left = 152
    Top = 24
    Width = 127
    Height = 23
    Caption = 'TIPE_KAMAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 97
    Top = 229
    Width = 243
    Height = 120
    DataSource = DataModule2.DStipekamar
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object simpan: TButton
    Left = 48
    Top = 198
    Width = 75
    Height = 25
    Caption = 'simpan'
    TabOrder = 4
    OnClick = simpanClick
  end
  object hapus: TButton
    Left = 129
    Top = 198
    Width = 75
    Height = 25
    Caption = 'hapus'
    TabOrder = 5
    OnClick = hapusClick
  end
  object ubah: TButton
    Left = 210
    Top = 198
    Width = 75
    Height = 25
    Caption = 'ubah'
    TabOrder = 6
    OnClick = ubahClick
  end
  object bersih: TButton
    Left = 291
    Top = 198
    Width = 75
    Height = 25
    Caption = 'bersih'
    TabOrder = 7
    OnClick = bersihClick
  end
  object Edit11: TEdit
    Left = 97
    Top = 365
    Width = 256
    Height = 21
    TabOrder = 8
    OnChange = Edit11Change
  end
end
