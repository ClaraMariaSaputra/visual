object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 282
  ClientWidth = 714
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object id_tamu: TLabel
    Left = 48
    Top = 40
    Width = 38
    Height = 13
    Caption = 'id_tamu'
  end
  object nama_pemesan: TLabel
    Left = 48
    Top = 82
    Width = 75
    Height = 13
    Caption = 'nama_pemesan'
  end
  object alamat: TLabel
    Left = 48
    Top = 125
    Width = 32
    Height = 13
    Caption = 'alamat'
  end
  object telepon: TLabel
    Left = 48
    Top = 168
    Width = 36
    Height = 13
    Caption = 'telepon'
  end
  object cari: TLabel
    Left = 360
    Top = 224
    Width = 17
    Height = 13
    Caption = 'cari'
  end
  object TAMU: TLabel
    Left = 96
    Top = 8
    Width = 56
    Height = 23
    Caption = 'TAMU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 136
    Top = 82
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 136
    Top = 125
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 136
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit4KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 344
    Top = 69
    Width = 320
    Height = 120
    DataSource = DataModule2.DStamu
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object simpan: TButton
    Left = 344
    Top = 30
    Width = 75
    Height = 25
    Caption = 'simpan'
    TabOrder = 5
    OnClick = simpanClick
  end
  object hapus: TButton
    Left = 425
    Top = 30
    Width = 75
    Height = 25
    Caption = 'hapus'
    TabOrder = 6
    OnClick = hapusClick
  end
  object ubah: TButton
    Left = 512
    Top = 30
    Width = 75
    Height = 25
    Caption = 'ubah'
    TabOrder = 7
  end
  object bersih: TButton
    Left = 593
    Top = 30
    Width = 75
    Height = 25
    Caption = 'bersih'
    TabOrder = 8
    OnClick = bersihClick
  end
  object Edit11: TEdit
    Left = 408
    Top = 218
    Width = 256
    Height = 21
    TabOrder = 9
    OnChange = Edit11Change
  end
end
