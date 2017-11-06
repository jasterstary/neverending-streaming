program longpolling; {$IFDEF FPC}{$mode objfpc}{$H+}{$ENDIF} {$APPTYPE CONSOLE}

uses
  sysutils,
  //Powtils aka Pascal Server Pages used: https://github.com/z505/powtils:
  pwinit,
  pwmain;

var i: integer;
begin
  Randomize;
  for i:=0 to 9 do
  begin
    out('<chunk>Hello ' + inttostr(i) + '!</chunk>');
    sleep(1000 * (Random(2)+1));
  end;
end.
