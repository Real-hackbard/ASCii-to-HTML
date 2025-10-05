unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Buttons, StdCtrls, Unit2, ComCtrls, ExtDlgs, Jpeg,
  Spin, XPMan, IniFiles, ColorGrd, GIFImg, ShellApi;

type
   TMyRGB = record
    r, g, b: Byte;
  end;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    bmp1: TMenuItem;
    html1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N1x1: TMenuItem;
    N1x2: TMenuItem;
    N1x4: TMenuItem;
    N1x8: TMenuItem;
    ColorDialog: TColorDialog;
    N9: TMenuItem;
    N111: TMenuItem;
    N121: TMenuItem;
    N211: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Memo: TMemo;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    N10: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape2: TShape;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    ComboBox1: TComboBox;
    BitBtn7: TBitBtn;
    ScrollBox1: TScrollBox;
    ComboBox2: TComboBox;
    OpenDialog2: TOpenDialog;
    Label10: TLabel;
    Label11: TLabel;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox10: TCheckBox;
    BitBtn8: TBitBtn;
    ComboBox3: TComboBox;
    SpinEdit1: TSpinEdit;
    Label12: TLabel;
    Label13: TLabel;
    SpinEdit2: TSpinEdit;
    Label14: TLabel;
    C1: TMenuItem;
    N11: TMenuItem;
    L1: TMenuItem;
    CheckBox11: TCheckBox;
    ScrollBar3: TScrollBar;
    Label17: TLabel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Label18: TLabel;
    Label19: TLabel;
    H1: TMenuItem;
    x1: TMenuItem;
    x2: TMenuItem;
    x3: TMenuItem;
    x4: TMenuItem;
    x5: TMenuItem;
    PopupMenu1: TPopupMenu;
    BitBtn21: TMenuItem;
    E1: TMenuItem;
    N13: TMenuItem;
    U1: TMenuItem;
    C2: TMenuItem;
    N1x3: TMenuItem;
    N1x5: TMenuItem;
    N1x6: TMenuItem;
    N1x7: TMenuItem;
    N1x9: TMenuItem;
    N1x10: TMenuItem;
    Label20: TLabel;
    N41: TMenuItem;
    N14: TMenuItem;
    N42: TMenuItem;
    N15: TMenuItem;
    ColorDialog1: TColorDialog;
    Panel4: TPanel;
    Image4: TImage;
    Panel5: TPanel;
    Panel6: TPanel;
    Label21: TLabel;
    N16: TMenuItem;
    A1: TMenuItem;
    L2: TMenuItem;
    C3: TMenuItem;
    R1: TMenuItem;
    Image2: TImage;
    Image1: TImage;
    Resample1: TMenuItem;
    N17: TMenuItem;
    Sepia1: TMenuItem;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ColorDialog2: TColorDialog;
    ScrollBar1: TScrollBar;
    Label6: TLabel;
    ScrollBar2: TScrollBar;
    Label7: TLabel;
    urn901: TMenuItem;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    procedure N211Click(Sender: TObject);
    procedure N1x1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure L1Click(Sender: TObject);
    procedure bmp1Click(Sender: TObject);
    procedure html1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure x1Click(Sender: TObject);
    procedure x2Click(Sender: TObject);
    procedure x3Click(Sender: TObject);
    procedure x4Click(Sender: TObject);
    procedure x5Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure U1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure N1x2Click(Sender: TObject);
    procedure N1x3Click(Sender: TObject);
    procedure N1x4Click(Sender: TObject);
    procedure N1x5Click(Sender: TObject);
    procedure N1x6Click(Sender: TObject);
    procedure N1x7Click(Sender: TObject);
    procedure N1x8Click(Sender: TObject);
    procedure N1x9Click(Sender: TObject);
    procedure N1x10Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure Resample1Click(Sender: TObject);
    procedure Sepia1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure urn901Click(Sender: TObject);
  public
    aborted: Boolean;
  private
    fonColor: TMyRGB;
    mashtab, sootnx, sootny: Integer;
    procedure WriteOptions;
    procedure ReadOptions;
    procedure arcenciel;
    procedure coloriser(acolor : tcolor);
    Procedure BmpCouleur(couleur: tcolor);
    procedure load;
    function ScalePercentBmp(bitmp: TBitmap; iPercent: Integer): Boolean;
  end;

var
  Form1: TForm1;
  resample : integer = 1;
  sepia : integer = 10;
  JPEGImage: TJPEGImage;
  TIF : TIniFile;
  bmp, bitmap1, bitmap2 : TBitmap;

type
  TRGBArray = array[0..0] of TRGBTriple;
  pRGBArray = ^TRGBArray;

type
  PBitmap = ^TBitmap;
  TLine = array[0..MaxInt div SizeOf(TRGBQUAD) - 1] of TRGBQUAD;
  PLine = ^TLine;

type TMyhelp = array[0..0] of TRGBQuad;

implementation

{$R *.dfm}
function MainDir : string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm1.WriteOptions;    // ################### Options Write
var OPT :string;
begin
   OPT := 'Options';

   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
   with TIF do
   begin
   WriteBool(OPT,'StayTop',CheckBox6.Checked);
   WriteBool(OPT,'HideOnTask',CheckBox7.Checked);
   WriteBool(OPT,'LeftPanel',CheckBox8.Checked);
   WriteBool(OPT,'SaveASCii',CheckBox10.Checked);
   WriteBool(OPT,'LoadASCii',CheckBox11.Checked);

   WriteBool(OPT,'1:1',N1x1.Checked);
   WriteBool(OPT,'1:2',N1x2.Checked);
   WriteBool(OPT,'1:3',N1x3.Checked);
   WriteBool(OPT,'1:4',N1x4.Checked);
   WriteBool(OPT,'1:5',N1x5.Checked);
   WriteBool(OPT,'1:6',N1x6.Checked);
   WriteBool(OPT,'1:7',N1x7.Checked);
   WriteBool(OPT,'1:8',N1x8.Checked);
   WriteBool(OPT,'1:9',N1x9.Checked);
   WriteBool(OPT,'1:10',N1x10.Checked);

   WriteBool(OPT,'Ratio4:1',N42.Checked);
   WriteBool(OPT,'Ratio3:1',N41.Checked);
   WriteBool(OPT,'Ratio2:1',N211.Checked);
   WriteBool(OPT,'Ratio1:1',N111.Checked);
   WriteBool(OPT,'Ratio1:2',N121.Checked);
   WriteBool(OPT,'Ratio1:3',N14.Checked);
   WriteBool(OPT,'Ratio1:4',N15.Checked);

   WriteBool(OPT,'Font1',x1.Checked);
   WriteBool(OPT,'Font2',x2.Checked);
   WriteBool(OPT,'Font3',x3.Checked);
   WriteBool(OPT,'Font4',x4.Checked);
   WriteBool(OPT,'Font5',x5.Checked);


   //WriteBool(OPT,'SaveOptions',CheckBox1.Checked);
   //WriteInteger(OPT,'Compress',Combobox1.ItemIndex);
   //WriteInteger(OPT,'Overlay',RadioGroup1.ItemIndex);
   Free;
   end;
end;

