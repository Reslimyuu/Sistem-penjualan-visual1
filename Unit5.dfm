object Form5: TForm5
  Left = 385
  Top = 139
  Width = 928
  Height = 480
  Caption = 'Satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 232
    Top = 112
    Width = 54
    Height = 19
    Caption = 'NAME :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 152
    Top = 352
    Width = 133
    Height = 19
    Caption = 'MASUKAN NAME :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 296
    Top = 112
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object dbgrd1: TDBGrid
    Left = 296
    Top = 200
    Width = 320
    Height = 120
    DataSource = DataModule4.dssatuan
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 312
    Top = 160
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 416
    Top = 160
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 520
    Top = 160
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = btn3Click
  end
  object edt2: TEdit
    Left = 296
    Top = 352
    Width = 313
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 432
    Top = 392
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
end
