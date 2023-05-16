unit tbl_reservasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm4 = class(TForm)
    id_reservasi: TLabel;
    email: TLabel;
    jenis_kamar: TLabel;
    tgl_check_in: TLabel;
    tgl_check_out: TLabel;
    jumlah_kamar: TLabel;
    id_tamu: TLabel;
    kebangsaan: TLabel;
    pekerjaan: TLabel;
    total_harga: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    DBGrid1: TDBGrid;
    simpan: TButton;
    hapus: TButton;
    ubah: TButton;
    bersih: TButton;
    Edit11: TEdit;
    cari: TLabel;
    RESERVASI: TLabel;
    procedure simpanClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure bersihClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Umodul;

procedure TForm4.bersihClick(Sender: TObject);
begin
 Edit1.Clear;
 Edit2.Clear;
 Edit3.Clear;
 Edit4.Clear;
 Edit5.Clear;
 Edit6.Clear;
 Edit7.Clear;
 Edit8.Clear;
 Edit9.Clear;
 Edit10.Clear;
 Edit1.SetFocus;
end;
procedure TForm4.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Text := DataModule2.Queryreservasiid_reservasi.AsString;
Edit2.Text := DataModule2.Queryreservasiemail.AsString;
Edit3.Text := DataModule2.Queryreservasijenis_kamar.AsString;
Edit4.Text := DataModule2.Queryreservasitgl_check_in.AsString;
Edit5.Text := DataModule2.Queryreservasitgl_check_out.AsString;
Edit6.Text := DataModule2.Queryreservasijumlah_kamar.AsString;
Edit7.Text := DataModule2.Queryreservasiid_tamu.AsString;
Edit8.Text := DataModule2.Queryreservasikebangsaan.AsString;
Edit9.Text := DataModule2.Queryreservasipekerjaan.AsString;
Edit10.Text := DataModule2.Queryreservasitotal_harga.AsString;
end;

procedure TForm4.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then simpan.setfocus;
end;

procedure TForm4.Edit11Change(Sender: TObject);
var cari:string;
begin
try
    cari:=QuotedStr('%'+Edit1.text+'%');
    with DataModule2 do
    begin
      Queryreservasi.sql.clear;
      Queryreservasi.sql.text:='SELECT * FROM tbl_reservasi WHERE  Like i_reservasi like '+cari+' or email like '+cari+' or jenis_kamar like '+cari+' or tgl_check_in like '+cari+' or tgl_check_out like '+cari+' or jumlah_kamar like '+cari+' or id_tamu like '+cari+' or kebangsaan like '+cari+' or pekerjaan like '+cari+' or total_harga like '+cari;
      Queryreservasi.Open;
    end;
  except
    on salah:Exception do
    showmessage(salah.message);
  end;
end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit2.setfocus;
end;

procedure TForm4.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit3.setfocus;
end;

procedure TForm4.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then Edit4.setfocus;
end;

procedure TForm4.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then Edit5.setfocus;
end;

procedure TForm4.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then Edit6.setfocus;
end;

procedure TForm4.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then Edit7.setfocus;
end;

procedure TForm4.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then Edit8.setfocus;
end;

procedure TForm4.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then Edit9.setfocus;
end;

procedure TForm4.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then Edit10.setfocus;
end;

procedure TForm4.hapusClick(Sender: TObject);
begin
if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='') and
       (Trim(Edit3.Text)='') and
       (Trim(Edit4.Text)='') and
       (Trim(Edit5.Text)='') and
       (Trim(Edit6.Text)='') and
       (Trim(Edit7.Text)='') and
       (Trim(Edit8.Text)='') and
       (Trim(Edit9.Text)='') and
       (Trim(Edit10.Text)='')
     ) then
begin
  beep;
  ShowMessage('Silahkan Pilih Data Terlebih Dahulu!!!');
  DBGrid1.SetFocus;
  Exit;
end else DataModule2.Queryreservasi.Delete;
end;

