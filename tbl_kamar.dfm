object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 395
  ClientWidth = 604
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object jenis_kamar: TLabel
    Left = 40
    Top = 32
    Width = 57
    Height = 13
    Caption = 'jenis_kamar'
  end
  object no_kamar: TLabel
    Left = 40
    Top = 64
    Width = 47
    Height = 13
    Caption = 'no_kamar'
  end
  object harga_weekday: TLabel
    Left = 40
    Top = 96
    Width = 77
    Height = 13
    Caption = 'harga_weekday'
  end
  object harga_weekend: TLabel
    Left = 40
    Top = 131
    Width = 77
    Height = 13
    Caption = 'harga_weekend'
  end
  object status_kamar: TLabel
    Left = 40
    Top = 160
    Width = 65
    Height = 13
    Caption = 'status_kamar'
  end
  object harga_high_season: TLabel
    Left = 40
    Top = 192
    Width = 94
    Height = 13
    Caption = 'harga_high_season'
  end
  object cari: TLabel
    Left = 48
    Top = 363
    Width = 17
    Height = 13
    Caption = 'cari'
  end
  object KAMAR: TLabel
    Left = 208
    Top = 3
    Width = 70
    Height = 23
    Caption = 'KAMAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 160
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 160
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 160
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 160
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 160
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 160
    Top = 195
    Width = 121
    Height = 21
    TabOrder = 5
    OnKeyPress = Edit6KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 227
    Width = 481
    Height = 120
    DataSource = DataModule2.DSkamar
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Edit7: TEdit
    Left = 96
    Top = 366
    Width = 345
    Height = 21
    Color = clCream
    TabOrder = 7
    OnChange = Edit7Change
  end
  object simpan: TButton
    Left = 328
    Top = 40
    Width = 75
    Height = 25
    Caption = 'simpan'
    TabOrder = 8
    OnClick = simpanClick
  end
  object hapus: TButton
    Left = 328
    Top = 84
    Width = 75
    Height = 25
    Caption = 'hapus'
    TabOrder = 9
    OnClick = hapusClick
  end
  object ubah: TButton
    Left = 328
    Top = 126
    Width = 75
    Height = 25
    Caption = 'ubah'
    TabOrder = 10
    OnClick = ubahClick
  end
  object bersih: TButton
    Left = 328
    Top = 168
    Width = 75
    Height = 25
    Caption = 'bersih'
    TabOrder = 11
    OnClick = bersihClick
  end
end
