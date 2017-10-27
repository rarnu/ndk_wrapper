program ndkw;

{$mode objfpc}{$H+}

uses
  {$IFNDEF WINDOWS}
  cthreads,
  {$ENDIF}
  Classes, sysutils, untJavaClass, untJavaClassLoader, untPrinter, untJavaLang,
  untJavaFormatter, untPasGenerator, untCGenerator, untGeneratorIntf;

procedure WriteHelp();
begin
  // TODO: write help
  WriteLn('usage: ndkw <language> <java file>'#13#10#13#10'language: can be pas/c'#13#10#13#10'sample:'#13#10'    ndkw pas ./Context.java'#13#10'    ndkw c ./Context.java'#13#10);
end;

var
  AJavaClass: TJavaClass;
  ALanguage: string;
  AFileName: string;
  AOutCode: string;
  AOutFile: string;
  AOutExt: string = '';
  AGenerator: ICodeGenerator = nil;
  
begin
  if (ParamCount <> 2) then begin
    WriteHelp();
    Exit;
  end;
  ALanguage := ParamStr(1);
  AFileName:= ParamStr(2);
  if (AFileName.Trim = '') or (not FileExists(AFileName)) then Exit;
  FormatJavaCode(AFileName);
  AJavaClass := TJavaClass.Create;
  AJavaClass.LoadJavaFile(AFileName);
  printJavaClass(AJavaClass);

  if (ALanguage = 'pas') then begin
    AGenerator := TPasGenerator.Create;
    AOutExt := '.pas';
  end else if (ALanguage = 'c') then begin
    AGenerator := TCGenerator.Create;
    AOutExt := '.c';
  end;

  if (AGenerator <> nil) then begin
    AOutCode := AGenerator.Generate(AJavaClass);
    AOutFile := ChangeFileExt(AFileName, AOutExt);
    with TStringList.Create do begin
      Text := AOutCode;
      SaveToFile(AOutFile);
      Free;
    end;
    AGenerator.Free;
  end;

  AJavaClass.Free;
end.

