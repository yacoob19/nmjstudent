unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, FileUtil, LR_Class, LR_DBSet, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls,unit2;

type

  { Tfrmview }

  Tfrmview = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    SQLQuery1: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmview: Tfrmview;

implementation

{$R *.lfm}

{ Tfrmview }

procedure Tfrmview.Button1Click(Sender: TObject);
begin
  frmaddstu.sqlquery1.applyupdates();
  frmaddstu.sqlquery1.refresh;
  sqlquery1.ApplyUpdates();
  sqlquery1.Refresh;
end;

procedure Tfrmview.Button2Click(Sender: TObject);
begin
  frreport1.LoadFromFile('C:\Users\Yacoob_19\Desktop\madressa project\madressa Source code\reports\student report.lrf');
frreport1.ShowReport;
end;

procedure Tfrmview.FormActivate(Sender: TObject);
begin

end;

procedure Tfrmview.FormCreate(Sender: TObject);
begin
 frmview.Color:=clHighlightText;

end;

end.

