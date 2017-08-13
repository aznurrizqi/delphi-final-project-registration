object Form2: TForm2
  Left = 329
  Top = 272
  BorderStyle = bsDialog
  Caption = 'Form Input Data'
  ClientHeight = 307
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 329
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 32
      Width = 101
      Height = 20
      Caption = 'Kode Barang :'
    end
    object Label2: TLabel
      Left = 31
      Top = 66
      Width = 106
      Height = 20
      Caption = 'Nama Barang :'
    end
    object Label3: TLabel
      Left = 77
      Top = 96
      Width = 60
      Height = 20
      Caption = 'Satuan :'
    end
    object Label4: TLabel
      Left = 104
      Top = 128
      Width = 32
      Height = 20
      Caption = 'Qty :'
    end
    object Label5: TLabel
      Left = 50
      Top = 157
      Width = 115
      Height = 20
      Caption = 'Harga Beli  : Rp.'
    end
    object Label6: TLabel
      Left = 48
      Top = 187
      Width = 118
      Height = 20
      Caption = 'Harga Jual  : Rp.'
    end
    object Kode: TEdit
      Left = 145
      Top = 31
      Width = 121
      Height = 28
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = KodeKeyPress
    end
    object Nama_barang: TEdit
      Left = 145
      Top = 64
      Width = 232
      Height = 28
      TabOrder = 1
      OnKeyPress = Nama_barangKeyPress
    end
    object Satuan: TComboBox
      Left = 144
      Top = 96
      Width = 145
      Height = 28
      ItemHeight = 20
      TabOrder = 2
      OnKeyPress = SatuanKeyPress
      Items.Strings = (
        'PCS'
        'BUAH'
        'LUSIN'
        'KODI'
        'KG'
        'GRAM')
    end
    object QTY: TEdit
      Left = 144
      Top = 127
      Width = 61
      Height = 28
      TabOrder = 3
      OnKeyPress = QTYKeyPress
    end
    object BELI: TEdit
      Left = 168
      Top = 157
      Width = 121
      Height = 28
      TabOrder = 4
      OnKeyPress = BELIKeyPress
    end
    object JUAL: TEdit
      Left = 168
      Top = 188
      Width = 121
      Height = 28
      TabOrder = 5
      OnKeyPress = JUALKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 266
    Width = 530
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Save: TBitBtn
      Left = 16
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = SaveClick
    end
    object Exit: TBitBtn
      Left = 408
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 1
      OnClick = ExitClick
    end
  end
end
