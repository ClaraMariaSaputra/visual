unit tbl_detail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm2 = class(TForm)
    id_reservasi: TLabel;
    no_kamar: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    simpan: TButton;
    hapus: TButton;
    ubah: TButton;
    bersih: TButton;
    cari: TLabel;
    Edit3: TEdit;
    DETAIL: TLabel;
    procedure simpanClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure bersihClick(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Umodul;

procedure TForm2.bersihClick(Sender: TObject);
begin
Edit1.Clear;
 Edit2.Clear;
 Edit1.SetFocus;
end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Text := DataModule2.Querydetailid_reservasi.AsString;
Edit2.TExt := DataModule2.Querydetailno_kamar.AsString;
end;


procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit2.setfocus;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then simpan.setfocus;
end;

procedure TForm2.Edit3Change(Sender: TObject);
var cari:string;
begin
try
    cari:=QuotedStr('%'+Edit1.text+'%');
    with DataModule2 do
    begin
      Querydetail.sql.clear;
      Querydetail.sql.text:='SELECT * FROM tbl_detail WHERE id_reservasi Like id_reservasi like '+cari+' or no_kamar like '+cari;
      Querydetail.Open;
    end;
  except
    on salah:Exception do
    showmessage(salah.message);
  end;
end;

procedure TForm2.hapusClick(Sender: TObject);
begin
if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='')
     ) then
begin
  beep;
  ShowMessage('Silahkan Pilih Data Terlebih Dahulu!!!');
  DBGrid1.SetFocus;
  Exit;
end else DataModule2.Querydetail.Delete;
end;

procedure TForm2.simpanClick(Sender: TObject);
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
         ShowMessage('no kamar belum di isi');
         Edit2.SetFocus;
       end;
       if Querydetail.Locate('id_reservasi', Edit1.text, []) then
       begin
         beep;
         ShowMessage('id reservasi sudah terdaftar');
         Edit2.text:= Querydetailno_kamar.AsString;
       end else
       begin
          Querydetail.Append;
          Querydetailid_reservasi.AsString:=Edit2.Text;
          Querydetailno_kamar.AsString:=Edit2.Text;
          Querydetail.post;
       end;
     end;
  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;

procedure TForm2.ubahClick(Sender: TObject);
begin
try
   if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='')
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
          Querydetail.edit;
          Querydetailid_reservasi.AsString:=Edit1.Text;
          Querydetailno_kamar.AsString:=Edit2.Text;
          Querydetail.post;
      end;
    end;


  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;

end.
