unit untJavaLang;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function FindRegularSig(Atype: string): string;

function FindLangObjectSig(AType: string): string;

implementation

function FindRegularSig(Atype: string): string;
var
  isArray: Boolean;
  ATmp: string;
begin
  Result := '';
  isArray:= Atype.Contains('[');
  if (isArray) then begin
    ATmp:= Atype.Substring(0, Atype.IndexOf('[')).Trim;
  end else begin
    ATmp:= Atype.Trim;
  end;
  if (ATmp = 'boolean') then Result := 'Z';
  if (ATmp = 'byte') then Result := 'B';
  if (ATmp = 'char') then Result := 'C';
  if (ATmp = 'short') then Result := 'S';
  if (ATmp = 'int') then Result := 'I';
  if (ATmp = 'long') then Result := 'J';
  if (ATmp = 'float') then Result := 'F';
  if (ATmp = 'double') then Result := 'D';
  if (isArray) and (Result <> '') then Result := '['+Result;
end;

function FindLangObjectSig(AType: string): string;
const
  CLASS_LIST: array[0..41] of string = (
    'Appendable', 'AutoCloseable', 'CharSequence', 'Cloneable', 'Comparable', 'Iterable', 'Readable', 'Runnable', // interfaces
    'Boolean', 'Byte', 'Character', 'Class', 'ClassLoader', 'ClassValue', 'Compiler', 'Double', 'Enum', 'Float', 'InheritableThreadLocal', 'Integer', 'Long',
    'Math', 'Number', 'Object', 'Package', 'Process', 'ProcessBuilder', 'Runtime', 'RuntimePermission', 'SecurityManager', 'Short', 'StackTraceElement',
    'StrictMath', 'String', 'StringBuffer', 'StringBuilder', 'System', 'Thread', 'ThreadGroup', 'ThreadLocal', 'Throwable', 'Void');
var
  isArray: Boolean;
  ATmp: string;
  i: Integer;
begin
  Result := '';
  isArray:= Atype.Contains('[');
  if (isArray) then begin
    ATmp:= Atype.Substring(0, Atype.IndexOf('[') - 1).Trim;
  end else begin
    ATmp:= Atype.Trim;
  end;
  for i := 0 to Length(CLASS_LIST) - 1 do begin
    if (ATmp = CLASS_LIST[i]) then begin
      Result := 'Ljava/lang/' + CLASS_LIST[i] + ';';
      Break;
    end;
  end;
  if (isArray) and (Result <> '') then Result := '['+Result;
end;

end.