procedure TForm4.simpanClick(Sender: TObject);
begin
try
     with DataModule2 do
     begin
       if Trim(Edit1.Text)='' then
       begin
         beep;
         ShowMessage('id reservasi  belum di isi');
         Edit1.SetFocus;
       end else
       if Trim(Edit2.Text)='' then
       begin
         beep;
         ShowMessage('email belum di isi');
         Edit2.SetFocus;
       end else
       if Trim(Edit3.Text)='' then
       begin
         beep;
         ShowMessage('jenis kamar belum di isi');
         Edit3.SetFocus;
       end else
       if Trim(Edit4.Text)='' then
       begin
         beep;
         ShowMessage('tgl check in belum di isi');
         Edit4.SetFocus;
       end else
       if Trim(Edit5.Text)='' then
       begin
         beep;
         ShowMessage('tgl check out belum di isi');
         Edit5.SetFocus;
       end else
       if Trim(Edit6.Text)='' then
       begin
         beep;
         ShowMessage('jumlah kamar belum di isi');
         Edit6.SetFocus;
       end else
       if Trim(Edit7.Text)='' then
       begin
         beep;
         ShowMessage('id tamu belum di isi');
         Edit7.SetFocus;
       end else
       if Trim(Edit8.Text)='' then
       begin
         beep;
         ShowMessage('kebangsaan belum di isi');
         Edit8.SetFocus;
       end else
       if Trim(Edit9.Text)='' then
       begin
         beep;
         ShowMessage('pekerjaan belum di isi');
         Edit9.SetFocus;
       end else
       if Trim(Edit10.Text)='' then
       begin
         beep;
         ShowMessage('total harga belum di isi');
         Edit10.SetFocus;
       end;
       if Queryreservasi.Locate('id_reservasi', Edit1.text, []) then
       begin
         beep;
         ShowMessage('id reservasi sudah terdaftar');
         Edit1.text:= Queryreservasiid_reservasi.AsString;
         Edit2.text:= Queryreservasiemail.AsString;
         Edit3.Text:= Queryreservasijenis_kamar.AsString;
         Edit4.Text:= Queryreservasitgl_check_in.AsString;
         Edit5.Text:= Queryreservasitgl_check_out.AsString;
         Edit6.Text:= Queryreservasijumlah_kamar.AsString;
         Edit7.Text:= Queryreservasiid_tamu.AsString;
         Edit8.Text:= Queryreservasikebangsaan.AsString;
         Edit9.Text:= Queryreservasipekerjaan.AsString;
         Edit10.Text:= Queryreservasitotal_harga.AsString;
       end else
       begin
          Queryreservasi.Append;
          Queryreservasiid_reservasi.AsString:=Edit1.Text;
          Queryreservasiemail.AsString:=Edit2.Text;
          Queryreservasijenis_kamar.AsString:=Edit3.Text;
          Queryreservasitgl_check_in.AsString:=Edit4.Text;
          Queryreservasitgl_check_out.AsString:=Edit5.Text;
          Queryreservasijumlah_kamar.AsString:=Edit6.Text;
          Queryreservasiid_tamu.AsString:=Edit7.Text;
          Queryreservasikebangsaan.AsString:=Edit8.Text;
          Queryreservasipekerjaan.AsString:=Edit9.Text;
          Queryreservasitotal_harga.AsString:=Edit10.Text;

          Queryreservasi.post;
       end;
     end;
  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;

procedure TForm4.ubahClick(Sender: TObject);
begin
try
   if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='') and
       (Trim(Edit3.Text)='') and
       (Trim(Edit4.Text)='') and
       (Trim(Edit5.Text)='') and
       (Trim(Edit6.Text)='') and
       (Trim(Edit7.Text)='') and
       (Trim(Edit8.Text)='') and
       (Trim(Edit9.Text)='') and
       (Trim(Edit10.Text)='')

     ) then
  begin
      beep;
      ShowMessage('Silahkan Pilih Data Terlebih Dahulu!!!');
      DBGrid1.SetFocus;
       Exit;
  end else

    begin

      with DataModule2 do
      begin
          Queryreservasi.edit;
          Queryreservasiid_reservasi.AsString:=Edit1.Text;
          Queryreservasiemail.AsString:=Edit2.Text;
          Queryreservasijenis_kamar.AsString:=Edit3.Text;
          Queryreservasitgl_check_in.AsString:=Edit4.Text;
          Queryreservasitgl_check_out.AsString:=Edit5.Text;
          Queryreservasijumlah_kamar.AsString:=Edit6.Text;
          Queryreservasiid_tamu.AsString:=Edit7.Text;
          Queryreservasikebangsaan.AsString:=Edit8.Text;
          Queryreservasipekerjaan.AsString:=Edit9.Text;
          Queryreservasitotal_harga.AsString:=Edit10.Text;
          Queryreservasi.post;
      end;
    end;


  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;

end;

end.
