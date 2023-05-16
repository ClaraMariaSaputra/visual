unit tbl_kamar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm3 = class(TForm)
    jenis_kamar: TLabel;
    no_kamar: TLabel;
    harga_weekday: TLabel;
    harga_weekend: TLabel;
    status_kamar: TLabel;
    harga_high_season: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DBGrid1: TDBGrid;
    cari: TLabel;
    Edit7: TEdit;
    simpan: TButton;
    hapus: TButton;
    ubah: TButton;
    bersih: TButton;
    KAMAR: TLabel;
    procedure simpanClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure bersihClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Umodul;

procedure TForm3.bersihClick(Sender: TObject);
begin
 Edit1.Clear;
 Edit2.Clear;
 Edit3.Clear;
 Edit4.Clear;
 Edit5.Clear;
 Edit6.Clear;
 Edit1.SetFocus;
end;
procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Text := DataModule2.Querykamarjenis_kamar.AsString;
Edit2.Text := DataModule2.Querykamarno_kamar.AsString;
Edit3.Text := DataModule2.Querykamarharga_weekday.AsString;
Edit4.Text := DataModule2.Querykamarharga_weekend.AsString;
Edit5.Text := DataModule2.Querykamarstatus_kamar.AsString;
Edit6.Text := DataModule2.Querykamarharga_high_season.AsString;
end;


procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit2.setfocus;
end;

procedure TForm3.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit3.setfocus;
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit4.setfocus;
end;

procedure TForm3.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit5.setfocus;
end;

procedure TForm3.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit6.setfocus;
end;

procedure TForm3.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then simpan.setfocus;
end;

procedure TForm3.Edit7Change(Sender: TObject);
var cari:string;
begin
try
    cari:=QuotedStr('%'+Edit1.text+'%');
    with DataModule2 do
    begin
      Querykamar.sql.clear;
      Querykamar.sql.text:='SELECT * FROM tbl_kamar WHERE jenis_kamar Like jenis_kamar like '+cari+' or no_kamar like '+cari+' or harga_weekday like '+cari+' or harga_weekend like '+cari+' or status_kamar like '+cari+' or harga_high_season like '+cari;
      Querykamar.Open;
    end;
  except
    on salah:Exception do
    showmessage(salah.message);
  end;
end;

procedure TForm3.hapusClick(Sender: TObject);
begin
if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='') and
       (Trim(Edit3.Text)='') and
       (Trim(Edit4.Text)='') and
       (Trim(Edit5.Text)='') and
       (Trim(Edit6.Text)='')
     ) then
begin
  beep;
  ShowMessage('Silahkan Pilih Data Terlebih Dahulu!!!');
  DBGrid1.SetFocus;
  Exit;
end else DataModule2.Querykamar.Delete;
end;

procedure TForm3.simpanClick(Sender: TObject);
begin
try
     with DataModule2 do
     begin
       if Trim(Edit1.Text)='' then
       begin
         beep;
         ShowMessage('jenis kamar  belum di isi');
         Edit1.SetFocus;
       end else
       if Trim(Edit2.Text)='' then
       begin
         beep;
         ShowMessage('no kamar belum di isi');
         Edit2.SetFocus;
       end else
       if Trim(Edit3.Text)='' then
       begin
         beep;
         ShowMessage('harga weekday belum di isi');
         Edit3.SetFocus;
       end else
       if Trim(Edit4.Text)='' then
       begin
         beep;
         ShowMessage('harga weekend belum di isi');
         Edit4.SetFocus;
       end else
       if Trim(Edit5.Text)='' then
       begin
         beep;
         ShowMessage('status kamar belum di isi');
         Edit5.SetFocus;
       end else
       if Trim(Edit6.Text)='' then
       begin
         beep;
         ShowMessage('harga high season belum di isi');
         Edit6.SetFocus;
       end;
       if Querydetail.Locate('jenis_kamar', Edit1.text, []) then
       begin
         beep;
         ShowMessage('jenis kamar sudah terdaftar');
         Edit1.text:= Querykamarjenis_kamar.AsString;
         Edit2.text:= Querykamarno_kamar.AsString;
         Edit3.Text:= Querykamarharga_weekday.AsString;
         Edit4.Text:= Querykamarharga_weekend.AsString;
         Edit5.Text:= Querykamarstatus_kamar.AsString;
         Edit6.Text:= Querykamarharga_high_season.AsString;
       end else
       begin
          Querykamar.Append;
          Querykamarjenis_kamar.AsString:=Edit1.Text;
          Querykamarno_kamar.AsString:=Edit2.Text;
          Querykamarharga_weekday.AsString:=Edit3.Text;
          Querykamarharga_weekend.AsString:=Edit4.Text;
          Querykamarstatus_kamar.AsString:=Edit5.Text;
          Querykamarharga_high_season.AsString:=Edit6.Text;
          Querykamar.post;
       end;
     end;
  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;

procedure TForm3.ubahClick(Sender: TObject);
begin
try
   if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='') and
       (Trim(Edit3.Text)='') and
       (Trim(Edit4.Text)='') and
       (Trim(Edit5.Text)='') and
       (Trim(Edit6.Text)='')

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
          Querykamar.edit;
          Querykamarjenis_kamar.AsString:=Edit1.Text;
          Querykamarno_kamar.AsString:=Edit2.Text;
          Querykamarharga_weekday.AsString:=Edit3.Text;
          Querykamarharga_weekend.AsString:=Edit4.Text;
          Querykamarstatus_kamar.AsString:=Edit5.Text;
          Querykamarharga_high_season.AsString:=Edit6.Text;
          Querydetail.post;
      end;
    end;


  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;

end.
