unit tbl_tamu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm5 = class(TForm)
    id_tamu: TLabel;
    nama_pemesan: TLabel;
    alamat: TLabel;
    telepon: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    simpan: TButton;
    hapus: TButton;
    ubah: TButton;
    bersih: TButton;
    Edit11: TEdit;
    cari: TLabel;
    TAMU: TLabel;
    procedure simpanClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure bersihClick(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Umodul;

procedure TForm5.bersihClick(Sender: TObject);
begin
try
   if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='') and
       (Trim(Edit3.Text)='') and
       (Trim(Edit4.Text)='')
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
          Querytamu.edit;
          Querytamuid_tamu.AsString:=Edit1.Text;
          Querytamunama_pemesan.AsString:=Edit2.Text;
          Querytamualamat.AsString:=Edit3.Text;
          Querytamutelepon.AsString:=Edit4.Text;
          Querytamu.post;
      end;
    end;


  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;

procedure TForm5.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Text := DataModule2.Querytamuid_tamu.AsString;
Edit2.Text := DataModule2.Querytamunama_pemesan.AsString;
Edit3.Text := DataModule2.Querytamualamat.AsString;
Edit4.Text := DataModule2.Querytamutelepon.AsString;
end;

procedure TForm5.Edit11Change(Sender: TObject);
var cari:string;
begin
 try
    cari:=QuotedStr('%'+Edit1.text+'%');
    with DataModule2 do
    begin
      Querytamu.sql.clear;
      Querytamu.sql.text:='SELECT * FROM tbl_tamu WHERE id_tamu Like id_tamu like '+cari+' or nama_pemesan like '+cari+' or alamat like '+cari+' or telepon like '+cari;
      Querytamu.Open;
    end;
  except
    on salah:Exception do
    showmessage(salah.message);
  end;
end;

procedure TForm5.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit2.setfocus;
end;

procedure TForm5.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit3.setfocus;
end;

procedure TForm5.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit4.setfocus;
end;

procedure TForm5.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then simpan.setfocus;
end;

procedure TForm5.hapusClick(Sender: TObject);
begin
if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='') and
       (Trim(Edit3.Text)='') and
       (Trim(Edit4.Text)='')
     ) then
begin
  beep;
  ShowMessage('Silahkan Pilih Data Terlebih Dahulu!!!');
  DBGrid1.SetFocus;
  Exit;
end else DataModule2.Querytamu.Delete;
end;

procedure TForm5.simpanClick(Sender: TObject);
begin
try
     with DataModule2 do
     begin
       if Trim(Edit1.Text)='' then
       begin
         beep;
         ShowMessage('id tamu belum di isi');
         Edit1.SetFocus;
       end else
       if Trim(Edit2.Text)='' then
       begin
         beep;
         ShowMessage('nama pemesan belum di isi');
         Edit2.SetFocus;
       end else
       if Trim(Edit3.Text)='' then
       begin
         beep;
         ShowMessage('alamat belum di isi');
         Edit3.SetFocus;
       end else
       if Trim(Edit4.Text)='' then
       begin
         beep;
         ShowMessage('telepon belum di isi');
         Edit4.SetFocus;
       end;
     if Querydetail.Locate('id_tamu', Edit1.text, []) then
       begin
         beep;
         ShowMessage('id_tamu sudah terdaftar');
         Edit1.text:= Querytamuid_tamu.AsString;
         Edit2.text:= Querytamunama_pemesan.AsString;
         Edit3.Text:= Querytamualamat.AsString;
         Edit4.Text:= Querytamutelepon.AsString;
       end else
       begin
          Querytamu.Append;
          Querytamuid_tamu.AsString:=Edit1.Text;
          Querytamunama_pemesan.AsString:=Edit2.Text;
          Querytamualamat.AsString:=Edit3.Text;
          Querytamutelepon.AsString:=Edit4.Text;
          Querytamu.post;
       end;
     end;
  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;
