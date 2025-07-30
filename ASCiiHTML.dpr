program ASCiiHTML;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {frmProcess};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'AsciiMaker by NightmareZ';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmProcess, frmProcess);
  Application.Run;
end.
