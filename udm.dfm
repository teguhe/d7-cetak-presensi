object dm: Tdm
  OldCreateOrder = False
  Left = 133
  Top = 455
  Height = 257
  Width = 215
  object xp: TXPManifest
    Left = 8
    Top = 8
  end
  object zc: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Port = 0
    Protocol = 'mysql'
    Left = 40
    Top = 8
  end
  object qcetak: TZQuery
    Connection = zc
    Params = <>
    Left = 72
    Top = 8
  end
  object dcetak: TDataSource
    DataSet = qcetak
    Left = 104
    Top = 8
  end
  object frcetak: TfrxDBDataset
    UserName = 'frcetak'
    CloseDataSource = False
    DataSet = qcetak
    Left = 136
    Top = 8
  end
  object fr: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43341.494776226850000000
    ReportOptions.LastChange = 43341.527719004630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frGetValue
    Left = 8
    Top = 64
    Datasets = <
      item
        DataSet = frcetak
        DataSetName = 'frcetak'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 5
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 30.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo1: TfrxMemoView
          Width = 740.787880000000000000
          Height = 83.149660000000000000
          AllowHTMLTags = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '<b>DAFTAR HADIR APEL PAGI'
            'PEJABAT STRUKTURAL ESELON II'
            'DI LINGKUNGAN PEMERINTAH KOTA SALATIGA</b>'
            ''
            'HARI / TANGGAL / TAHUN : ')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 740.787880000000000000
        DataSet = frcetak
        DataSetName = 'frcetak'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        Height = 166.299320000000000000
        Top = 302.362400000000000000
        Width = 740.787880000000000000
        object Memo2: TfrxMemoView
          Left = 438.425480000000000000
          Top = 15.118120000000000000
          Width = 264.567100000000000000
          Height = 147.401670000000000000
          AllowHTMLTags = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SEKRETARIS DAERAH '
            'KOTA SALATIGA'
            ''
            ''
            ''
            ''
            '<b><u>Drs. FAKRUROJI</u></b>'
            'Pembina Utama Muda'
            'NIP. 19610924 198903 1 004')
          ParentFont = False
        end
      end
    end
  end
  object frd: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 40
    Top = 64
  end
end
