unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml, LR_DBSet, LR_Class, Forms, Controls,
  Graphics, Dialogs, ActnList, Menus, StdCtrls, ExtDlgs, DbCtrls, DBGrids,
  Unit2,Unit3, Unit5, unit6, unit4,Unit7, sqldb, db, IBConnection, LR_DSet, LR_E_HTM,
  LR_BarC, LR_PGrid, LR_Shape, LR_E_TXT, LR_E_CSV;

type

  { TNMJMainForm }

  TNMJMainForm = class(TForm)
    btnnewstu: TButton;
    btnsearch: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CalculatorDialog1: TCalculatorDialog;
    CalendarDialog1: TCalendarDialog;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    frCSVExport1: TfrCSVExport;
    frDBDataSetF: TfrDBDataSet;
    frDBDataSetM: TfrDBDataSet;
    frHTMExport1: TfrHTMExport;
    frReportF: TfrReport;
    frReportM: TfrReport;
    frTextExport1: TfrTextExport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    IBConnection1: TIBConnection;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblheading: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    mnusettings: TMenuItem;
    mnuedit: TMenuItem;
    mnunotes: TMenuItem;
    mnucalendar: TMenuItem;
    mnucalc: TMenuItem;
    mnutools: TMenuItem;
    mnugenreport: TMenuItem;
    mnusearch: TMenuItem;
    mnuaddstu: TMenuItem;
    mnustudent: TMenuItem;
    mnureport: TMenuItem;
    mnuexit: TMenuItem;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQueryF: TSQLQuery;
    SQLQueryM: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure btnnewstuClick(Sender: TObject);
    procedure btnsearchClick(Sender: TObject);
    procedure btnviewClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure frDBDataSetMCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure FrPrintGrid1GetValue(const ParName: String; var ParValue: Variant
      );
    procedure GroupBox1Click(Sender: TObject);

    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure mnuaddstuClick(Sender: TObject);
    procedure mnucalcClick(Sender: TObject);
    procedure mnucalendarClick(Sender: TObject);
    procedure mnuexitClick(Sender: TObject);
    procedure mnueditClick(Sender: TObject);
    procedure mnugenreportClick(Sender: TObject);
    procedure mnunotesClick(Sender: TObject);
    procedure mnusearchClick(Sender: TObject);
    procedure mnuviewClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  NMJMainForm: TNMJMainForm;

implementation

{$R *.lfm}

{ TNMJMainForm }

procedure TNMJMainForm.mnuexitClick(Sender: TObject);
begin



  nmjmainform.Close;


end;

procedure TNMJMainForm.mnueditClick(Sender: TObject);
begin
  frmsearch.show;
end;

procedure TNMJMainForm.mnugenreportClick(Sender: TObject);
begin
  sqlquery1.ApplyUpdates();
  sqlquery1.Refresh;
 frmview.frreport1.LoadFromFile('C:\Users\Yacoob_19\Desktop\madressa project\madressa Source code\reports\student report.lrf');
frmview.frreport1.ShowReport;
end;

procedure TNMJMainForm.mnunotesClick(Sender: TObject);
begin
  form1.Show;
end;

procedure TNMJMainForm.mnusearchClick(Sender: TObject);
begin
  frmsearch.Show;
end;

procedure TNMJMainForm.mnuviewClick(Sender: TObject);
begin
  frmview.Show;
end;

procedure TNMJMainForm.GroupBox1Click(Sender: TObject);
begin

end;



procedure TNMJMainForm.Label2Click(Sender: TObject);
begin

end;

procedure TNMJMainForm.Label3Click(Sender: TObject);
begin

end;

procedure TNMJMainForm.Label4Click(Sender: TObject);
begin

end;

procedure TNMJMainForm.MenuItem1Click(Sender: TObject);
begin

end;

procedure TNMJMainForm.MenuItem2Click(Sender: TObject);
begin
  showMessage('This will update the current grade of the student to the next grade. This should only be done once every year.');

  ibconnection1.ExecuteDirect('UPDATE STUDENT SET STU_GRADE =STU_GRADE+1 ;');

  showMessage('UPDATE COMPLETE All the students grade have been updated. Please note updates will only appear after the program restarts');
                          sqlquery1.applyupdates();

