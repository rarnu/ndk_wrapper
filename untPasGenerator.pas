unit untPasGenerator;

{$mode objfpc}{$H+}

interface

uses
  classes, sysutils, untJavaClass, untGeneratorIntf;

type
  TPasGenerator = class(TInterfacedObject, ICodeGenerator)
  public
    function GenerateHeader(AJavaClass: TJavaClass): string;
    function Generate(AJavaClass: TJavaClass): string;
  end;

implementation

uses
  StrUtils;

function TPasGenerator.GenerateHeader(AJavaClass: TJavaClass): string;
begin
  Exit('');
end;

function TPasGenerator.Generate(AJavaClass: TJavaClass): string;
var
  sl: TStringList;
  strField: string = '';
  strProperty: string = '';
  strPropertyImpl: string = '';
  i: Integer;
  tmpMethod: string;
  tmpMethodImpl: string;
begin
  // generate pas code
  sl := TStringList.Create;
  sl.Add('unit _' + AJavaClass.JavaClassName + '_;');
  sl.Add('{$mode objfpc}{$H+}');
  sl.Add('interface');
  sl.Add('uses classes, sysutils, jni2{$uses$};');
  sl.Add('type');
  sl.Add('  T' + AJavaClass.JavaClassName + ' = class');
  sl.Add('  private');
  sl.Add('    FEnv: PJNIEnv;');
  sl.Add('    FOrigin: jobject;');
  sl.Add('    FClsDef: jclass;');
  sl.Add('{$propertyfield$}');
  sl.Add('  public');
  sl.Add('    constructor Create(AEnv:PJNIEnv; AOrigin: jobject);');
  sl.Add('    destructor Destroy; override;');
  sl.Add('    function This(): T' + AJavaClass.JavaClassName + ';');
  sl.Add('{$methodhead$}');
  sl.Add('{$propertyhead$}');
  sl.Add('  end;');
  sl.Add('implementation');
  sl.Add('constructor T' + AJavaClass.JavaClassName + '.Create(AEnv: PJNIEnv; AOrigin: jobject);');
  sl.Add('begin');
  sl.Add('  FEnv:= AEnv;');
  sl.Add('  FOrigin:= AOrigin;');
  sl.Add('  FClsDef:= FEnv^^.FindClass(FEnv, ''' + AJavaClass.JavaPackageName.replace('.', '/', [rfIgnoreCase, rfReplaceAll]) + '/' + AJavaClass.JavaClassName + ''');');
  sl.Add('end;');
  sl.Add('destructor T' + AJavaClass.JavaClassName + '.Destroy;');
  sl.Add('begin');
  sl.Add('  FEnv^^.DeleteLocalRef(FEnv, FClsDef);');
  sl.Add('  if Assigned(FOrigin) then FEnv^^.DeleteLocalRef(FEnv, FOrigin);');
  sl.Add('  inherited Destroy;');
  sl.Add('end;');
  sl.Add('function T' + AJavaClass.JavaClassName + '.This(): T' + AJavaClass.JavaClassName + ';');
  sl.Add('begin');
  sl.Add('  Exit(FOrigin);');
  sl.Add('end;');
  sl.Add('{$methodimp$}');
  sl.Add('{$propertyimpl$}');
  sl.Add('end.');

  // fields
  if (AJavaClass.Fields <> nil) then begin
    for i := 0 to AJavaClass.Fields.Count - 1 do begin
      strField += Format('    function Get%s(): %s;  %s'#13#10'    procedure Set%s(AValue: %s);  %s'#13#10, [
        AJavaClass.Fields[i].FieldName, TPasGenerateUtils.TypeToStr(AJavaClass.Fields[i].FieldType), IfThen(AJavaClass.Fields[i].IsStatic, '// static', ''),
        AJavaClass.Fields[i].FieldName, TPasGenerateUtils.TypeToStr(AJavaClass.Fields[i].FieldType), IfThen(AJavaClass.Fields[i].IsStatic, '// static', '')]);
      strProperty += Format('    property %s: %s read Get%s write Set%s;  %s'#13#10, [
         AJavaClass.Fields[i].FieldName, TPasGenerateUtils.TypeToStr(AJavaClass.Fields[i].FieldType),
         AJavaClass.Fields[i].FieldName, AJavaClass.Fields[i].FieldName,
         IfThen(AJavaClass.Fields[i].IsStatic, '// static', '')]);
      strPropertyImpl += TPasGenerateUtils.FieldToGet(AJavaClass, AJavaClass.Fields[i]) + TPasGenerateUtils.FieldToSet(AJavaClass, AJavaClass.Fields[i]);
    end;
  end;
  sl.Text := sl.Text.Replace('{$propertyfield$}', '    ' + strField.Trim);
  sl.Text := sl.Text.Replace('{$propertyhead$}', '    ' + strProperty.Trim);
  sl.Text := sl.Text.replace('{$propertyimpl$}', strPropertyImpl.Trim);

  // methods
  if (AJavaClass.Methods <> nil) then begin
    for i := 0 to AJavaClass.Methods.Count - 1 do begin
      tmpMethod += TPasGenerateUtils.MethodHeadToStr(AJavaClass.Methods[i]);
      tmpMethodImpl += TPasGenerateUtils.MethodImplToStr(AJavaClass, AJavaClass.Methods[i]);
    end;
  end;

  sl.Text := sl.Text.Replace('{$methodhead$}', '    ' + tmpMethod.Trim);
  sl.Text := sl.Text.Replace('{$methodimp$}', tmpMethodImpl.Trim);

  Result := sl.Text;
  sl.Free;
end;

end.