unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

  savedialog1.Execute;
   memo1.lines.SaveToFile(savedialog1.FileName);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  opendialog1.Execute;
  memo1.Lines.LoadFromFile(opendialog1.FileName);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  form1.Color:=clHighlightText;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

