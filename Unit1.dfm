object Form1: TForm1
  Left = 0
  Top = 0
  BorderWidth = 2
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' HTML'
  ClientHeight = 442
  ClientWidth = 698
  Color = clGray
  Constraints.MinHeight = 480
  Constraints.MinWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 698
    Height = 407
    Align = alClient
    Color = 3223341
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    Lines.Strings = (
      '<html>'
      '<head>'
      '<title>'#1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1089#1090#1088#1072#1085#1080#1094#1099'</title>'
      '</head>'
      '<body>'
      ''
      #1057#1086#1079#1076#1072#1081' '#1089#1074#1086#1102' '#1089#1090#1088#1072#1085#1080#1094#1091
      ''
      '</body>'
      '</html>')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    WantTabs = True
    ExplicitWidth = 628
    ExplicitHeight = 395
  end
  object Panel1: TPanel
    Left = 0
    Top = 407
    Width = 698
    Height = 35
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 395
    ExplicitWidth = 628
    object TrackBar1: TTrackBar
      Left = 547
      Top = 1
      Width = 150
      Height = 33
      Align = alRight
      Max = 36
      Min = 8
      Position = 14
      TabOrder = 0
      OnChange = TrackBar1Change
      ExplicitLeft = 477
    end
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 80
      Height = 33
      Align = alLeft
      Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 81
      Top = 1
      Width = 20
      Height = 33
      Align = alLeft
      Caption = 'B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 101
      Top = 1
      Width = 20
      Height = 33
      Align = alLeft
      Caption = 'I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 211
      Top = 1
      Width = 50
      Height = 33
      Align = alLeft
      Caption = #1040#1073#1079#1072#1094
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 261
      Top = 1
      Width = 50
      Height = 33
      Align = alLeft
      Caption = #1057#1089#1099#1083#1082#1072
      TabOrder = 5
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 121
      Top = 1
      Width = 20
      Height = 33
      Align = alLeft
      Caption = 'del'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsStrikeOut]
      ParentFont = False
      TabOrder = 6
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 161
      Top = 1
      Width = 50
      Height = 33
      Align = alLeft
      Caption = #1064#1088#1080#1092#1090
      TabOrder = 7
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 141
      Top = 1
      Width = 20
      Height = 33
      Align = alLeft
      Caption = 'U'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 8
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 311
      Top = 1
      Width = 50
      Height = 33
      Align = alLeft
      Caption = #1062#1074#1077#1090
      TabOrder = 9
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 361
      Top = 1
      Width = 50
      Height = 33
      Align = alLeft
      Caption = #1050#1085#1086#1087#1082#1072
      TabOrder = 10
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 411
      Top = 1
      Width = 50
      Height = 33
      Align = alLeft
      Caption = #1058#1072#1073#1083'.'
      TabOrder = 11
      OnClick = Button11Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = #1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 336
    Top = 48
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 64
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ShortCut = 16463
        OnClick = N2Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = N3Click
      end
    end
    object N5: TMenuItem
      Caption = #1055#1088#1086#1077#1082#1090
      object N6: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' + '#1086#1090#1082#1088#1099#1090#1100' '#1074' '#1073#1088#1072#1091#1079#1077#1088#1077
        ShortCut = 120
        OnClick = N6Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'HTML|*.html|Text|*.txt|PHP|*.php'
    Left = 336
    Top = 112
  end
  object FD1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 408
    Top = 128
  end
  object ColorDialog1: TColorDialog
    Left = 328
    Top = 168
  end
end
