program Anti_Reversi;

uses
  System.StartUpCopy,
  FMX.Forms,
  main in 'main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
