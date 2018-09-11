unit udm;

interface

uses
  SysUtils, Classes, XPMan, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet,
  frxDesgn;

type
  Tdm = class(TDataModule)
    xp: TXPManifest;
    zc: TZConnection;
    qcetak: TZQuery;
    dcetak: TDataSource;
    frcetak: TfrxDBDataset;
    fr: TfrxReport;
    frd: TfrxDesigner;
    procedure frGetValue(const VarName: String; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses umain, DateUtils;

{$R *.dfm}

procedure Tdm.frGetValue(const VarName: String; var Value: Variant);
var nama_apel, hari_tanggal : string; myDate : TDateTime;
begin
if fmain.RadioButton1.Checked=True then nama_apel:='APEL PAGI';
if fmain.RadioButton2.Checked=True then nama_apel:=UpperCase(fmain.Edit1.Text);

myDate := fmain.MonthCalendar1.Date;

case DayOfWeek(myDate) of
1 : hari_tanggal := 'MINGGU, ';
2 : hari_tanggal := 'SENIN, ';
3 : hari_tanggal := 'SELASA, ';
4 : hari_tanggal := 'RABU, ';
5 : hari_tanggal := 'KAMIS, ';
6 : hari_tanggal := 'JUM`AT, ';
7 : hari_tanggal := 'SABTU, ';
end;                                           

if MonthOfTheYear(myDate)=1  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' JANUARI '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=2  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' FEBRUARI '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=3  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' MARET '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=4  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' APRIL '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=5  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' MEI '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=6  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' JUNI '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=7  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' JULI '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=8  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' AGUSTUS '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=9  then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' SEPTEMBER '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=10 then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' OKTOBER '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=11 then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' NOVEMBER '+IntToStr(YearOf(myDate));
if MonthOfTheYear(myDate)=12 then hari_tanggal:=hari_tanggal+IntToStr(DayOfTheMonth(myDate))+' DESEMBER '+IntToStr(YearOf(myDate));

if CompareText(VarName, 'nama_apel') = 0 then Value:=nama_apel;
if CompareText(VarName, 'hari_tanggal') = 0 then Value:=hari_tanggal;
end;

end.
