object FCec: TFCec
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Evidenta cecurilor eliberate'
  ClientHeight = 452
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label21: TLabel
      Left = 4
      Top = 11
      Width = 38
      Height = 19
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LData: TLabel
      Left = 48
      Top = 11
      Width = 82
      Height = 19
      Caption = '00.00.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 4
      Top = 33
      Width = 74
      Height = 19
      Caption = 'Operator: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 78
      Top = 33
      Width = 87
      Height = 19
      Caption = 'Neidentificat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 375
    Height = 351
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 373
      Height = 349
      Align = alClient
      DataSource = dm.DQSCASA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NR'
          Title.Alignment = taCenter
          Title.Caption = 'Nr.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NR_CEC'
          Title.Alignment = taCenter
          Title.Caption = 'Nr cec'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 108
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Suma Cec'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 124
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 48
      Top = 136
      Width = 233
      Height = 113
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 64
        Top = 8
        Width = 103
        Height = 13
        Caption = 'Preferinte de  tiparire'
      end
      object RadioButton1: TRadioButton
        Left = 78
        Top = 27
        Width = 113
        Height = 17
        Caption = 'La ziua de azi'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 55
        Top = 50
        Width = 171
        Height = 17
        Caption = 'Pentru toata activitatea'
        TabOrder = 1
      end
      object Button1: TButton
        Left = 12
        Top = 73
        Width = 109
        Height = 34
        Caption = 'Accepta'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 127
        Top = 73
        Width = 99
        Height = 34
        Caption = 'Anuleaza'
        TabOrder = 3
        OnClick = Button3Click
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 408
    Width = 375
    Height = 44
    Align = alBottom
    TabOrder = 2
    object BTiparire: TButton
      Left = 209
      Top = 5
      Width = 136
      Height = 34
      Caption = 'Tiparire'
      TabOrder = 0
      OnClick = BTiparireClick
    end
    object Button2: TButton
      Left = 17
      Top = 5
      Width = 160
      Height = 34
      Caption = 'Iesire'
      TabOrder = 1
    end
  end
end
