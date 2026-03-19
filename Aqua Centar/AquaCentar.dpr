program AquaCentar;

uses
  System.StartUpCopy,
  FMX.Forms,
  Projekat in 'Projekat.pas' {fMain},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
