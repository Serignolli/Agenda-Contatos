object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Contacts Schedule'
  ClientHeight = 517
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 192
    Height = 25
    Caption = 'Contacts Schedule'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ContactName: TLabel
    Left = 16
    Top = 53
    Width = 68
    Height = 13
    Caption = 'Contact Name'
  end
  object ContactPhone: TLabel
    Left = 16
    Top = 109
    Width = 71
    Height = 13
    Caption = 'Contact Phone'
  end
  object observationsLabel: TLabel
    Left = 16
    Top = 213
    Width = 64
    Height = 13
    Caption = 'Observations'
  end
  object DateTimeLabel: TLabel
    Left = 16
    Top = 357
    Width = 138
    Height = 13
    Caption = 'Date and time of registration'
  end
  object DateTime: TDBText
    Left = 16
    Top = 376
    Width = 235
    Height = 17
    DataField = 'date'
    DataSource = DM.DataSource
  end
  object Name: TDBEdit
    Left = 16
    Top = 72
    Width = 241
    Height = 21
    DataField = 'name'
    DataSource = DM.DataSource
    TabOrder = 0
  end
  object Phone: TDBEdit
    Left = 16
    Top = 128
    Width = 121
    Height = 21
    DataField = 'phone'
    DataSource = DM.DataSource
    TabOrder = 1
  end
  object blocked: TDBCheckBox
    Left = 16
    Top = 176
    Width = 97
    Height = 17
    Caption = 'Blocked'
    DataField = 'blocked'
    DataSource = DM.DataSource
    TabOrder = 2
  end
  object observations: TDBMemo
    Left = 16
    Top = 232
    Width = 241
    Height = 105
    DataField = 'observations'
    DataSource = DM.DataSource
    TabOrder = 3
  end
  object Include: TButton
    Left = 16
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Include'
    TabOrder = 4
    OnClick = IncludeClick
  end
  object Save: TButton
    Left = 112
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 5
    OnClick = SaveClick
  end
  object ContactsGrid: TDBGrid
    Left = 280
    Top = 72
    Width = 288
    Height = 401
    DataSource = DM.DataSource
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'blocked'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'observations'
        Width = 64
        Visible = True
      end>
  end
  object Cancel: TButton
    Left = 16
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 7
    OnClick = CancelClick
  end
  object Exclude: TButton
    Left = 112
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Exclude'
    TabOrder = 8
    OnClick = ExcludeClick
  end
end
