object frmProcess: TfrmProcess
  Left = 577
  Top = 154
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Convert to HTML'
  ClientHeight = 156
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblConvertion: TLabel
    Left = 7
    Top = 8
    Width = 148
    Height = 13
    Caption = 'Convert to HTML.... please wait'
  end
  object lblMashtab: TLabel
    Left = 7
    Top = 28
    Width = 33
    Height = 13
    Caption = 'Scale :'
  end
  object lblColor: TLabel
    Left = 7
    Top = 69
    Width = 31
    Height = 13
    Caption = 'Color :'
  end
  object pnlColor: TShape
    Left = 52
    Top = 70
    Width = 34
    Height = 14
  end
  object lblSootn: TLabel
    Left = 7
    Top = 49
    Width = 31
    Height = 13
    Caption = 'Ratio :'
  end
  object btnAbort: TSpeedButton
    Left = 8
    Top = 128
    Width = 104
    Height = 21
    Caption = 'cancel'
    OnClick = btnAbortClick
  end
  object Bevel1: TBevel
    Left = 8
    Top = 23
    Width = 289
    Height = 2
  end
  object pbProgress: TProgressBar
    Left = 8
    Top = 102
    Width = 289
    Height = 18
    TabOrder = 0
  end
end
