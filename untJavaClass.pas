unit untJavaClass;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fgl;

type

  { TJavaType }

  TJavaType = class
  private
    FIsRegular: Boolean;
    FTypeSig: string;
  public
    constructor Create;
    constructor Create(ATypeSig: string; AIsRegular: Boolean);
    property TypeSig: string read FTypeSig write FTypeSig;
    property IsRegular: Boolean read FIsRegular write FIsRegular;
  end;

  { TJavaParam }

  TJavaParam = class
  private
    FParamName: string;
    FParamType: TJavaType;
  public
    constructor Create;
    constructor Create(AParamName: string; AParamType: TJavaType);
    destructor Destroy; override;
    property ParamName: string read FParamName write FParamName;
    property ParamType: TJavaType read FParamType write FParamType;
  end;

  TJavaParamList = specialize TFPGList<TJavaType>;

  { TJavaField }

  TJavaField = class
  private
    FFieldName: string;
    FFieldType: TJavaType;
    FIsStatic: Boolean;
  public
    constructor Create;
    constructor Create(AFieldName: string; AFieldType: TJavaType; AIsStatic: Boolean);
    destructor Destroy; override;
    property FieldName: string read FFieldName write FFieldName;
    property FieldType: TJavaType read FFieldType write FFieldType;
    property IsStatic: Boolean read FIsStatic write FIsStatic;
  end;

  TJavaFieldList = specialize TFPGList<TJavaField>;

  { TJavaMethod }

  TJavaMethod = class
  private
    FIsStatic: Boolean;
    FMethodName: string;
    FMethodParams: TJavaParamList;
    FMethodReturn: TJavaParam;
  public
    constructor Create;
    constructor Create(AMethodName: string; AMethodParams: TJavaParamList; AMethodReturn: TJavaParam; AIsStatic: Boolean);
    destructor Destroy; override;
    property MethodName: string read FMethodName write FMethodName;
    property MethodParams: TJavaParamList read FMethodParams write FMethodParams;
    property MethodReturn: TJavaParam read FMethodReturn write FMethodReturn;
    property IsStatic: Boolean read FIsStatic write FIsStatic;
  end;

  TJavaMethodList = specialize TFPGList<TJavaMethod>;

  { TJavaClass }

  TJavaClass = class
  private
    FExtends: string;
    FFields: TJavaFieldList;
    FImpls: string;
    FIsAbstract: Boolean;
    FIsInterface: Boolean;
    FJavaClassName: string;
    FJavaPackageName: string;
    FMethods: TJavaMethodList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure LoadJavaFile(AFileName: string);
    property JavaPackageName: string read FJavaPackageName write FJavaPackageName;
    property JavaClassName: string read FJavaClassName write FJavaClassName;
    property Extends: string read FExtends write FExtends;
    property Impls: string read FImpls write FImpls;
    property Methods: TJavaMethodList read FMethods write FMethods;
    property Fields: TJavaFieldList read FFields write FFields;
    property IsInterface: Boolean read FIsInterface write FIsInterface;
    property IsAbstract: Boolean read FIsAbstract write FIsAbstract;
  end;

implementation

uses
  untJavaClassLoader;

{ TJavaClass }

constructor TJavaClass.Create;
begin
  FExtends:= '';
  FFields:= nil;
  FImpls:= '';
  FIsAbstract:= False;;
  FIsInterface:= False;
  FJavaClassName:= '';
  FMethods:= nil;
  FJavaPackageName := '';
end;

destructor TJavaClass.Destroy;
var
  i: Integer;
begin
  if (Assigned(FFields)) then begin
    for i := FFields.Count - 1 downto 0 do FFields[i].Free;
    FFields.Free;
  end;
  if (Assigned(FMethods)) then begin
    for i := FMethods.Count - 1 downto 0 do FMethods[i].Free;
    FMethods.Free;
  end;
  inherited Destroy;
end;

procedure TJavaClass.LoadJavaFile(AFileName: string);
var
  ACode: string = '';
begin
  // load java class
  with TStringList.Create do begin
    LoadFromFile(AFileName);
    ACode:= Text;
    Free;
  end;
  codeToJavaClass(ACode, Self);
end;

{ TJavaMethod }

constructor TJavaMethod.Create;
begin
  FMethodName:= '';
  FMethodParams := nil;
  FMethodReturn := nil;
  FIsStatic:= False;
end;

constructor TJavaMethod.Create(AMethodName: string;
  AMethodParams: TJavaParamList; AMethodReturn: TJavaParam; AIsStatic: Boolean);
begin
  FMethodName:= AMethodName;
  FMethodParams := AMethodParams;
  FMethodReturn := AMethodReturn;
  FIsStatic:= AIsStatic;
end;

destructor TJavaMethod.Destroy;
var
  i: Integer;
begin
  if (Assigned(FMethodParams)) then begin
    for i := FMethodParams.Count - 1 downto 0 do FMethodParams[i].Free;
    FMethodParams.Free;
  end;
  if (Assigned(FMethodReturn)) then FMethodReturn.Free;
  inherited Destroy;
end;

{ TJavaField }

constructor TJavaField.Create;
begin
  FFieldName:= '';
  FFieldType:= nil;
  FIsStatic:= False;
end;

constructor TJavaField.Create(AFieldName: string; AFieldType: TJavaType;
  AIsStatic: Boolean);
begin
  FFieldName:= AFieldName;
  FFieldType:= AFieldType;
  FIsStatic:= AIsStatic;
end;

destructor TJavaField.Destroy;
begin
  if (Assigned(FFieldType)) then FFieldType.Free;
  inherited Destroy;
end;

{ TJavaParam }

constructor TJavaParam.Create;
begin
  FParamName:= '';
  FParamType:= nil;
end;

constructor TJavaParam.Create(AParamName: string; AParamType: TJavaType);
begin
  FParamName:= AParamName;
  FParamType := AParamType;
end;

destructor TJavaParam.Destroy;
begin
  if (Assigned(FParamType)) then FParamType.Free;
  inherited Destroy;
end;

{ TJavaType }

constructor TJavaType.Create;
begin
  FTypeSig:= '';
  FIsRegular:= True;
end;

constructor TJavaType.Create(ATypeSig: string; AIsRegular: Boolean);
begin
  FTypeSig:= ATypeSig;
  FIsRegular:= AIsRegular;
end;

end.

