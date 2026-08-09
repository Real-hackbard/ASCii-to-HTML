unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, OleCtrls, SHDocVw, StdCtrls, ExtDlgs, JPEG,
  AppEvnts, Spin, ImgList, ToolWin, XPMan, ShellAPI, ActiveX, Clipbrd,
  Registry, ImageAscii, Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    ApplicationEvents: TApplicationEvents;
    FontDialog: TFontDialog;
    SaveDialog1: TSaveDialog;
    HTMLPages: TPageControl;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    StatusBar1: TStatusBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    Label3: TLabel;
    Edit1: TEdit;
    Image1: TImage;
    Label4: TLabel;
    WebBrowser1: TWebBrowser;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    P1: TMenuItem;
    H1: TMenuItem;
    C1: TMenuItem;
    F2: TMenuItem;
    P2: TMenuItem;
    O1: TMenuItem;
    S1: TMenuItem;
    T1: TMenuItem;
    S2: TMenuItem;
    N1: TMenuItem;
    A1: TMenuItem;
    R1: TMenuItem;
    G1: TMenuItem;
    M1: TMenuItem;
    N2: TMenuItem;
    C2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    SaveDialog2: TSaveDialog;
    B1: TMenuItem;
    ColorDialog1: TColorDialog;
    S3: TMenuItem;
    N5: TMenuItem;
    E1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure C1Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E1Click(Sender: TObject);
  private
    { Private-Deklarationen}
    AlreadyActivated: Boolean;
    ColorHTML, GrayHTML, MonoHTML: String;
    procedure InitWebBrowsers;
    procedure LoadImage(const FileName: String);
    procedure LoadSettingsFromRegistry;
    procedure SaveSettingsToRegistry;
  public
    { Public-Deklarationen}
    // save options
    save : string;
    // html code variables
    align : string;
    border : string;
    space : string;
    bgrColor : string;
    line : integer;
    chars : string;
    table, tabletag : string;
  end;

var
  Form1: TForm1;

implementation

uses Settings;

{$R *.dfm}

function ColorToHtml(DColor:TColor):string;
 var
   tmpRGB : TColorRef;
 begin
   tmpRGB := ColorToRGB(DColor);
   Result:=Format('#%.2x%.2x%.2x',
                  [GetRValue(tmpRGB),
                   GetGValue(tmpRGB),
                   GetBValue(tmpRGB)]);
 end; {function ColorToHtml}

procedure SaveWebBrowserToImage(WebBrowser: TWebBrowser; const FileName: string);
var
  ViewObject: IViewObject;
  Bitmap: TBitmap;
  TargetRect: TRect;
  JpegImg: TJPEGImage;
begin
  // Check whether the document has fully loaded.
  if not Assigned(WebBrowser.Document) then
    Exit;

  // Query the IViewObject interface from the WebBrowser.
  if WebBrowser.Document.QueryInterface(IViewObject, ViewObject) = S_OK then
  begin
    Bitmap := TBitmap.Create;
    try
      // Set the bitmap dimensions
      Bitmap.Width := WebBrowser.Width;
      Bitmap.Height := WebBrowser.Height;
      TargetRect := Rect(0, 0, Bitmap.Width, Bitmap.Height);

      // Draw the web browser content onto the bitmap canvas.
      ViewObject.Draw(DVASPECT_CONTENT, 1, nil, nil, 0, Bitmap.Canvas.Handle, @TargetRect, nil, nil, 0);

      // Convert and save as JPEG
      JpegImg := TJPEGImage.Create;
      try
        JpegImg.Assign(Bitmap);
        JpegImg.SaveToFile(FileName);
      finally
        JpegImg.Free;
      end;

    finally
      Bitmap.Free;
    end;
  end;
end;

function GetFileSize(const Filename: string): TULargeInteger; 
var 
  Find: THandle;
  Data: TWin32FindData; 
begin 
  Result.QuadPart := -1; 
  Find := FindFirstFile(PChar(Filename), Data); 
  if (Find <> INVALID_HANDLE_VALUE) then 
  begin 
    Result.LowPart := Data.nFileSizeLow; 
    Result.HighPart := Data.nFileSizeHigh; 
    Windows.FindClose(Find); 
  end; 
end;

procedure SetHTML(WebBrowser: TWebBrowser; const HTML: String);
var
  Stream: IStream;
  Handle: HGLOBAL;
  Ptr: PChar;
