unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, FileUtil, LR_Class, LR_DBSet, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls, DBGrids, DbCtrls, unit2;

type

  { Tfrmsearch }

  Tfrmsearch = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblCode: TLabel;
    lblcurrentgrade: TLabel;
    lblDOB: TLabel;
    lblfamdocname: TLabel;
    lblfamilydocno: TLabel;
    lblfname: TLabel;
    lblfsurname1: TLabel;
    lblGender: TLabel;
    lblhomelang: TLabel;
    lblidno: TLabel;
    lblmainmemname: TLabel;
    lblmedicalaidname: TLabel;
    lblmedicalaidnum: TLabel;
    lblmedicalaidscheme: TLabel;
    lblmiddlename: TLabel;
    lblsurname: TLabel;
    Mother: TGroupBox;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1EditingDone(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmsearch: Tfrmsearch;

implementation

{$R *.lfm}

{ Tfrmsearch }

procedure Tfrmsearch.Button1Click(Sender: TObject);
var sqlq: string;
begin
            dbnavigator2.Enabled:=True;
            sqlquery1.close;
         sqlq:='SELECT * FROM STUDENT WHERE STU_SURNAME ='''+edit1.Text+''';';
         sqlquery1.SQL.Text:=sqlq;

         sqlquery1.Open;
         sqlquery1.ExecSQL;
           datasource1.DataSet:=sqlquery1;
           button1.Refresh;



end;

procedure Tfrmsearch.Button2Click(Sender: TObject);
begin



end;

procedure Tfrmsearch.Button3Click(Sender: TObject);
begin
  frreport1.LoadFromFile('C:\Users\Yacoob_19\Desktop\madressa project\madressa Source code\reports\single student report.lrf');
  frreport1.ShowReport;
end;

procedure Tfrmsearch.Button4Click(Sender: TObject);
begin
  sqlquery1.ApplyUpdates();
  sqlquery1.Refresh;
  ShowMessage('All changes made have been saved.');
end;

procedure Tfrmsearch.Edit1EditingDone(Sender: TObject);

begin

end;

procedure Tfrmsearch.FormActivate(Sender: TObject);
begin
  datasource1.dataset.ClearFields;
end;

procedure Tfrmsearch.FormCreate(Sender: TObject);
begin

  frmsearch.Color:=clHighlightText;


end;

end.

