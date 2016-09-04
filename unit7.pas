unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Memo1: TMemo;
    procedure Memo1Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.PageControl1Change(Sender: TObject);
begin

end;

procedure TForm2.Memo1Change(Sender: TObject);
begin

end;

end.

