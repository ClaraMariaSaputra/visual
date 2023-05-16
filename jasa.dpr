program jasa;

uses
  Vcl.Forms,
  hotel in 'hotel.pas' {Form1},
  Umodul in 'Umodul.pas' {DataModule2: TDataModule},
  tbl_detail in 'tbl_detail.pas' {Form2},
  tbl_kamar in 'tbl_kamar.pas' {Form3},
  tbl_reservasi in 'tbl_reservasi.pas' {Form4},
  tbl_tamu in 'tbl_tamu.pas' {Form5},
  tbl_tipekamar in 'tbl_tipekamar.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
