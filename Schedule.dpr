program Schedule;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {Form3},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