procedure TForm1.ReadOptions;    // ################### Options Read
var OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
  TIF:=TIniFile.Create(MainDir + 'Data\Options\Options.ini');
  with TIF do
  begin
  CheckBox6.Checked:=ReadBool(OPT,'StayTop',CheckBox6.Checked);
  CheckBox7.Checked:=ReadBool(OPT,'HideOnTask',CheckBox7.Checked);
  CheckBox8.Checked:=ReadBool(OPT,'LeftPanel',CheckBox8.Checked);
  CheckBox10.Checked:=ReadBool(OPT,'SaveASCii',CheckBox10.Checked);
  CheckBox11.Checked:=ReadBool(OPT,'LoadASCii',CheckBox11.Checked);

  N1x1.Checked:=ReadBool(OPT,'1:1',N1x1.Checked);
  N1x2.Checked:=ReadBool(OPT,'1:2',N1x2.Checked);
  N1x3.Checked:=ReadBool(OPT,'1:3',N1x3.Checked);
  N1x4.Checked:=ReadBool(OPT,'1:4',N1x4.Checked);
  N1x5.Checked:=ReadBool(OPT,'1:5',N1x5.Checked);
  N1x6.Checked:=ReadBool(OPT,'1:6',N1x6.Checked);
  N1x7.Checked:=ReadBool(OPT,'1:7',N1x7.Checked);
  N1x8.Checked:=ReadBool(OPT,'1:8',N1x8.Checked);
  N1x9.Checked:=ReadBool(OPT,'1:9',N1x9.Checked);
  N1x10.Checked:=ReadBool(OPT,'1:10',N1x10.Checked);

  N42.Checked:=ReadBool(OPT,'Ratio4:1',N42.Checked);
  N41.Checked:=ReadBool(OPT,'Ratio3:1',N41.Checked);
  N211.Checked:=ReadBool(OPT,'Ratio2:1',N211.Checked);
  N111.Checked:=ReadBool(OPT,'Ratio1:1',N111.Checked);
  N121.Checked:=ReadBool(OPT,'Ratio1:2',N121.Checked);
  N14.Checked:=ReadBool(OPT,'Ratio1:3',N14.Checked);
  N15.Checked:=ReadBool(OPT,'Ratio1:4',N15.Checked);

  x1.Checked:=ReadBool(OPT,'Font1',x1.Checked);
  x2.Checked:=ReadBool(OPT,'Font2',x2.Checked);
  x3.Checked:=ReadBool(OPT,'Font3',x3.Checked);
  x4.Checked:=ReadBool(OPT,'Font4',x4.Checked);
  x5.Checked:=ReadBool(OPT,'Font5',x5.Checked);

  //CheckBox1.Checked:=ReadBool(OPT,'SaveOptions',CheckBox1.Checked);
  //Combobox1.ItemIndex:=ReadInteger(OPT,'Compress',combobox1.ItemIndex);
  //RadioGroup1.ItemIndex:=ReadInteger(OPT,'Overlay',RadioGroup1.ItemIndex);
  Free;
  end;
  end;
end;

procedure TForm1.load;
begin
    CheckBox1.Enabled := true;
    CheckBox2.Enabled := true;
    CheckBox3.Enabled := true;
    CheckBox4.Enabled := true;
    CheckBox5.Enabled := true;

    CheckBox1.Checked := false;
    CheckBox2.Checked := false;
    CheckBox3.Checked := false;
    CheckBox4.Checked := false;
    CheckBox5.Checked := false;
end;

procedure DrawGradient(ACanvas: TCanvas; Rect: TRect;
  Horicontal: Boolean; Colors: array of TColor);
type
  RGBArray = array[0..2] of Byte;
var
  x, y, z, stelle, mx, bis, faColorsh, mass: Integer;
  Faktor: double;
  A: RGBArray;
  B: array of RGBArray;
  merkw: integer;
  merks: TPenStyle;
  merkp: TColor;
begin
  {$R-}
  mx := High(Colors);
  if mx > 0 then
  begin
    if Horicontal then
      mass := Rect.Right - Rect.Left
    else
      mass := Rect.Bottom - Rect.Top;
    SetLength(b, mx + 1);
    for x := 0 to mx do
    begin
      Colors[x] := ColorToRGB(Colors[x]);
      b[x][0] := GetRValue(Colors[x]);
      b[x][1] := GetGValue(Colors[x]);
      b[x][2] := GetBValue(Colors[x]);
    end;
    merkw := ACanvas.Pen.Width;
    merks := ACanvas.Pen.Style;
    merkp := ACanvas.Pen.Color;
    ACanvas.Pen.Width := 1;
    ACanvas.Pen.Style := psSolid;
    faColorsh := Round(mass / mx);
    for y := 0 to mx - 1 do
    begin
      if y = mx - 1 then
        bis := mass - y * faColorsh - 1
      else
        bis := faColorsh;
      for x := 0 to bis do
      begin
        Stelle := x + y * faColorsh;
        faktor := x / bis;
        for z := 0 to 3 do
          a[z] := Trunc(b[y][z] + ((b[y + 1][z] - b[y][z]) * Faktor));
        ACanvas.Pen.Color := RGB(a[0], a[1], a[2]);
        if Horicontal then
        begin
          ACanvas.MoveTo(Rect.Left + Stelle, Rect.Top);
          ACanvas.LineTo(Rect.Left + Stelle, Rect.Bottom);
        end
        else
        begin
          ACanvas.MoveTo(Rect.Left, Rect.Top + Stelle);
          ACanvas.LineTo(Rect.Right, Rect.Top + Stelle);
        end;
      end;
    end;
    b := nil;
    ACanvas.Pen.Width := merkw;
    ACanvas.Pen.Style := merks;
    ACanvas.Pen.Color := merkp;
  end
  {$R+}
  else
    // Please specify at least two colors
    raise EMathError.Create('At least two colors must be specified.');
end;

function DeleteFile(const AFile: string): boolean;
var
 sh: SHFileOpStruct;
