unit untPasGenerator;

{$mode objfpc}{$H+}

interface

uses
  classes, sysutils, untJavaClass, untGeneratorIntf;

type
  TPasGenerator = class(TInterfacedObject, ICodeGenerator)
  public
    function Generate(AJavaClass: TJavaClass): string;
  end;

implementation

function TPasGenerator.Generate(AJavaClass: TJavaClass): string;
begin
  // TODO: generate pas code
  Exit('');
end;

end.