unit untPrinter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, untJavaClass;

procedure printJavaClass(AJavaClass: TJavaClass);

implementation

function printStringList(AList: TStringList): string;
var
  i: Integer;
begin
  Result := '';
  if (AList <> nil) then begin
    for i := 0 to AList.Count - 1 do begin
      Result += Format('%s, ', [AList[i]]);
    end;
  end;
  Result := Result.Trim.TrimRight([',']);
end;

procedure printJavaClass(AJavaClass: TJavaClass);
var
  i, j: Integer;
begin
  WriteLn('Package: ' + AJavaClass.JavaPackageName);
  WriteLn('ClassName: ' + AJavaClass.JavaClassName);
  WriteLn('Extends: ' + AJavaClass.Extends);
  WriteLn('Implements: ' + printStringList(AJavaClass.Impls));
  if (AJavaClass.Fields <> nil) then begin
    for i := 0 to AJavaClass.Fields.Count - 1 do begin
      WriteLn(Format('    Field: %s[%s] (%s)', [AJavaClass.Fields[i].FieldName, BoolToStr(AJavaClass.Fields[i].IsStatic, True), AJavaClass.Fields[i].FieldType.TypeSig]));
    end;
  end;
  if (AJavaClass.Methods <> nil) then begin
    for i := 0 to AJavaClass.Methods.Count - 1 do begin
      WriteLn(Format('    Method: %s[%s]', [AJavaClass.Methods[i].MethodName, BoolToStr(AJavaClass.Methods[i].IsStatic, True)]));
      if (AJavaClass.Methods[i].MethodParams <> nil) then begin
        for j := 0 to AJavaClass.Methods[i].MethodParams.Count - 1 do begin
          WriteLn(Format('        Param: %s(%s)', [AJavaClass.Methods[i].MethodParams[j].ParamName, AJavaClass.Methods[i].MethodParams[j].ParamType.TypeSig]));
        end;
      end;
      if (AJavaClass.Methods[i].MethodReturn <> nil) then begin
        WriteLn(Format('        Return: %s', [AJavaClass.Methods[i].MethodReturn.TypeSig]));

      end;
    end;
  end;
end;

end.

