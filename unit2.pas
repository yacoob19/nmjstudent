unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DbCtrls, ComCtrls, DBGrids,Unit3;

type

  { Tfrmaddstu }

  Tfrmaddstu = class(TForm)
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
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Mother: TGroupBox;
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
    lblfsurname1: TLabel;
    lblmainmemname: TLabel;
    lblmedicalaidnum: TLabel;
    lblmedicalaidscheme: TLabel;
    lblmedicalaidname: TLabel;
    lblcurrentgrade: TLabel;
    lblhomelang: TLabel;
    lblDOB: TLabel;
    lblfamilydocno: TLabel;
    lblfamdocname: TLabel;
    lblidno: TLabel;
    lblGender: TLabel;
    lblmiddlename: TLabel;
    lblfname: TLabel;
    lblsurname: TLabel;
    lblCode: TLabel;
    SQLQuery1: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
    procedure GroupBox5Click(Sender: TObject);
    procedure GroupBox7Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmaddstu: Tfrmaddstu;

implementation

{$R *.lfm}

{ Tfrmaddstu }


procedure Tfrmaddstu.Button1Click(Sender: TObject);
begin

end;

procedure Tfrmaddstu.Button2Click(Sender: TObject);
begin
  frmaddstu.Close;


end;

procedure Tfrmaddstu.FormActivate(Sender: TObject);
begin


     ShowMessage('Please click on the "+" button to create a new student record and click the tick button when you are done.');
end;

procedure Tfrmaddstu.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

sqlquery1.ApplyUpdates();
  sqlquery1.refresh;


end;

procedure Tfrmaddstu.FormCreate(Sender: TObject);
begin


  frmaddstu.Color:=clHighlightText;

end;

procedure Tfrmaddstu.GroupBox1Click(Sender: TObject);
begin

end;

procedure Tfrmaddstu.GroupBox2Click(Sender: TObject);
begin

end;

procedure Tfrmaddstu.GroupBox5Click(Sender: TObject);
begin

end;

procedure Tfrmaddstu.GroupBox7Click(Sender: TObject);
begin

end;

procedure Tfrmaddstu.Label13Click(Sender: TObject);
begin

  end;

end.






