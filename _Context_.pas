unit _Context_;
{$mode objfpc}{$H+}
interface
uses classes, sysutils, jni2{$uses$};
type
  TContext = class
  private
    FEnv: PJNIEnv;
    FOrigin: jobject;
    FClsDef: jclass;
    function GetFS(): TObject;  
    procedure SetFS(AValue: TObject);  
    function GetSamplefield(): TIntArray;  
    procedure SetSamplefield(AValue: TIntArray);  
    function GetMODE_PRIVATE(): Integer;  // static
    procedure SetMODE_PRIVATE(AValue: Integer);  // static
    function GetMODE_WORLD_READABLE(): Integer;  // static
    procedure SetMODE_WORLD_READABLE(AValue: Integer);  // static
    function GetMODE_WORLD_WRITEABLE(): Integer;  // static
    procedure SetMODE_WORLD_WRITEABLE(AValue: Integer);  // static
    function GetMODE_APPEND(): Integer;  // static
    procedure SetMODE_APPEND(AValue: Integer);  // static
    function GetMODE_MULTI_PROCESS(): Integer;  // static
    procedure SetMODE_MULTI_PROCESS(AValue: Integer);  // static
    function GetMODE_ENABLE_WRITE_AHEAD_LOGGING(): Integer;  // static
    procedure SetMODE_ENABLE_WRITE_AHEAD_LOGGING(AValue: Integer);  // static
    function GetMODE_NO_LOCALIZED_COLLATORS(): Integer;  // static
    procedure SetMODE_NO_LOCALIZED_COLLATORS(AValue: Integer);  // static
    function GetBIND_AUTO_CREATE(): Integer;  // static
    procedure SetBIND_AUTO_CREATE(AValue: Integer);  // static
    function GetBIND_DEBUG_UNBIND(): Integer;  // static
    procedure SetBIND_DEBUG_UNBIND(AValue: Integer);  // static
    function GetBIND_NOT_FOREGROUND(): Integer;  // static
    procedure SetBIND_NOT_FOREGROUND(AValue: Integer);  // static
    function GetBIND_ABOVE_CLIENT(): Integer;  // static
    procedure SetBIND_ABOVE_CLIENT(AValue: Integer);  // static
    function GetBIND_ALLOW_OOM_MANAGEMENT(): Integer;  // static
    procedure SetBIND_ALLOW_OOM_MANAGEMENT(AValue: Integer);  // static
    function GetBIND_WAIVE_PRIORITY(): Integer;  // static
    procedure SetBIND_WAIVE_PRIORITY(AValue: Integer);  // static
    function GetBIND_IMPORTANT(): Integer;  // static
    procedure SetBIND_IMPORTANT(AValue: Integer);  // static
    function GetBIND_ADJUST_WITH_ACTIVITY(): Integer;  // static
    procedure SetBIND_ADJUST_WITH_ACTIVITY(AValue: Integer);  // static
    function GetBIND_ALLOW_WHITELIST_MANAGEMENT(): Integer;  // static
    procedure SetBIND_ALLOW_WHITELIST_MANAGEMENT(AValue: Integer);  // static
    function GetBIND_FOREGROUND_SERVICE_WHILE_AWAKE(): Integer;  // static
    procedure SetBIND_FOREGROUND_SERVICE_WHILE_AWAKE(AValue: Integer);  // static
    function GetBIND_FOREGROUND_SERVICE(): Integer;  // static
    procedure SetBIND_FOREGROUND_SERVICE(AValue: Integer);  // static
    function GetBIND_TREAT_LIKE_ACTIVITY(): Integer;  // static
    procedure SetBIND_TREAT_LIKE_ACTIVITY(AValue: Integer);  // static
    function GetBIND_VISIBLE(): Integer;  // static
    procedure SetBIND_VISIBLE(AValue: Integer);  // static
    function GetBIND_SHOWING_UI(): Integer;  // static
    procedure SetBIND_SHOWING_UI(AValue: Integer);  // static
    function GetBIND_NOT_VISIBLE(): Integer;  // static
    procedure SetBIND_NOT_VISIBLE(AValue: Integer);  // static
    function GetBIND_EXTERNAL_SERVICE(): Integer;  // static
    procedure SetBIND_EXTERNAL_SERVICE(AValue: Integer);  // static
    function GetPOWER_SERVICE(): String;  // static
    procedure SetPOWER_SERVICE(AValue: String);  // static
    function GetRECOVERY_SERVICE(): String;  // static
    procedure SetRECOVERY_SERVICE(AValue: String);  // static
    function GetWINDOW_SERVICE(): String;  // static
    procedure SetWINDOW_SERVICE(AValue: String);  // static
    function GetLAYOUT_INFLATER_SERVICE(): String;  // static
    procedure SetLAYOUT_INFLATER_SERVICE(AValue: String);  // static
    function GetACCOUNT_SERVICE(): String;  // static
    procedure SetACCOUNT_SERVICE(AValue: String);  // static
    function GetACTIVITY_SERVICE(): String;  // static
    procedure SetACTIVITY_SERVICE(AValue: String);  // static
    function GetALARM_SERVICE(): String;  // static
    procedure SetALARM_SERVICE(AValue: String);  // static
    function GetNOTIFICATION_SERVICE(): String;  // static
    procedure SetNOTIFICATION_SERVICE(AValue: String);  // static
    function GetACCESSIBILITY_SERVICE(): String;  // static
    procedure SetACCESSIBILITY_SERVICE(AValue: String);  // static
    function GetCAPTIONING_SERVICE(): String;  // static
    procedure SetCAPTIONING_SERVICE(AValue: String);  // static
    function GetKEYGUARD_SERVICE(): String;  // static
    procedure SetKEYGUARD_SERVICE(AValue: String);  // static
    function GetLOCATION_SERVICE(): String;  // static
    procedure SetLOCATION_SERVICE(AValue: String);  // static
    function GetCOUNTRY_DETECTOR(): String;  // static
    procedure SetCOUNTRY_DETECTOR(AValue: String);  // static
    function GetSEARCH_SERVICE(): String;  // static
    procedure SetSEARCH_SERVICE(AValue: String);  // static
    function GetSENSOR_SERVICE(): String;  // static
    procedure SetSENSOR_SERVICE(AValue: String);  // static
    function GetSTORAGE_SERVICE(): String;  // static
    procedure SetSTORAGE_SERVICE(AValue: String);  // static
    function GetWALLPAPER_SERVICE(): String;  // static
    procedure SetWALLPAPER_SERVICE(AValue: String);  // static
    function GetVIBRATOR_SERVICE(): String;  // static
    procedure SetVIBRATOR_SERVICE(AValue: String);  // static
    function GetSTATUS_BAR_SERVICE(): String;  // static
    procedure SetSTATUS_BAR_SERVICE(AValue: String);  // static
    function GetCONNECTIVITY_SERVICE(): String;  // static
    procedure SetCONNECTIVITY_SERVICE(AValue: String);  // static
    function GetUPDATE_LOCK_SERVICE(): String;  // static
    procedure SetUPDATE_LOCK_SERVICE(AValue: String);  // static
    function GetNETWORKMANAGEMENT_SERVICE(): String;  // static
    procedure SetNETWORKMANAGEMENT_SERVICE(AValue: String);  // static
    function GetNETWORK_STATS_SERVICE(): String;  // static
    procedure SetNETWORK_STATS_SERVICE(AValue: String);  // static
    function GetNETWORK_POLICY_SERVICE(): String;  // static
    procedure SetNETWORK_POLICY_SERVICE(AValue: String);  // static
    function GetWIFI_SERVICE(): String;  // static
    procedure SetWIFI_SERVICE(AValue: String);  // static
    function GetWIFI_P2P_SERVICE(): String;  // static
    procedure SetWIFI_P2P_SERVICE(AValue: String);  // static
    function GetWIFI_NAN_SERVICE(): String;  // static
    procedure SetWIFI_NAN_SERVICE(AValue: String);  // static
    function GetWIFI_SCANNING_SERVICE(): String;  // static
    procedure SetWIFI_SCANNING_SERVICE(AValue: String);  // static
    function GetWIFI_RTT_SERVICE(): String;  // static
    procedure SetWIFI_RTT_SERVICE(AValue: String);  // static
    function GetETHERNET_SERVICE(): String;  // static
    procedure SetETHERNET_SERVICE(AValue: String);  // static
    function GetNSD_SERVICE(): String;  // static
    procedure SetNSD_SERVICE(AValue: String);  // static
    function GetAUDIO_SERVICE(): String;  // static
    procedure SetAUDIO_SERVICE(AValue: String);  // static
    function GetFINGERPRINT_SERVICE(): String;  // static
    procedure SetFINGERPRINT_SERVICE(AValue: String);  // static
    function GetMEDIA_ROUTER_SERVICE(): String;  // static
    procedure SetMEDIA_ROUTER_SERVICE(AValue: String);  // static
    function GetMEDIA_SESSION_SERVICE(): String;  // static
    procedure SetMEDIA_SESSION_SERVICE(AValue: String);  // static
    function GetTELEPHONY_SERVICE(): String;  // static
    procedure SetTELEPHONY_SERVICE(AValue: String);  // static
    function GetTELEPHONY_SUBSCRIPTION_SERVICE(): String;  // static
    procedure SetTELEPHONY_SUBSCRIPTION_SERVICE(AValue: String);  // static
    function GetTELECOM_SERVICE(): String;  // static
    procedure SetTELECOM_SERVICE(AValue: String);  // static
    function GetCARRIER_CONFIG_SERVICE(): String;  // static
    procedure SetCARRIER_CONFIG_SERVICE(AValue: String);  // static
    function GetCLIPBOARD_SERVICE(): String;  // static
    procedure SetCLIPBOARD_SERVICE(AValue: String);  // static
    function GetINPUT_METHOD_SERVICE(): String;  // static
    procedure SetINPUT_METHOD_SERVICE(AValue: String);  // static
    function GetTEXT_SERVICES_MANAGER_SERVICE(): String;  // static
    procedure SetTEXT_SERVICES_MANAGER_SERVICE(AValue: String);  // static
    function GetAPPWIDGET_SERVICE(): String;  // static
    procedure SetAPPWIDGET_SERVICE(AValue: String);  // static
    function GetVOICE_INTERACTION_MANAGER_SERVICE(): String;  // static
    procedure SetVOICE_INTERACTION_MANAGER_SERVICE(AValue: String);  // static
    function GetSOUND_TRIGGER_SERVICE(): String;  // static
    procedure SetSOUND_TRIGGER_SERVICE(AValue: String);  // static
    function GetBACKUP_SERVICE(): String;  // static
    procedure SetBACKUP_SERVICE(AValue: String);  // static
    function GetDROPBOX_SERVICE(): String;  // static
    procedure SetDROPBOX_SERVICE(AValue: String);  // static
    function GetDEVICE_IDLE_CONTROLLER(): String;  // static
    procedure SetDEVICE_IDLE_CONTROLLER(AValue: String);  // static
    function GetDEVICE_POLICY_SERVICE(): String;  // static
    procedure SetDEVICE_POLICY_SERVICE(AValue: String);  // static
    function GetUI_MODE_SERVICE(): String;  // static
    procedure SetUI_MODE_SERVICE(AValue: String);  // static
    function GetDOWNLOAD_SERVICE(): String;  // static
    procedure SetDOWNLOAD_SERVICE(AValue: String);  // static
    function GetBATTERY_SERVICE(): String;  // static
    procedure SetBATTERY_SERVICE(AValue: String);  // static
    function GetNFC_SERVICE(): String;  // static
    procedure SetNFC_SERVICE(AValue: String);  // static
    function GetBLUETOOTH_SERVICE(): String;  // static
    procedure SetBLUETOOTH_SERVICE(AValue: String);  // static
    function GetSIP_SERVICE(): String;  // static
    procedure SetSIP_SERVICE(AValue: String);  // static
    function GetUSB_SERVICE(): String;  // static
    procedure SetUSB_SERVICE(AValue: String);  // static
    function GetSERIAL_SERVICE(): String;  // static
    procedure SetSERIAL_SERVICE(AValue: String);  // static
    function GetHDMI_CONTROL_SERVICE(): String;  // static
    procedure SetHDMI_CONTROL_SERVICE(AValue: String);  // static
    function GetINPUT_SERVICE(): String;  // static
    procedure SetINPUT_SERVICE(AValue: String);  // static
    function GetDISPLAY_SERVICE(): String;  // static
    procedure SetDISPLAY_SERVICE(AValue: String);  // static
    function GetUSER_SERVICE(): String;  // static
    procedure SetUSER_SERVICE(AValue: String);  // static
    function GetLAUNCHER_APPS_SERVICE(): String;  // static
    procedure SetLAUNCHER_APPS_SERVICE(AValue: String);  // static
    function GetRESTRICTIONS_SERVICE(): String;  // static
    procedure SetRESTRICTIONS_SERVICE(AValue: String);  // static
    function GetAPP_OPS_SERVICE(): String;  // static
    procedure SetAPP_OPS_SERVICE(AValue: String);  // static
    function GetCAMERA_SERVICE(): String;  // static
    procedure SetCAMERA_SERVICE(AValue: String);  // static
    function GetPRINT_SERVICE(): String;  // static
    procedure SetPRINT_SERVICE(AValue: String);  // static
    function GetCONSUMER_IR_SERVICE(): String;  // static
    procedure SetCONSUMER_IR_SERVICE(AValue: String);  // static
    function GetTRUST_SERVICE(): String;  // static
    procedure SetTRUST_SERVICE(AValue: String);  // static
    function GetTV_INPUT_SERVICE(): String;  // static
    procedure SetTV_INPUT_SERVICE(AValue: String);  // static
    function GetNETWORK_SCORE_SERVICE(): String;  // static
    procedure SetNETWORK_SCORE_SERVICE(AValue: String);  // static
    function GetUSAGE_STATS_SERVICE(): String;  // static
    procedure SetUSAGE_STATS_SERVICE(AValue: String);  // static
    function GetJOB_SCHEDULER_SERVICE(): String;  // static
    procedure SetJOB_SCHEDULER_SERVICE(AValue: String);  // static
    function GetPERSISTENT_DATA_BLOCK_SERVICE(): String;  // static
    procedure SetPERSISTENT_DATA_BLOCK_SERVICE(AValue: String);  // static
    function GetMEDIA_PROJECTION_SERVICE(): String;  // static
    procedure SetMEDIA_PROJECTION_SERVICE(AValue: String);  // static
    function GetMIDI_SERVICE(): String;  // static
    procedure SetMIDI_SERVICE(AValue: String);  // static
    function GetRADIO_SERVICE(): String;  // static
    procedure SetRADIO_SERVICE(AValue: String);  // static
    function GetHARDWARE_PROPERTIES_SERVICE(): String;  // static
    procedure SetHARDWARE_PROPERTIES_SERVICE(AValue: String);  // static
    function GetSHORTCUT_SERVICE(): String;  // static
    procedure SetSHORTCUT_SERVICE(AValue: String);  // static
    function GetCONTEXTHUB_SERVICE(): String;  // static
    procedure SetCONTEXTHUB_SERVICE(AValue: String);  // static
    function GetSYSTEM_HEALTH_SERVICE(): String;  // static
    procedure SetSYSTEM_HEALTH_SERVICE(AValue: String);  // static
    function GetGATEKEEPER_SERVICE(): String;  // static
    procedure SetGATEKEEPER_SERVICE(AValue: String);  // static
    function GetCONTEXT_INCLUDE_CODE(): Integer;  // static
    procedure SetCONTEXT_INCLUDE_CODE(AValue: Integer);  // static
    function GetCONTEXT_IGNORE_SECURITY(): Integer;  // static
    procedure SetCONTEXT_IGNORE_SECURITY(AValue: Integer);  // static
    function GetCONTEXT_RESTRICTED(): Integer;  // static
    procedure SetCONTEXT_RESTRICTED(AValue: Integer);  // static
    function GetCONTEXT_DEVICE_PROTECTED_STORAGE(): Integer;  // static
    procedure SetCONTEXT_DEVICE_PROTECTED_STORAGE(AValue: Integer);  // static
    function GetCONTEXT_CREDENTIAL_PROTECTED_STORAGE(): Integer;  // static
    procedure SetCONTEXT_CREDENTIAL_PROTECTED_STORAGE(AValue: Integer);  // static
    function GetCONTEXT_REGISTER_PACKAGE(): Integer;  // static
    procedure SetCONTEXT_REGISTER_PACKAGE(AValue: Integer);  // static
  public
    constructor Create(AEnv:PJNIEnv; AOrigin: jobject);
    destructor Destroy; override;
    function This(): TContext;
    function getAssets(): TAssetManager;  // abstract
    function getResources(): TResources;  // abstract
    function getPackageManager(): TPackageManager;  // abstract
    function getMainLooper(): TLooper;  // abstract
    function getApplicationContext(): TContext;  // abstract
    procedure registerComponentCallbacks(callback: TComponentCallbacks);
    procedure unregisterComponentCallbacks(callback: TComponentCallbacks);
    function getText(resId: Integer): TCharSequence;
    function getString(resId: Integer): String;
    function getString(resId: Integer; formatArgs: TObjectArray): String;
    function getColor(id: Integer): Integer;
    function getDrawable(id: Integer): TDrawable;
    function getColorStateList(id: Integer): TColorStateList;
    procedure setTheme(resid: Integer);  // abstract
    function getTheme(): TResources.Theme;  // abstract
    function obtainStyledAttributes(attrs: TIntArray): TTypedArray;
    function obtainStyledAttributes(resid: Integer; attrs: TIntArray): TTypedArray;
    function obtainStyledAttributes(set: TAttributeSet; attrs: TIntArray): TTypedArray;
    function obtainStyledAttributes(set: TAttributeSet; attrs: TIntArray; defStyleAttr: Integer; defStyleRes: Integer): TTypedArray;
    function getClassLoader(): TClassLoader;  // abstract
    function getOpPackageName(): String;  // abstract
    function getSharedPrefsFile(name: String): TFile;
    function getSharedPreferences(name: String; mode: Integer): TSharedPreferences;  // abstract
    function getSharedPreferences(file: TFile; mode: Integer): TSharedPreferences;  // abstract
    function moveSharedPreferencesFrom(sourceContext: TContext; name: String): Boolean;  // abstract
    function deleteSharedPreferences(name: String): Boolean;  // abstract
    function openFileInput(name: String): TFileInputStream;  // abstract
    function openFileOutput(name: String; mode: Integer): TFileOutputStream;  // abstract
    function deleteFile(name: String): Boolean;  // abstract
    function getFileStreamPath(name: String): TFile;  // abstract
    function getSharedPreferencesPath(name: String): TFile;  // abstract
    function getDataDir(): TFile;  // abstract
    function getFilesDir(): TFile;  // abstract
    function getNoBackupFilesDir(): TFile;  // abstract
    function getExternalFilesDir(type: String): TFile;  // abstract
    function getExternalFilesDirs(type: String): TFileArray;  // abstract
    function getObbDir(): TFile;  // abstract
    function getObbDirs(): TFileArray;  // abstract
    function getCacheDir(): TFile;  // abstract
    function getExternalCacheDir(): TFile;  // abstract
    function getExternalCacheDirs(): TFileArray;  // abstract
    function getExternalMediaDirs(): TFileArray;  // abstract
    function getDir(name: String; mode: Integer): TFile;  // abstract
    function openOrCreateDatabase(name: String; mode: Integer; factory: TCursorFactory): TSQLiteDatabase;  // abstract
    function openOrCreateDatabase(name: String; mode: Integer; factory: TCursorFactory; errorHandler: TDatabaseErrorHandler): TSQLiteDatabase;  // abstract
    function moveDatabaseFrom(sourceContext: TContext; name: String): Boolean;  // abstract
    function deleteDatabase(name: String): Boolean;  // abstract
    function getDatabasePath(name: String): TFile;  // abstract
    function getWallpaper(): TDrawable;  // abstract
    function peekWallpaper(): TDrawable;  // abstract
    function getWallpaperDesiredMinimumWidth(): Integer;  // abstract
    function getWallpaperDesiredMinimumHeight(): Integer;  // abstract
    procedure setWallpaper(bitmap: TBitmap);  // abstract
    procedure setWallpaper(data: TInputStream);  // abstract
    procedure clearWallpaper();  // abstract
    procedure startActivity(intent: TIntent);  // abstract
    procedure startActivityAsUser(intent: TIntent; user: TUserHandle);
    procedure startActivity(intent: TIntent; options: TBundle);  // abstract
    procedure startActivityAsUser(intent: TIntent; options: TBundle; userId: TUserHandle);
    procedure startActivityForResult(who: String; intent: TIntent; requestCode: Integer; options: TBundle);
    function canStartActivityForResult(): Boolean;
    procedure startActivities(intents: TIntentArray);  // abstract
    procedure startActivities(intents: TIntentArray; options: TBundle);  // abstract
    procedure startActivitiesAsUser(intents: TIntentArray; options: TBundle; userHandle: TUserHandle);
    procedure startIntentSender(intent: TIntentSender; fillInIntent: TIntent; flagsMask: Integer; flagsValues: Integer; extraFlags: Integer);  // abstract
    procedure startIntentSender(intent: TIntentSender; fillInIntent: TIntent; flagsMask: Integer; flagsValues: Integer; extraFlags: Integer; options: TBundle);  // abstract
    procedure sendBroadcast(intent: TIntent);  // abstract
    procedure sendBroadcast(intent: TIntent; receiverPermission: String);  // abstract
    procedure sendBroadcastMultiplePermissions(intent: TIntent; receiverPermissions: TStringArray);  // abstract
    procedure sendBroadcast(intent: TIntent; receiverPermission: String; options: TBundle);  // abstract
    procedure sendBroadcast(intent: TIntent; receiverPermission: String; appOp: Integer);  // abstract
    procedure sendOrderedBroadcast(intent: TIntent; receiverPermission: String);  // abstract
    procedure sendOrderedBroadcast(intent: TIntent; receiverPermission: String; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
    procedure sendOrderedBroadcast(intent: TIntent; receiverPermission: String; options: TBundle; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
    procedure sendOrderedBroadcast(intent: TIntent; receiverPermission: String; appOp: Integer; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
    procedure sendBroadcastAsUser(intent: TIntent; user: TUserHandle);  // abstract
    procedure sendBroadcastAsUser(intent: TIntent; user: TUserHandle; receiverPermission: String);  // abstract
    procedure sendBroadcastAsUser(intent: TIntent; user: TUserHandle; receiverPermission: String; appOp: Integer);  // abstract
    procedure sendOrderedBroadcastAsUser(intent: TIntent; user: TUserHandle; receiverPermission: String; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
    procedure sendStickyBroadcast(intent: TIntent);  // abstract
    procedure sendStickyOrderedBroadcast(intent: TIntent; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
    procedure removeStickyBroadcast(intent: TIntent);  // abstract
    procedure sendStickyBroadcastAsUser(intent: TIntent; user: TUserHandle);  // abstract
    procedure sendStickyOrderedBroadcastAsUser(intent: TIntent; user: TUserHandle; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
    procedure removeStickyBroadcastAsUser(intent: TIntent; user: TUserHandle);  // abstract
    function registerReceiver(receiver: TBroadcastReceiver; filter: TIntentFilter): TIntent;  // abstract
    function registerReceiver(receiver: TBroadcastReceiver; filter: TIntentFilter; broadcastPermission: String; scheduler: THandler): TIntent;  // abstract
    function registerReceiverAsUser(receiver: TBroadcastReceiver; user: TUserHandle; filter: TIntentFilter; broadcastPermission: String; scheduler: THandler): TIntent;  // abstract
    function startService(service: TIntent): TComponentName;  // abstract
    function stopService(service: TIntent): Boolean;  // abstract
    function startServiceAsUser(service: TIntent; user: TUserHandle): TComponentName;  // abstract
    function stopServiceAsUser(service: TIntent; user: TUserHandle): Boolean;  // abstract
    function bindService(service: TIntent; conn: TServiceConnection; flags: Integer): Boolean;  // abstract
    function bindServiceAsUser(service: TIntent; conn: TServiceConnection; flags: Integer; user: TUserHandle): Boolean;
    function bindServiceAsUser(service: TIntent; conn: TServiceConnection; flags: Integer; handler: THandler; user: TUserHandle): Boolean;  // static
    procedure unbindService(conn: TServiceConnection);  // abstract
    function startInstrumentation(className: TComponentName; profileFile: String; arguments: TBundle): Boolean;  // abstract
    function getSystemService(name: String): TObject;  // abstract
    function getSystemService(serviceClass: TClass): TObject;
    function getSystemServiceName(serviceClass: TClass): String;  // abstract
    function checkPermission(permission: String; pid: Integer; uid: Integer): Integer;  // abstract
    function checkCallingPermission(permission: String): Integer;  // abstract
    function checkCallingOrSelfPermission(permission: String): Integer;  // abstract
    function checkSelfPermission(permission: String): Integer;  // abstract
    procedure enforcePermission(permission: String; pid: Integer; uid: Integer; message: String);  // abstract
    procedure enforceCallingPermission(permission: String; message: String);  // abstract
    procedure enforceCallingOrSelfPermission(permission: String; message: String);  // abstract
    procedure grantUriPermission(toPackage: String; uri: TUri; modeFlags: Integer);  // abstract
    procedure revokeUriPermission(uri: TUri; modeFlags: Integer);  // abstract
    function checkUriPermission(uri: TUri; pid: Integer; uid: Integer; modeFlags: Integer): Integer;  // abstract
    function checkCallingUriPermission(uri: TUri; modeFlags: Integer): Integer;  // abstract
    function checkCallingOrSelfUriPermission(uri: TUri; modeFlags: Integer): Integer;  // abstract
    function checkUriPermission(uri: TUri; readPermission: String; writePermission: String; pid: Integer; uid: Integer; modeFlags: Integer): Integer;  // abstract
    procedure enforceUriPermission(uri: TUri; pid: Integer; uid: Integer; modeFlags: Integer; message: String);  // abstract
    procedure enforceCallingUriPermission(uri: TUri; modeFlags: Integer; message: String);  // abstract
    procedure enforceCallingOrSelfUriPermission(uri: TUri; modeFlags: Integer; message: String);  // abstract
    procedure enforceUriPermission(uri: TUri; readPermission: String; writePermission: String; pid: Integer; uid: Integer; modeFlags: Integer; message: String);  // abstract
    function createPackageContext(packageName: String; flags: Integer): TContext;  // abstract
    function createPackageContextAsUser(packageName: String; flags: Integer; user: TUserHandle): TContext;  // abstract
    function createApplicationContext(application: TApplicationInfo; flags: Integer): TContext;  // abstract
    function createConfigurationContext(overrideConfiguration: TConfiguration): TContext;  // abstract
    function createDisplayContext(display: TDisplay): TContext;  // abstract
    function createCredentialProtectedStorageContext(): TContext;  // abstract
    function getDisplayAdjustments(displayId: Integer): TDisplayAdjustments;  // abstract
    function isRestricted(): Boolean;
    function isDeviceProtectedStorage(): Boolean;  // abstract
    function isCredentialProtectedStorage(): Boolean;  // abstract
    property FS: TObject read GetFS write SetFS;  
    property Samplefield: TIntArray read GetSamplefield write SetSamplefield;  
    property MODE_PRIVATE: Integer read GetMODE_PRIVATE write SetMODE_PRIVATE;  // static
    property MODE_WORLD_READABLE: Integer read GetMODE_WORLD_READABLE write SetMODE_WORLD_READABLE;  // static
    property MODE_WORLD_WRITEABLE: Integer read GetMODE_WORLD_WRITEABLE write SetMODE_WORLD_WRITEABLE;  // static
    property MODE_APPEND: Integer read GetMODE_APPEND write SetMODE_APPEND;  // static
    property MODE_MULTI_PROCESS: Integer read GetMODE_MULTI_PROCESS write SetMODE_MULTI_PROCESS;  // static
    property MODE_ENABLE_WRITE_AHEAD_LOGGING: Integer read GetMODE_ENABLE_WRITE_AHEAD_LOGGING write SetMODE_ENABLE_WRITE_AHEAD_LOGGING;  // static
    property MODE_NO_LOCALIZED_COLLATORS: Integer read GetMODE_NO_LOCALIZED_COLLATORS write SetMODE_NO_LOCALIZED_COLLATORS;  // static
    property BIND_AUTO_CREATE: Integer read GetBIND_AUTO_CREATE write SetBIND_AUTO_CREATE;  // static
    property BIND_DEBUG_UNBIND: Integer read GetBIND_DEBUG_UNBIND write SetBIND_DEBUG_UNBIND;  // static
    property BIND_NOT_FOREGROUND: Integer read GetBIND_NOT_FOREGROUND write SetBIND_NOT_FOREGROUND;  // static
    property BIND_ABOVE_CLIENT: Integer read GetBIND_ABOVE_CLIENT write SetBIND_ABOVE_CLIENT;  // static
    property BIND_ALLOW_OOM_MANAGEMENT: Integer read GetBIND_ALLOW_OOM_MANAGEMENT write SetBIND_ALLOW_OOM_MANAGEMENT;  // static
    property BIND_WAIVE_PRIORITY: Integer read GetBIND_WAIVE_PRIORITY write SetBIND_WAIVE_PRIORITY;  // static
    property BIND_IMPORTANT: Integer read GetBIND_IMPORTANT write SetBIND_IMPORTANT;  // static
    property BIND_ADJUST_WITH_ACTIVITY: Integer read GetBIND_ADJUST_WITH_ACTIVITY write SetBIND_ADJUST_WITH_ACTIVITY;  // static
    property BIND_ALLOW_WHITELIST_MANAGEMENT: Integer read GetBIND_ALLOW_WHITELIST_MANAGEMENT write SetBIND_ALLOW_WHITELIST_MANAGEMENT;  // static
    property BIND_FOREGROUND_SERVICE_WHILE_AWAKE: Integer read GetBIND_FOREGROUND_SERVICE_WHILE_AWAKE write SetBIND_FOREGROUND_SERVICE_WHILE_AWAKE;  // static
    property BIND_FOREGROUND_SERVICE: Integer read GetBIND_FOREGROUND_SERVICE write SetBIND_FOREGROUND_SERVICE;  // static
    property BIND_TREAT_LIKE_ACTIVITY: Integer read GetBIND_TREAT_LIKE_ACTIVITY write SetBIND_TREAT_LIKE_ACTIVITY;  // static
    property BIND_VISIBLE: Integer read GetBIND_VISIBLE write SetBIND_VISIBLE;  // static
    property BIND_SHOWING_UI: Integer read GetBIND_SHOWING_UI write SetBIND_SHOWING_UI;  // static
    property BIND_NOT_VISIBLE: Integer read GetBIND_NOT_VISIBLE write SetBIND_NOT_VISIBLE;  // static
    property BIND_EXTERNAL_SERVICE: Integer read GetBIND_EXTERNAL_SERVICE write SetBIND_EXTERNAL_SERVICE;  // static
    property POWER_SERVICE: String read GetPOWER_SERVICE write SetPOWER_SERVICE;  // static
    property RECOVERY_SERVICE: String read GetRECOVERY_SERVICE write SetRECOVERY_SERVICE;  // static
    property WINDOW_SERVICE: String read GetWINDOW_SERVICE write SetWINDOW_SERVICE;  // static
    property LAYOUT_INFLATER_SERVICE: String read GetLAYOUT_INFLATER_SERVICE write SetLAYOUT_INFLATER_SERVICE;  // static
    property ACCOUNT_SERVICE: String read GetACCOUNT_SERVICE write SetACCOUNT_SERVICE;  // static
    property ACTIVITY_SERVICE: String read GetACTIVITY_SERVICE write SetACTIVITY_SERVICE;  // static
    property ALARM_SERVICE: String read GetALARM_SERVICE write SetALARM_SERVICE;  // static
    property NOTIFICATION_SERVICE: String read GetNOTIFICATION_SERVICE write SetNOTIFICATION_SERVICE;  // static
    property ACCESSIBILITY_SERVICE: String read GetACCESSIBILITY_SERVICE write SetACCESSIBILITY_SERVICE;  // static
    property CAPTIONING_SERVICE: String read GetCAPTIONING_SERVICE write SetCAPTIONING_SERVICE;  // static
    property KEYGUARD_SERVICE: String read GetKEYGUARD_SERVICE write SetKEYGUARD_SERVICE;  // static
    property LOCATION_SERVICE: String read GetLOCATION_SERVICE write SetLOCATION_SERVICE;  // static
    property COUNTRY_DETECTOR: String read GetCOUNTRY_DETECTOR write SetCOUNTRY_DETECTOR;  // static
    property SEARCH_SERVICE: String read GetSEARCH_SERVICE write SetSEARCH_SERVICE;  // static
    property SENSOR_SERVICE: String read GetSENSOR_SERVICE write SetSENSOR_SERVICE;  // static
    property STORAGE_SERVICE: String read GetSTORAGE_SERVICE write SetSTORAGE_SERVICE;  // static
    property WALLPAPER_SERVICE: String read GetWALLPAPER_SERVICE write SetWALLPAPER_SERVICE;  // static
    property VIBRATOR_SERVICE: String read GetVIBRATOR_SERVICE write SetVIBRATOR_SERVICE;  // static
    property STATUS_BAR_SERVICE: String read GetSTATUS_BAR_SERVICE write SetSTATUS_BAR_SERVICE;  // static
    property CONNECTIVITY_SERVICE: String read GetCONNECTIVITY_SERVICE write SetCONNECTIVITY_SERVICE;  // static
    property UPDATE_LOCK_SERVICE: String read GetUPDATE_LOCK_SERVICE write SetUPDATE_LOCK_SERVICE;  // static
    property NETWORKMANAGEMENT_SERVICE: String read GetNETWORKMANAGEMENT_SERVICE write SetNETWORKMANAGEMENT_SERVICE;  // static
    property NETWORK_STATS_SERVICE: String read GetNETWORK_STATS_SERVICE write SetNETWORK_STATS_SERVICE;  // static
    property NETWORK_POLICY_SERVICE: String read GetNETWORK_POLICY_SERVICE write SetNETWORK_POLICY_SERVICE;  // static
    property WIFI_SERVICE: String read GetWIFI_SERVICE write SetWIFI_SERVICE;  // static
    property WIFI_P2P_SERVICE: String read GetWIFI_P2P_SERVICE write SetWIFI_P2P_SERVICE;  // static
    property WIFI_NAN_SERVICE: String read GetWIFI_NAN_SERVICE write SetWIFI_NAN_SERVICE;  // static
    property WIFI_SCANNING_SERVICE: String read GetWIFI_SCANNING_SERVICE write SetWIFI_SCANNING_SERVICE;  // static
    property WIFI_RTT_SERVICE: String read GetWIFI_RTT_SERVICE write SetWIFI_RTT_SERVICE;  // static
    property ETHERNET_SERVICE: String read GetETHERNET_SERVICE write SetETHERNET_SERVICE;  // static
    property NSD_SERVICE: String read GetNSD_SERVICE write SetNSD_SERVICE;  // static
    property AUDIO_SERVICE: String read GetAUDIO_SERVICE write SetAUDIO_SERVICE;  // static
    property FINGERPRINT_SERVICE: String read GetFINGERPRINT_SERVICE write SetFINGERPRINT_SERVICE;  // static
    property MEDIA_ROUTER_SERVICE: String read GetMEDIA_ROUTER_SERVICE write SetMEDIA_ROUTER_SERVICE;  // static
    property MEDIA_SESSION_SERVICE: String read GetMEDIA_SESSION_SERVICE write SetMEDIA_SESSION_SERVICE;  // static
    property TELEPHONY_SERVICE: String read GetTELEPHONY_SERVICE write SetTELEPHONY_SERVICE;  // static
    property TELEPHONY_SUBSCRIPTION_SERVICE: String read GetTELEPHONY_SUBSCRIPTION_SERVICE write SetTELEPHONY_SUBSCRIPTION_SERVICE;  // static
    property TELECOM_SERVICE: String read GetTELECOM_SERVICE write SetTELECOM_SERVICE;  // static
    property CARRIER_CONFIG_SERVICE: String read GetCARRIER_CONFIG_SERVICE write SetCARRIER_CONFIG_SERVICE;  // static
    property CLIPBOARD_SERVICE: String read GetCLIPBOARD_SERVICE write SetCLIPBOARD_SERVICE;  // static
    property INPUT_METHOD_SERVICE: String read GetINPUT_METHOD_SERVICE write SetINPUT_METHOD_SERVICE;  // static
    property TEXT_SERVICES_MANAGER_SERVICE: String read GetTEXT_SERVICES_MANAGER_SERVICE write SetTEXT_SERVICES_MANAGER_SERVICE;  // static
    property APPWIDGET_SERVICE: String read GetAPPWIDGET_SERVICE write SetAPPWIDGET_SERVICE;  // static
    property VOICE_INTERACTION_MANAGER_SERVICE: String read GetVOICE_INTERACTION_MANAGER_SERVICE write SetVOICE_INTERACTION_MANAGER_SERVICE;  // static
    property SOUND_TRIGGER_SERVICE: String read GetSOUND_TRIGGER_SERVICE write SetSOUND_TRIGGER_SERVICE;  // static
    property BACKUP_SERVICE: String read GetBACKUP_SERVICE write SetBACKUP_SERVICE;  // static
    property DROPBOX_SERVICE: String read GetDROPBOX_SERVICE write SetDROPBOX_SERVICE;  // static
    property DEVICE_IDLE_CONTROLLER: String read GetDEVICE_IDLE_CONTROLLER write SetDEVICE_IDLE_CONTROLLER;  // static
    property DEVICE_POLICY_SERVICE: String read GetDEVICE_POLICY_SERVICE write SetDEVICE_POLICY_SERVICE;  // static
    property UI_MODE_SERVICE: String read GetUI_MODE_SERVICE write SetUI_MODE_SERVICE;  // static
    property DOWNLOAD_SERVICE: String read GetDOWNLOAD_SERVICE write SetDOWNLOAD_SERVICE;  // static
    property BATTERY_SERVICE: String read GetBATTERY_SERVICE write SetBATTERY_SERVICE;  // static
    property NFC_SERVICE: String read GetNFC_SERVICE write SetNFC_SERVICE;  // static
    property BLUETOOTH_SERVICE: String read GetBLUETOOTH_SERVICE write SetBLUETOOTH_SERVICE;  // static
    property SIP_SERVICE: String read GetSIP_SERVICE write SetSIP_SERVICE;  // static
    property USB_SERVICE: String read GetUSB_SERVICE write SetUSB_SERVICE;  // static
    property SERIAL_SERVICE: String read GetSERIAL_SERVICE write SetSERIAL_SERVICE;  // static
    property HDMI_CONTROL_SERVICE: String read GetHDMI_CONTROL_SERVICE write SetHDMI_CONTROL_SERVICE;  // static
    property INPUT_SERVICE: String read GetINPUT_SERVICE write SetINPUT_SERVICE;  // static
    property DISPLAY_SERVICE: String read GetDISPLAY_SERVICE write SetDISPLAY_SERVICE;  // static
    property USER_SERVICE: String read GetUSER_SERVICE write SetUSER_SERVICE;  // static
    property LAUNCHER_APPS_SERVICE: String read GetLAUNCHER_APPS_SERVICE write SetLAUNCHER_APPS_SERVICE;  // static
    property RESTRICTIONS_SERVICE: String read GetRESTRICTIONS_SERVICE write SetRESTRICTIONS_SERVICE;  // static
    property APP_OPS_SERVICE: String read GetAPP_OPS_SERVICE write SetAPP_OPS_SERVICE;  // static
    property CAMERA_SERVICE: String read GetCAMERA_SERVICE write SetCAMERA_SERVICE;  // static
    property PRINT_SERVICE: String read GetPRINT_SERVICE write SetPRINT_SERVICE;  // static
    property CONSUMER_IR_SERVICE: String read GetCONSUMER_IR_SERVICE write SetCONSUMER_IR_SERVICE;  // static
    property TRUST_SERVICE: String read GetTRUST_SERVICE write SetTRUST_SERVICE;  // static
    property TV_INPUT_SERVICE: String read GetTV_INPUT_SERVICE write SetTV_INPUT_SERVICE;  // static
    property NETWORK_SCORE_SERVICE: String read GetNETWORK_SCORE_SERVICE write SetNETWORK_SCORE_SERVICE;  // static
    property USAGE_STATS_SERVICE: String read GetUSAGE_STATS_SERVICE write SetUSAGE_STATS_SERVICE;  // static
    property JOB_SCHEDULER_SERVICE: String read GetJOB_SCHEDULER_SERVICE write SetJOB_SCHEDULER_SERVICE;  // static
    property PERSISTENT_DATA_BLOCK_SERVICE: String read GetPERSISTENT_DATA_BLOCK_SERVICE write SetPERSISTENT_DATA_BLOCK_SERVICE;  // static
    property MEDIA_PROJECTION_SERVICE: String read GetMEDIA_PROJECTION_SERVICE write SetMEDIA_PROJECTION_SERVICE;  // static
    property MIDI_SERVICE: String read GetMIDI_SERVICE write SetMIDI_SERVICE;  // static
    property RADIO_SERVICE: String read GetRADIO_SERVICE write SetRADIO_SERVICE;  // static
    property HARDWARE_PROPERTIES_SERVICE: String read GetHARDWARE_PROPERTIES_SERVICE write SetHARDWARE_PROPERTIES_SERVICE;  // static
    property SHORTCUT_SERVICE: String read GetSHORTCUT_SERVICE write SetSHORTCUT_SERVICE;  // static
    property CONTEXTHUB_SERVICE: String read GetCONTEXTHUB_SERVICE write SetCONTEXTHUB_SERVICE;  // static
    property SYSTEM_HEALTH_SERVICE: String read GetSYSTEM_HEALTH_SERVICE write SetSYSTEM_HEALTH_SERVICE;  // static
    property GATEKEEPER_SERVICE: String read GetGATEKEEPER_SERVICE write SetGATEKEEPER_SERVICE;  // static
    property CONTEXT_INCLUDE_CODE: Integer read GetCONTEXT_INCLUDE_CODE write SetCONTEXT_INCLUDE_CODE;  // static
    property CONTEXT_IGNORE_SECURITY: Integer read GetCONTEXT_IGNORE_SECURITY write SetCONTEXT_IGNORE_SECURITY;  // static
    property CONTEXT_RESTRICTED: Integer read GetCONTEXT_RESTRICTED write SetCONTEXT_RESTRICTED;  // static
    property CONTEXT_DEVICE_PROTECTED_STORAGE: Integer read GetCONTEXT_DEVICE_PROTECTED_STORAGE write SetCONTEXT_DEVICE_PROTECTED_STORAGE;  // static
    property CONTEXT_CREDENTIAL_PROTECTED_STORAGE: Integer read GetCONTEXT_CREDENTIAL_PROTECTED_STORAGE write SetCONTEXT_CREDENTIAL_PROTECTED_STORAGE;  // static
    property CONTEXT_REGISTER_PACKAGE: Integer read GetCONTEXT_REGISTER_PACKAGE write SetCONTEXT_REGISTER_PACKAGE;  // static
  end;
implementation
constructor TContext.Create(AEnv: PJNIEnv; AOrigin: jobject);
begin
  FEnv:= AEnv;
  FOrigin:= AOrigin;
  FClsDef:= FEnv^^.FindClass(FEnv, 'android/content/Context');
end;
destructor TContext.Destroy;
begin
  FEnv^^.DeleteLocalRef(FEnv, FClsDef);
  if Assigned(FOrigin) then FEnv^^.DeleteLocalRef(FEnv, FOrigin);
  inherited Destroy;
end;
function TContext.This(): TContext;
begin
  Exit(FOrigin);
end;
function TContext.getAssets(): TAssetManager;  // abstract
begin
end;
function TContext.getResources(): TResources;  // abstract
begin
end;
function TContext.getPackageManager(): TPackageManager;  // abstract
begin
end;
function TContext.getMainLooper(): TLooper;  // abstract
begin
end;
function TContext.getApplicationContext(): TContext;  // abstract
begin
end;
procedure TContext.registerComponentCallbacks(callback: TComponentCallbacks);
begin
end;
procedure TContext.unregisterComponentCallbacks(callback: TComponentCallbacks);
begin
end;
function TContext.getText(resId: Integer): TCharSequence;
begin
end;
function TContext.getString(resId: Integer): String;
begin
end;
function TContext.getString(resId: Integer; formatArgs: TObjectArray): String;
begin
end;
function TContext.getColor(id: Integer): Integer;
begin
end;
function TContext.getDrawable(id: Integer): TDrawable;
begin
end;
function TContext.getColorStateList(id: Integer): TColorStateList;
begin
end;
procedure TContext.setTheme(resid: Integer);  // abstract
begin
end;
function TContext.getTheme(): TResources.Theme;  // abstract
begin
end;
function TContext.obtainStyledAttributes(attrs: TIntArray): TTypedArray;
begin
end;
function TContext.obtainStyledAttributes(resid: Integer; attrs: TIntArray): TTypedArray;
begin
end;
function TContext.obtainStyledAttributes(set: TAttributeSet; attrs: TIntArray): TTypedArray;
begin
end;
function TContext.obtainStyledAttributes(set: TAttributeSet; attrs: TIntArray; defStyleAttr: Integer; defStyleRes: Integer): TTypedArray;
begin
end;
function TContext.getClassLoader(): TClassLoader;  // abstract
begin
end;
function TContext.getOpPackageName(): String;  // abstract
begin
end;
function TContext.getSharedPrefsFile(name: String): TFile;
begin
end;
function TContext.getSharedPreferences(name: String; mode: Integer): TSharedPreferences;  // abstract
begin
end;
function TContext.getSharedPreferences(file: TFile; mode: Integer): TSharedPreferences;  // abstract
begin
end;
function TContext.moveSharedPreferencesFrom(sourceContext: TContext; name: String): Boolean;  // abstract
begin
end;
function TContext.deleteSharedPreferences(name: String): Boolean;  // abstract
begin
end;
function TContext.openFileInput(name: String): TFileInputStream;  // abstract
begin
end;
function TContext.openFileOutput(name: String; mode: Integer): TFileOutputStream;  // abstract
begin
end;
function TContext.deleteFile(name: String): Boolean;  // abstract
begin
end;
function TContext.getFileStreamPath(name: String): TFile;  // abstract
begin
end;
function TContext.getSharedPreferencesPath(name: String): TFile;  // abstract
begin
end;
function TContext.getDataDir(): TFile;  // abstract
begin
end;
function TContext.getFilesDir(): TFile;  // abstract
begin
end;
function TContext.getNoBackupFilesDir(): TFile;  // abstract
begin
end;
function TContext.getExternalFilesDir(type: String): TFile;  // abstract
begin
end;
function TContext.getExternalFilesDirs(type: String): TFileArray;  // abstract
begin
end;
function TContext.getObbDir(): TFile;  // abstract
begin
end;
function TContext.getObbDirs(): TFileArray;  // abstract
begin
end;
function TContext.getCacheDir(): TFile;  // abstract
begin
end;
function TContext.getExternalCacheDir(): TFile;  // abstract
begin
end;
function TContext.getExternalCacheDirs(): TFileArray;  // abstract
begin
end;
function TContext.getExternalMediaDirs(): TFileArray;  // abstract
begin
end;
function TContext.getDir(name: String; mode: Integer): TFile;  // abstract
begin
end;
function TContext.openOrCreateDatabase(name: String; mode: Integer; factory: TCursorFactory): TSQLiteDatabase;  // abstract
begin
end;
function TContext.openOrCreateDatabase(name: String; mode: Integer; factory: TCursorFactory; errorHandler: TDatabaseErrorHandler): TSQLiteDatabase;  // abstract
begin
end;
function TContext.moveDatabaseFrom(sourceContext: TContext; name: String): Boolean;  // abstract
begin
end;
function TContext.deleteDatabase(name: String): Boolean;  // abstract
begin
end;
function TContext.getDatabasePath(name: String): TFile;  // abstract
begin
end;
function TContext.getWallpaper(): TDrawable;  // abstract
begin
end;
function TContext.peekWallpaper(): TDrawable;  // abstract
begin
end;
function TContext.getWallpaperDesiredMinimumWidth(): Integer;  // abstract
begin
end;
function TContext.getWallpaperDesiredMinimumHeight(): Integer;  // abstract
begin
end;
procedure TContext.setWallpaper(bitmap: TBitmap);  // abstract
begin
end;
procedure TContext.setWallpaper(data: TInputStream);  // abstract
begin
end;
procedure TContext.clearWallpaper();  // abstract
begin
end;
procedure TContext.startActivity(intent: TIntent);  // abstract
begin
end;
procedure TContext.startActivityAsUser(intent: TIntent; user: TUserHandle);
begin
end;
procedure TContext.startActivity(intent: TIntent; options: TBundle);  // abstract
begin
end;
procedure TContext.startActivityAsUser(intent: TIntent; options: TBundle; userId: TUserHandle);
begin
end;
procedure TContext.startActivityForResult(who: String; intent: TIntent; requestCode: Integer; options: TBundle);
begin
end;
function TContext.canStartActivityForResult(): Boolean;
begin
end;
procedure TContext.startActivities(intents: TIntentArray);  // abstract
begin
end;
procedure TContext.startActivities(intents: TIntentArray; options: TBundle);  // abstract
begin
end;
procedure TContext.startActivitiesAsUser(intents: TIntentArray; options: TBundle; userHandle: TUserHandle);
begin
end;
procedure TContext.startIntentSender(intent: TIntentSender; fillInIntent: TIntent; flagsMask: Integer; flagsValues: Integer; extraFlags: Integer);  // abstract
begin
end;
procedure TContext.startIntentSender(intent: TIntentSender; fillInIntent: TIntent; flagsMask: Integer; flagsValues: Integer; extraFlags: Integer; options: TBundle);  // abstract
begin
end;
procedure TContext.sendBroadcast(intent: TIntent);  // abstract
begin
end;
procedure TContext.sendBroadcast(intent: TIntent; receiverPermission: String);  // abstract
begin
end;
procedure TContext.sendBroadcastMultiplePermissions(intent: TIntent; receiverPermissions: TStringArray);  // abstract
begin
end;
procedure TContext.sendBroadcast(intent: TIntent; receiverPermission: String; options: TBundle);  // abstract
begin
end;
procedure TContext.sendBroadcast(intent: TIntent; receiverPermission: String; appOp: Integer);  // abstract
begin
end;
procedure TContext.sendOrderedBroadcast(intent: TIntent; receiverPermission: String);  // abstract
begin
end;
procedure TContext.sendOrderedBroadcast(intent: TIntent; receiverPermission: String; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
begin
end;
procedure TContext.sendOrderedBroadcast(intent: TIntent; receiverPermission: String; options: TBundle; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
begin
end;
procedure TContext.sendOrderedBroadcast(intent: TIntent; receiverPermission: String; appOp: Integer; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
begin
end;
procedure TContext.sendBroadcastAsUser(intent: TIntent; user: TUserHandle);  // abstract
begin
end;
procedure TContext.sendBroadcastAsUser(intent: TIntent; user: TUserHandle; receiverPermission: String);  // abstract
begin
end;
procedure TContext.sendBroadcastAsUser(intent: TIntent; user: TUserHandle; receiverPermission: String; appOp: Integer);  // abstract
begin
end;
procedure TContext.sendOrderedBroadcastAsUser(intent: TIntent; user: TUserHandle; receiverPermission: String; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
begin
end;
procedure TContext.sendStickyBroadcast(intent: TIntent);  // abstract
begin
end;
procedure TContext.sendStickyOrderedBroadcast(intent: TIntent; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
begin
end;
procedure TContext.removeStickyBroadcast(intent: TIntent);  // abstract
begin
end;
procedure TContext.sendStickyBroadcastAsUser(intent: TIntent; user: TUserHandle);  // abstract
begin
end;
procedure TContext.sendStickyOrderedBroadcastAsUser(intent: TIntent; user: TUserHandle; resultReceiver: TBroadcastReceiver; scheduler: THandler; initialCode: Integer; initialData: String; initialExtras: TBundle);  // abstract
begin
end;
procedure TContext.removeStickyBroadcastAsUser(intent: TIntent; user: TUserHandle);  // abstract
begin
end;
function TContext.registerReceiver(receiver: TBroadcastReceiver; filter: TIntentFilter): TIntent;  // abstract
begin
end;
function TContext.registerReceiver(receiver: TBroadcastReceiver; filter: TIntentFilter; broadcastPermission: String; scheduler: THandler): TIntent;  // abstract
begin
end;
function TContext.registerReceiverAsUser(receiver: TBroadcastReceiver; user: TUserHandle; filter: TIntentFilter; broadcastPermission: String; scheduler: THandler): TIntent;  // abstract
begin
end;
function TContext.startService(service: TIntent): TComponentName;  // abstract
begin
end;
function TContext.stopService(service: TIntent): Boolean;  // abstract
begin
end;
function TContext.startServiceAsUser(service: TIntent; user: TUserHandle): TComponentName;  // abstract
begin
end;
function TContext.stopServiceAsUser(service: TIntent; user: TUserHandle): Boolean;  // abstract
begin
end;
function TContext.bindService(service: TIntent; conn: TServiceConnection; flags: Integer): Boolean;  // abstract
begin
end;
function TContext.bindServiceAsUser(service: TIntent; conn: TServiceConnection; flags: Integer; user: TUserHandle): Boolean;
begin
end;
function TContext.bindServiceAsUser(service: TIntent; conn: TServiceConnection; flags: Integer; handler: THandler; user: TUserHandle): Boolean;  // static
begin
end;
procedure TContext.unbindService(conn: TServiceConnection);  // abstract
begin
end;
function TContext.startInstrumentation(className: TComponentName; profileFile: String; arguments: TBundle): Boolean;  // abstract
begin
end;
function TContext.getSystemService(name: String): TObject;  // abstract
begin
end;
function TContext.getSystemService(serviceClass: TClass): TObject;
begin
end;
function TContext.getSystemServiceName(serviceClass: TClass): String;  // abstract
begin
end;
function TContext.checkPermission(permission: String; pid: Integer; uid: Integer): Integer;  // abstract
begin
end;
function TContext.checkCallingPermission(permission: String): Integer;  // abstract
begin
end;
function TContext.checkCallingOrSelfPermission(permission: String): Integer;  // abstract
begin
end;
function TContext.checkSelfPermission(permission: String): Integer;  // abstract
begin
end;
procedure TContext.enforcePermission(permission: String; pid: Integer; uid: Integer; message: String);  // abstract
begin
end;
procedure TContext.enforceCallingPermission(permission: String; message: String);  // abstract
begin
end;
procedure TContext.enforceCallingOrSelfPermission(permission: String; message: String);  // abstract
begin
end;
procedure TContext.grantUriPermission(toPackage: String; uri: TUri; modeFlags: Integer);  // abstract
begin
end;
procedure TContext.revokeUriPermission(uri: TUri; modeFlags: Integer);  // abstract
begin
end;
function TContext.checkUriPermission(uri: TUri; pid: Integer; uid: Integer; modeFlags: Integer): Integer;  // abstract
begin
end;
function TContext.checkCallingUriPermission(uri: TUri; modeFlags: Integer): Integer;  // abstract
begin
end;
function TContext.checkCallingOrSelfUriPermission(uri: TUri; modeFlags: Integer): Integer;  // abstract
begin
end;
function TContext.checkUriPermission(uri: TUri; readPermission: String; writePermission: String; pid: Integer; uid: Integer; modeFlags: Integer): Integer;  // abstract
begin
end;
procedure TContext.enforceUriPermission(uri: TUri; pid: Integer; uid: Integer; modeFlags: Integer; message: String);  // abstract
begin
end;
procedure TContext.enforceCallingUriPermission(uri: TUri; modeFlags: Integer; message: String);  // abstract
begin
end;
procedure TContext.enforceCallingOrSelfUriPermission(uri: TUri; modeFlags: Integer; message: String);  // abstract
begin
end;
procedure TContext.enforceUriPermission(uri: TUri; readPermission: String; writePermission: String; pid: Integer; uid: Integer; modeFlags: Integer; message: String);  // abstract
begin
end;
function TContext.createPackageContext(packageName: String; flags: Integer): TContext;  // abstract
begin
end;
function TContext.createPackageContextAsUser(packageName: String; flags: Integer; user: TUserHandle): TContext;  // abstract
begin
end;
function TContext.createApplicationContext(application: TApplicationInfo; flags: Integer): TContext;  // abstract
begin
end;
function TContext.createConfigurationContext(overrideConfiguration: TConfiguration): TContext;  // abstract
begin
end;
function TContext.createDisplayContext(display: TDisplay): TContext;  // abstract
begin
end;
function TContext.createCredentialProtectedStorageContext(): TContext;  // abstract
begin
end;
function TContext.getDisplayAdjustments(displayId: Integer): TDisplayAdjustments;  // abstract
begin
end;
function TContext.isRestricted(): Boolean;
begin
end;
function TContext.isDeviceProtectedStorage(): Boolean;  // abstract
begin
end;
function TContext.isCredentialProtectedStorage(): Boolean;  // abstract
begin
end;
function TContext.GetFS(): TObject;
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'FS', 'Ljava/lang/Object;');
  Exit(TTObject.Create(FEnv, FEnv^^.GetObjectField(FEnv, FOrigin, f)));
end;
procedure TContext.SetFS(AValue: TObject);
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'FS', 'Ljava/lang/Object;');
  FEnv^^.SetStaticObjectField(FEnv, FOrigin, f, AValue.This());
end;
function TContext.GetSamplefield(): TIntArray;
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'Samplefield', '[I');
end;
procedure TContext.SetSamplefield(AValue: TIntArray);
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'Samplefield', '[I');
end;
function TContext.GetMODE_PRIVATE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_PRIVATE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetMODE_PRIVATE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_PRIVATE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetMODE_WORLD_READABLE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_WORLD_READABLE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetMODE_WORLD_READABLE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_WORLD_READABLE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetMODE_WORLD_WRITEABLE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_WORLD_WRITEABLE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetMODE_WORLD_WRITEABLE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_WORLD_WRITEABLE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetMODE_APPEND(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_APPEND', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetMODE_APPEND(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_APPEND', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetMODE_MULTI_PROCESS(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_MULTI_PROCESS', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetMODE_MULTI_PROCESS(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_MULTI_PROCESS', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetMODE_ENABLE_WRITE_AHEAD_LOGGING(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_ENABLE_WRITE_AHEAD_LOGGING', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetMODE_ENABLE_WRITE_AHEAD_LOGGING(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_ENABLE_WRITE_AHEAD_LOGGING', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetMODE_NO_LOCALIZED_COLLATORS(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_NO_LOCALIZED_COLLATORS', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetMODE_NO_LOCALIZED_COLLATORS(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MODE_NO_LOCALIZED_COLLATORS', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_AUTO_CREATE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_AUTO_CREATE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_AUTO_CREATE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_AUTO_CREATE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_DEBUG_UNBIND(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_DEBUG_UNBIND', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_DEBUG_UNBIND(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_DEBUG_UNBIND', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_NOT_FOREGROUND(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_NOT_FOREGROUND', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_NOT_FOREGROUND(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_NOT_FOREGROUND', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_ABOVE_CLIENT(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_ABOVE_CLIENT', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_ABOVE_CLIENT(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_ABOVE_CLIENT', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_ALLOW_OOM_MANAGEMENT(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_ALLOW_OOM_MANAGEMENT', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_ALLOW_OOM_MANAGEMENT(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_ALLOW_OOM_MANAGEMENT', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_WAIVE_PRIORITY(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_WAIVE_PRIORITY', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_WAIVE_PRIORITY(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_WAIVE_PRIORITY', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_IMPORTANT(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_IMPORTANT', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_IMPORTANT(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_IMPORTANT', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_ADJUST_WITH_ACTIVITY(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_ADJUST_WITH_ACTIVITY', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_ADJUST_WITH_ACTIVITY(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_ADJUST_WITH_ACTIVITY', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_ALLOW_WHITELIST_MANAGEMENT(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_ALLOW_WHITELIST_MANAGEMENT', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_ALLOW_WHITELIST_MANAGEMENT(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_ALLOW_WHITELIST_MANAGEMENT', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_FOREGROUND_SERVICE_WHILE_AWAKE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_FOREGROUND_SERVICE_WHILE_AWAKE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_FOREGROUND_SERVICE_WHILE_AWAKE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_FOREGROUND_SERVICE_WHILE_AWAKE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_FOREGROUND_SERVICE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_FOREGROUND_SERVICE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_FOREGROUND_SERVICE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_FOREGROUND_SERVICE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_TREAT_LIKE_ACTIVITY(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_TREAT_LIKE_ACTIVITY', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_TREAT_LIKE_ACTIVITY(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_TREAT_LIKE_ACTIVITY', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_VISIBLE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_VISIBLE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_VISIBLE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_VISIBLE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_SHOWING_UI(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_SHOWING_UI', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_SHOWING_UI(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_SHOWING_UI', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_NOT_VISIBLE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_NOT_VISIBLE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_NOT_VISIBLE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_NOT_VISIBLE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetBIND_EXTERNAL_SERVICE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_EXTERNAL_SERVICE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetBIND_EXTERNAL_SERVICE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BIND_EXTERNAL_SERVICE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetPOWER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'POWER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetPOWER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'POWER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetRECOVERY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'RECOVERY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetRECOVERY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'RECOVERY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetWINDOW_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WINDOW_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetWINDOW_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WINDOW_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetLAYOUT_INFLATER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'LAYOUT_INFLATER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetLAYOUT_INFLATER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'LAYOUT_INFLATER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetACCOUNT_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ACCOUNT_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetACCOUNT_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ACCOUNT_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetACTIVITY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ACTIVITY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetACTIVITY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ACTIVITY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetALARM_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ALARM_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetALARM_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ALARM_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetNOTIFICATION_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NOTIFICATION_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetNOTIFICATION_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NOTIFICATION_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetACCESSIBILITY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ACCESSIBILITY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetACCESSIBILITY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ACCESSIBILITY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCAPTIONING_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CAPTIONING_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetCAPTIONING_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CAPTIONING_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetKEYGUARD_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'KEYGUARD_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetKEYGUARD_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'KEYGUARD_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetLOCATION_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'LOCATION_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetLOCATION_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'LOCATION_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCOUNTRY_DETECTOR(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'COUNTRY_DETECTOR', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetCOUNTRY_DETECTOR(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'COUNTRY_DETECTOR', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSEARCH_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SEARCH_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSEARCH_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SEARCH_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSENSOR_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SENSOR_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSENSOR_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SENSOR_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSTORAGE_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'STORAGE_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSTORAGE_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'STORAGE_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetWALLPAPER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WALLPAPER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetWALLPAPER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WALLPAPER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetVIBRATOR_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'VIBRATOR_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetVIBRATOR_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'VIBRATOR_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSTATUS_BAR_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'STATUS_BAR_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSTATUS_BAR_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'STATUS_BAR_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCONNECTIVITY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONNECTIVITY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetCONNECTIVITY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONNECTIVITY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetUPDATE_LOCK_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'UPDATE_LOCK_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetUPDATE_LOCK_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'UPDATE_LOCK_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetNETWORKMANAGEMENT_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NETWORKMANAGEMENT_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetNETWORKMANAGEMENT_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NETWORKMANAGEMENT_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetNETWORK_STATS_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NETWORK_STATS_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetNETWORK_STATS_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NETWORK_STATS_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetNETWORK_POLICY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NETWORK_POLICY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetNETWORK_POLICY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NETWORK_POLICY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetWIFI_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetWIFI_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetWIFI_P2P_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_P2P_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetWIFI_P2P_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_P2P_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetWIFI_NAN_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_NAN_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetWIFI_NAN_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_NAN_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetWIFI_SCANNING_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_SCANNING_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetWIFI_SCANNING_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_SCANNING_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetWIFI_RTT_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_RTT_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetWIFI_RTT_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'WIFI_RTT_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetETHERNET_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ETHERNET_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetETHERNET_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'ETHERNET_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetNSD_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NSD_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetNSD_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NSD_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetAUDIO_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'AUDIO_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetAUDIO_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'AUDIO_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetFINGERPRINT_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'FINGERPRINT_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetFINGERPRINT_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'FINGERPRINT_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetMEDIA_ROUTER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MEDIA_ROUTER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetMEDIA_ROUTER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MEDIA_ROUTER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetMEDIA_SESSION_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MEDIA_SESSION_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetMEDIA_SESSION_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MEDIA_SESSION_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetTELEPHONY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TELEPHONY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetTELEPHONY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TELEPHONY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetTELEPHONY_SUBSCRIPTION_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TELEPHONY_SUBSCRIPTION_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetTELEPHONY_SUBSCRIPTION_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TELEPHONY_SUBSCRIPTION_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetTELECOM_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TELECOM_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetTELECOM_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TELECOM_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCARRIER_CONFIG_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CARRIER_CONFIG_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetCARRIER_CONFIG_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CARRIER_CONFIG_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCLIPBOARD_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CLIPBOARD_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetCLIPBOARD_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CLIPBOARD_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetINPUT_METHOD_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'INPUT_METHOD_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetINPUT_METHOD_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'INPUT_METHOD_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetTEXT_SERVICES_MANAGER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TEXT_SERVICES_MANAGER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetTEXT_SERVICES_MANAGER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TEXT_SERVICES_MANAGER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetAPPWIDGET_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'APPWIDGET_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetAPPWIDGET_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'APPWIDGET_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetVOICE_INTERACTION_MANAGER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'VOICE_INTERACTION_MANAGER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetVOICE_INTERACTION_MANAGER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'VOICE_INTERACTION_MANAGER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSOUND_TRIGGER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SOUND_TRIGGER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSOUND_TRIGGER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SOUND_TRIGGER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetBACKUP_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BACKUP_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetBACKUP_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BACKUP_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetDROPBOX_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DROPBOX_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetDROPBOX_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DROPBOX_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetDEVICE_IDLE_CONTROLLER(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DEVICE_IDLE_CONTROLLER', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetDEVICE_IDLE_CONTROLLER(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DEVICE_IDLE_CONTROLLER', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetDEVICE_POLICY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DEVICE_POLICY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetDEVICE_POLICY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DEVICE_POLICY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetUI_MODE_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'UI_MODE_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetUI_MODE_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'UI_MODE_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetDOWNLOAD_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DOWNLOAD_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetDOWNLOAD_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DOWNLOAD_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetBATTERY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BATTERY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetBATTERY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BATTERY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetNFC_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NFC_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetNFC_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NFC_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetBLUETOOTH_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BLUETOOTH_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetBLUETOOTH_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'BLUETOOTH_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSIP_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SIP_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSIP_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SIP_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetUSB_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'USB_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetUSB_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'USB_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSERIAL_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SERIAL_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSERIAL_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SERIAL_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetHDMI_CONTROL_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'HDMI_CONTROL_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetHDMI_CONTROL_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'HDMI_CONTROL_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetINPUT_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'INPUT_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetINPUT_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'INPUT_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetDISPLAY_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DISPLAY_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetDISPLAY_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'DISPLAY_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetUSER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'USER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetUSER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'USER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetLAUNCHER_APPS_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'LAUNCHER_APPS_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetLAUNCHER_APPS_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'LAUNCHER_APPS_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetRESTRICTIONS_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'RESTRICTIONS_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetRESTRICTIONS_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'RESTRICTIONS_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetAPP_OPS_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'APP_OPS_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetAPP_OPS_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'APP_OPS_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCAMERA_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CAMERA_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetCAMERA_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CAMERA_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetPRINT_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'PRINT_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetPRINT_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'PRINT_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCONSUMER_IR_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONSUMER_IR_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetCONSUMER_IR_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONSUMER_IR_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetTRUST_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TRUST_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetTRUST_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TRUST_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetTV_INPUT_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TV_INPUT_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetTV_INPUT_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'TV_INPUT_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetNETWORK_SCORE_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NETWORK_SCORE_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetNETWORK_SCORE_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'NETWORK_SCORE_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetUSAGE_STATS_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'USAGE_STATS_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetUSAGE_STATS_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'USAGE_STATS_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetJOB_SCHEDULER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'JOB_SCHEDULER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetJOB_SCHEDULER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'JOB_SCHEDULER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetPERSISTENT_DATA_BLOCK_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'PERSISTENT_DATA_BLOCK_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetPERSISTENT_DATA_BLOCK_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'PERSISTENT_DATA_BLOCK_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetMEDIA_PROJECTION_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MEDIA_PROJECTION_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetMEDIA_PROJECTION_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MEDIA_PROJECTION_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetMIDI_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MIDI_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetMIDI_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'MIDI_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetRADIO_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'RADIO_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetRADIO_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'RADIO_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetHARDWARE_PROPERTIES_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'HARDWARE_PROPERTIES_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetHARDWARE_PROPERTIES_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'HARDWARE_PROPERTIES_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSHORTCUT_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SHORTCUT_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSHORTCUT_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SHORTCUT_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCONTEXTHUB_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXTHUB_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetCONTEXTHUB_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXTHUB_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetSYSTEM_HEALTH_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SYSTEM_HEALTH_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetSYSTEM_HEALTH_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'SYSTEM_HEALTH_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetGATEKEEPER_SERVICE(): String;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'GATEKEEPER_SERVICE', 'Ljava/lang/String;');
  Exit(TJNIEnv.JStringToString(FEnv, FEnv^^.GetStaticObjectField(FEnv, FClsDef, f)));
end;
procedure TContext.SetGATEKEEPER_SERVICE(AValue: String);  // static
var
  f: jfieldID;
  tmpStr: jstring;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'GATEKEEPER_SERVICE', 'Ljava/lang/String;');
  tmpStr := TJNIEnv.StringToJString(FEnv, AValue)
  FEnv^^.SetStaticObjectField(FEnv, FClsDef, f, TJNIEnv.ArgsToJValues(FEnv, [tmpStr]));
  FEnv^^.DeleteLocalRef(FEnv, tmpStr);
end;
function TContext.GetCONTEXT_INCLUDE_CODE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_INCLUDE_CODE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetCONTEXT_INCLUDE_CODE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_INCLUDE_CODE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetCONTEXT_IGNORE_SECURITY(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_IGNORE_SECURITY', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetCONTEXT_IGNORE_SECURITY(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_IGNORE_SECURITY', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetCONTEXT_RESTRICTED(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_RESTRICTED', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetCONTEXT_RESTRICTED(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_RESTRICTED', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetCONTEXT_DEVICE_PROTECTED_STORAGE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_DEVICE_PROTECTED_STORAGE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetCONTEXT_DEVICE_PROTECTED_STORAGE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_DEVICE_PROTECTED_STORAGE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetCONTEXT_CREDENTIAL_PROTECTED_STORAGE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_CREDENTIAL_PROTECTED_STORAGE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetCONTEXT_CREDENTIAL_PROTECTED_STORAGE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_CREDENTIAL_PROTECTED_STORAGE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
function TContext.GetCONTEXT_REGISTER_PACKAGE(): Integer;  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_REGISTER_PACKAGE', 'I');
  Exit(FEnv^^.GetStaticIntField(FEnv, FClsDef, f));
end;
procedure TContext.SetCONTEXT_REGISTER_PACKAGE(AValue: Integer);  // static
var
  f: jfieldID;
begin
  f := FEnv^^.GetFieldID(FEnv, FClsDef, 'CONTEXT_REGISTER_PACKAGE', 'I');
  FEnv^^.SetStaticIntField(FEnv, FClsDef, f, AValue);
end;
end.
