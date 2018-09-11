program presensi;

uses
  Forms,
  umain in 'umain.pas' {fmain},
  udm in 'udm.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfmain, fmain);
  Application.Run;
end.
