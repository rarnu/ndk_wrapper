program ndkw;

{$mode objfpc}{$H+}

uses
  {$IFNDEF WINDOWS}
  cthreads,
  {$ENDIF}
  Classes, sysutils, untJavaClass, untJavaClassLoader, untPrinter, untJavaLang;

var
  AJavaClass: TJavaClass;
begin
  AJavaClass := TJavaClass.Create;
  AJavaClass.LoadJavaFile(ParamStr(1));
  printJavaClass(AJavaClass);
  AJavaClass.Free;
end.

