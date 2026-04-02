program AquaCentar;

uses
  System.StartUpCopy,
  FMX.Forms,
  Projekat in 'Projekat.pas' {fMain},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