begin
 ZeroMemory(@sh, sizeof(sh));
 with sh do
   begin
   Wnd := Application.Handle;
   wFunc := fo_Delete;
   pFrom := PChar(AFile +#0);
   fFlags := fof_Silent or fof_NoConfirmation;
   end;
 result := SHFileOperation(sh) = 0;
end;

function bmptosepia(const bmp: TBitmap; depth: Integer): Boolean;
var
  color, color2 : longint;
  r, g, b, rr, gg : byte;
  h, w : integer;
begin
  {$R-}
  Screen.Cursor := crHourGlass;
  for h := 0 to bmp.height do
  begin
    for w := 0 to bmp.width do
    begin
      //first convert the bitmap to greyscale
      color:=colortorgb(bmp.Canvas.pixels[w,h]);
        r:=getrvalue(color);
        g:=getgvalue(color);
        b:=getbvalue(color);
      color2:=(r+g+b) div 3;
      bmp.canvas.Pixels[w,h]:=RGB(color2,color2,color2);
      //then convert it to sepia
      color:=colortorgb(bmp.Canvas.pixels[w,h]);
        r:=getrvalue(color);
        g:=getgvalue(color);
        b:=getbvalue(color);
      rr:=r+(depth*2);
      gg:=g+depth;
    if rr <= ((depth*2)-1) then
    rr:=255;
    if gg <= (depth-1) then
    gg:=255;
    bmp.canvas.Pixels[w,h]:=RGB(rr,gg,b);
    end;
  end;
  Screen.Cursor := crDefault;
  bmp.SaveToFile(MainDir + 'Data\Backup\_ascii');
  bmp.SaveToFile(MainDir + 'Data\Backup\_gray');
  {$R+}
end;

function mini(a,b : integer): integer;
begin
  if a < b then result := a else result := b;
end;

function maxi(a,b : integer): integer;
begin
  if a > b then result := a else result := b;
end;

Procedure HSVtoRGB (const zH, zS, zV: integer; var aR, aG, aB: integer);
const
  d = 255*60;
var
  a    : integer;
  hh   : integer;
  p,q,t: integer;
  vs   : integer;
begin
  if (zH = 0) or (zS = 0) or (ZV = 0)  then    
  begin
    aR := zV;
    aG := zV;
    aB := zV;
  end
  else
  begin
    if zH = 360 then hh := 0 else hh := zH;
    a  := hh mod 60;
    hh := hh div 60;
    vs := zV * zS;
    p  := zV - vs div 255;              // p = v * (1 - s)
    q  := zV - (vs*a) div d;            // q = v * (1 - s*a)
    t  := zV - (vs*(60 - a)) div d;     // t = v * (1 - s * (1 - f))
    case hh of
    0: begin aR := zV; aG :=  t ; aB :=  p; end;
    1: begin aR :=  q; aG := zV ; aB :=  p; end;
    2: begin aR :=  p; aG := zV ; aB :=  t; end;
    3: begin aR :=  p; aG :=  q ; aB := zV; end;
    4: begin aR :=  t; aG :=  p ; aB := zV; end;
    5: begin aR := zV; aG :=  p ; aB :=  q; end;
    else begin aR := 0; aG := 0 ; aB := 0; end;
    end;
  end;
end;

procedure RGBtoHSV(const aR, aG,aB: integer; var zH, zS, zV: integer);
var
  Delta : integer;
  Min   : integer;
begin
  Min := mini(aR, mini(aG,aB));
  zV   := maxi(aR, maxi(aG,aB));
  Delta := zV - Min;

  if zV =  0 then
     zS := 0 else zS := (Delta*255) div zV;
  if zS  = 0 then
     zH := 0
  else
  begin
    if aR = zV then
    zH := ((aG-aB)*60) div delta
    else
    if aG = zV then
    zH := 120 + ((aB-aR)*60) div Delta
    else
    if  aB = zV then
    zH := 240 + ((aR-aG)*60) div Delta;
    if zH <= 0 then zH := zH + 360;
  end;
end;

Procedure TForm1.BmpCouleur(couleur: tcolor);
var
  x, y : integer;
  Rowa : Prgbarray;
  Rowb : Prgbarray;
  R,G,B : integer;
  R0,G0,B0 : integer;
  H0       : integer;
  H,S,V    : integer;
begin
  {$R-}
  Screen.Cursor := crHourGlass;
  R0 := GetRValue( ColorToRGB(couleur));
  G0 := GetGValue( ColorToRGB(couleur));
  B0 := GetBValue( ColorToRGB(couleur));
  RGBtoHSV(R0, G0, B0, H, S, V);
  H0 := H;      
  For y := 0 to bitmap2.height-1 do
  begin
    rowa := Bitmap1.scanline[y];
    rowb := Bitmap2.scanline[y];
    for x := 0 to bitmap2.width-1 do
    begin
      R := rowa[x].RgbtRed;
      G := rowa[x].Rgbtgreen;
      B := rowa[x].Rgbtblue;

      RGBtoHSV(R, G, B, H, S, V);
      HSVtoRGB(H0, S, V, R, G, B);

      if R > 255 then R := 255 else if R < 0 then R := 0;
      if G > 255 then G := 255 else if G < 0 then G := 0;
      if B > 255 then B := 255 else if B < 0 then B := 0;
      rowb[x].Rgbtred   := R;
      rowb[x].Rgbtgreen := G;
      rowb[x].Rgbtblue  := B;
    end;
  end;
  {$R+}
  Screen.Cursor := crDefault;
end;

procedure TForm1.coloriser(acolor : tcolor);
var
  bmp : TBitmap;
begin
  try
    bmp := Tbitmap.Create;
    bmp.Assign(Image2.Picture.Bitmap);

    bitmap1.pixelformat := pf24bit;
    bitmap1.width  := bmp.width;
    bitmap1.height := bmp.height;
    bitmap1.canvas.draw(0,0, image2.picture.graphic);

    bitmap2.pixelformat := pf24bit;
    bitmap2.width  := bmp.width;
    bitmap2.height := bmp.height;
    bmpcouleur(acolor);
    Image1.Picture.Bitmap.Assign(bitmap2);
    bmp.Assign(Image1.Picture.Bitmap);

    bmp.SaveToFile(MainDir + 'Data\Backup\_ascii');
    bmp.SaveToFile(MainDir + 'Data\Backup\_gray');
  finally
    Image1.Invalidate;
    Image2.Invalidate;
    bmp.Free;
  end;
end;

procedure TForm1.arcenciel;
var
  i : integer;
  colo : Tcolor;
  R,G,B : integer;
begin
  for i := 1 to image4.width do
  begin
    HSVtoRGB(i, 255, 255, R, G, B);
    colo := RGB(R,G,B);
    with image4.canvas do
    begin
      pen.color := colo;
      moveto(i,0);
      lineto(i, image4.height);
    end;
  end;
end;

function TForm1.ScalePercentBmp(bitmp: TBitmap;
  iPercent: Integer): Boolean;
var
  TmpBmp: TBitmap;
  ARect: TRect;
  h, w: Real;
  hi, wi: Integer;
begin
  Result := False;
  try TmpBmp := TBitmap.Create;
    try
      h := bitmp.Height * (iPercent / 100);
      w := bitmp.Width * (iPercent / 100);
      hi := StrToInt(FormatFloat('#', h)) + bitmp.Height;
      wi := StrToInt(FormatFloat('#', w)) + bitmp.Width;
      TmpBmp.Width := wi;
      TmpBmp.Height := hi; ARect := Rect(0, 0, wi, hi);
      TmpBmp.Canvas.StretchDraw(ARect, Bitmp);
      bitmp.Assign(TmpBmp); finally
      TmpBmp.Free; end; Result := True;  except  Result := False;
  end;
end;

function IntToByte(i : integer) : byte;
begin
  if (i>255) then Result := 255 else if (i < 0) then
  Result := 0 else Result := i;
end;

procedure Brightness(Src : TBitmap; Amount : integer);
var  x, y : integer;
     SrcLine : pRGBArray;
     SrcGap : integer;
begin
  Src.PixelFormat := pf24bit;
  SrcLine := Src.ScanLine[0];
  SrcGap := Integer(Src.ScanLine[1]) - Integer(SrcLine);
  {$ifopt R+}
  {$define RangeCheck}
  {$endif}
  {$R-}
   for y := 0 to pred(Src.Height) do begin
    for x := 0 to pred(Src.Width) do begin
     SrcLine[x].rgbtRed := IntToByte(SrcLine[x].rgbtRed +
     MulDiv(SrcLine[x].rgbtRed, Amount, 100));
     SrcLine[x].rgbtGreen := IntToByte(SrcLine[x].rgbtGreen +
     MulDiv(SrcLine[x].rgbtGreen, Amount, 100));
     SrcLine[x].rgbtBlue := IntToByte(SrcLine[x].rgbtBlue +
     MulDiv(SrcLine[x].rgbtBlue, Amount, 100));
    end; {for}
  SrcLine := pRGBArray(Integer(SrcLine) + SrcGap);
  end; {for}
  {$ifdef RangeCheck}
  {$R+}
  {$undef RangeCheck}
  {$endif}
end; {Brightness}

procedure Contrast(Src : TBitmap; Amount : integer);
var
  x, y : integer;
  r, g, b : integer;
  rr, gg, bb : integer;
  SrcLine : pRGBArray;
  SrcGap : integer;
begin
  Src.PixelFormat := pf24bit;
  SrcLine := Src.ScanLine[0];
  SrcGap := Integer(Src.ScanLine[1]) - Integer(SrcLine);
{$ifopt R+} {$define RangeCheck} {$endif} {$R-}
  for y := 0 to pred(Src.Height) do begin
    for x := 0 to pred(Src.Width) do begin
      r := SrcLine[x].rgbtRed;
      g := SrcLine[x].rgbtGreen;
      b := SrcLine[x].rgbtBlue;
      rr := MulDiv(abs(127-r), Amount, 100);
      gg := MulDiv(abs(127-g), Amount, 100);
      bb := MulDiv(abs(127-b), Amount, 100);

      if (r>127) then r := r+rr else r := r-rr;
      if (g>127) then g := g+gg else g := g-gg;
      if (b>127) then b := b+bb
      else
      b := b-bb;
      SrcLine[x].rgbtRed := IntToByte(r);
      SrcLine[x].rgbtGreen := IntToByte(g);
      SrcLine[x].rgbtBlue := IntToByte(b);
      end; {for}

    SrcLine := pRGBArray(Integer(SrcLine) + SrcGap);
  end; {for}
{$ifdef RangeCheck} {$R+} {$undef RangeCheck} {$endif}
end; {Contrast}

procedure BitmapDrehen_90Grad(const Bitmap: TBitmap);
var P: PRGBQuad;
    x,y,b,h : Integer;
    RowOut: ^TMyHelp;
    help: TBitmap;
begin
  {$R-}
  Bitmap.PixelFormat := pf32bit;
  help := TBitmap.Create;
  try
    help.PixelFormat := pf32bit;
    b := bitmap.Height;
    h := bitmap.Width;
    help.Width := b;
    help.height := h;
    for y := 0 to (h-1) do
    begin
      rowOut := help.ScanLine[y];
      P  := Bitmap.scanline[bitmap.height-1];
      inc(p,y);
      for x := 0 to (b-1) do
      begin
        rowout[x] := p^;
        inc(p,h);
      end;
    end;
  finally
    bitmap.Assign(help);
    help.SaveToFile(MainDir + 'Data\Backup\_ascii');
    help.SaveToFile(MainDir + 'Data\Backup\_gray');
  end;
  {$R+}

end;

function RandomDec(PLen: Integer): string;
var
  str: string;
begin
  Randomize;
  str    := '1234567890';
  Result := '';
  repeat
    Result := Result + str[Random(Length(str)) + 1];
  until (Length(Result) = PLen)
end;

function RandomABC(PLen: Integer): string;
var
  str: string;
begin
  Randomize;
  str    := 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Result := '';
  repeat
    Result := Result + str[Random(Length(str)) + 1];
  until (Length(Result) = PLen)
end;

function RandomBoth(PLen: Integer): string;
var
  str: string;
begin
  Randomize;
  str    := 'abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Result := '';
  repeat
    Result := Result + str[Random(Length(str)) + 1];
  until (Length(Result) = PLen)
end;

procedure ConvertEMF2BMP(EMFFileName, BMPFileName: String) ;
var
   MetaFile : TMetafile;
   Bitmap : TBitmap;
begin
   Metafile := TMetaFile.Create;
   Bitmap := TBitmap.Create;
   try
     MetaFile.LoadFromFile(EMFFileName) ;
     with Bitmap do
     begin
       Height := Metafile.Height;
       Width := Metafile.Width;
       Canvas.Draw(0, 0, MetaFile) ;
       SaveToFile(BMPFileName) ;
     end;
   finally
     Bitmap.Free;
     MetaFile.Free;
   end;
end;

procedure WmfToBmp(const FileWmf, FileBmp: TFileName);
var
  MetaFile: TMetafile;
  BmpWMF:      TBitmap;
begin
  Metafile := TMetaFile.Create;
  BmpWMF := TBitmap.Create;
  try
    MetaFile.LoadFromFile(FileWmf);
    with BmpWMF do
    begin
      Height := Metafile.Height;
      Width  := Metafile.Width;
      Canvas.Draw(0, 0, MetaFile);
      SaveToFile(FileBmp);
      Free;
    end;
  finally
    MetaFile.Free;
  end;
end;

function ResampleSubBitmap(Bitmap: TBitmap; XPos, YPos, Width, Height: Integer): TRGBQuad;
var
  r, g, b: Cardinal;
  Line: PLine;
  x, y, z: Integer;
begin
  z := (Width * Height);
  r := 0;
  g := 0;
  b := 0;
  if (YPos + Height) >= Bitmap.Height then Height := (Bitmap.Height - YPos) - 1;
  if (XPos + Width) >= Bitmap.Width then Width := (Bitmap.Width - XPos) - 1;
  for y := YPos to YPos + Height do
  begin
    Line := Bitmap.ScanLine[y];
    for x := XPos to XPos + Width do
    begin
      r := r + Line[x].rgbRed;
      g := g + Line[x].rgbGreen;
      b := b + Line[x].rgbBlue;
      Inc(z);
    end;
  end;

  if (z = 0) then z := 1;
  r := Round((r / z) * 1.4);
  if (r > 255) then r := 255;
  g := Round((g / z) * 1.4);
  if (g > 255) then g := 255;
  b := Round((b / z) * 1.4);
  if (b > 255) then b := 255;

  Result.rgbRed   := r;
  Result.rgbGreen := g;
  Result.rgbBlue  := b;
end;

function ResampleBitmap(Bitmap: TBitmap; NewWidth, NewHeight: Integer): Boolean;
var
  Temp: TBitmap;
  Line: PLine;
  x, y: Integer;
  Blockheight, Blockwidth: Cardinal;
  BlockPosX, BlockPosY: Single;
  BlockDiffX, BlockDiffY: Single;
  XPos, YPos: Single;
  DiffX, Diffy: Single;
begin
  Screen.Cursor := crHourGlass;
  Result := True;
  Temp := TBitmap.Create;
  Bitmap.PixelFormat := pf32Bit;
  Temp.PixelFormat   := pf32Bit;
  Temp.Height := NewHeight;
  Temp.Width  := NewWidth;
  BlockDiffY := (Bitmap.Height / NewHeight);
  BlockDiffX := (Bitmap.Width / NewWidth);
  BlockHeight := Trunc(BlockDiffY);
  BlockWidth  := Trunc(BlockDiffY);
  DiffX := 1;
  DiffY := 1;
  BlockPosY := 0;
  YPos      := 0;
  for y := 0 to NewHeight - 1 do
  begin
    BlockPosX := 0;
    XPos      := 0;
    Line := Temp.ScanLine[Trunc(YPos)];
    for x := 0 to NewWidth - 1 do
    begin
      Line[Trunc(XPos)] := ResampleSubBitmap(Bitmap,
        Round(BlockPosX), Round(BlockPosY), Blockwidth, BlockHeight);
      BlockPosX := BlockPosX + BlockDiffX;
      XPos      := XPos + DiffX;
    end;
    BlockPosY := BlockPosY + BlockDiffY;
    YPos      := YPos + DiffY;
  end;
  Bitmap.Assign(Temp);
  Temp.Free;
  Screen.Cursor := crDefault;
  Bitmap.SaveToFile(MainDir + 'Data\Backup\_ascii');
  Bitmap.SaveToFile(MainDir + 'Data\Backup\_gray');
end;

procedure MirrorV(AImage: TImage);
var  lBmp: TBitmap;
begin
  lBmp := TBitmap.Create;
  try
    lBmp.Assign(AImage.Picture.Graphic);
    StretchBlt(lBmp.Canvas.Handle,0,0,
                 lBmp.Width,lBmp.Height,lBmp.Canvas.Handle,0,
                 lBmp.Height,lBmp.Width,-lBmp.Height,SRCCOPY);
    AImage.Picture.Assign(lBmp);;
  finally
    lBmp.Free;
  end;
end;

procedure MirrorH(AImage: TImage);
var
  lBmp: TBitmap;
begin
  lBmp := TBitmap.Create;
  try
    lBmp.Assign(AImage.Picture.Graphic);
    StretchBlt(lBmp.Canvas.Handle,0,0,
                 lBmp.Width,lBmp.Height,lBmp.Canvas.Handle,lBmp.Width,
                 0,-lBmp.Width,lBmp.Height,SRCCOPY);
    AImage.Picture.Assign(lBmp);;
  finally
    lBmp.Free;
  end;
end;

procedure ImageGrayScale(var AnImage: TImage);
var
  JPGImage: TJPEGImage;
  BMPImage: TBitmap;
  MemStream: TMemoryStream;
begin
  BMPImage := TBitmap.Create;
  try
    BMPImage.Width  := AnImage.Picture.Bitmap.Width;
    BMPImage.Height := AnImage.Picture.Bitmap.Height;
    JPGImage := TJPEGImage.Create;
    try
      JPGImage.Assign(AnImage.Picture.Bitmap);
      JPGImage.CompressionQuality := 100;
      JPGImage.Compress;
      JPGImage.Grayscale := True;
      BMPImage.Canvas.Draw(0, 0, JPGImage);
      MemStream := TMemoryStream.Create;
      try
        BMPImage.SaveToStream(MemStream);
        MemStream.Position := 0;
        AnImage.Picture.Bitmap.LoadFromStream(MemStream);
        AnImage.Refresh;
      finally
        MemStream.Free;
      end;
    finally
      JPGImage.Free;
    end;
  finally
    BMPImage.Free;
  end;
end;

function InvertBitmap(MyBitmap: TBitmap): TBitmap;
var x, y: Integer; ByteArray: PByteArray;
begin
  MyBitmap.PixelFormat := pf24Bit;
  for y := 0 to MyBitmap.Height - 1 do begin
    ByteArray := MyBitmap.ScanLine[y];
    for x := 0 to MyBitmap.Width * 3 - 1 do begin
      ByteArray[x] := 255 - ByteArray[x];
    end; end; Result := MyBitmap;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  bitmap1 := Tbitmap.Create;
  bitmap2 := Tbitmap.Create;
  arcenciel;
  fonColor.r := 0;
  fonColor.g := 0;
  fonColor.b := 0;
  //mashtab := 1;
  sootnx := 2;
  sootny := 1;
  Panel2.DoubleBuffered := true;
end;

procedure TForm1.N1x1Click(Sender: TObject);
begin
  mashtab := 1;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N211Click(Sender: TObject);
begin
  N211.Checked := False;
  N111.Checked := False;
  N121.Checked := False;

  (Sender as TMenuItem).Checked := True;

  if N211.Checked = true then Label5.Caption := '2 : 1';
  if N111.Checked = true then Label5.Caption := '1 : 1';
  if N121.Checked = true then Label5.Caption := '1 : 2';
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  if ColorDialog.Execute
  then
  begin
    fonColor.r := GetRValue(ColorDialog.Color);
    fonColor.g := GetGValue(ColorDialog.Color);
    fonColor.b := GetBValue(ColorDialog.Color);
  end;
  Shape2.Brush.Color := ColorDialog.Color;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  arr: Array of Array of TMyRGB;
  x, y, i, j, t, len, px, py, sx, sy: Integer;
  s, s1: String;
  pre: TMyRGB;
  f: TextFile;

  function DecToHex(d: Byte): String;
  var  a, b: Byte;
  begin
    a := d div 16;
    b := d mod 16;
    if a < 10 then Result := IntToStr(a)
    else
      Result := Chr(Ord('A') + a - 10);

    if b < 10 then
      Result := Result + IntToStr(b)
    else
      Result := Result + Chr(Ord('A') + b - 10);
end;

  function RGBColor(color: TMyRGB): String;
  begin
    Result := DecToHex(color.r) + DecToHex(color.g) + DecToHex(color.b);
  end;

  procedure DoAbort; begin SetLength(arr, 0, 0); Finalize(arr); end;

begin
  if N42.Checked then begin sootnx := 4; sootny := 1; end;
  if N41.Checked then begin sootnx := 3; sootny := 1; end;
  if N211.Checked then begin sootnx := 2; sootny := 1; end;
  if N111.Checked then begin sootnx := 1; sootny := 1; end;
  if N121.Checked then begin sootnx := 1; sootny := 2; end;
  if N14.Checked then begin sootnx := 1; sootny := 3; end;
  if N15.Checked then begin sootnx := 1; sootny := 4; end;

  aborted := False;

  bmp := TBitmap.Create;
  bmp.Assign(Image1.Picture.Bitmap);

  if bmp = nil then
    MessageBox(Handle, 'No Image loaded !', 'Error', MB_OK)
  else
    if SaveDialog.Execute then
    begin
      frmProcess.pbProgress.Position := 0;
      frmProcess.lblConvertion.Caption := 'Calculating Progress : (0%)... please wait.';
      frmProcess.lblMashtab.Caption := 'Scale : 1:' + IntToStr(mashtab);
      frmProcess.pnlColor.Brush.Color := RGB(fonColor.r, fonColor.g, fonColor.b);
      frmProcess.lblSootn.Caption := 'Ratio : ' + IntToStr(sootnx) + ':' + IntToStr(sootny);
      frmProcess.Caption := 'Processing File - ' + ExtractFileName(OpenDialog1.FileName);
      frmProcess.Label2.Caption := 'x' + Label19.Caption;
      //frmProcess.Left := (Screen.Width - frmProcess.Width) div 2;
      //frmProcess.Top := (Screen.Height - frmProcess.Height) div 2;
      frmProcess.Show;
      self.Enabled := False;
      Application.ProcessMessages;

      x := bmp.Height;
      y := bmp.Width;
      t := 0;
      s1 := Memo.Text;
      s := '';
      len := Length(s1);
      for i := 1 to len - 1 do
        if Ord(s1[i]) > 32 then s := s + s1[i];
      len := Length(s); SetLength(arr, x, y);

      if (x > 0) and (y > 0) then begin
        for i := 0 to x - 1 do begin
          if aborted then begin
            DoAbort;
            break;
          end;

          for j := 0 to y - 1 do
          begin
            arr[i, j].r := GetRValue(bmp.Canvas.Pixels[j, i]);
            arr[i, j].g := GetGValue(bmp.Canvas.Pixels[j, i]);
            arr[i, j].b := GetBValue(bmp.Canvas.Pixels[j, i]);
          end;
          frmProcess.pbProgress.Position := Trunc((i / x) * 50);
          frmProcess.lblConvertion.Caption := 'Calculating Progress : (' + IntToStr(frmProcess.pbProgress.Position) + '%)... please wait..';
          Application.ProcessMessages;
        end;

        if not aborted then
        begin
        AssignFile(f, SaveDialog.FileName);
        ReWrite(f);


        if RadioButton1.Checked = true then begin
        WriteLn(f, '<html><head><title>Ascii</title></head><body bgcolor="' + RGBColor(fonColor) + '"><pre><font size="' + Label19.Caption + '"><div style="text-align:center">');
        end else begin
        WriteLn(f, '<html><head><title>Ascii</title></head><body bgcolor="' + RGBColor(fonColor) + '"><pre><font size="' + Label19.Caption + '">');
        end;

        if RadioButton2.Checked = true then begin
        WriteLn(f, '<html><head><title>Ascii</title></head><body bgcolor="' + RGBColor(fonColor) + '"><pre><font size="' + Label19.Caption + '"><div style="text-align:right">');
        end else begin
        WriteLn(f, '<html><head><title>Ascii</title></head><body bgcolor="' + RGBColor(fonColor) + '"><pre><font size="' + Label19.Caption + '">');
        end;

        if RadioButton3.Checked = true then begin
        WriteLn(f, '<html><head><title>Ascii</title></head><body bgcolor="' + RGBColor(fonColor) + '"><pre><font size="' + Label19.Caption + '"><div style="text-align:left">');
        end else begin
        WriteLn(f, '<html><head><title>Ascii</title></head><body bgcolor="' + RGBColor(fonColor) + '"><pre><font size="' + Label19.Caption + '">');
        end;

        pre := arr[0, 0];
        Write(f, '<font color="#' + RGBColor(pre) + '">');
        px := 0; py := 0;
        for i := 0 to x - 1 do
        begin
          if aborted then
          begin
            DoAbort;
            break;
          end;
          inc(px);
          if px = mashtab then
            for sy := 1 to sootny do
            begin
              if not aborted then
              for j := 0 to y - 1 do
              begin
                inc(py);
                if py = mashtab then
                  for sx := 1 to sootnx do
                  begin
                    if (arr[i, j].r <> pre.r) and (arr[i, j].g <> pre.g) and (arr[i, j].b <> pre.b) then
                    begin
                      pre := arr[i, j];
                      Write(f, '</font><font color="' + RGBColor(pre) + '">');
                    end;
                    inc(t);
                    if t >= len then t := 1; Write(f, s[t]); py := 0;
                  end;
              end;
              Write(f, #13#10);
              frmProcess.pbProgress.Position := 50 + Trunc((i / x) * 50);
              frmProcess.lblConvertion.Caption := 'Calculating Progress : (' + IntToStr(frmProcess.pbProgress.Position) + '%).... please wait.';

              if aborted then
              begin
                DoAbort;
                break;
              end;
              Application.ProcessMessages;
              px := 0;
            end;
        end;


        if (RadioButton1.Checked = true) or (RadioButton2.Checked = true)
        or (RadioButton3.Checked = true)
        then begin
        WriteLn(f, '</font></font></pre></div></body></html>');
        end else begin
        WriteLn(f, '</font></font></pre></body></html>');
        end;
        CloseFile(f);
      end;
      end;

      SetLength(arr, 0, 0);
      Finalize(arr);
      //Sleep(50);
      Application.ProcessMessages;
      self.Enabled := True;
      frmProcess.Hide;
    end;
    bmp.Free;
    StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  FileHeader: TBitmapFileHeader;
  InfoHeader: TBitmapInfoHeader;
  Stream    : TFileStream;
  BitmapJPG, bmp : TBitmap;
  Picture: TPicture;
begin
  if OpenDialog1.Execute then begin
    Image1.Picture.Graphic := nil;
    Image2.Picture.Graphic := nil;
    bitmap1.Assign(nil);
    bitmap2.Assign(nil);
    load;
    ScrollBar3.Position := 0;
    ScrollBar1.Position := 0;
    ScrollBar2.Position := 0;
    Label17.Caption := 'Scale : ' + IntToStr(ScrollBar3.Position) + ' %';
    StatusBar1.Panels[3].Text := IntToStr(Image1.Width) + ' px';
    StatusBar1.Panels[5].Text := IntToStr(Image1.Height) + ' px';
    Label6.Caption := 'Brightness : ' + IntToStr(ScrollBar1.Position) + ' %';

    if OpenDialog1.FilterIndex = 1 then begin                       // bmp
      try
        bmp := TBitmap.Create;
        Image1.Picture.Bitmap.LoadFromFile(OpenDialog1.FileName);
        Image1.Picture.Bitmap.SaveToFile(MainDir + 'Data\Backup\_ascii');
        Image1.Picture.Bitmap.SaveToFile(MainDir + 'Data\Backup\_picture');
        Image1.Picture.Bitmap.SaveToFile(MainDir + 'Data\Backup\_gray');

        bmp.Assign(Image1.Picture.Bitmap);
        bitmap1.Assign(bmp);
        bitmap2.Assign(bmp);
        Image2.Picture.Bitmap.Assign(bmp);
        Image1.Width := bmp.Width;
        Image1.Height := bmp.Height;
      finally
        bmp.Free;
      end;
    end;

    if OpenDialog1.FilterIndex = 2 then begin                      // jpg
      JPEGImage:=TJPEGImage.Create;
      BitmapJPG := TBitmap.Create;
      try
        JPEGImage.LoadFromFile(OpenDialog1.FileName);
        Image1.Canvas.Draw(0,0,JPEGImage);

          with BitmapJPG do
          begin
            PixelFormat:=pf24bit;
            Height := JPEGImage.Height;
            Width := JPEGImage.Width;
            Canvas.Draw(0,0, JPEGImage);
          end;

      BitmapJPG.SaveToFile(MainDir + 'Data\Backup\_ascii');
      BitmapJPG.SaveToFile(MainDir + 'Data\Backup\_picture');
      BitmapJPG.SaveToFile(MainDir + 'Data\Backup\_gray');
      bitmap1.Assign(BitmapJPG);
      bitmap2.Assign(BitmapJPG);
      Image1.Picture.Bitmap.Assign(BitmapJPG);
      Image2.Picture.Bitmap.Assign(BitmapJPG);
      finally
        BitmapJPG.Free;
        JPEGImage.Free;
      end;
    end;

    if OpenDialog1.FilterIndex = 3 then begin                        // wmf
      WmfToBmp(OpenDialog1.FileName, MainDir + 'Data\Backup\_ascii');

      try
        bmp := TBitmap.Create;
        bmp.PixelFormat := pf24bit;
        bmp.LoadFromFile(MainDir + 'Data\Backup\_ascii');

        bmp.SaveToFile(MainDir + 'Data\Backup\_picture');
        bmp.SaveToFile(MainDir + 'Data\Backup\_gray');
        bitmap1.Assign(bmp);
        bitmap2.Assign(bmp);
        Image1.Picture.Bitmap.Assign(bmp);
        Image2.Picture.Bitmap.Assign(bmp);
      finally
      bmp.Free;
      end;
    end;

    if OpenDialog1.FilterIndex = 4 then begin                       // emf
      ConvertEMF2BMP(OpenDialog1.FileName, MainDir + 'Data\Backup\_ascii') ;

      try
        bmp := TBitmap.Create;
        bmp.PixelFormat := pf24bit;
        Image1.Picture.Bitmap.LoadFromFile(MainDir + 'Data\Backup\_ascii');

        bmp.LoadFromFile(MainDir + 'Data\Backup\_ascii');
        bmp.SaveToFile(MainDir + 'Data\Backup\_picture');
        bmp.SaveToFile(MainDir + 'Data\Backup\_gray');
        bitmap1.Assign(bmp);
        bitmap2.Assign(bmp);
        Image1.Picture.Bitmap.Assign(bmp);
        Image2.Picture.Bitmap.Assign(bmp);
      finally
        bmp.Free;
      end;
    end;

    if OpenDialog1.FilterIndex = 5 then begin                     // gif
      try
        bmp := TBitmap.Create;
        Picture := TPicture.Create;
        Picture.LoadFromFile(OpenDialog1.FileName);
        bmp.Width := Picture.Width;
        bmp.Height := Picture.Height;
        bmp.Canvas.Draw(0, 0, Picture.Graphic);
        bmp.SaveToFile(MainDir + 'Data\Backup\_ascii');
        bmp.SaveToFile(MainDir + 'Data\Backup\_picture');
        bmp.SaveToFile(MainDir + 'Data\Backup\_gray');
        bitmap1.Assign(bmp);
        bitmap2.Assign(bmp);
        Image1.Picture.Bitmap.Assign(bmp);
        Image2.Picture.Bitmap.Assign(bmp);
      finally
        bmp.Free;
        Picture.Free;
      end;
    end;

  end;

    {$R-}
    Stream := TFileStream.Create(MainDir + 'Data\Backup\_ascii', fmOpenRead or fmShareDenyNone);
    try
      Stream.Read(FileHeader, SizeOf(FileHeader));
      Stream.Read(InfoHeader, SizeOf(InfoHeader));
      StatusBar1.Panels[1].Text := Format('%d Kb', [FileHeader.bfSize div 1000]);
      StatusBar1.Panels[3].Text := Format('%d px', [InfoHeader.biWidth]);
      StatusBar1.Panels[5].Text := Format('%d px', [InfoHeader.biHeight]);
      StatusBar1.Panels[7].Text := Format('x%d', [InfoHeader.biBitCount]);
      StatusBar1.Panels[9].Text := Format('%d', [InfoHeader.biCompression]);
      StatusBar1.Panels[11].Text := Format('%d', [InfoHeader.biClrUsed]);
      StatusBar1.Panels[13].Text := Format('%d', [InfoHeader.biPlanes]);

      {
      Listbox1.Items.Add(Format('Größe des Bitmaps: %d Bytes', [FileHeader.bfSize]));
      Listbox1.Items.Add(Format('Breite des Bitmaps: %d Pixel', [InfoHeader.biWidth]));
      Listbox1.Items.Add(Format('Höhe des Bitmaps: %d Pixel', [InfoHeader.biHeight]));
      Listbox1.Items.Add(Format('Farbtiefe: %d bit', [InfoHeader.biBitCount]));
      Listbox1.Items.Add(Format('Size: %d bit', [InfoHeader.biSize]));
      Listbox1.Items.Add(Format('Planes: %d bit', [InfoHeader.biPlanes]));
      Listbox1.Items.Add(Format('Compression %d bit', [InfoHeader.biCompression]));
      Listbox1.Items.Add(Format('SizeImage %d bit', [InfoHeader.biSizeImage]));
      Listbox1.Items.Add(Format('XPelsPerMeter %d bit', [InfoHeader.biXPelsPerMeter]));
      Listbox1.Items.Add(Format('YPelsPerMeter %d bit', [InfoHeader.biYPelsPerMeter]));
      Listbox1.Items.Add(Format('ClrUsed %d bit', [InfoHeader.biClrUsed]));
      Listbox1.Items.Add(Format('ClrImportant %d bit', [InfoHeader.biClrImportant]));
      }
    finally
      Stream.Free;
    end;


  {$R+}
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
var
  bmp : TBitmap;
begin
  try
  bmp := TBitmap.Create;
  if CheckBox1.Checked = true then begin
    Image1.Picture.Bitmap := InvertBitmap(Image1.Picture.Bitmap);
    Image2.Picture.Bitmap := InvertBitmap(Image2.Picture.Bitmap);
    bmp.Assign(Image1.Picture.Bitmap);
  end else begin
    Image1.Picture.Bitmap := InvertBitmap(Image1.Picture.Bitmap);
    Image2.Picture.Bitmap := InvertBitmap(Image2.Picture.Bitmap);
    bmp.Assign(Image1.Picture.Bitmap);
  end;
  finally
    bmp.Free;
    Image1.Invalidate;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
var
  bmp : TBitmap;
begin
  try
  bmp := TBitmap.Create;
    if CheckBox2.Checked = true then begin
      Image1.Picture.Bitmap.LoadFromFile(MainDir + 'Data\Backup\_ascii');
      ImageGrayScale(Image1);
      bmp.Assign(Image1.Picture.Bitmap);
      bmp.SaveToFile(MainDir + 'Data\Backup\_ascii');
    end else begin
      CheckBox1.Checked := false;
      CheckBox3.Checked := false;
      CheckBox4.Checked := false;
      Image1.Picture.Bitmap.LoadFromFile(MainDir + 'Data\Backup\_gray');
      Image2.Picture.Bitmap.LoadFromFile(MainDir + 'Data\Backup\_gray');
      Image1.Picture.Bitmap.SaveToFile(MainDir + 'Data\Backup\_ascii');
    end;
  finally
    bmp.Free;
    Image1.Invalidate;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
var
  bmp : TBitmap;
begin
  bmp := TBitmap.Create;
  try
    MirrorV(Image1);
    MirrorV(Image2);
    bmp.Assign(Image1.Picture.Bitmap);
    bmp.SaveToFile(MainDir + 'Data\Backup\_ascii');
  finally
    Image1.Invalidate;
    bmp.free;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
var
  bmp : TBitmap;
begin
  bmp := TBitmap.Create;
  try
    MirrorH(Image1);
    MirrorH(Image2);
    bmp.Assign(Image1.Picture.Bitmap);
    bmp.SaveToFile(MainDir + 'Data\Backup\_ascii');
  finally
    bmp.Free;
    Image1.Invalidate;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  if CheckBox5.Checked = true then begin
    Image1.Transparent := true;
    Image2.Transparent := true;
  end else begin
    Image1.Transparent := false;
    Image2.Transparent := true;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then begin
  Memo.Clear;
  Memo.Lines.Add('00110001 00110010 00110011 00110100 00110101');
  Memo.Lines.Add('00110110 00110111 00111000 00111001 00110000');
  end;

  if ComboBox1.ItemIndex = 1 then begin
  Memo.Clear;
  Memo.Lines.Add('61 62 63 64 65 66 67 68 69 6A 6B 6C 6D');
  Memo.Lines.Add('6E 6F 70 71 72 73 74 75 76 77 78 79 7A');
  end;

  if ComboBox1.ItemIndex = 2 then begin
  Memo.Clear;
  Memo.Lines.Add('0123456789');
  end;

  if ComboBox1.ItemIndex = 3 then begin
  Memo.Clear;
  Memo.Lines.Add('abcdefghijklomnopqrstuvwxyz');
  end;

  if ComboBox1.ItemIndex = 4 then begin
  Memo.Clear;
  Memo.Lines.Add('abcdefghijklomnopqrstuvwxyz');
  Memo.Lines.Add('ABCDEFGHIJKLMNOPQRSTUVWXYZ');
  Memo.Lines.Add('0123456789"`~!@#$%^&*()-_+=|\/?.,<>[]{}');
  end;  StatusBar1.SetFocus;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  if ComboBox2.ItemIndex = 0 then Memo.Lines.Text := UpperCase(Memo.Lines.Text);
  if ComboBox2.ItemIndex = 1 then Memo.Lines.Text := LowerCase(Memo.Lines.Text);
  StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  if OpenDialog2.Execute then begin
  Memo.Lines.LoadFromFile(OpenDialog2.FileName);
  ComboBox1.ItemIndex := -1; ComboBox2.ItemIndex := -1;
  end;  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  if CheckBox6.Checked = true then begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end else begin
  SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end;    StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  if CheckBox7.Checked = true then begin
  ShowWindow( Application.Handle, SW_HIDE ); end else begin
  ShowWindow( Application.Handle, SW_SHOW ); end; StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
var i : integer;
begin
   for i := 1 to SpinEdit1.Value do begin

   if ComboBox3.ItemIndex = 0 then begin
   Memo.Lines.Add(RandomDec(SpinEdit2.Value)); end;

   if ComboBox3.ItemIndex = 1 then begin
   Memo.Lines.Add(RandomABC(SpinEdit2.Value)); end;

   if ComboBox3.ItemIndex = 2 then begin
   Memo.Lines.Add(RandomBoth(SpinEdit2.Value)); end;

   end; StatusBar1.SetFocus;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
  WinExec('CharMap.exe', SW_SHOWNORMAL);
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  if CheckBox8.Checked = true then begin
  Panel1.Visible := true; end else begin Panel1.Visible := false; end;
  StatusBar1.SetFocus;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CheckBox10.Checked = true then begin
    Memo.Lines.SaveToFile(MainDir + 'Data\ASCii Text\ASCii Text.ini');
  end;

  bitmap1.free;
  bitmap2.free;

  WriteOptions;

  DeleteFile(MainDir + 'Data\Backup\_ascii');
  DeleteFile(MainDir + 'Data\Backup\_picture');
  DeleteFile(MainDir + 'Data\Backup\_gray');
end;

procedure TForm1.L1Click(Sender: TObject);
begin
  BitBtn7.Click;
end;

procedure TForm1.bmp1Click(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure TForm1.html1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ReadOptions;
  if CheckBox11.Checked = true then begin
  Memo.Lines.LoadFromFile(MainDir + 'Data\ASCii Text\ASCii Text.ini');
  end;
  CheckBox8.OnClick(Sender);

  if N1x1.Checked = true then N1x1.OnClick(sender);
  if N1x2.Checked = true then N1x2.OnClick(sender);
  if N1x3.Checked = true then N1x3.OnClick(sender);
  if N1x4.Checked = true then N1x4.OnClick(sender);
  if N1x5.Checked = true then N1x5.OnClick(sender);
  if N1x6.Checked = true then N1x6.OnClick(sender);
  if N1x7.Checked = true then N1x7.OnClick(sender);
  if N1x8.Checked = true then N1x8.OnClick(sender);
  if N1x9.Checked = true then N1x9.OnClick(sender);
  if N1x10.Checked = true then N1x10.OnClick(sender);

  if N42.Checked then begin sootnx := 4; sootny := 1; end;
  if N41.Checked then begin sootnx := 3; sootny := 1; end;
  if N211.Checked then begin sootnx := 2; sootny := 1; end;
  if N111.Checked then begin sootnx := 1; sootny := 1; end;
  if N121.Checked then begin sootnx := 1; sootny := 2; end;
  if N14.Checked then begin sootnx := 1; sootny := 3; end;
  if N15.Checked then begin sootnx := 1; sootny := 4; end;

  if x1.Checked = true then Label19.Caption := '1';
  if x2.Checked = true then Label19.Caption := '2';
  if x3.Checked = true then Label19.Caption := '3';
  if x4.Checked = true then Label19.Caption := '4';
  if x5.Checked = true then Label19.Caption := '5';
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox11Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
var
  bmp : TBitmap;
begin
  if Image1.Picture.Graphic = nil then begin
    StatusBar1.SetFocus;
    Exit;
  end;

  try
    bmp := TBitmap.Create;
    bmp.PixelFormat := pf24bit;
    Image2.Picture.Bitmap.LoadFromFile(MainDir + 'Data\Backup\_ascii');
    bmp.Assign(Image2.Picture.Bitmap);
    Brightness(bmp, ScrollBar1.Position);
    Image1.Picture.Bitmap.Assign(bmp);
  finally
    bmp.Free;
    Label6.Caption := 'Brightness : ' + IntToStr(ScrollBar1.Position) + ' %';
  end;
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
var
  bmp : TBitmap;
begin
  if Image1.Picture.Graphic = nil then begin
    StatusBar1.SetFocus;
    Exit;
  end;

  try
    bmp := TBitmap.Create;
    bmp.PixelFormat := pf24bit;
    Image2.Picture.Bitmap.LoadFromFile(MainDir + 'Data\Backup\_ascii');
    bmp.Assign(Image2.Picture.Bitmap);
    Contrast(bmp, ScrollBar2.Position);
    Image1.Picture.Bitmap.Assign(bmp);
  finally
    bmp.Free;
    Label7.Caption := 'Contrast : ' + IntToStr(ScrollBar2.Position) + ' %';
  end;
end;

procedure TForm1.ScrollBar3Change(Sender: TObject);
var
  Bitmap, bmp : TBitmap;
begin
  if (ScrollBar3.Position < -100) or
     (Image1.Picture.Graphic = nil)  then begin
  StatusBar1.Panels[3].Text := '0' + ' px';
  StatusBar1.Panels[5].Text := '0' + ' px';
  Exit;
  end;

  try
    Bitmap := TBitmap.Create;
    bmp := TBitmap.Create;
    Bitmap.PixelFormat := pf24bit;
    Bitmap.LoadFromFile(MainDir + 'Data\Backup\_picture');
    ScalePercentBmp(Bitmap, ScrollBar3.Position);


    bmp.Assign(Bitmap);
    bmp.SaveToFile(MainDir + 'Data\Backup\_ascii');
    bmp.SaveToFile(MainDir + 'Data\Backup\_gray');
    Image1.Picture.Bitmap.Assign(Bitmap);
    Image2.Picture.Bitmap.Assign(Bitmap);
  finally
    Label17.Caption := 'Scale : ' + IntToStr(ScrollBar3.Position) + ' %';
    StatusBar1.Panels[3].Text := IntToStr(Image1.Width) + ' px';
    StatusBar1.Panels[5].Text := IntToStr(Image1.Height) + ' px';
    Bitmap.Free;
    bmp.Free;
    Load;
  end;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
var
  bmp : TBitmap;
begin
  if Image1.Picture.Graphic = nil then begin
  StatusBar1.SetFocus;
  Exit;
  end;
  {$R-}
  try
    bmp := TBitmap.Create;
    CheckBox1.Checked := false;
    CheckBox2.Checked := false;
    CheckBox3.Checked := false;
    CheckBox4.Checked := false;
    CheckBox5.Checked := false;
    ScrollBar3.Position := 0;
    ScrollBar2.Position := 0;
    ScrollBar1.Position := 0;

    Image1.Picture.Bitmap.LoadFromFile(MainDir + 'Data\Backup\_picture');
    bmp.Assign(Image1.Picture.Bitmap);
    bmp.SaveToFile(MainDir + 'Data\Backup\_ascii');
    bmp.SaveToFile(MainDir + 'Data\Backup\_gray');
  finally
    bmp.Free;
    Image1.Invalidate;
  end;
  {$R+}
  StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
  if Image1.Picture.Graphic = nil then begin
  StatusBar1.SetFocus;
  Exit;
  end;

  Image1.Picture.Graphic := nil;
  Load;
  ScrollBar3.Position := 0;
  ScrollBar1.Position := 0;
  ScrollBar2.Position := 0;
  StatusBar1.Panels[3].Text := IntToStr(Image1.Width) + ' px';
  StatusBar1.Panels[5].Text := IntToStr(Image1.Height) + ' px';
  Label17.Caption := 'Scale : ' + IntToStr(ScrollBar3.Position) + ' %';
  Label6.Caption := 'Brightness : ' + IntToStr(ScrollBar1.Position) + ' %';
  Label7.Caption := 'Contrast : ' + IntToStr(ScrollBar2.Position) + ' %';
  CheckBox1.Enabled := false;
  CheckBox2.Enabled := false;
  CheckBox3.Enabled := false;
  CheckBox4.Enabled := false;
  CheckBox5.Enabled := false;
  StatusBar1.SetFocus;
end;

procedure TForm1.x1Click(Sender: TObject);
begin
  x1.Checked := true; Label19.Caption := '1';
end;

procedure TForm1.x2Click(Sender: TObject);
begin
  x2.Checked := true; Label19.Caption := '2';
end;

procedure TForm1.x3Click(Sender: TObject);
begin
  x3.Checked := true;  Label19.Caption := '3';
end;

procedure TForm1.x4Click(Sender: TObject);
begin
  x4.Checked := true;  Label19.Caption := '4';
end;

procedure TForm1.x5Click(Sender: TObject);
begin
  x5.Checked := true;  Label19.Caption := '5';
end;

procedure TForm1.BitBtn21Click(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TForm1.U1Click(Sender: TObject);
begin
  BitBtn10.Click;
end;

procedure TForm1.urn901Click(Sender: TObject);
begin
  if Image1.Picture.Graphic = nil then begin
    StatusBar1.SetFocus;
    Exit;
  end;

  BitmapDrehen_90Grad(Image1.Picture.Bitmap);
end;

procedure TForm1.C2Click(Sender: TObject);
begin
  BitBtn11.Click;
end;

procedure TForm1.N1x2Click(Sender: TObject);
begin
  mashtab := 2;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N1x3Click(Sender: TObject);
begin
  mashtab := 3;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N1x4Click(Sender: TObject);
begin
  mashtab := 4;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N1x5Click(Sender: TObject);
begin
  mashtab := 5;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N1x6Click(Sender: TObject);
begin
  mashtab := 6;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N1x7Click(Sender: TObject);
begin
  mashtab := 7;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N1x8Click(Sender: TObject);
begin
  mashtab := 8;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N1x9Click(Sender: TObject);
begin
  mashtab := 9;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.N1x10Click(Sender: TObject);
begin
  mashtab := 10;
  if N1x1.Checked = true then Label4.Caption := '1 : 1';
  if N1x2.Checked = true then Label4.Caption := '1 : 2';
  if N1x3.Checked = true then Label4.Caption := '1 : 3';
  if N1x4.Checked = true then Label4.Caption := '1 : 4';
  if N1x5.Checked = true then Label4.Caption := '1 : 5';
  if N1x6.Checked = true then Label4.Caption := '1 : 6';
  if N1x7.Checked = true then Label4.Caption := '1 : 7';
  if N1x8.Checked = true then Label4.Caption := '1 : 8';
  if N1x9.Checked = true then Label4.Caption := '1 : 9';
  if N1x10.Checked = true then Label4.Caption := '1 : 10';
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Label20.Top := ScrollBox1.ClientHeight div 2;
  Label20.Left := (ScrollBox1.ClientWidth div 2) -13;
end;

procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   N8.Click;
end;

procedure TForm1.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Image1.Picture.Graphic = nil then Exit;
  try
    panel5.color := image4.canvas.pixels[X,Y];
    coloriser(panel5.color);
  except
  end;
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
  if Image1.Picture.Graphic = nil then Exit;
  try
  coloriser(panel6.color);
  except
  end;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
  if Image1.Picture.Graphic = nil then Exit;
  try
  coloriser(panel5.color);
  except
  end;
end;

procedure TForm1.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Image1.Picture.Graphic = nil then Exit;
  try
    panel6.Color := image4.canvas.pixels[X,Y];
    coloriser(panel6.color);
  except
  end;
end;

procedure TForm1.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Image1.Picture.Graphic = nil then Exit;
  try
    panel6.color := image4.canvas.pixels[X,Y];
    coloriser(panel6.color);
  except
  end;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  L2.Checked := true;
  StatusBar1.SetFocus;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  C3.Checked := true;
  StatusBar1.SetFocus;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  R1.Checked := true;
  StatusBar1.SetFocus;
end;

procedure TForm1.L2Click(Sender: TObject);
begin
  RadioButton3.Checked := true;
end;

procedure TForm1.C3Click(Sender: TObject);
begin
  RadioButton1.Checked := true;
end;

procedure TForm1.R1Click(Sender: TObject);
begin
  RadioButton2.Checked := true;
end;

procedure TForm1.Resample1Click(Sender: TObject);
begin
  if Image1.Picture.Graphic = nil then begin
    StatusBar1.SetFocus;
    Exit;
  end;

  ResampleBitmap(Image1.Picture.Bitmap,
                 Image1.Picture.Bitmap.Width,
                 Image1.Picture.Bitmap.Height);
end;

procedure TForm1.Sepia1Click(Sender: TObject);
begin
  if Image1.Picture.Graphic = nil then begin
    StatusBar1.SetFocus;
    Exit;
  end;

  bmptosepia(Image1.Picture.Bitmap, 10);
end;

end.



