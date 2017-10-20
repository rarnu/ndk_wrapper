unit untJavaFormatter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

procedure FormatJavaCode(AFileName: string);

implementation

function IsMethod(ACode: string): Boolean;
var
  ATmp: string;
  hasQuote: Boolean;
  AArr: TStringArray;
begin
  Result := False;
  if (ACode.Trim.StartsWith('public ')) then begin
    ATmp:= ACode.Trim;
    hasQuote:= ATmp.Contains('(');
    ATmp:= ATmp.Substring(0, ATmp.IndexOf('('));
    AArr := ATmp.Split(' ');
    if (hasQuote) and (Length(AArr) >= 3) then Result := True;
  end;
end;

procedure FormatJavaCode(AFileName: string);
var
  sl: TStringList;
  outsl: TStringList;
  ATmp: string;
  ATmp2: string;
  idx: Integer = 0;
begin
  // format java code
  sl := TStringList.Create;
  sl.LoadFromFile(AFileName);
  outsl := TStringList.Create;

  while True do begin
    ATmp:= sl[idx];
    if (ATmp.Contains('public ')) and (ATmp.Contains(' class ')) then begin
      if (ATmp.Contains('{')) then begin
        outsl.Add(ATmp);
      end else begin
        ATmp2:= ATmp;
        while (not ATmp2.Contains('{')) do begin
          Inc(idx);
          ATmp2 += sl[idx].Trim;
        end;
        outsl.Add(ATmp2);
      end;
      Inc(idx);
      if (idx > sl.Count - 1) then Break;
      Continue;
    end;
    if (ATmp.Contains('public ')) and (ATmp.Contains(' interface ')) then begin
      if (ATmp.Contains('{')) then begin
        outsl.Add(ATmp);
      end else begin
        ATmp2:= ATmp;
        while (not ATmp2.Contains('{')) do begin
          Inc(idx);
          ATmp2 += sl[idx].Trim;
        end;
        outsl.Add(ATmp2);
      end;
      Inc(idx);
      if (idx > sl.Count - 1) then Break;
      Continue;
    end;

    if (IsMethod(ATmp)) then begin
      if (ATmp.Contains('{')) then begin
        outsl.Add(ATmp);
      end else begin
        ATmp2:= ATmp;
        while (not ATmp2.Contains('{')) do begin
          Inc(idx);
          ATmp2 += sl[idx].Trim;
        end;
        outsl.Add(ATmp2);
      end;
      Inc(idx);
      if (idx > sl.Count - 1) then Break;
      Continue;
    end;
    outsl.Add(ATmp);
    Inc(idx);
    if (idx > sl.Count - 1) then Break;
  end;

  outsl.SaveToFile(AFileName);
  outsl.Free;
  sl.Free;
end;

end.

