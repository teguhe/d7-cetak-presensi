object fmain: Tfmain
  Left = 192
  Top = 125
  BorderStyle = bsDialog
  Caption = 'Cetak Presensi - Pemkot Salatiga'
  ClientHeight = 378
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 25
    Top = 67
    Width = 44
    Height = 16
    Caption = 'Tanggal'
  end
  object JvArrowButton1: TJvArrowButton
    Left = 320
    Top = 64
    Width = 129
    Height = 33
    ArrowWidth = 30
    DropDown = pm1
    Caption = 'Cetak >>'
    FillFont.Charset = DEFAULT_CHARSET
    FillFont.Color = clWindowText
    FillFont.Height = -11
    FillFont.Name = 'MS Sans Serif'
    FillFont.Style = []
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 16
    Width = 113
    Height = 17
    Caption = 'Apel Pagi'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 8
    Top = 40
    Width = 81
    Height = 17
    Caption = 'Lainnya'
    TabOrder = 1
    OnClick = RadioButton2Click
  end
  object MonthCalendar1: TMonthCalendar
    Left = 87
    Top = 41
    Width = 218
    Height = 213
    Date = 43341.593007118060000000
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 86
    Top = 36
    Width = 367
    Height = 24
    Enabled = False
    TabOrder = 2
  end
  object pm1: TPopupMenu
    Left = 128
    Top = 272
    object PresensiEselon21: TMenuItem
      Caption = 'Presensi Eselon 2'
      OnClick = PresensiEselon21Click
    end
    object Presensilainnya1: TMenuItem
      Caption = 'Presensi Eselon III, IV, Inspektorat'
      OnClick = Presensilainnya1Click
    end
    object PresensiStaf1: TMenuItem
      Caption = 'Presensi Staf'
      OnClick = PresensiStaf1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DesignReport1: TMenuItem
      Caption = 'Design Report'
      OnClick = DesignReport1Click
    end
  end
end
