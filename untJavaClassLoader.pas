unit untJavaClassLoader;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, untJavaClass;

procedure codeToJavaClass(ACode: string; AJavaClass: TJavaClass);

implementation

uses
  untJavaLang;

procedure FillJavaClassName(ACode: string; AJavaClass: TJavaClass);
var
  ATmp: string;
  AArr: TStringArray;
  s: string;
begin
  // public abstract class
  AJavaClass.IsAbstract:= ACode.Contains(' abstract ');
  AJavaClass.JavaClassName:= ACode.Substring(ACode.IndexOf(' class ') + 7).Replace('{', '').Trim;
  if (AJavaClass.JavaClassName.Contains(' extends ')) or (AJavaClass.JavaClassName.Contains(' implements ')) then begin
    // public abstract class  xx extends xxx implements xxx
    ATmp:= AJavaClass.JavaClassName;
    AJavaClass.JavaClassName:= AJavaClass.JavaClassName.Substring(0, AJavaClass.JavaClassName.IndexOf(' ')).Trim;
    ATmp:= ATmp.Substring(ATmp.IndexOf(' extends ') + 9).Trim;
    if (ATmp.Contains(' implements ')) then begin
      AJavaClass.Extends:= ATmp.Substring(0, ATmp.IndexOf(' '));
      if (AJavaClass.Impls = nil) then AJavaClass.Impls := TStringList.Create;
      AArr := ATmp.Substring(ATmp.IndexOf(' implements ') + 12).Trim.Split(',');
      for s in AArr do if (s.Trim <> '') then AJavaClass.Impls.Add(s.Trim);
    end else begin
      AJavaClass.Extends:= ATmp;
    end;
  end;
end;

procedure FillJavaInterfaceName(ACode: string; AJavaClass: TJavaClass);
var
  ATmp: string;
  AArr: TStringArray;
  s: string;
begin
  // public interface
  AJavaClass.IsAbstract:= True;
  AJavaClass.JavaClassName:= ACode.Substring(ACode.IndexOf(' interface ') + 7).Replace('{', '').Trim;
  if (AJavaClass.JavaClassName.Contains(' implements ')) then begin
    // public interface xx implements xxx
    ATmp:= AJavaClass.JavaClassName;
    AJavaClass.JavaClassName:= AJavaClass.JavaClassName.Substring(0, AJavaClass.JavaClassName.IndexOf(' ')).Trim;
    if (AJavaClass.Impls = nil) then AJavaClass.Impls := TStringList.Create;
    AArr := ATmp.Substring(ATmp.IndexOf(' implements ') + 12).Trim.Split(',');
    for s in AArr do if (s.Trim <> '') then AJavaClass.Impls.Add(s.Trim);
  end;
end;

function FindSig(AType: string; AImportList: TStringList; APkgName: string): TJavaType;
var
  sig: string;
  i: Integer;
  isArray: Boolean;
begin
  // find sig
  Result := TJavaType.Create;
  sig := FindRegularSig(AType);
  if (sig <> '') then begin
    Result.IsRegular:= True;
    Result.TypeSig:= sig;
    Exit;
  end;
  Result.IsRegular:= False;
  sig := FindLangObjectSig(AType);
  if (sig <> '') then begin
    Result.TypeSig:= sig;
    Exit;
  end;

  isArray:= AType.Contains('[');
  // find from import list
  for i := 0 to AImportList.Count - 1 do begin
    if (AImportList[i].EndsWith('.' + AType)) then begin
      Result.TypeSig:= 'L'+AImportList[i].Replace('.', '/', [rfIgnoreCase, rfReplaceAll]) + ';';
      if (isArray) then Result.TypeSig:= '[' + Result.TypeSig;
      Exit;
    end;
  end;

  // find from current package
  Result.TypeSig:= 'L' + APkgName.Replace('.', '/', [rfIgnoreCase, rfReplaceAll]) + '/' + AType + ';';
  if (isArray) then Result.TypeSig:= '[' + Result.TypeSig
end;

function IsField(ACode: string): Boolean;
var
  ATmp: string;
  AArr: TStringArray;
begin
  Result := False;
  if (ACode.Contains('@')) then Exit;
  // public static final int MODE_PRIVATE = 0x0000;
  if (ACode.Trim.StartsWith('public ')) then begin
    ATmp:= ACode.Trim;
    if (ATmp.Contains('=')) then ATmp:= ATmp.Substring(0, ATmp.IndexOf('=')).Trim;
    AArr := ATmp.Split(' ');
    if (not ATmp.Contains('(')) and (Length(AArr) >= 3) then Result := True;
  end;
end;

function IsMethod(ACode: string): Boolean;
begin
  if (ACode.Contains('@')) then Exit;
  // public abstract Looper getMainLooper();
end;

procedure FillField(ACode: string; APkgName: string; AJavaClass: TJavaClass; AImportList: TStringList);
var
  AField: TJavaField;
  ATmp: string = '';
  AArr: TStringArray;
  AType: string;
begin
  // fill field
  ACode:= ACode.Trim;
  if (AJavaClass.Fields = nil) then AJavaClass.Fields := TJavaFieldList.Create;
  // public static final int MODE_PRIVATE = 0x0000;
  AField := TJavaField.Create;
  if (ACode.Contains('=')) then begin
    ATmp:= ACode.Substring(0, ACode.IndexOf('=')).Trim;
  end else begin
    ATmp:= ACode.Trim.TrimRight([';']);
  end;
  AArr := ATmp.Split(' ');
  AField.IsStatic:= ATmp.Contains(' static ');
  AField.FieldName:= AArr[Length(AArr) - 1];
  AType:= AArr[Length(AArr) - 2];
  AField.FieldType := FindSig(AType, AImportList, APkgName);
  AJavaClass.Fields.Add(AField);
end;

procedure FillMethod(ACode: string; AJavaClass: TJavaClass);
begin
  // TODO: fill method
  if (AJavaClass.Methods = nil) then AJavaClass.Methods := TJavaMethodList.Create;

end;

procedure codeToJavaClass(ACode: string; AJavaClass: TJavaClass);
var
  sl: TStringList;
  importList: TStringList;
  i: Integer;
begin
  importList := TStringList.Create;
  // TODO: load
  sl := TStringList.Create;
  sl.Text:= ACode;
  for i := 0 to sl.Count - 1 do begin
    if (sl[i].StartsWith('package ')) then begin
      AJavaClass.JavaPackageName:= sl[i].Replace('package ', '').Replace(';', '').Trim;
      Continue;
    end;
    if (sl[i].StartsWith('import ')) then begin
      importList.Add(sl[i].Replace('import ', '').Replace(';', '').Trim);
      Continue;
    end;
    if (sl[i].Contains('public ')) and (sl[i].Contains(' class ')) then begin
      AJavaClass.IsInterface:= False;
      FillJavaClassName(sl[i], AJavaClass);
      Continue;
    end;
    if (sl[i].Contains('public ')) and (sl[i].Contains(' interface ')) then begin
      AJavaClass.IsInterface:= True;
      FillJavaInterfaceName(sl[i], AJavaClass);
      Continue;
    end;
    if (IsField(sl[i])) then begin
      FillField(sl[i], AJavaClass.JavaPackageName, AJavaClass, importList);
      Continue;
    end;
    if (IsMethod(sl[i])) then begin
      FillMethod(sl[i], AJavaClass);
    end;
  end;
  sl.Free;
  importList.Free;
end;


end.

