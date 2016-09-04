program madressaProv1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2, printer4lazarus, Unit4, Unit6, Unit5, Unit7;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TNMJMainForm, NMJMainForm);
  Application.CreateForm(Tfrmaddstu, frmaddstu);
  Application.CreateForm(Tfrmsearch, frmsearch);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrmview, frmview);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.


