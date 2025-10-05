unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TfrmProcess = class(TForm)
    lblConvertion: TLabel;
    pbProgress: TProgressBar;
    lblMashtab: TLabel;
    lblColor: TLabel;
    pnlColor: TShape;
    lblSootn: TLabel;
    btnAbort: TSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel2: TBevel;
    procedure btnAbortClick(Sender: TObject);
  end;

var
  frmProcess: TfrmProcess;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmProcess.btnAbortClick(Sender: TObject);
begin
  Form1.aborted := True;
end;

end.
