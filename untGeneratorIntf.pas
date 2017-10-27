unit untGeneratorIntf;

{$mode objfpc}{$H+}

interface

uses
  classes, sysutils, untJavaClass;

type
  ICodeGenerator = interface
  function Generate(AJavaClass: TJavaClass): string;
  procedure Free();
  end;

implementation

end.