begin
  if WebBrowser.Document <> nil then
  begin
    Handle := GlobalAlloc(GHND, Length(HTML)+1);
    try
      Ptr := GlobalLock(Handle);
      if Assigned(Ptr) then
      begin
        StrPCopy(Ptr, HTML);
        GlobalUnlock(Handle);
        if CreateStreamOnHGlobal(Handle, True, Stream) = S_OK then
        begin
          with (WebBrowser.Document as IPersistStreamInit) do
          begin
            InitNew;
            Load(Stream);
          end;
        end;
      end;
    finally
      GlobalFree(Handle);
    end;
  end;
end;

function GetWebColor(Color: TColor): String;
var
  RGB: Integer;
begin
  RGB := ColorToRGB(Color);
  Result := IntToHex(GetRValue(RGB), 2)
          + IntToHex(GetGValue(RGB), 2)
          + IntToHex(GetBValue(RGB), 2);
end;

procedure TForm1.InitWebBrowsers;
const
  BlankDoc = 'about:blank';
begin
  if WebBrowser1.Document = nil then
    WebBrowser1.Navigate(BlankDoc);
end;

procedure TForm1.LoadImage(const FileName: String);
begin
  Image1.Picture.LoadFromFile(FileName);
  OpenPictureDialog1.FileName := FileName;
  ToolButton8.Enabled := True;
  Application.ProcessMessages;
  ToolButton8.Click;
end;

{ This function reads the settings from the registry at the specified path.
  However, it is disabled and must be re-enabled in FormCreate if needed. }
procedure TForm1.LoadSettingsFromRegistry;
var
  R: TRegistry;
  WindowBounds: TRect;
begin
  R := TRegistry.Create;
  try
    if R.OpenKeyReadOnly('\Software\github\ASCIIHTML') then
    begin
      if R.ValueExists('Window.Bounds') then
      begin
        R.ReadBinaryData('Window.Bounds', WindowBounds, SizeOf(WindowBounds));
        BoundsRect := WindowBounds;
        Realign;
      end;
      if R.ValueExists('Window.Maximized') and R.ReadBool('Window.Maximized') then
        WindowState := wsMaximized;

      if R.ValueExists('MaxLineWidth') then
      begin
        //Edit1.Tag := R.ReadInteger('MaxLineWidth');
        //Edit1.Text := IntToStr(Edit1.Tag);
      end;

      if R.ValueExists('Map.Sequence') then
        chars := R.ReadString('Map.Sequence');
      if R.ValueExists('Map.Table') then
        Edit1.Text := R.ReadString('Map.Table');
      if R.ValueExists('Font.Name') then
        FontDialog.Font.Name := R.ReadString('Font.Name');
      if R.ValueExists('Font.Size') then
        FontDialog.Font.Size := R.ReadInteger('Font.Size');
      if R.ValueExists('Font.Bold') and R.ReadBool('Font.Bold') then
        FontDialog.Font.Style := Font.Style + [fsBold];
      if R.ValueExists('Font.Italic') and R.ReadBool('Font.Italic') then
        FontDialog.Font.Style := Font.Style + [fsItalic];
      if R.ValueExists('Font.Underline') and R.ReadBool('Font.Underline') then
        FontDialog.Font.Style := Font.Style + [fsUnderline];
      if R.ValueExists('Font.StrikeOut') and R.ReadBool('Font.StrikeOut') then
        FontDialog.Font.Style := Font.Style + [fsStrikeOut];
    end;
  finally
    R.Free;
  end;
end;

{ This function saves the program's settings to the registry at the
  specified path. However, it is disabled and must be re-enabled in
  "TForm1.FormDestroy" if needed. }
procedure TForm1.SaveSettingsToRegistry;
var
  R: TRegistry;
  WindowBounds: TRect;
begin
  R := TRegistry.Create;
  try
    if R.OpenKey('\Software\github\ASCIIHTML', True) then
    begin
      WindowBounds := BoundsRect;
      R.WriteBinaryData('Window.Bounds', WindowBounds, SizeOf(WindowBounds));
      R.WriteBool('Window.Maximized', WindowState = wsMaximized);
      R.WriteInteger('MaxLineWidth', line);
      R.WriteString('Map.Sequence', chars);
      R.WriteString('Map.Table', Edit1.Text);
      R.WriteString('Font.Name', FontDialog.Font.Name);
      R.WriteInteger('Font.Size', FontDialog.Font.Size);
      R.WriteBool('Font.Bold', fsBold in FontDialog.Font.Style);
      R.WriteBool('Font.Italic', fsItalic in FontDialog.Font.Style);
      R.WriteBool('Font.Underline', fsUnderline in FontDialog.Font.Style);
      R.WriteBool('Font.StrikeOut', fsStrikeOut in FontDialog.Font.Style);
    end;
  finally
    R.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Panel1.DoubleBuffered := true;
  ColorDialog1.Color := clBlack;
  save := 'rgb';
  chars := '01';
  DragAcceptFiles(HTMLPages.Handle, True);

  // load settings
  //LoadSettingsFromRegistry;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  DragAcceptFiles(HTMLPages.Handle, False);

  // save settings in registry
  //SaveSettingsToRegistry
