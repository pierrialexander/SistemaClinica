program Clinica;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadPacientes in 'unitCadPacientes.pas' {formCadPacientes},
  unitCadAgendamentos in 'unitCadAgendamentos.pas' {formCadAgendamentos},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  unitCadEspecialidades in 'unitCadEspecialidades.pas' {formCadEspecialidades},
  unitCadMedicos in 'unitCadMedicos.pas' {formCadMedicos},
  unitSobre in 'unitSobre.pas' {formSobre},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadPacientes, formCadPacientes);
  Application.CreateForm(TformCadAgendamentos, formCadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformCadEspecialidades, formCadEspecialidades);
  Application.CreateForm(TformCadMedicos, formCadMedicos);
  Application.CreateForm(TformSobre, formSobre);
  Application.Run;
end.
