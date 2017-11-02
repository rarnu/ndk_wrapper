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
  // write help
  WriteLn('usage: ndkw <language> <java file>'#13#10#13#10'language: can be pas/c'#13#10#13#10'sample:'#13#10'    ndkw pas ./Context.java'#13#10'    ndkw c ./Context.java'#13#10);
end;

var
  AJavaClass: TJavaClass;
  ALanguage: string;
  AFileName: string;
  AOutCode: string;
  AOutFile: string;
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
    AOutCode := AGenerator.Generate(AJavaClass);
    AOutFile := '_' + ChangeFileExt(AFileName, '_.pas');
    with TStringList.Create do begin
      Text := AOutCode;
      SaveToFile(AOutFile);
      Free;
    end;
  end else if (ALanguage = 'cpp') then begin
    AGenerator := TCGenerator.Create;
    AOutCode := AGenerator.GenerateHeader(AJavaClass);
    AOutFile := '_' + ChangeFileExt(AFileName, '_.h');
    with TStringList.Create do begin
      Text := AOutCode;
      SaveToFile(AOutFile);
      Free;
    end;
    AOutCode := AGenerator.Generate(AJavaClass);
    AOutFile := '_' + ChangeFileExt(AFileName, '_.cpp');
    with TStringList.Create do begin
      Text := AOutCode;
      SaveToFile(AOutFile);
      Free;
    end;
  end;

  AJavaClass.Free;
end.

