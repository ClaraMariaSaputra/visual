unit Umodul;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TDataModule2 = class(TDataModule)
    ZConnection1: TZConnection;
    Querydetail: TZQuery;
    DSdetail: TDataSource;
    Querykamar: TZQuery;
    Queryreservasi: TZQuery;
    Querytamu: TZQuery;
    Querytipekamar: TZQuery;
    DSkamar: TDataSource;
    DSreservasi: TDataSource;
    DStamu: TDataSource;
    DStipekamar: TDataSource;
    Querydetailid_reservasi: TWideStringField;
    Querydetailno_kamar: TWideStringField;
    Querykamarjenis_kamar: TWideStringField;
    Querykamarno_kamar: TWideStringField;
    Querykamarharga_weekday: TIntegerField;
    Querykamarharga_weekend: TIntegerField;
    Querykamarstatus_kamar: TWideStringField;
    Querykamarharga_high_season: TIntegerField;
    Queryreservasiid_reservasi: TWideStringField;
    Queryreservasiemail: TWideStringField;
    Queryreservasijenis_kamar: TWideStringField;
    Queryreservasitgl_check_in: TWideStringField;
    Queryreservasitgl_check_out: TWideStringField;
    Queryreservasijumlah_kamar: TIntegerField;
    Queryreservasiid_tamu: TWideStringField;
    Queryreservasikebangsaan: TWideStringField;
    Queryreservasipekerjaan: TWideStringField;
    Queryreservasitotal_harga: TLargeintField;
    Querytamuid_tamu: TWideStringField;
    Querytamunama_pemesan: TWideStringField;
    Querytamualamat: TWideStringField;
    Querytamutelepon: TWideStringField;
    Querytipekamarid_type: TIntegerField;
    Querytipekamarnama_kamar: TWideStringField;
    Querytipekamarharga: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses tbl_detail, tbl_kamar, tbl_reservasi, tbl_tamu, tbl_tipekamar;

{$R *.dfm}

end.
