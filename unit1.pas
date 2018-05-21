unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
var f:textFile;
    sucet,pocet,cislo:integer;
    priemer:real;
begin
  assignFile(f,'cisla.txt');
  reset(f);
  sucet:=0;
  pocet:=0;
  while not eof(f)do
  begin
    readln(f,cislo);
    sucet:=sucet+cislo;
    inc(pocet);
  end;
  if pocet=0 then priemer:=0
             else priemer:=sucet/pocet;
  showmessage('Priemer čísel je '+floatTOstr(Round(priemer*100)/100))
end;

end.

