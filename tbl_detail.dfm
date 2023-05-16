object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 364
  ClientWidth = 410
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object id_reservasi: TLabel
    Left = 40
    Top = 67
    Width = 58
    Height = 13
    Caption = 'id_reservasi'
  end
  object no_kamar: TLabel
    Left = 40
    Top = 104
    Width = 47
    Height = 13
    Caption = 'no_kamar'
  end
  object cari: TLabel
    Left = 40
    Top = 291
    Width = 17
    Height = 13
    Caption = 'cari'
  end
  object DETAIL: TLabel
    Left = 152
    Top = 24
    Width = 71
    Height = 23
    Caption = 'DETAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 136
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 152
    Width = 145
    Height = 120
    DataSource = DataModule2.DSdetail
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object simpan: TButton
    Left = 229
    Top = 152
    Width = 75
    Height = 25
    Caption = 'simpan'
    TabOrder = 3
    OnClick = simpanClick
  end
  object hapus: TButton
    Left = 229
    Top = 183
    Width = 75
    Height = 25
    Caption = 'hapus'
    TabOrder = 4
    OnClick = hapusClick
  end
  object ubah: TButton
    Left = 229
    Top = 214
    Width = 75
    Height = 25
    Caption = 'ubah'
    TabOrder = 5
    OnClick = ubahClick
  end
  object bersih: TButton
    Left = 229
    Top = 245
    Width = 75
    Height = 25
    Caption = 'bersih'
    TabOrder = 6
    OnClick = bersihClick
  end
  object Edit3: TEdit
    Left = 96
    Top = 288
    Width = 296
    Height = 21
    TabOrder = 7
    OnChange = Edit3Change
  end
end
