unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.Grid;

type
  TDataModule2 = class(TDataModule)
    ACConnection1: TFDConnection;
    KQSource: TDataSource;
    KTSource: TDataSource;
    KorisnikTable: TFDTable;
    KorisnikQuery: TFDQuery;
    KorisnikTableID_KOR: TIntegerField;
    KorisnikTableIME: TStringField;
    KorisnikTablePREZIME: TStringField;
    KorisnikTableKONTAKT_TELEFON: TIntegerField;
    KorisnikTableEMAIL: TStringField;
    KorisnikTablePASSWORD: TStringField;
    ZaposleniTable: TFDTable;
    ZaposleniTableID_ZAP: TIntegerField;
    ZaposleniTableIME: TStringField;
    ZaposleniTablePREZIME: TStringField;
    ZaposleniTableKONTAKT_TELEFON: TIntegerField;
    ZaposleniTableEMAIL: TStringField;
    ZaposleniTablePASSWORD: TStringField;
    ZaposleniTablePLATA: TIntegerField;
    ZaposleniTableSPECIJALIZACIJA: TStringField;
    ZTSource: TDataSource;
    ZaposleniQuery: TFDQuery;
    ZQSource: TDataSource;
    OpremaTable: TFDTable;
    OpremaQuery: TFDQuery;
    OTSource: TDataSource;
    OQSource: TDataSource;
    RezOpremeQuery: TFDQuery;
    ROQSource: TDataSource;
    AktivnostQuery: TFDQuery;
    ASource: TDataSource;
    OpremaTableID_OPREME: TIntegerField;
    OpremaTableNAZIV: TStringField;
    OpremaTableTIP: TStringField;
    OpremaTableCENA: TIntegerField;
    OpremaTableSTANJE: TIntegerField;
    RezAktivnostiQuery: TFDQuery;
    RASource: TDataSource;
    KorisnikTablePASSWORDHASH: TStringField;
    KorisnikTablePASSWORDSALT: TStringField;
    ZaposleniTablePASSWORDHASH: TStringField;
    ZaposleniTablePASSWORDSALT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
