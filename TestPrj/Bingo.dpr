program Bingo;

uses
  FMX.Forms,
  GingoMain in 'GingoMain.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
