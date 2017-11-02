unit untGeneratorIntf;

{$mode objfpc}{$H+}

interface

uses
  classes, sysutils, untJavaClass;

type
  ICodeGenerator = interface
  function Generate(AJavaClass: TJavaClass): string;
  function GenerateHeader(AJavaClass: TJavaClass): string;
  end;

  TPasGenerateUtils = class
  public
    class function TypeToStr(AType: TJavaType): string;
    class function FieldToGet(AJavaClass: TJavaClass; AField: TJavaField): string;
    class function FieldToSet(AJavaClass: TJavaClass; AField: TJavaField): string;
    class function MethodHeadToStr(AMethod: TJavaMethod): string;
    class function MethodImplToStr(AJavaClass: TJavaClass; AMethod: TJavaMethod): string;
  end;

implementation

class function TPasGenerateUtils.TypeToStr(AType: TJavaType): string;
var
  ATypeStr: string;
  ret: string = '';

  function SigToClassName(ASig: string): string;
  var
    AArr: TStringArray;
    ret: string;
  begin
    ASig := ASig.Replace(';', '');
    AArr := ASig.Split('/');
    ret := AArr[Length(AArr) - 1];
    if (ret.Contains('<')) then begin
      ret := ret.subString(0, ret.IndexOf('<'));
    end;
    Exit(ret);
  end;

begin
  ATypeStr := AType.TypeSig;
  if (ATypeStr.StartsWith('[')) or (ATypeStr.Contains('...')) then begin
    ATypeStr := ATypeStr.Replace('[', '').Replace(']', '').Replace('...', '');
    if (ATypeStr = 'Z') then ret := 'TBooleanArray'
    else if (ATypeStr = 'B') then ret := 'TByteArray'
    else if (ATypeStr = 'C') then ret := 'TCharArray'
    else if (ATypeStr = 'S') then ret := 'TShortArray'
    else if (ATypeStr = 'I') then ret := 'TIntArray'
    else if (ATypeStr = 'J') then ret := 'TInt64Array'
    else if (ATypeStr = 'F') then ret := 'TExtendedArray'
    else if (ATypeStr = 'D') then ret := 'TDoubleArray'
    else if (ATypeStr = 'Ljava/lang/String;') then ret := 'TStringArray'
    else ret := 'T' + SigToClassName(ATypeStr) + 'Array';
  end else begin
    if (ATypeStr = 'Z') then ret := 'Boolean'
    else if (ATypeStr = 'B') then ret := 'Byte'
    else if (ATypeStr = 'C') then ret := 'Char'
    else if (ATypeStr = 'S') then ret := 'ShortInt'
    else if (ATypeStr = 'I') then ret := 'Integer'
    else if (ATypeStr = 'J') then ret := 'Int64'
    else if (ATypeStr = 'F') then ret := 'Extended'
    else if (ATypeStr = 'D') then ret := 'Double'
    else if (ATypeStr = 'Ljava/lang/String;') then ret := 'String'
    else ret := 'T' + SigToClassName(ATypeStr);
  end;
  Exit(ret);
end;