end;

procedure TForm1.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
var
  ImgFile: String;
begin
  // The image panel accepts dropped file
  if Msg.message = WM_DROPFILES then
  begin
    SetLength(ImgFile, 1024);
    SetLength(ImgFile, DragQueryFile(Msg.wParam, 0, PChar(ImgFile), Length(ImgFile)));
    LoadImage(ImgFile);
    ToolButton2.Enabled := True;
    ToolButton3.Enabled := True;
    ToolButton6.Enabled := True;
    ToolButton8.Enabled := True;
    S1.Enabled := true;
    E1.Enabled := true;
    P2.Enabled := true;
    Handled := True;
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  if not AlreadyActivated then
  begin
    AlreadyActivated := True;
    Update;
    InitWebBrowsers;
    if ParamCount > 0 then LoadImage(ParamStr(1))
  end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
const
  ValidKeys = ['0'..'9', ^X, ^C, ^V, Chr(VK_RETURN), Chr(VK_ESCAPE), Chr(VK_BACK)];
begin
  if not (Key in ValidKeys) then
  begin
    MessageBeep(0);
    Key := #0;
  end;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    LoadImage(OpenPictureDialog1.FileName);
    StatusBar1.Panels[1].Text := IntToStr(Image1.Picture.Height) + 'x' +
                                 IntToStr(Image1.Picture.Width);
    StatusBar1.Panels[3].Text := IntToStr(GetFileSize(OpenPictureDialog1.FileName).QuadPart div 1000) + ' kb';
    StatusBar1.Panels[5].Text := ExtractFileName(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
    Clipboard.AsText := ColorHTML;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
var
  HTMLFile: TextFile;
begin
  if SaveDialog1.Execute then
  begin
    try
      AssignFile(HTMLFile, SaveDialog1.FileName);
      Rewrite(HTMLFile);

      if save = 'rgb' then Write(HTMLFile, ColorHTML);
      if save = 'gray' then Write(HTMLFile, GrayHTML);
      if save = 'mono' then Write(HTMLFile, MonoHTML);
    finally
      CloseFile(HTMLFile);
    end;
  end;
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
  FontDialog.Execute;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
    WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER);
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
var
  HTMLHeader, HTMLFooter : string;
begin
  HTMLHeader := '<HTML><BODY style="background-color: ' +
                 bgrColor + ';"><' +
                 table + 'BORDER="' +
                 border + '" CELLSPACING="' +
                 space + '" ' +
                 align + ' BGCOLOR="#%s"><TR><TD>';
  HTMLFooter := '</TD></TR>' + tabletag + '</BODY></HTML>';


  if Image1.Picture.Graphic <> nil then
  begin
    Screen.Cursor := crHourGlass;
    try
      // Color
      GraphicToHTML(Image1.Picture.Graphic, ColorHTML, chars,
                    cmColor, line, FontDialog.Font,
        Format(HTMLHeader, [GetWebColor(ColorDialog1.Color)]), HTMLFooter);

      SetHTML(WebBrowser1, ColorHTML);
      
      // Enable command buttons
      ToolButton2.Enabled := True;
      ToolButton3.Enabled := True;
      ToolButton6.Enabled := True;
      ToolButton8.Enabled := True;
      S1.Enabled := true;
      E1.Enabled := true;
      P2.Enabled := true;
    finally
      save := 'rgb';
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm1.ToolButton10Click(Sender: TObject);
var
  HTMLHeader, HTMLFooter : string;
