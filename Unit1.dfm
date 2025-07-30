object Form1: TForm1
  Left = 433
  Top = 217
  Width = 438
  Height = 335
  Caption = 'ASCii HTML Creato 1.0'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 193
    Top = 49
    Width = 5
    Height = 208
  end
  object pnlMain: TPanel
    Left = 0
    Top = 49
    Width = 193
    Height = 208
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 0
    object imgView: TImage
      Left = 1
      Top = 1
      Width = 191
      Height = 206
      Align = alClient
      AutoSize = True
      Stretch = True
    end
  end
  object Memo: TMemo
    Left = 198
    Top = 49
    Width = 224
    Height = 208
    Align = alClient
    Lines.Strings = (
      'abcdefghijklomnopqrstuvwxyz'
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
      '0123456789"`~!@#$%^&*()-_+=|\/?.,<>[]{}')
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 422
    Height = 49
    Align = alTop
    TabOrder = 2
    DesignSize = (
      422
      49)
    object btnSave: TSpeedButton
      Left = 87
      Top = 14
      Width = 74
      Height = 27
      Caption = 'Save'
      OnClick = btnSaveClick
    end
    object btnLoad: TSpeedButton
      Left = 7
      Top = 12
      Width = 74
      Height = 29
      Caption = 'Load'
      OnClick = btnLoadClick
    end
    object Label1: TLabel
      Left = 359
      Top = 28
      Width = 58
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Used ASCii :'
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 257
    Width = 422
    Height = 19
    Panels = <>
  end
  object OpenDialog: TOpenDialog
    Filter = '*.bmp|*.bmp'
    Left = 192
    Top = 8
  end
  object SaveDialog: TSaveDialog
    FileName = 'result.html'
    Filter = '*.html|*.html'
    Left = 224
    Top = 8
  end
  object MainMenu: TMainMenu
    Left = 256
    Top = 8
    object N1: TMenuItem
      Caption = 'File'
      object bmp1: TMenuItem
        Caption = 'Load (.bmp)'
        ShortCut = 16463
        OnClick = btnLoadClick
      end
      object html1: TMenuItem
        Caption = 'Save (.html)'
        ShortCut = 16467
        OnClick = btnSaveClick
      end
    end
    object N6: TMenuItem
      Caption = 'Resolution'
      object N7: TMenuItem
        Caption = 'Scale'
        object N1x1: TMenuItem
          Tag = 1
          Caption = '1:1'
          Checked = True
          OnClick = N1x1Click
        end
        object N2x1: TMenuItem
          Tag = 2
          Caption = '1:2'
          OnClick = N1x1Click
        end
        object N4x1: TMenuItem
          Tag = 4
          Caption = '1:4'
          OnClick = N1x1Click
        end
        object N181: TMenuItem
          Tag = 8
          Caption = '1:8'
          OnClick = N1x1Click
        end
      end
      object N9: TMenuItem
        Caption = 'Ratio'
        object N211: TMenuItem
          Caption = '2:1'
          Checked = True
          OnClick = N211Click
        end
        object N111: TMenuItem
          Caption = '1:1'
          OnClick = N211Click
        end
        object N121: TMenuItem
          Caption = '1:2'
          OnClick = N211Click
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = 'Color'
        OnClick = N8Click
      end
    end
  end
  object ColorDialog: TColorDialog
    Left = 288
    Top = 8
  end
end
