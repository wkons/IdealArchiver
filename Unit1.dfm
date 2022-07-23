object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '   4. '#1048#1044#1045#1040#1051#1068#1053#1054#1045' '#1057#1046#1040#1058#1048#1045' '#1044#1040#1053#1053#1067#1061
  ClientHeight = 508
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 16
    Width = 98
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088' '#1089#1090#1088#1086#1082#1080', '#1073#1080#1090
  end
  object Memo1: TMemo
    Left = 11
    Top = 40
    Width = 751
    Height = 170
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 12
    Top = 471
    Width = 158
    Height = 25
    Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1089#1090#1088#1086#1082#1091
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 471
    Width = 151
    Height = 25
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 119
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '100'
    OnChange = Edit1Change
  end
  object Memo2: TMemo
    Left = 14
    Top = 225
    Width = 751
    Height = 236
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
