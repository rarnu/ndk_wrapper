program ndkw;

{$mode objfpc}{$H+}

uses
  {$IFNDEF WINDOWS}
  cthreads,
  {$ENDIF}
  Classes, sysutils, untJavaClass, untJavaClassLoader, untPrinter, untJavaLang,
  untJavaFormatter;

var
  AJavaClass: TJavaClass;
  AFileName: string;
begin
  AFileName:= ParamStr(1);
  if (AFileName.Trim = '') or (not FileExists(AFileName)) then Exit;
  FormatJavaCode(AFileName);
  AJavaClass := TJavaClass.Create;
  AJavaClass.LoadJavaFile(AFileName);
  printJavaClass(AJavaClass);
  AJavaClass.Free;
end.

