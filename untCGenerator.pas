unit untCGenerator;

{$mode objfpc}{$H+}

interface

uses
  classes, sysutils, untJavaClass, untGeneratorIntf;

type
  TCGenerator = class(TInterfacedObject, ICodeGenerator)
  public
    function GenerateHeader(AJavaClass: TJavaClass): string;
    function Generate(AJavaClass: TJavaClass): string;
  end;

implementation

function TCGenerator.GenerateHeader(AJavaClass: TJavaClass): string;
begin
  // TODO: generate c code
  Exit('');
end;

function TCGenerator.Generate(AJavaClass: TJavaClass): string;
begin
  // TODO: generate C code
  // TODO: for dodola's work
  Exit('');
end;

end.