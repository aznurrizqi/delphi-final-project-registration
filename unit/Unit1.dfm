object Form1: TForm1
  Left = 281
  Top = 139
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Aplikasi Pencatatan Tugas Besar D3TI'
  ClientHeight = 577
  ClientWidth = 1050
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  DesignSize = (
    1050
    577)
  PixelsPerInch = 96
  TextHeight = 20
  object lbl_cari: TLabel
    Left = 320
    Top = 269
    Width = 172
    Height = 19
    Caption = 'Cari Judul Tugas Besar'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_id: TLabel
    Left = 56
    Top = 48
    Width = 19
    Height = 19
    Caption = 'ID'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_judul: TLabel
    Left = 56
    Top = 88
    Width = 136
    Height = 19
    Caption = 'Judul Tugas Besar'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_platform: TLabel
    Left = 56
    Top = 128
    Width = 68
    Height = 19
    Caption = 'Platform'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_nim: TLabel
    Left = 56
    Top = 168
    Width = 33
    Height = 19
    Caption = 'NIM'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_nama: TLabel
    Left = 56
    Top = 208
    Width = 45
    Height = 19
    Caption = 'Nama'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_kelas: TLabel
    Left = 504
    Top = 48
    Width = 42
    Height = 19
    Caption = 'Kelas'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_semester: TLabel
    Left = 504
    Top = 88
    Width = 70
    Height = 19
    Caption = 'Semester'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_makul: TLabel
    Left = 504
    Top = 128
    Width = 88
    Height = 19
    Caption = 'Matakuliah'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl_dosen: TLabel
    Left = 504
    Top = 168
    Width = 49
    Height = 19
    Caption = 'Dosen'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 16
    Top = 320
    Width = 1017
    Height = 236
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    object TbTubes: TListView
      Left = 8
      Top = 8
      Width = 1001
      Height = 225
      Align = alCustom
      Color = clCream
      Columns = <
        item
          Caption = 'No'
        end
        item
          Caption = 'ID'
          Width = 75
        end
        item
          Caption = 'Judul Tugas Besar'
          Width = 175
        end
        item
          Caption = 'Platform'
          Width = 100
        end
        item
          Caption = 'NIM'
          Width = 100
        end
        item
          Caption = 'Nama Mahasiswa'
          Width = 150
        end
        item
          Caption = 'Kelas'
          Width = 75
        end
        item
          Caption = 'Semester'
          Width = 75
        end
        item
          Caption = 'Matakuliah'
          Width = 100
        end
        item
          Caption = 'Dosen'
          Width = 100
        end>
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Constantia'
      Font.Style = []
      GridLines = True
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      ParentFont = False
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object Cari: TEdit
    Left = 512
    Top = 266
    Width = 201
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = CariChange
  end
  object Refresh: TBitBtn
    Left = 79
    Top = 256
    Width = 90
    Height = 41
    Anchors = [akTop, akRight]
    Caption = 'Refresh'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = RefreshClick
  end
  object Delete: TBitBtn
    Left = 792
    Top = 120
    Width = 89
    Height = 41
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = DeleteClick
  end
  object Exit: TBitBtn
    Left = 792
    Top = 184
    Width = 89
    Height = 41
    Caption = 'Exit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = ExitClick
  end
  object Edit: TBitBtn
    Left = 896
    Top = 120
    Width = 89
    Height = 41
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = EditClick
  end
  object Add: TBitBtn
    Left = 792
    Top = 56
    Width = 88
    Height = 41
    Caption = 'Add'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = AddClick
  end
  object id: TEdit
    Left = 208
    Top = 48
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object judul: TEdit
    Left = 208
    Top = 88
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object platform: TEdit
    Left = 208
    Top = 128
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object nim: TEdit
    Left = 208
    Top = 168
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object nama: TEdit
    Left = 208
    Top = 208
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object kelas: TEdit
    Left = 608
    Top = 48
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object semester: TEdit
    Left = 608
    Top = 88
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object makul: TEdit
    Left = 608
    Top = 128
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object dosen: TEdit
    Left = 608
    Top = 168
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object Save: TBitBtn
    Left = 896
    Top = 56
    Width = 89
    Height = 41
    Caption = 'Save'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = SaveClick
  end
  object Report: TBitBtn
    Left = 792
    Top = 248
    Width = 193
    Height = 41
    Caption = 'Print Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    WordWrap = True
    OnClick = ReportClick
  end
  object CrystalReport1: TCrystalReport
    Left = 912
    Top = 16
    Width = 32
    Height = 32
    ControlData = {
      0050050000000000DDFADDBADDFADDBA560A00002B0500000100010000000000
      00000000000000002C0164006400EA0100000000020000000000000000000000
      020000000200000000000000000000000100010001000100013C000000010101
      0101000100000070000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000}
  end
  object Clear: TBitBtn
    Left = 896
    Top = 184
    Width = 91
    Height = 41
    Caption = 'Clear'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
    OnClick = ClearClick
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TbTubes')
    Left = 984
    Top = 16
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=db_pe' +
      'mvis.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 952
    Top = 16
  end
end
