object FCautare: TFCautare
  Left = 0
  Top = 0
  Caption = 'Formularul de cautare a cecului'
  ClientHeight = 513
  ClientWidth = 977
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 513
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 441
    object SpeedButton1: TSpeedButton
      Left = 7
      Top = 467
      Width = 115
      Height = 40
      Caption = 'Cauta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 128
      Top = 467
      Width = 116
      Height = 40
      Caption = 'Raport'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CheckBox1: TCheckBox
      Left = 7
      Top = 14
      Width = 97
      Height = 25
      Caption = 'Nr cec'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object Edit1: TEdit
      Left = 110
      Top = 5
      Width = 133
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object CheckBox2: TCheckBox
      Left = 7
      Top = 70
      Width = 97
      Height = 17
      Caption = 'Perioada cec'
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 110
      Top = 56
      Width = 133
      Height = 21
      Date = 43973.800108912040000000
      Time = 43973.800108912040000000
      Enabled = False
      TabOrder = 3
    end
    object CheckBox3: TCheckBox
      Left = 7
      Top = 108
      Width = 58
      Height = 17
      Caption = 'Operator'
      TabOrder = 4
      OnClick = CheckBox3Click
    end
    object Edit2: TEdit
      Left = 110
      Top = 106
      Width = 133
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 110
      Top = 131
      Width = 133
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object CheckBox4: TCheckBox
      Left = 7
      Top = 133
      Width = 58
      Height = 17
      Caption = 'Client'
      TabOrder = 7
      OnClick = CheckBox4Click
    end
    object Edit4: TEdit
      Left = 110
      Top = 158
      Width = 133
      Height = 21
      Enabled = False
      TabOrder = 8
    end
    object CheckBox5: TCheckBox
      Left = 7
      Top = 160
      Width = 71
      Height = 17
      Caption = 'Cod client'
      TabOrder = 9
      OnClick = CheckBox5Click
    end
    object Edit5: TEdit
      Left = 110
      Top = 183
      Width = 133
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object CheckBox6: TCheckBox
      Left = 7
      Top = 185
      Width = 58
      Height = 17
      Caption = 'Produs'
      TabOrder = 11
      OnClick = CheckBox6Click
    end
    object Edit6: TEdit
      Left = 110
      Top = 208
      Width = 133
      Height = 21
      Enabled = False
      TabOrder = 12
    end
    object CheckBox7: TCheckBox
      Left = 7
      Top = 210
      Width = 76
      Height = 17
      Caption = 'Cod Produs'
      TabOrder = 13
      OnClick = CheckBox7Click
    end
    object Edit7: TEdit
      Left = 110
      Top = 232
      Width = 133
      Height = 21
      Enabled = False
      TabOrder = 14
    end
    object CheckBox8: TCheckBox
      Left = 7
      Top = 234
      Width = 85
      Height = 17
      Caption = 'Suma finala'
      TabOrder = 15
      OnClick = CheckBox8Click
    end
    object DateTimePicker2: TDateTimePicker
      Left = 110
      Top = 79
      Width = 133
      Height = 21
      Date = 43973.800108912040000000
      Time = 43973.800108912040000000
      Enabled = False
      TabOrder = 16
    end
    object Edit8: TEdit
      Left = 110
      Top = 29
      Width = 133
      Height = 21
      Enabled = False
      TabOrder = 17
    end
  end
  object Panel2: TPanel
    Left = 249
    Top = 0
    Width = 728
    Height = 513
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 376
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 726
      Height = 478
      Align = alClient
      DataSource = dm.DSCauta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
          Expanded = False
          FieldName = 'nr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nr'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_CEC'
          Title.Alignment = taCenter
          Title.Caption = 'Nr cec'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CEC'
          Title.Alignment = taCenter
          Title.Caption = 'Data cec'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMOP'
          Title.Alignment = taCenter
          Title.Caption = 'Operator'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PRODUS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cod Produs'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Produs'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 296
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTITATEA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRET_VANZ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cost'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUMACALC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Suma'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DISCOUNT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Discount'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUMA_DISC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Suma dis.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUMA_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Suma finala'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCL'
          Title.Alignment = taCenter
          Title.Caption = 'Client'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CLIENT'
          Title.Alignment = taCenter
          Title.Caption = 'Cod client'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 479
      Width = 726
      Height = 33
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 407
      ExplicitWidth = 696
      object Label1: TLabel
        Left = 6
        Top = 8
        Width = 145
        Height = 16
        Caption = 'Numarul de rezultate: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 150
        Top = 8
        Width = 8
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
