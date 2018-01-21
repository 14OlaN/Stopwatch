object Form1: TForm1
  Left = 237
  Top = 163
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  UseDockManager = True
  DockSite = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 1287
    Height = 630
    Align = alClient
    Brush.Color = clBlack
  end
  object Label1: TLabel
    Left = 8
    Top = 128
    Width = 1265
    Height = 129
    Alignment = taCenter
    AutoSize = False
    Caption = '00 : 00 : 00 : 00'
    Color = clBackground
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clLime
    Font.Height = -67
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 360
    Width = 74
    Height = 40
    Caption = 'Laps'
    Color = clBackground
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clLime
    Font.Height = -33
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Button1: TButton
    Left = 208
    Top = 280
    Width = 233
    Height = 73
    Caption = 'Start'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -30
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 472
    Top = 280
    Width = 233
    Height = 73
    Caption = 'Reset'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -30
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 728
    Top = 280
    Width = 233
    Height = 73
    Caption = 'Lap'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 400
    Width = 225
    Height = 225
    DragKind = dkDock
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -20
    Font.Name = 'Century Gothic'
    Font.Style = []
    ItemHeight = 23
    ParentFont = False
    TabOrder = 3
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 80
    Top = 48
  end
  object TrayIcon1: TTrayIcon
    Visible = True
    Hide = True
    RestoreOn = imDoubleClick
    PopupMenuOn = imNone
    OnClick = TrayIcon1Click
    Left = 80
    Top = 144
  end
end