begin
  HTMLHeader := '<HTML><BODY style="background-color: ' + bgrColor + ';"><' + table + 'BORDER="' + border + '" CELLSPACING="' + space + '" ' + align + ' BGCOLOR="#%s"><TR><TD>';
  HTMLFooter := '</TD></TR>' + tabletag + '</BODY></HTML>';

  if Image1.Picture.Graphic <> nil then
  begin
    Screen.Cursor := crHourGlass;
    try
      // Grayscale
      GraphicToHTML(Image1.Picture.Graphic, GrayHTML, chars, cmGrayscale,
        line, FontDialog.Font,
        Format(HTMLHeader, [GetWebColor(ColorDialog1.Color)]), HTMLFooter);

      SetHTML(WebBrowser1, GrayHTML);
      
      // Enable command buttons
      ToolButton2.Enabled := True;
      ToolButton3.Enabled := True;
      ToolButton6.Enabled := True;
      ToolButton8.Enabled := True;
      S1.Enabled := true;
      E1.Enabled := true;
      P2.Enabled := true;
    finally
      save := 'gray';
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm1.ToolButton11Click(Sender: TObject);
var
  HTMLHeader, HTMLFooter : string;
begin
  HTMLHeader := '<HTML><BODY><TABLE BORDER="1" CELLSPACING="0" ALIGN="CENTER" BGCOLOR="#%s"><TR><TD>';
  HTMLFooter := '</TD></TR></TABLE></BODY></HTML>';

  if Image1.Picture.Graphic <> nil then
  begin
    Screen.Cursor := crHourGlass;
    try
      // Mono
      GraphicToHTML(Image1.Picture.Graphic, MonoHTML, Edit1.Text, cmMono,
        line, FontDialog.Font,
        Format(HTMLHeader, [GetWebColor(clWhite)]), HTMLFooter);

      SetHTML(WebBrowser1, MonoHTML);

      // Enable command buttons
      ToolButton2.Enabled := True;
      ToolButton3.Enabled := True;
      ToolButton6.Enabled := True;
      ToolButton8.Enabled := True;
      S1.Enabled := true;
      E1.Enabled := true;
      P2.Enabled := true;
    finally
      save := 'mono';
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm1.P1Click(Sender: TObject);
begin
  ToolButton1.Click;
end;

procedure TForm1.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  Document: OleVariant;
begin
  { this deactivates the scrollbars from TWebBrowser }
  {
  Document := WebBrowser1.OleObject.Document;
  if not VarIsEmpty(Document) then
  begin
    // Hides both vertical and horizontal scrollbars
    Document.Body.Style.OverflowX := 'hidden';
    Document.Body.Style.OverflowY := 'hidden';
    
    // Optional: Removes borders and explicitly disables scrolling
    Document.Body.Style.BorderStyle := 'none';
    Document.Body.Scroll := 'no';
  end;
  }
end;

procedure TForm1.C1Click(Sender: TObject);
begin
  ToolButton2.Click;
end;

procedure TForm1.F2Click(Sender: TObject);
begin
  ToolButton5.Click;
end;

procedure TForm1.P2Click(Sender: TObject);
begin
  ToolButton6.Click;
end;

procedure TForm1.S1Click(Sender: TObject);
begin
  ToolButton3.Click;
end;

procedure TForm1.T1Click(Sender: TObject);
begin
  ToolBar1.Visible := T1.Checked;
end;

procedure TForm1.S2Click(Sender: TObject);
begin
  StatusBar1.Visible := S2.Checked;
end;

procedure TForm1.A1Click(Sender: TObject);
begin
  MessageDlg('ASCII to WebCode v1.0' + Chr(10) +
             'Calculate ASCII directly in the web browser' + Chr(10) +
             'Copyright © 2026 hackbard' + Chr(10) +
             'github.com | Public Release',mtInformation, [mbOK], 0);
end;

procedure TForm1.R1Click(Sender: TObject);
begin
  ToolButton8.Click;
end;

procedure TForm1.G1Click(Sender: TObject);
begin
  ToolButton10.Click;
end;

procedure TForm1.M1Click(Sender: TObject);
begin
  ToolButton11.Click;
end;

procedure TForm1.C2Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.B1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
  begin
    bgrColor := ColorToHtml(ColorDialog1.Color);
    ColorDialog1.Color := ColorDialog1.Color;

    if save = 'rgb' then ToolButton8.Click;
    if save = 'grayscale' then ToolButton10.Click;
    if save = 'mono' then ToolButton11.Click;
  end;
end;

procedure TForm1.S3Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  line := Form2.SpinEdit3.Value;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
  if SaveDialog2.Execute then
    SaveWebBrowserToImage(WebBrowser1, SaveDialog2.FileName + '.jpg');
end;

end.
