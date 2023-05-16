object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 395
  ClientWidth = 659
  Color = clScrollBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object id_reservasi: TLabel
    Left = 32
    Top = 32
    Width = 58
    Height = 13
    Caption = 'id_reservasi'
  end
  object email: TLabel
    Left = 32
    Top = 64
    Width = 24
    Height = 13
    Caption = 'email'
  end
  object jenis_kamar: TLabel
    Left = 32
    Top = 96
    Width = 57
    Height = 13
    Caption = 'jenis_kamar'
  end
  object tgl_check_in: TLabel
    Left = 32
    Top = 128
    Width = 59
    Height = 13
    Caption = 'tgl_check_in'
  end
  object tgl_check_out: TLabel
    Left = 32
    Top = 160
    Width = 67
    Height = 13
    Caption = 'tgl_check_out'
  end
  object jumlah_kamar: TLabel
    Left = 32
    Top = 192
    Width = 66
    Height = 13
    Caption = 'jumlah_kamar'
  end
  object id_tamu: TLabel
    Left = 32
    Top = 224
    Width = 38
    Height = 13
    Caption = 'id_tamu'
  end
  object kebangsaan: TLabel
    Left = 32
    Top = 256
    Width = 58
    Height = 13
    Caption = 'kebangsaan'
  end
  object pekerjaan: TLabel
    Left = 32
    Top = 288
    Width = 48
    Height = 13
    Caption = 'pekerjaan'
  end
  object total_harga: TLabel
    Left = 32
    Top = 320
    Width = 56
    Height = 13
    Caption = 'total_harga'
  end
  object cari: TLabel
    Left = 336
    Top = 325
    Width = 17
    Height = 13
    Caption = 'cari'
  end
  object RESERVASI: TLabel
    Left = 401
    Top = 56
    Width = 111
    Height = 23
    Caption = 'RESERVASI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 112
    Top = 32
    Width = 161
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 112
    Top = 64
    Width = 161
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 112
    Top = 96
    Width = 161
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 112
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 112
    Top = 160
    Width = 161
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 112
    Top = 189
    Width = 161
    Height = 21
    TabOrder = 5
    OnKeyPress = Edit6KeyPress
  end
  object Edit7: TEdit
    Left = 112
    Top = 224
    Width = 161
    Height = 21
    TabOrder = 6
    OnKeyPress = Edit7KeyPress
  end
  object Edit8: TEdit
    Left = 112
    Top = 256
    Width = 161
    Height = 21
    TabOrder = 7
    OnKeyPress = Edit8KeyPress
  end
  object Edit9: TEdit
    Left = 112
    Top = 288
    Width = 161
    Height = 21
    TabOrder = 8
    OnKeyPress = Edit9KeyPress
  end
  object Edit10: TEdit
    Left = 112
    Top = 317
    Width = 161
    Height = 21
    TabOrder = 9
    OnKeyPress = Edit10KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 320
    Top = 173
    Width = 320
    Height = 120
    DataSource = DataModule2.DSreservasi
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object simpan: TButton
    Left = 320
    Top = 126
    Width = 75
    Height = 25
    Caption = 'simpan'
    TabOrder = 11
    OnClick = simpanClick
  end
  object hapus: TButton
    Left = 401
    Top = 126
    Width = 75
    Height = 25
    Caption = 'hapus'
    TabOrder = 12
    OnClick = hapusClick
  end
  object ubah: TButton
    Left = 482
    Top = 126
    Width = 75
    Height = 25
    Caption = 'ubah'
    TabOrder = 13
    OnClick = ubahClick
  end
  object bersih: TButton
    Left = 563
    Top = 126
    Width = 75
    Height = 25
    Caption = 'bersih'
    TabOrder = 14
    OnClick = bersihClick
  end
  object Edit11: TEdit
    Left = 384
    Top = 322
    Width = 256
    Height = 21
    Color = clWhite
    TabOrder = 15
    OnChange = Edit11Change
  end
end