end;

procedure TNMJMainForm.MenuItem3Click(Sender: TObject);
begin
  sqlquery1.ApplyUpdates();
  sqlquery1.Refresh;
  frmaddstu.SQLQuery1.ApplyUpdates();
  frmaddstu.SQLQuery1.Refresh;
end;

procedure TNMJMainForm.MenuItem4Click(Sender: TObject);
begin
  frreportm.LoadFromFile('C:\Users\Yacoob_19\Desktop\madressa project\madressa Source code\reports\malestudentreport.lrf');
   frreportm.ShowReport;
end;

procedure TNMJMainForm.MenuItem5Click(Sender: TObject);
begin
  frreportm.LoadFromFile('C:\Users\Yacoob_19\Desktop\madressa project\madressa Source code\reports\femalestudentreport.lrf');
   frreportm.ShowReport;
end;

procedure TNMJMainForm.MenuItem6Click(Sender: TObject);

begin
 frmview.Show;

end;

procedure TNMJMainForm.MenuItem7Click(Sender: TObject);
begin

     ibconnection1.ExecuteDirect('UPDATE STUDENT SET STU_GRADE =STU_GRADE-1 ;');
      showmessage('Update undo was successfull');
end;

procedure TNMJMainForm.MenuItem8Click(Sender: TObject);
begin

end;

procedure TNMJMainForm.MenuItem9Click(Sender: TObject);
begin
  form2.show

end;

procedure TNMJMainForm.mnuaddstuClick(Sender: TObject);
begin
  frmaddstu.show;
end;

procedure TNMJMainForm.mnucalcClick(Sender: TObject);
begin
  calculatordialog1.Execute;
end;

procedure TNMJMainForm.mnucalendarClick(Sender: TObject);
begin
  calendardialog1.Execute;
end;

procedure TNMJMainForm.btnnewstuClick(Sender: TObject);
begin
  frmaddstu.Show;
end;

procedure TNMJMainForm.btnsearchClick(Sender: TObject);
begin
  frmsearch.Show;
end;

procedure TNMJMainForm.btnviewClick(Sender: TObject);
begin
  frmview.Show;
end;

procedure TNMJMainForm.Button1Click(Sender: TObject);
begin
  frmview.show;
end;

procedure TNMJMainForm.Button2Click(Sender: TObject);
begin
   frmview.frreport1.LoadFromFile('C:\Users\Yacoob_19\Desktop\madressa project\madressa Source code\reports\student report.lrf');
frmview.frreport1.ShowReport;
end;

procedure TNMJMainForm.Button3Click(Sender: TObject);
var sqlq:string;
begin
         sqlquery2.close;
         sqlq:='SELECT STU_CODE AS CODE,STU_SURNAME AS SURNAME,STU_FIRSTNAME AS NAME,ER_CONTACTNAME AS ER_NAME,ER_CONTACTNO AS ER_NUM FROM STUDENT WHERE STU_SURNAME ='''+edit1.Text+''';';
         sqlquery2.SQL.Text:=sqlq;
         sqlquery2.Open;
         sqlquery2.ExecSQL;
         datasource2.DataSet:=sqlquery1;
         button1.Refresh;
end;

procedure TNMJMainForm.FormActivate(Sender: TObject);
begin


  sqlquery1.ApplyUpdates();
  sqlquery1.Refresh;
  frmaddstu.SQLQuery1.ApplyUpdates();
  frmaddstu.SQLQuery1.Refresh;
  frmsearch.SQLQuery1.ApplyUpdates();
  frmsearch.SQLQuery1.Refresh;
end;

procedure TNMJMainForm.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  sqlquery1.ApplyUpdates();

  sqltransaction1.Commit;
end;

procedure TNMJMainForm.FormCreate(Sender: TObject);
var num:integer;
begin


  num:=sqlquery1.RecordCount;
  label2.Caption:='Number Of Student :'+InttoStr(num);
  sqlquery1.Refresh;

end;

procedure TNMJMainForm.frDBDataSetMCheckEOF(Sender: TObject; var Eof: Boolean);
begin

end;

procedure TNMJMainForm.FrPrintGrid1GetValue(const ParName: String;
  var ParValue: Variant);
begin

end;

end.

