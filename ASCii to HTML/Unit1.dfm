object Form1: TForm1
  Left = 1794
  Top = 192
  Caption = 'ASCii to HTML'
  ClientHeight = 510
  ClientWidth = 699
  Color = clBtnFace
  Constraints.MinHeight = 568
  Constraints.MinWidth = 630
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 169
    Top = 0
    Width = 530
    Height = 491
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabStop = False
    ExplicitWidth = 526
    ExplicitHeight = 452
    object TabSheet1: TTabSheet
      Caption = 'Image'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 522
        Height = 462
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 518
        ExplicitHeight = 423
        object ScrollBox1: TScrollBox
          Left = 1
          Top = 1
          Width = 520
          Height = 435
          HorzScrollBar.Smooth = True
          HorzScrollBar.Tracking = True
          VertScrollBar.Smooth = True
          VertScrollBar.Tracking = True
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          ExplicitWidth = 516
          ExplicitHeight = 396
          object Label20: TLabel
            Left = 248
            Top = 192
            Width = 26
            Height = 14
            Caption = 'View'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Image1: TImage
            Left = 3
            Top = 3
            Width = 14
            Height = 16
            AutoSize = True
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 436
          Width = 520
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 397
          ExplicitWidth = 516
          object Image4: TImage
            Left = 49
            Top = 6
            Width = 361
            Height = 17
            OnMouseDown = Image4MouseDown
            OnMouseMove = Image4MouseMove
            OnMouseUp = Image4MouseUp
          end
          object Label21: TLabel
            Left = 8
            Top = 7
            Width = 28
            Height = 14
            Caption = 'HSV :'
          end
          object Panel5: TPanel
            Left = 472
            Top = 4
            Width = 49
            Height = 18
            Cursor = crHandPoint
            Caption = 'B / W'
            TabOrder = 0
            OnClick = Panel5Click
          end
          object Panel6: TPanel
            Left = 416
            Top = 4
            Width = 49
            Height = 18
            Cursor = crHandPoint
            Caption = 'Back'
            TabOrder = 1
            OnClick = Panel6Click
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ASCii'
      ImageIndex = 1
      object Memo: TMemo
        Left = 0
        Top = 0
        Width = 522
        Height = 393
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'abcdefghijklomnopqrstuvwxyz'
          'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
          '0123456789"`~!@#$%^&*()-_+=|\/?.,<>[]{}')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 518
        ExplicitHeight = 354
      end
      object Panel3: TPanel
        Left = 0
        Top = 393
        Width = 522
        Height = 69
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 354
        ExplicitWidth = 518
        DesignSize = (
          522
          69)
        object Label10: TLabel
          Left = 5
          Top = 44
          Width = 32
          Height = 14
          Caption = 'ASCii :'
        end
        object Label11: TLabel
          Left = 125
          Top = 44
          Width = 31
          Height = 14
          Caption = 'Case :'
        end
        object Label12: TLabel
          Left = 5
          Top = 17
          Width = 32
          Height = 14
          Caption = 'ASCii :'
        end
        object Label13: TLabel
          Left = 120
          Top = 17
          Width = 35
          Height = 14
          Caption = 'Rows :'
        end
        object Label14: TLabel
          Left = 216
          Top = 17
          Width = 34
          Height = 14
          Caption = 'Count :'
        end
        object ComboBox1: TComboBox
          Left = 40
          Top = 39
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'Binary'
          OnChange = ComboBox1Change
          Items.Strings = (
            'Binary'
            'HEX'
            'DEC'
            'A-Z'
            'All')
        end
        object BitBtn7: TBitBtn
          Left = 408
          Top = 36
          Width = 109
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Open any File'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            DDDDDDD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
            D1DDDDDDFF00FFFF00FFFF00FFFF00FFDDDDDDD1D1D1D1D1D1D1D1D1D1D1D1D1
            D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1DDDDDDFF00FFFF00FFFF00FFC5C5C5
            8989897171717171717171717171717171717171717171717171717171717171
            71898989C5C5C5FF00FFFF00FFC5C5C589898971717171717171717171717171
            7171717171717171717171717171717171898989C5C5C5FF00FFDDDDDD0D73A5
            0D73A50D73A50D73A50D73A50D73A50D73A50D73A50D73A50D73A50D73A50D73
            A5656565898989DDDDDDDDDDDD7D98A57D98A57D98A57D98A57D98A57D98A57D
            98A57D98A57D98A57D98A57D98A57D98A5656565898989DDDDDD199AC61C9CC7
            9CFFFF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF2999
            BF0D73A5717171D1D1D199BAC69ABBC7E5FFFFD8F4FFD8F4FFD8F4FFD8F4FFD8
            F4FFD8F4FFD8F4FFD8F4FFD8F4FF98B5BF7D98A5717171D1D1D1199AC61A9AC6
            7AE4F09CFFFF7CE3FF7CE3FF7CE3FF7CE3FF7CE3FF7CE3FF7CE3FF7CDFFF43B2
            DE1A7B9D656565B9B9B999BAC699BAC6D1ECF0E5FFFFDCF7FFDCF7FFDCF7FFDC
            F7FFDCF7FFDCF7FFDCF7FFDCF6FFB5D2DE7A949D656565B9B9B9199AC626A2CF
            40B8D79CFFFF84EBFF84EBFF84EBFF84EBFF84EBFF84EBFF84EBFF84E7FF43BA
            EF199AC665656589898999BAC6A3C3CFAFCED7E5FFFFDFF9FFDFF9FFDFF9FFDF
            F9FFDFF9FFDFF9FFDFF9FFDFF8FFC2E1EF99BAC6656565898989199AC643B3E2
            21A0C9A5FFFF94F7FF94F7FF94F7FF94F7FF94F7FF94F7FF94F7FF94F7FF53BE
            E75CBCCE0D73A571717199BAC6B8D5E29DBEC9E7FFFFE3FCFFE3FCFFE3FCFFE3
            FCFFE3FCFFE3FCFFE3FCFFE3FCFFC0DCE7B0C9CE7D98A5717171199AC670D5FD
            199AC689F0F79CFFFF9CFFFF9CFFFF9CFFFF9CFFFF9CFFFF9CFFFF9CFFFF5BC7
            FF96F9FB197B9B71717199BAC6D8F2FD99BAC6DAF5F7E5FFFFE5FFFFE5FFFFE5
            FFFFE5FFFFE5FFFFE5FFFFE5FFFFD4F0FFE0FAFB79929B717171199AC684D7FF
            199AC66CBFDAFFFFFFFFFFFFF7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84E7
            FFFFFFFF197EA189898999BAC6DFF4FF99BAC6BDD2DAFFFFFFFFFFFFFCFDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF8FFFFFFFF7D97A1898989199AC684EBFF
            50C1E2199AC6199AC6199AC6199AC6199AC6199AC6199AC6199AC6199AC6199A
            C6199AC61989B1C5C5C599BAC6DFF9FFBCD9E299BAC699BAC699BAC699BAC699
            BAC699BAC699BAC699BAC699BAC699BAC699BAC689A6B1C5C5C5199AC69CF3FF
            8CF3FF8CF3FF8CF3FF8CF3FF8CF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF199A
            C61A7B9DC5C5C5FF00FF99BAC6E5FBFFE1FBFFE1FBFFE1FBFFE1FBFFE1FBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF99BAC67A949DC5C5C5FF00FF199AC6FFFFFF
            9CFFFF9CFFFF9CFFFF9CFFFFFFFFFF199AC6199AC6199AC6199AC6199AC6199A
            C6DDDDDDFF00FFFF00FF99BAC6FFFFFFE5FFFFE5FFFFE5FFFFE5FFFFFFFFFF99
            BAC699BAC699BAC699BAC699BAC699BAC6DDDDDDFF00FFFF00FFFF00FF22A2CE
            FFFFFFFFFFFFFFFFFFFFFFFF199AC6C5C5C5FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA1C2CEFFFFFFFFFFFFFFFFFFFFFFFF99BAC6C5
            C5C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            22A2CE22A2CE22A2CE22A2CEDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFA1C2CEA1C2CEA1C2CEA1C2CEDDDDDDFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BitBtn7Click
          ExplicitLeft = 404
        end
        object ComboBox2: TComboBox
          Left = 160
          Top = 39
          Width = 153
          Height = 22
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'Upper Case'
          OnChange = ComboBox2Change
          Items.Strings = (
            'Upper Case'
            'Lower Case')
        end
        object BitBtn8: TBitBtn
          Left = 408
          Top = 10
          Width = 109
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Generate'
          Glyph.Data = {
            06030000424D060300000000000036000000280000000F0000000F0000000100
            180000000000D0020000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFEFFEFF0EDC0C4BC9CA19A999E97B0B3ADE5E5E4FEFEFEFFFFFFFFFF
            FFFFFFFFFFFFFF000000E5E9E0D8D9D6F7F5F8D7DED07FA76657A23864B75960
            B14F53893975836AD4D3D5FEFDFEFFFFFFFFFFFFFFFFFF00000074A74E617F47
            9EAA936EAB546CC17882D6AC82D2A595D8B0A3DEB16DA457859478E5E3E5FFFF
            FFFFFFFFFFFFFF0000005FB34E549E2B52923678CD9280D3A887D3A5ABD7ADD3
            E1C1E6EFD8DAF0CB95B97AC2CABCFDFBFDFFFFFFFFFFFF00000066BF5E6ABD6A
            6FC3777CD1A086D4A6ACD7AED8DECBFFFCFFFFFFFFFFFFFFD9EFC6E0EBD8FEFE
            FFFFFFFFFFFFFF0000005DB73C67BE5D6CC37276CA858AC38EA6AE97ECE7F1FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000054B01B5BB535
            5EB84A6BC0626DB05C527A35A5A9A0E0DBE2CECFCAC1C6B9B8BFAFAFBBA4ABB3
            A3D8D9D8FEFEFE00000055AE0B4BAC045AB52A68BC4D71C3626FB4586E965270
            99596297465A93355390254C901345870C9AA194FBFAFB000000ABD684A3D479
            ADD78DB0D998BCDEACD4EBCFC1DEAE83C36B68BF5A59B73F58B62C55B5184EB1
            00939E8AFAF9FB000000FBFDF9FFFFFFFFFFFDF7FAF3F8F9F3FFFDFDFFFFFEDD
            EED38EC88169BE6663BD595FB84255B52096A08FFAF9FB000000FFFFFFFEFDFE
            F7F3FBFFFFFFFFFFFFFFFFFFFFFFFFBDCFA572B76578CB8E6CC37764BD625CBA
            4297A193FAF9FA000000FFFFFFF1F8EDA7C191CDC7D2FBF8FDFCF6FFBDC9AB6F
            AE5A75C88E7AD09F90D6A88ED39C66C16296A094FAF9FA000000FFFFFFFBFEFA
            BFDAAB719755768C5E77995569AB5476C9907AD0A18CD8AFA7D2A2BADDB099D9
            9CA3ABA4FAFAFA000000FFFFFFFFFFFFF5FAF2B0D7A478BB7D6EBE7E79CC987B
            D0A092D9ADADD3A6DFE6D8E0EFD4B6DC9CE3E8E0FEFEFE000000FFFFFFFFFFFF
            FFFFFFF7FBF3CAE7BEA9DCABA4DDAFADDBA8C2DBB3EAEFE5FEFEFEFEFEFDFBFD
            F9FFFFFEFFFFFF000000}
          TabOrder = 3
          OnClick = BitBtn8Click
          ExplicitLeft = 404
        end
        object ComboBox3: TComboBox
          Left = 40
          Top = 12
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Text = 'Decimal'
          OnChange = ComboBox3Change
          Items.Strings = (
            'Decimal'
            'Alphabet'
            'Both')
        end
        object SpinEdit1: TSpinEdit
          Left = 160
          Top = 12
          Width = 49
          Height = 23
          MaxValue = 200
          MinValue = 1
          TabOrder = 5
          Value = 1
        end
        object SpinEdit2: TSpinEdit
          Left = 256
          Top = 12
          Width = 57
          Height = 23
          MaxValue = 200
          MinValue = 1
          TabOrder = 6
          Value = 20
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Options'
      ImageIndex = 2
      object Image2: TImage
        Left = 224
        Top = 224
        Width = 105
        Height = 105
      end
      object CheckBox6: TCheckBox
        Left = 24
        Top = 32
        Width = 65
        Height = 17
        TabStop = False
        Caption = 'Stay Top'
        TabOrder = 0
        OnClick = CheckBox6Click
      end
      object CheckBox7: TCheckBox
        Left = 24
        Top = 56
        Width = 83
        Height = 17
        TabStop = False
        Caption = 'Hide on Task'
        TabOrder = 1
        OnClick = CheckBox7Click
      end
      object CheckBox8: TCheckBox
        Left = 24
        Top = 79
        Width = 69
        Height = 17
        TabStop = False
        Caption = 'Left Panel'
        TabOrder = 2
        OnClick = CheckBox8Click
      end
      object CheckBox10: TCheckBox
        Left = 24
        Top = 144
        Width = 133
        Height = 17
        TabStop = False
        Caption = 'Save ASCii Text by end'
        TabOrder = 3
        OnClick = CheckBox10Click
      end
      object CheckBox11: TCheckBox
        Left = 24
        Top = 168
        Width = 139
        Height = 17
        TabStop = False
        Caption = 'Load ASCii Text by Start'
        TabOrder = 4
        OnClick = CheckBox11Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 491
    Width = 699
    Height = 19
    Panels = <
      item
        Text = 'Size :'
        Width = 30
      end
      item
        Width = 60
      end
      item
        Text = 'X :'
        Width = 20
      end
      item
        Width = 60
      end
      item
        Text = 'Y :'
        Width = 20
      end
      item
        Width = 60
      end
      item
        Text = 'Bit :'
        Width = 30
      end
      item
        Width = 30
      end
      item
        Text = 'Compress :'
        Width = 70
      end
      item
        Width = 40
      end
      item
        Text = 'Used :'
        Width = 40
      end
      item
        Width = 40
      end
      item
        Text = 'Planes :'
        Width = 50
      end
      item
        Width = 50
      end>
    ExplicitTop = 452
    ExplicitWidth = 695
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 169
    Height = 491
    Align = alLeft
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    ExplicitHeight = 452
    DesignSize = (
      169
      491)
    object Label1: TLabel
      Left = 63
      Top = 16
      Width = 33
      Height = 14
      Caption = 'Scale :'
    end
    object Label2: TLabel
      Left = 66
      Top = 32
      Width = 30
      Height = 14
      Caption = 'Ratio :'
    end
    object Label3: TLabel
      Left = 10
      Top = 64
      Width = 86
      Height = 14
      Caption = 'HTML BGR Color :'
    end
    object Shape2: TShape
      Left = 104
      Top = 66
      Width = 25
      Height = 11
      Cursor = crHandPoint
      Brush.Color = clBlack
      OnMouseDown = Shape2MouseDown
    end
    object Label4: TLabel
      Left = 104
      Top = 16
      Width = 21
      Height = 14
      Caption = '1 : 4'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 104
      Top = 32
      Width = 21
      Height = 14
      Caption = '2 : 1'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 15
      Top = 48
      Width = 81
      Height = 14
      Caption = 'HTML Font Size :'
    end
    object Label19: TLabel
      Left = 104
      Top = 48
      Width = 6
      Height = 14
      Caption = '1'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 130
      Top = 460
      Width = 33
      Height = 25
      Hint = 'Export (*.html)'
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFCF9F3
        C29760A5640F9F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A
        009F5A009F5A009F5A00FDFBF8AE72259F5A00DCB474DCB474A35B03A35B03EE
        D19BEBCC94EBCC94EBCC94ECCD97EBCC94C37F0BBC76029F5A00C9A06A9F5A00
        C58005EBCD9AEBCD9AA95E00A95E00FFEDCAFAE7C0FAE7C0FAE7C0FCE9C4FCE9
        C4C48009C480099F5A00AB6B14BD790ACC8910ECD0A1ECD0A1B06200A95E00FD
        F0D7FAEACCFAEACCFAEACCFBECD1FBECD1CC8910C78411A45F009F5A00C78618
        CA8A18F2DEBAF2DEBAC78829C78829FEF6E6FCF2DDFCF2DDFCF2DDFDF3E2FDF3
        E2CA8A18CA8A18A45F009F5A00C98B1EC98B1EFCF2DFFCF2DFFCF2DFFCF2DFFC
        F2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFCD8E20CD8E20AB6500AB6500CD8F25
        C98B1EFFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFE
        F8D19429D19429AB6500AB6500D0942DD0942DD0942DD0942DD0942DD0942DD0
        942DD0942DD0942DD0942DD0942DD0942DD0942DD0942DAB6500B36D00D39833
        D39833D39833D39833D39833D39833D39833D39833D39833D39833D39833D398
        33D39833D39833B36D00B36D00DAA039DAA039DAA039DAA039DAA039DAA039DA
        A039DAA039DAA039DAA039DAA039DAA039DAA039DAA039B36D00B36D00D8A13E
        D8A13ED8A13EFAE6C0F9E5BEF9E5BEF9E5BEF9E5BEF9E5BEF9E5BEF9E6C0DDA7
        46DDA746DDA746B36D00BA7300DBA443DBA443F9E6C4F9E8C6F9E7C5F9E7C5F9
        E7C5F9E7C5F9E7C5F9E7C5F9E7C5FBE9CAE0AB4BE0AB4BBA7300BA7300DEA94A
        DEA94AFAEBCEFAEED4FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FBEE
        D5E3B053E3B053BA7300C07900E3B054E3B054FCF0DBFCF3E1FCF2DFFCF2DFFC
        F2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF3E2E8B85EE8B85EC07900C07900F2CC83
        F2CC83FDF5E7FEF9EEFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF9
        F0EDC782EDC782C07900C07900C07900C07900C07900C07900C07900C07900C0
        7900C07900C07900C07900C07900C07900C07900C07900C07900}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = BitBtn1Click
      ExplicitTop = 421
    end
    object BitBtn2: TBitBtn
      Left = 11
      Top = 460
      Width = 33
      Height = 25
      Hint = 'Load Image'
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000130B0000130B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        DDDDDDD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1DDDDDDFF00FFFF00FFFF00FFFF00FFDDDDDDD1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1DDDDDDFF00FFFF00FFFF00FFC5C5C5
        8989897171717171717171717171717171717171717171717171717171717171
        71898989C5C5C5FF00FFFF00FFC5C5C589898971717171717171717171717171
        7171717171717171717171717171717171898989C5C5C5FF00FFDDDDDD0D73A5
        0D73A50D73A50D73A50D73A50D73A50D73A50D73A50D73A50D73A50D73A50D73
        A5656565898989DDDDDDDDDDDD7D98A57D98A57D98A57D98A57D98A57D98A57D
        98A57D98A57D98A57D98A57D98A57D98A5656565898989DDDDDD199AC61C9CC7
        9CFFFF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF6CD7FF2999
        BF0D73A5717171D1D1D199BAC69ABBC7E5FFFFD8F4FFD8F4FFD8F4FFD8F4FFD8
        F4FFD8F4FFD8F4FFD8F4FFD8F4FF98B5BF7D98A5717171D1D1D1199AC61A9AC6
        7AE4F09CFFFF7CE3FF7CE3FF7CE3FF7CE3FF7CE3FF7CE3FF7CE3FF7CDFFF43B2
        DE1A7B9D656565B9B9B999BAC699BAC6D1ECF0E5FFFFDCF7FFDCF7FFDCF7FFDC
        F7FFDCF7FFDCF7FFDCF7FFDCF6FFB5D2DE7A949D656565B9B9B9199AC626A2CF
        40B8D79CFFFF84EBFF84EBFF84EBFF84EBFF84EBFF84EBFF84EBFF84E7FF43BA
        EF199AC665656589898999BAC6A3C3CFAFCED7E5FFFFDFF9FFDFF9FFDFF9FFDF
        F9FFDFF9FFDFF9FFDFF9FFDFF8FFC2E1EF99BAC6656565898989199AC643B3E2
        21A0C9A5FFFF94F7FF94F7FF94F7FF94F7FF94F7FF94F7FF94F7FF94F7FF53BE
        E75CBCCE0D73A571717199BAC6B8D5E29DBEC9E7FFFFE3FCFFE3FCFFE3FCFFE3
        FCFFE3FCFFE3FCFFE3FCFFE3FCFFC0DCE7B0C9CE7D98A5717171199AC670D5FD
        199AC689F0F79CFFFF9CFFFF9CFFFF9CFFFF9CFFFF9CFFFF9CFFFF9CFFFF5BC7
        FF96F9FB197B9B71717199BAC6D8F2FD99BAC6DAF5F7E5FFFFE5FFFFE5FFFFE5
        FFFFE5FFFFE5FFFFE5FFFFE5FFFFD4F0FFE0FAFB79929B717171199AC684D7FF
        199AC66CBFDAFFFFFFFFFFFFF7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84E7
        FFFFFFFF197EA189898999BAC6DFF4FF99BAC6BDD2DAFFFFFFFFFFFFFCFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF8FFFFFFFF7D97A1898989199AC684EBFF
        50C1E2199AC6199AC6199AC6199AC6199AC6199AC6199AC6199AC6199AC6199A
        C6199AC61989B1C5C5C599BAC6DFF9FFBCD9E299BAC699BAC699BAC699BAC699
        BAC699BAC699BAC699BAC699BAC699BAC699BAC689A6B1C5C5C5199AC69CF3FF
        8CF3FF8CF3FF8CF3FF8CF3FF8CF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF199A
        C61A7B9DC5C5C5FF00FF99BAC6E5FBFFE1FBFFE1FBFFE1FBFFE1FBFFE1FBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF99BAC67A949DC5C5C5FF00FF199AC6FFFFFF
        9CFFFF9CFFFF9CFFFF9CFFFFFFFFFF199AC6199AC6199AC6199AC6199AC6199A
        C6DDDDDDFF00FFFF00FF99BAC6FFFFFFE5FFFFE5FFFFE5FFFFE5FFFFFFFFFF99
        BAC699BAC699BAC699BAC699BAC699BAC6DDDDDDFF00FFFF00FFFF00FF22A2CE
        FFFFFFFFFFFFFFFFFFFFFFFF199AC6C5C5C5FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFA1C2CEFFFFFFFFFFFFFFFFFFFFFFFF99BAC6C5
        C5C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        22A2CE22A2CE22A2CE22A2CEDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFA1C2CEA1C2CEA1C2CEA1C2CEDDDDDDFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = BitBtn2Click
      ExplicitTop = 421
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 207
      Width = 155
      Height = 142
      Caption = ' Image '
      TabOrder = 2
      object Label17: TLabel
        Left = 7
        Top = 30
        Width = 55
        Height = 14
        Caption = 'Scale : 0 %'
      end
      object Label6: TLabel
        Left = 7
        Top = 65
        Width = 80
        Height = 14
        Caption = 'Brightness : 0 %'
      end
      object Label7: TLabel
        Left = 7
        Top = 97
        Width = 69
        Height = 14
        Caption = 'Contrast : 0 %'
      end
      object ScrollBar3: TScrollBar
        Left = 3
        Top = 50
        Width = 149
        Height = 9
        Max = 1000
        Min = -100
        PageSize = 0
        TabOrder = 0
        OnChange = ScrollBar3Change
      end
      object ScrollBar1: TScrollBar
        Left = 3
        Top = 82
        Width = 149
        Height = 9
        PageSize = 0
        TabOrder = 1
        OnChange = ScrollBar1Change
      end
      object ScrollBar2: TScrollBar
        Left = 3
        Top = 117
        Width = 149
        Height = 9
        PageSize = 0
        TabOrder = 2
        OnChange = ScrollBar2Change
      end
    end
    object BitBtn10: TBitBtn
      Left = 90
      Top = 460
      Width = 33
      Height = 25
      Hint = 'Undo'
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9ECE9EFD3CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFDFCFDF0D5CEF1B9A0E1A58BE2
        E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        F2E5E3ECBDAAF7C09FFFE0C1E9B99EC1A29AF7F6F6FEFCFCFEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFF000000FAF5F5F0CABDF1B797FCCDA9FFDBBAFFDBBEFCD8BFF2
        CBB5F5CEBBEDC1B2E2C9C1F0DDD8F9FAFAFFFFFFFFFFFF000000EEB59FFBC69F
        FFD3AEFFD4B3FFD7B9FFDABFFFE1C8FFE7D4FFECDBFFF5EAFFF4EDF0D4CCE0BC
        B2F1EAE9FFFFFF000000E19376FEC59EFFD8B3FFD6B3FFD8B8FFDBC0FFE1C9FF
        E7D5FFEEDEFFF3E9FFFBF7FFFFFFFBDFCBDAAA95F0EEEE000000D59E90DF5D37
        F7A985FFD5B3FFDCBEFFDDC2FED9C0FDD5BBFEDECBFEE9DCFEF6F2FFFFFDFFEB
        D3F0AD86D3B3A9000000F2F0EFCB9283D26241F1906AFDC8A8FFE3CAFDCEB2F9
        B48BF7AD85FAAE89FDB99BFDCEB9FED9BDF8AC83C89E91000000FFFFFFF9FEFF
        DACAC5CE856FE78762FEBE9CF6BB9DB88B7BBFAEA7C69D8FDB9277F2946FFCA8
        83F4956EC59C8F000000FFFFFFFFFFFFFFFFFFEFF2F3D2B0A6DD9273E8A27BC2
        A59CFEFFFFFDFFFFD8CCCBD46948F28760F68B65C69E93000000FFFFFFFFFFFF
        FFFFFFFFFFFFFDFFFFE4DDDBC3A196D0C9C6FFFFFFF8E4DEE8A289DE6742E46C
        48F68E68C8A297000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
        FFFFF3F2F3E6AD93EE8F66E2724EF9916ADB7F5FC0B0AB000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF0E3A488F9976FF99B75D880
        61AF8F86EDF1F2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF9FDFEE3AE9BD4886AB7897ABEB3B1F0F4F5FFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEAEAD2D1D2EFF4F5FFFF
        FFFFFFFFFFFFFF000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn10Click
      ExplicitTop = 421
    end
    object BitBtn11: TBitBtn
      Left = 50
      Top = 460
      Width = 33
      Height = 25
      Hint = 'Clear'
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
        0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
        B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
        0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
        00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
        05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
        00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
        0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn11Click
      ExplicitTop = 421
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 355
      Width = 155
      Height = 98
      Caption = ' Alignment '
      TabOrder = 5
      object RadioButton3: TRadioButton
        Left = 13
        Top = 24
        Width = 41
        Height = 17
        Hint = 'Type ASCii  Align Left in HTML'
        Caption = 'Left'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton3Click
      end
      object RadioButton1: TRadioButton
        Left = 13
        Top = 47
        Width = 52
        Height = 17
        Hint = 'Type ASCii  Align Center in HTML'
        Caption = 'Center'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 13
        Top = 70
        Width = 49
        Height = 17
        Hint = 'Type ASCii  Align Right in HTML'
        Caption = 'Right'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = RadioButton2Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 96
      Width = 155
      Height = 105
      Caption = ' Options '
      TabOrder = 6
      object CheckBox1: TCheckBox
        Left = 7
        Top = 24
        Width = 49
        Height = 17
        TabStop = False
        Caption = 'Invert'
        Enabled = False
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 7
        Top = 47
        Width = 73
        Height = 17
        TabStop = False
        Caption = 'Grayscale'
        Enabled = False
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 96
        Top = 24
        Width = 49
        Height = 17
        TabStop = False
        Caption = 'Flip X'
        Enabled = False
        TabOrder = 2
        OnClick = CheckBox3Click
      end
      object CheckBox4: TCheckBox
        Left = 95
        Top = 47
        Width = 49
        Height = 17
        TabStop = False
        Caption = 'Flip Y'
        Enabled = False
        TabOrder = 3
        OnClick = CheckBox4Click
      end
      object CheckBox5: TCheckBox
        Left = 7
        Top = 70
        Width = 73
        Height = 17
        TabStop = False
        Caption = 'Trz (0,0,0)'
        Enabled = False
        TabOrder = 4
        OnClick = CheckBox5Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Bitmap (*.BMP;*.RLE;*.DIB)|*.bmp|JGP (*.JPG;*.JPEG)|*.jpg;*.jpeg' +
      '|Windows Meta File (*.WMF)|*.wmf|Enhaunced Meat File (*.EMF)|*.e' +
      'mf|Graphics Interchange Format (*.GIF)|*.gif'
    Left = 320
    Top = 48
  end
  object SaveDialog: TSaveDialog
    FileName = 'result.html'
    Filter = '*.html|*.html'
    Left = 408
    Top = 48
  end
  object MainMenu: TMainMenu
    Left = 480
    Top = 48
    object N1: TMenuItem
      Caption = 'File'
      object bmp1: TMenuItem
        Caption = 'Open'
        ShortCut = 16463
        OnClick = bmp1Click
      end
      object html1: TMenuItem
        Caption = 'Export (*.HTML)'
        ShortCut = 16467
        OnClick = html1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object L1: TMenuItem
        Caption = 'Load ASCii Text'
        OnClick = L1Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Caption = 'Close'
        OnClick = N3Click
      end
    end
    object N6: TMenuItem
      Caption = 'Resolution'
      object N7: TMenuItem
        Caption = 'Scale'
        object N1x1: TMenuItem
          AutoCheck = True
          Caption = '1:1'
          RadioItem = True
          OnClick = N1x1Click
        end
        object N1x2: TMenuItem
          AutoCheck = True
          Caption = '1:2'
          RadioItem = True
          OnClick = N1x2Click
        end
        object N1x3: TMenuItem
          AutoCheck = True
          Caption = '1:3'
          RadioItem = True
          OnClick = N1x3Click
        end
        object N1x4: TMenuItem
          AutoCheck = True
          Caption = '1:4'
          RadioItem = True
          OnClick = N1x4Click
        end
        object N1x5: TMenuItem
          AutoCheck = True
          Caption = '1:5'
          RadioItem = True
          OnClick = N1x5Click
        end
        object N1x6: TMenuItem
          AutoCheck = True
          Caption = '1:6'
          RadioItem = True
          OnClick = N1x6Click
        end
        object N1x7: TMenuItem
          AutoCheck = True
          Caption = '1:7'
          RadioItem = True
          OnClick = N1x7Click
        end
        object N1x8: TMenuItem
          AutoCheck = True
          Caption = '1:8'
          RadioItem = True
          OnClick = N1x8Click
        end
        object N1x9: TMenuItem
          AutoCheck = True
          Caption = '1:9'
          RadioItem = True
          OnClick = N1x9Click
        end
        object N1x10: TMenuItem
          AutoCheck = True
          Caption = '1:10'
          RadioItem = True
          OnClick = N1x10Click
        end
      end
      object N9: TMenuItem
        Caption = 'Ratio'
        object N42: TMenuItem
          AutoCheck = True
          Caption = '4:1'
          RadioItem = True
        end
        object N41: TMenuItem
          AutoCheck = True
          Caption = '3:1'
          RadioItem = True
        end
        object N211: TMenuItem
          AutoCheck = True
          Caption = '2:1 (Optimal)'
          RadioItem = True
          OnClick = N211Click
        end
        object N111: TMenuItem
          AutoCheck = True
          Caption = '1:1'
          RadioItem = True
          OnClick = N211Click
        end
        object N121: TMenuItem
          AutoCheck = True
          Caption = '1:2'
          RadioItem = True
          OnClick = N211Click
        end
        object N14: TMenuItem
          AutoCheck = True
          Caption = '1:3'
          RadioItem = True
        end
        object N15: TMenuItem
          AutoCheck = True
          Caption = '1:4'
          RadioItem = True
        end
      end
      object H1: TMenuItem
        Caption = 'HTML Font Size'
        object x1: TMenuItem
          Caption = 'x1'
          Checked = True
          RadioItem = True
          OnClick = x1Click
        end
        object x2: TMenuItem
          Caption = 'x2'
          RadioItem = True
          OnClick = x2Click
        end
        object x3: TMenuItem
          Caption = 'x3'
          RadioItem = True
          OnClick = x3Click
        end
        object x4: TMenuItem
          Caption = 'x4'
          RadioItem = True
          OnClick = x4Click
        end
        object x5: TMenuItem
          Caption = 'x5'
          RadioItem = True
          OnClick = x5Click
        end
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = 'Background Color'
        OnClick = N8Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object A1: TMenuItem
        Caption = 'Align Text'
        object L2: TMenuItem
          AutoCheck = True
          Caption = 'Left'
          Checked = True
          RadioItem = True
          OnClick = L2Click
        end
        object C3: TMenuItem
          AutoCheck = True
          Caption = 'Center'
          RadioItem = True
          OnClick = C3Click
        end
        object R1: TMenuItem
          AutoCheck = True
          Caption = 'Right'
          RadioItem = True
          OnClick = R1Click
        end
      end
    end
    object N4: TMenuItem
      Caption = 'Help'
      object C1: TMenuItem
        Caption = 'Char Map'
        OnClick = C1Click
      end
    end
  end
  object ColorDialog: TColorDialog
    Left = 568
    Top = 48
  end
  object OpenDialog2: TOpenDialog
    Filter = 'Any Textfile (*.*)|*.*'
    Left = 373
    Top = 137
  end
  object PopupMenu1: TPopupMenu
    Left = 470
    Top = 138
    object BitBtn21: TMenuItem
      Caption = 'Open'
      OnClick = BitBtn21Click
    end
    object E1: TMenuItem
      Caption = 'Export (*.html)'
      OnClick = E1Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object Resample1: TMenuItem
      Caption = 'Resample (1 %)'
      OnClick = Resample1Click
    end
    object Sepia1: TMenuItem
      Caption = 'Sepia (10 %)'
      OnClick = Sepia1Click
    end
    object urn901: TMenuItem
      Caption = 'Turn 90'#176
      OnClick = urn901Click
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object U1: TMenuItem
      Caption = 'Undo..'
      OnClick = U1Click
    end
    object C2: TMenuItem
      Caption = 'Clear..'
      OnClick = C2Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 566
    Top = 130
  end
  object ColorDialog2: TColorDialog
    Left = 566
    Top = 210
  end
end