class function TPasGenerateUtils.FieldToGet(AJavaClass: TJavaClass; AField: TJavaField): string;
begin
  Result := 'function T' + AJavaClass.JavaClassName + '.Get' + AField.FieldName + '(): ' + TypeToStr(AField.FieldType) + ';';
  if (AField.IsStatic) then Result += '  // static';
  Result += #13#10;
  Result += 'var'#13#10;
  Result += '  f: jfieldID;'#13#10;
  if (AField.FieldType.IsArray) then begin
    Result += '  i: Integer;'#13#10'  size: Integer;'#13#10'  arr: jarray;'#13#10;
  end; 

  Result += 'begin'#13#10;
  Result += '  f := FEnv^^.GetFieldID(FEnv, FClsDef, ''' + AField.FieldName + ''', ''' + AField.FieldType.TypeSig + ''');'#13#10;
  if (AField.FieldType.IsRegular) then begin
    // TODO: regular type
    if (AField.IsStatic) then begin
      if (AField.FieldType.IsArray) then begin
        // TODO: array
        
      end else begin
        if (AField.FieldType.TypeSig = 'Z') then Result += '  Exit(FEnv^^.GetStaticBooleanField(FEnv, FClsDef, f) = JNI_TRUE);'#13#10;
        if (AField.FieldType.TypeSig = 'B') then Result += '  Exit(FEnv^^.GetStaticByteField(FEnv, FClsDef, f));'#13#10;
        if (AField.FieldType.TypeSig = 'C') then Result += '  Exit(Chr(FEnv^^.GetStaticCharField(FEnv, FClsDef, f));'#13#10;
        if (AField.FieldType.TypeSig = 'S') then Result += '  Exit(FEnv^^.GetStaticShortField(FEnv, FClsDef, f));'#13#10;
        if (AField.FieldType.TypeSig = 'I') then Result += '  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));'#13#10;
        if (AField.FieldType.TypeSig = 'J') then Result += '  Exit(FEnv^^.GetStaticLongField(FEnv, FClsDef, f));'#13#10;
        if (AField.FieldType.TypeSig = 'F') then Result += '  Exit(FEnv^^.GetStaticFloatField(FEnv, FClsDef, f));'#13#10;
        if (AField.FieldType.TypeSig = 'D') then Result += '  Exit(FEnv^^.GetStaticDoubleField(FEnv, FClsDef, f));'#13#10;
      end;
    end else begin
      if (AField.FieldType.IsArray) then begin
        // TODO: array
      end else begin
        if (AField.FieldType.TypeSig = 'Z') then Result += '  Exit(FEnv^^.GetBooleanField(FEnv, FOrigin, f) = JNI_TRUE);'#13#10;
        if (AField.FieldType.TypeSig = 'B') then Result += '  Exit(FEnv^^.GetByteField(FEnv, FOrigin, f));'#13#10;
        if (AField.FieldType.TypeSig = 'C') then Result += '  Exit(Chr(FEnv^^.GetCharField(FEnv, FOrigin, f));'#13#10;
        if (AField.FieldType.TypeSig = 'S') then Result += '  Exit(FEnv^^.GetShortField(FEnv, FOrigin, f));'#13#10;
        if (AField.FieldType.TypeSig = 'I') then Result += '  Exit(FEnv^^.GetIntField(FEnv, FOrigin, f));'#13#10;
        if (AField.FieldType.TypeSig = 'J') then Result += '  Exit(FEnv^^.GetLongField(FEnv, FOrigin, f));'#13#10;
        if (AField.FieldType.TypeSig = 'F') then Result += '  Exit(FEnv^^.GetFloatField(FEnv, FOrigin, f));'#13#10;
        if (AField.FieldType.TypeSig = 'D') then Result += '  Exit(FEnv^^.GetDoubleField(FEnv, FOrigin, f));'#13#10;
      end;
    end;
  end else begin
    if (AField.FieldType.TypeSig = 'Ljava/lang/String;') then begin
      // string type
      if (AField.IsStatic) then begin
        if (AField.FieldType.IsArray) then begin
          // array
          Result += '  arr := FEnv^^.GetStaticObjectField(FEnv, FClsDef, f);'#13#10;
          Result += '  size := FEnv^^.GetArrayLength(FEnv, arr);'#13#10;
          Result += '  SetLength(Result, size);'#13#10;
          Result += '  for i := 0 to size - 1 do begin'#13#10;
          Result += '    Result[i] := TJNIEnv.JStringToString(FEnv, FEnv^^.GetObjectArrayElement(FEnv, arr, i));'#13#10;
          Result += '  end;'#13#10;
        end else begin
          Result += '  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));'#13#10;
        end;
      end else begin
        if (AField.FieldType.IsArray) then begin
          // array
          Result += '  arr := FEnv^^.GetObjectField(FEnv, FOrigin, f);'#13#10;
          Result += '  size := FEnv^^.GetArrayLength(FEnv, arr);'#13#10;
          Result += '  SetLength(Result, size);'#13#10;
          Result += '  for i := 0 to size - 1 do begin'#13#10;
          Result += '    Result[i] := TJNIEnv.JStringToString(FEnv, FEnv^^.GetObjectArrayElement(FEnv, arr, i));'#13#10;
          Result += '  end;'#13#10;
        end else begin
          Result += '  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetObjectField(FEnv, FOrigin, f)));'#13#10;
        end;
      end;
    end else begin
      // other object type
      if (AField.IsStatic) then begin
        if (AField.FieldType.IsArray) then begin
          // array
          Result += '  arr := FEnv^^.GetStaticObjectField(FEnv, FClsDef, f);'#13#10;
          Result += '  size := FEnv^^.GetArrayLength(FEnv, arr);'#13#10;
          Result += '  SetLength(Result, size);'#13#10;
          Result += '  for i := 0 to size - 1 do begin' #13#10;
          Result += '    Result[i] := T' + TypeToStr(AField.FieldType) + '.Create(FEnv, FEnv^^.GetObjectArrayElement(FEnv, arr, i));'#13#10;
          Result += '  end;'#13#10;
        end else begin
          Result += '  Exit(T' + TypeToStr(AField.FieldType) + '.Create(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));'#13#10;
        end;
      end else begin
        if (AField.FieldType.IsArray) then begin
          // array
          Result += '  arr := FEnv^^.GetObjectField(FEnv, FOrigin, f);'#13#10;
          Result += '  size := FEnv^^.GetArrayLength(FEnv, arr);'#13#10;
          Result += '  SetLength(Result, size);'#13#10;
          Result += '  for i := 0 to size - 1 do begin' #13#10;
          Result += '    Result[i] := T' + TypeToStr(AField.FieldType) + '.Create(FEnv, FEnv^^.GetObjectArrayElement(FEnv, arr, i));'#13#10;
          Result += '  end;'#13#10;
        end else begin
          Result += '  Exit(T' + TypeToStr(AField.FieldType) + '.Create(FEnv, FEnv^^.GetObjectField(FEnv, FOrigin, f)));'#13#10;
        end;
      end;;
    end;;
  end;;
  Result += 'end;'#13#10;
end;
    
class function TPasGenerateUtils.FieldToSet(AJavaClass: TJavaClass; AField: TJavaField): string;
begin
  Result := 'procedure T' + AJavaClass.JavaClassName + '.Set' + AField.FieldName + '(AValue: ' + TypeToStr(AField.FieldType) + ');';
  if (AField.IsStatic) then Result += '  // static';
  Result += #13#10;
  Result += 'var'#13#10;
  Result += '  f: jfieldID;'#13#10;
  if (AField.FieldType.IsArray) then begin
    Result += '  i: Integer;'#13#10'  size: Integer;'#13#10'  arr: jarray;'#13#10;
    if (AField.FieldType.TypeSig = 'Ljava/lang/String;') then begin
      Result += '  tmpStr: jstring;'#13#10;
    end;
  end;
  if (AField.FieldType.TypeSig = 'Ljava/lang/String;') then Result += '  tmpStr: jstring;'#13#10;
  Result += 'begin'#13#10;
  Result += '  f := FEnv^^.GetFieldID(FEnv, FClsDef, ''' + AField.FieldName + ''', ''' + AField.FieldType.TypeSig + ''');'#13#10;
  if (AField.FieldType.IsRegular) then begin
    // TODO: regular type
    if (AField.IsStatic) then begin
      if (AField.FieldType.IsArray) then begin
        // TODO: array
      end else begin
        if (AField.FieldType.TypeSig = 'Z') then Result += '  FEnv^^.SetStaticBooleanField(FEnv, FClsDef, f, IfThen(AValue, JNI_TRUE, JNI_FALSE));'#13#10;
        if (AField.FieldType.TypeSig = 'B') then Result += '  FEnv^^.SetStaticByteField(FEnv, FClsDef, f, Avalue);'#13#10;
        if (AField.FieldType.TypeSig = 'C') then Result += '  FEnv^^.SetStaticCharField(FEnv, FClsDef, f, Ord(AValue));'#13#10;
        if (AField.FieldType.TypeSig = 'S') then Result += '  FEnv^^.SetStaticShortField(FEnv, FClsDef, f, AValue);'#13#10;
        if (AField.FieldType.TypeSig = 'I') then Result += '  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);'#13#10;
        if (AField.FieldType.TypeSig = 'J') then Result += '  FEnv^^.SetStaticLongField(FEnv, FClsDef, f, AValue);'#13#10;
        if (AField.FieldType.TypeSig = 'F') then Result += '  FEnv^^.SetStaticFloatField(FEnv, FClsDef, f, AValue);'#13#10;
        if (AField.FieldType.TypeSig = 'D') then Result += '  FEnv^^.SetStaticDoubleField(FEnv, FClsDef, f, AValue);'#13#10;
      end;
    end else begin
      if (AField.FieldType.IsArray) then begin
        // TODO: array
      end else begin
        if (AField.FieldType.TypeSig = 'Z') then Result += '  FEnv^^.SetBooleanField(FEnv, FOrigin, f, IfThen(AValue, JNI_TRUE, JNI_FALSE));'#13#10;
        if (AField.FieldType.TypeSig = 'B') then Result += '  FEnv^^.SetByteField(FEnv, FOrigin, f, Avalue);'#13#10;
        if (AField.FieldType.TypeSig = 'C') then Result += '  FEnv^^.SetCharField(FEnv, FOrigin, f, Ord(AValue));'#13#10;
        if (AField.FieldType.TypeSig = 'S') then Result += '  FEnv^^.SetShortField(FEnv, FOrigin, f, AValue);'#13#10;
        if (AField.FieldType.TypeSig = 'I') then Result += '  FEnv^^.SetIntField(FEnv, FOrigin, f, AValue);'#13#10;
        if (AField.FieldType.TypeSig = 'J') then Result += '  FEnv^^.SetLongField(FEnv, FOrigin, f, AValue);'#13#10;
        if (AField.FieldType.TypeSig = 'F') then Result += '  FEnv^^.SetFloatField(FEnv, FOrigin, f, AValue);'#13#10;
        if (AField.FieldType.TypeSig = 'D') then Result += '  FEnv^^.SetDoubleField(FEnv, FOrigin, f, AValue);'#13#10;
      end;
    end;;
  end else begin
    if (AField.FieldType.TypeSig = 'Ljava/lang/String;') then begin
      // string type
      if (AField.IsStatic) then begin
        if (AField.FieldType.IsArray) then begin
          // array
          Result += '  arr := FEnv^^.NewObjectArray(FEnv, Length(AValue), ''Ljava/lang/String;'', nil);'#13#10;
          Result += '  for i := 0 to Length(AValue) - 1 do begin'#13#10;
          Result += '    tmpStr := TJNIEnv.StringToJString(FEnv, AValue[i]);'#13#10;
          Result += '    FEnv^^.SetObjectArrayElement(FEnv, arr, i, tmpStr);'#13#10;
          Result += '    FEnv^^.DeleteLocalRef(FEnv, tmpStr);'#13#10;
          Result += '  end;'#13#10;
          Result += '  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, arr);'#13#10;
        end else begin
          Result += '  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)'#13#10;
          Result += '  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, tmpStr);'#13#10;
          Result += '  FEnv^^.DeleteLocalRef(FEnv, tmpStr);'#13#10;
        end;
      end else begin
        if (AField.FieldType.IsArray) then begin
          // array
          Result += '  arr := FEnv^^.NewObjectArray(FEnv, Length(AValue), ''Ljava/lang/String;'', nil);'#13#10;
          Result += '  for i := 0 to Length(AValue) - 1 do begin'#13#10;
          Result += '    tmpStr := TJNIEnv.StringToJString(FEnv, AValue[i]);'#13#10;
          Result += '    FEnv^^.SetObjectArrayElement(FEnv, arr, i, tmpStr);'#13#10;
          Result += '    FEnv^^.DeleteLocalRef(FEnv, tmpStr);'#13#10;
          Result += '  end;'#13#10;
          Result += '  FEnv^^.SetObjectField(FEnv, FOrigin, f, arr);'#13#10;
        end else begin
          Result += '  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)'#13#10;
          Result += '  FEnv^^.SetObjectField(FEnv, FOrigin, f, tmpStr);'#13#10;
          Result += '  FEnv^^.DeleteLocalRef(FEnv, tmpStr);'#13#10;
        end;
      end;;
    end else begin
      // other object type
      if (AField.IsStatic) then begin
        if (AField.FieldType.IsArray) then begin
          // array
          Result += '  arr := FEnv^^.NewObjectArray(FEnv, Length(AValue), ''' + AField.FieldType.TypeSig.Replace('[', '') + ''', nil);'#13#10;
          Result += '  for i := 0 to Length(AValue) - 1 do begin'#13#10;
          Result += '    FEnv^^.SetObjectArrayElement(FEnv, arr, i, AValue[i].This());'#13#10;
          Result += '  end;'#13#10;
          Result += '  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, arr);'#13#10;
        end else begin
          Result += '  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, AValue.This());'#13#10;
        end;
      end else begin
        if (AField.FieldType.IsArray) then begin
          // array
          Result += '  arr := FEnv^^.NewObjectArray(FEnv, Length(AValue), ''' + AField.FieldType.TypeSig.Replace('[', '') + ''', nil);'#13#10;
          Result += '  for i := 0 to Length(AValue) - 1 do begin'#13#10;
          Result += '    FEnv^^.SetObjectArrayElement(FEnv, arr, i, AValue[i].This());'#13#10;
          Result += '  end;'#13#10;
          Result += '  FEnv^^.SetObjectField(FEnv, FOrigin, f, arr);'#13#10;
        end else begin
          Result += '  FEnv^^.SetStaticObjectField(FEnv, FOrigin, f, AValue.This());'#13#10;
        end;
      end;;
    end;;
  end;;
  Result += 'end;'#13#10;
end;

class function TPasGenerateUtils.MethodHeadToStr(AMethod: TJavaMethod): string;
var
  i: Integer;
begin
  Result := '';
  if (AMethod.MethodReturn = nil) then Result += 'procedure '
  else Result += 'function ';
  Result += AMethod.MethodName + '(';
  if (AMethod.MethodParams <> nil) then begin
    for i := 0 to AMethod.MethodParams.Count - 1 do begin
      Result += Format('%s: %s; ', [AMethod.MethodParams[i].ParamName, TypeToStr(AMethod.MethodParams[i].ParamType)]);
    end;
  end;
  Result := Result.Trim.TrimRight([';']);
  Result += ')';
  if (AMethod.MethodReturn = nil) then Result += ';'
  else Result += ': ' + TypeToStr(AMethod.MethodReturn) + ';';
  if (AMethod.IsStatic) then Result += '  // static';
  if (AMethod.IsAbstract) then Result += '  // abstract';
  Result := '    ' + Result + #13#10;
end;

class function TPasGenerateUtils.MethodImplToStr(AJavaClass: TJavaClass; AMethod: TJavaMethod): string;
var
  i: Integer;
begin
  Result := '';
  if (AMethod.MethodReturn = nil) then Result += 'procedure '
  else Result += 'function ';
  Result += 'T' + AJavaClass.JavaClassName + '.' + AMethod.MethodName + '(';
  if (AMethod.MethodParams <> nil) then begin
    for i := 0 to AMethod.MethodParams.Count - 1 do begin
      Result += Format('%s: %s; ', [AMethod.MethodParams[i].ParamName, TypeToStr(AMethod.MethodParams[i].ParamType)]);
    end;
  end;
  Result := Result.Trim.TrimRight([';']);
  Result += ')';
  if (AMethod.MethodReturn = nil) then Result += ';'
  else Result += ': ' + TypeToStr(AMethod.MethodReturn) + ';';
  if (AMethod.IsStatic) then Result += '  // static';
  if (AMethod.IsAbstract) then Result += '  // abstract';
  Result += #13#10;
  Result += 'begin'#13#10;

  // TODO: generate method code

  Result += 'end;'#13#10;
end;

end.