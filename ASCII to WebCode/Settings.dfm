object Form2: TForm2
  Left = 508
  Top = 156
  BorderStyle = bsDialog
  Caption = 'Html Settings'
  ClientHeight = 312
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 185
    Height = 65
    Caption = ' Alignment '
    TabOrder = 0
    object ComboBox1: TComboBox
      Left = 24
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      TabStop = False
      OnChange = ComboBox1Change
      Items.Strings = (
        'Center'
        'Left'
        'Right')
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 96
    Width = 185
    Height = 65
    Caption = ' Border '
    TabOrder = 1
    object Label1: TLabel
      Left = 72
      Top = 27
      Width = 33
      Height = 13
      Caption = 'Value :'
    end
    object SpinEdit1: TSpinEdit
      Left = 112
      Top = 24
      Width = 57
      Height = 22
      TabStop = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
      OnChange = SpinEdit1Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 176
    Width = 185
    Height = 65
    Caption = ' Cellspacing '
    TabOrder = 2
    object Label2: TLabel
      Left = 72
      Top = 28
      Width = 33
      Height = 13
      Caption = 'Value :'
    end
    object SpinEdit2: TSpinEdit
      Left = 112
      Top = 24
      Width = 57
      Height = 22
      TabStop = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
      OnChange = SpinEdit2Change
    end
  end
  object GroupBox4: TGroupBox
    Left = 216
    Top = 16
    Width = 185
    Height = 65
    Caption = ' Line '
    TabOrder = 3
    object Label3: TLabel
      Left = 72
      Top = 27
      Width = 33
      Height = 13
      Caption = 'Value :'
    end
    object SpinEdit3: TSpinEdit
      Left = 112
      Top = 24
      Width = 57
      Height = 22
      TabStop = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 120
      OnChange = SpinEdit3Change
    end
  end
  object GroupBox5: TGroupBox
    Left = 216
    Top = 96
    Width = 185
    Height = 65
    Caption = '  Characters '
    TabOrder = 4
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 153
      Height = 21
      TabStop = False
      TabOrder = 0
      Text = '01'
      OnChange = Edit1Change
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 293
    Width = 416
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'ready.'
  end
  object Button1: TButton
    Left = 320
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 6
    TabStop = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 7
    TabStop = False
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 258
    Width = 105
    Height = 17
    TabStop = False
    Caption = 'Create Table Tag'
    TabOrder = 8
    OnClick = CheckBox1Click
  end
end
