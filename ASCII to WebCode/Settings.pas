unit Settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls, IniFiles;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    SpinEdit3: TSpinEdit;
    Label3: TLabel;
    GroupBox5: TGroupBox;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WriteOptions;
    procedure ReadOptions;
  end;

var
  Form2: TForm2;
  TIF : TIniFile;

implementation

uses
  Unit1;

{$R *.dfm}
function MainDir : string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm2.WriteOptions;    // ################### Options Write
var
  OPT :string;
begin
   OPT := 'Options';

   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
   with TIF do
   begin
    WriteInteger(OPT,'Alignment',ComboBox1.ItemIndex);
    WriteInteger(OPT,'Border', SpinEdit1.Value);
    WriteInteger(OPT,'Cellspacing', SpinEdit2.Value);
    WriteInteger(OPT,'Line', SpinEdit3.Value);
    WriteString(OPT,'Characters', Edit1.Text);
    WriteBool(OPT,'Table',CheckBox1.Checked);
    Free;
   end;
end;

procedure TForm2.ReadOptions;    // ################### Options Read
var
  OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
    TIF:=TIniFile.Create(MainDir + 'Data\Options\Options.ini');
    with TIF do
    begin
      Combobox1.ItemIndex:=ReadInteger(OPT,'Alignment',ComboBox1.ItemIndex);
      SpinEdit1.Value:=ReadInteger(OPT,'Border',SpinEdit1.Value);
      SpinEdit2.Value:=ReadInteger(OPT,'Cellspacing',SpinEdit2.Value);
      SpinEdit3.Value:=ReadInteger(OPT,'Line',SpinEdit3.Value);
      Edit1.Text:=ReadString(OPT,'Characters',Edit1.Text);
      CheckBox1.Checked:=ReadBool(OPT,'Table',CheckBox1.Checked);
      Free;
    end;
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0 : Form1.align := 'ALIGN="CENTER"';
    1 : Form1.align := 'ALIGN="LEFT"';
    2 : Form1.align := 'ALIGN="RIGHT"';
  end;

  Button2.Enabled := true;
  StatusBar1.SimpleText := 'not saved.';
end;

procedure TForm2.SpinEdit1Change(Sender: TObject);
begin
  Form1.border := IntToStr(SpinEdit1.Value);
  Button2.Enabled := true;
  StatusBar1.SimpleText := 'not saved.';
end;

procedure TForm2.SpinEdit2Change(Sender: TObject);
begin
  Form1.space := IntToStr(SpinEdit2.Value);
  Button2.Enabled := true;
  StatusBar1.SimpleText := 'not saved.';
end;

procedure TForm2.SpinEdit3Change(Sender: TObject);
begin
  Form1.line := SpinEdit3.Value;
  Button2.Enabled := true;
  StatusBar1.SimpleText := 'not saved.';
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  Form1.chars := Edit1.Text;
  Button2.Enabled := true;
  StatusBar1.SimpleText := 'not saved.';
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    Form1.table := 'TABLE ';
    Form1.tabletag := '</TABLE>';
    ComboBox1.Enabled := true;
    SpinEdit1.Enabled := true;
    SpinEdit2.Enabled := true;
    Label1.Enabled := true;
    Label2.Enabled := true;
  end else begin
    Form1.table := '';
    Form1.tabletag := '';
    ComboBox1.Enabled := false;
    SpinEdit1.Enabled := false;
    SpinEdit2.Enabled := false;
    Label1.Enabled := false;
    Label2.Enabled := false;
  end;
  Button2.Enabled := true;
  StatusBar1.SimpleText := 'not saved.';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  WriteOptions;
  Button2.Enabled := false;
  StatusBar1.SimpleText := 'Settings saved..';
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ReadOptions;
  ComboBox1.OnChange(sender);
  CheckBox1.OnClick(sender);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Close();
end;

end.
