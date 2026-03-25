program AquaCentar;

uses
  System.StartUpCopy,
  FMX.Forms,
  Projekat in 'C:\Users\pc\Documents\Embarcadero\Studio\Projects\Projekat.pas' {fMain},
  Unit2 in 'C:\Users\pc\Documents\Embarcadero\Studio\Projects\Unit2.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
