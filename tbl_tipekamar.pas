unit tbl_tipekamar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm6 = class(TForm)
    id_type: TLabel;
    nama_kamar: TLabel;
    harga: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    simpan: TButton;
    hapus: TButton;
    ubah: TButton;
    bersih: TButton;
    Edit11: TEdit;
    cari: TLabel;
    TIPE_KAMAR: TLabel;
    procedure simpanClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure bersihClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Umodul;

procedure TForm6.bersihClick(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

procedure TForm6.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Text := DataModule2.Querytipekamarid_type.AsString;
Edit2.Text := DataModule2.Querytipekamarnama_kamar.AsString;
Edit3.Text := DataModule2.Querytipekamarharga.AsString;
end;

procedure TForm6.Edit11Change(Sender: TObject);
var cari:string;
begin
try
    cari:=QuotedStr('%'+Edit1.text+'%');
    with DataModule2 do
    begin
      Querytipekamar.sql.clear;
      Querytipekamar.sql.text:='SELECT * FROM tbl_tipekamar WHERE id_type Like id_type like '+cari+' or nama_kamar like '+cari+' or harga like '+cari;
      Querytipekamar.Open;
    end;
  except
    on salah:Exception do
    showmessage(salah.message);
  end;
end;

procedure TForm6.hapusClick(Sender: TObject);
begin
if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='') and
       (Trim(Edit3.Text)='')
     ) then
begin
  beep;
  ShowMessage('Silahkan Pilih Data Terlebih Dahulu!!!');
  DBGrid1.SetFocus;
  Exit;
end else DataModule2.Querytipekamar.Delete;
end;

procedure TForm6.simpanClick(Sender: TObject);
begin
try
     with DataModule2 do
     begin
       if Trim(Edit1.Text)='' then
       begin
         beep;
         ShowMessage('id type belum di isi');
         Edit1.SetFocus;
       end else
       if Trim(Edit2.Text)='' then
       begin
         beep;
         ShowMessage('nama_kamar belum di isi');
         Edit2.SetFocus;
       end else
       if Trim(Edit3.Text)='' then
       begin
         beep;
         ShowMessage('harga belum di isi');
         Edit3.SetFocus;
       end;
     if Querytipekamar.Locate('id_type', Edit1.text, []) then
       begin
         beep;
         ShowMessage('id_type sudah terdaftar');
         Edit1.text:= Querytipekamarid_type.AsString;
         Edit2.text:= Querytipekamarnama_kamar.AsString;
         Edit3.Text:= Querytipekamarharga.AsString;
       end else
       begin
          Querytipekamar.Append;
          Querytipekamarid_type.AsString:=Edit1.Text;
          Querytipekamarnama_kamar.AsString:=Edit2.Text;
          Querytipekamarharga.AsString:=Edit2.Text;
          Querytipekamar.post;
       end;
     end;
  except
      on salah:Exception do
      ShowMessage(salah.Message);
  end;
end;

procedure TForm6.ubahClick(Sender: TObject);
begin
try
   if (
       (Trim(Edit1.Text)='') and
       (Trim(Edit2.Text)='') and
       (Trim(Edit3.Text)='')
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
          Querytipekamar.edit;
          Querytipekamarid_type.AsString:=Edit1.Text;
          Querytipekamarnama_kamar.AsString:=Edit2.Text;
          Querytipekamarharga.AsString:=Edit3.Text;
          Querytipekamar.post;
      end;
end;
