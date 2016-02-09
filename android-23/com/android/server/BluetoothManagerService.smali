.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$1;,
        Lcom/android/server/BluetoothManagerService$2;
    }
.end annotation


# static fields
.field private static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = false

.field private static final DEVICE_TYPE_NAMES:[Ljava/lang/String;

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MAX_SAVE_RETRIES:I = 0x3

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_SAVE_NAME_AND_ADDRESS:I = 0xc9

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TIMEOUT_SAVE_MS:I = 0x1f4

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8

.field private static mBleAppCount:I


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBinding:Z

.field mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mErrorRecoveryRetryCounter:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mName:Ljava/lang/String;

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private mQuietEnableExternal:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mUnbinding:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@2
    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@2
    return v0
.end method

.method static synthetic -get15(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@2
    return v0
.end method

.method static synthetic -get17(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@2
    return p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    #@0
    sput p0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@2
    return p0
.end method

.method static synthetic -set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@2
    return p1
.end method

.method static synthetic -set7(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p1, "quietMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .locals 1
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p1, "quietMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/BluetoothManagerService;I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 119
    const/4 v0, 0x4

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 120
    const-string/jumbo v1, "???"

    #@7
    aput-object v1, v0, v3

    #@9
    .line 121
    const-string/jumbo v1, "BR/EDR"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 122
    const-string/jumbo v1, "LE"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 123
    const-string/jumbo v1, "DUAL"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 119
    sput-object v0, Lcom/android/server/BluetoothManagerService;->DEVICE_TYPE_NAMES:[Ljava/lang/String;

    #@1d
    .line 127
    sput v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@1f
    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 242
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    #@5
    .line 141
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@7
    .line 158
    new-instance v3, Ljava/util/HashMap;

    #@9
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 157
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@e
    .line 173
    new-instance v3, Lcom/android/server/BluetoothManagerService$1;

    #@10
    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    #@13
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    #@15
    .line 181
    new-instance v3, Lcom/android/server/BluetoothManagerService$2;

    #@17
    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    #@1a
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 445
    new-instance v3, Ljava/util/HashMap;

    #@1e
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@21
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@23
    .line 1099
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@25
    invoke-direct {v3, p0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;)V

    #@28
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2a
    .line 243
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2c
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@33
    move-result-object v4

    #@34
    invoke-direct {v3, p0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    #@37
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@39
    .line 245
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3b
    .line 246
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@3d
    .line 247
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@3f
    .line 248
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@41
    .line 249
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    #@43
    .line 250
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@45
    .line 251
    const/16 v3, 0xa

    #@47
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@49
    .line 252
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@4b
    .line 253
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@4d
    .line 254
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@4f
    .line 255
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@51
    .line 256
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@53
    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@56
    move-result-object v3

    #@57
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@59
    .line 259
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    #@5c
    .line 260
    new-instance v3, Landroid/os/RemoteCallbackList;

    #@5e
    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    #@61
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@63
    .line 261
    new-instance v3, Landroid/os/RemoteCallbackList;

    #@65
    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    #@68
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@6a
    .line 262
    new-instance v1, Landroid/content/IntentFilter;

    #@6c
    const-string/jumbo v3, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    #@6f
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@72
    .line 263
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    #@75
    .line 264
    const/16 v3, 0x3e8

    #@77
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    #@7a
    .line 265
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@7c
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@7e
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@81
    .line 266
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    #@84
    .line 267
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    #@87
    move-result v3

    #@88
    if-eqz v3, :cond_0

    #@8a
    .line 268
    const/4 v3, 0x1

    #@8b
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@8d
    .line 271
    :cond_0
    const/4 v2, -0x1

    #@8e
    .line 273
    .local v2, "sysUiUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@90
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@93
    move-result-object v3

    #@94
    const-string/jumbo v4, "com.android.systemui"

    #@97
    .line 274
    const/4 v5, 0x0

    #@98
    .line 273
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9b
    move-result v2

    #@9c
    .line 278
    :goto_0
    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    #@9e
    .line 242
    return-void

    #@9f
    .line 275
    :catch_0
    move-exception v0

    #@a0
    .line 276
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "BluetoothManagerService"

    #@a3
    const-string/jumbo v4, "Unable to resolve SystemUI\'s UID."

    #@a6
    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a9
    goto :goto_0
.end method

.method private bluetoothStateChangeHandler(II)V
    .locals 9
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    const/16 v7, 0xd

    #@2
    const/16 v6, 0xc

    #@4
    const/16 v5, 0xa

    #@6
    const/16 v8, 0xf

    #@8
    .line 1651
    const/4 v3, 0x1

    #@9
    .line 1652
    .local v3, "isStandardBroadcast":Z
    if-eq p1, p2, :cond_3

    #@b
    .line 1654
    if-eq p2, v8, :cond_0

    #@d
    .line 1655
    if-ne p2, v5, :cond_a

    #@f
    .line 1656
    :cond_0
    if-ne p1, v7, :cond_5

    #@11
    .line 1657
    if-ne p2, v8, :cond_4

    #@13
    const/4 v2, 0x1

    #@14
    .line 1659
    .local v2, "intermediate_off":Z
    :goto_0
    if-ne p2, v5, :cond_6

    #@16
    .line 1662
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->canUnbindBluetoothService()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 1664
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    #@1f
    .line 1665
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    #@22
    .line 1666
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@25
    .line 1668
    const/4 v3, 0x0

    #@26
    .line 1713
    .end local v2    # "intermediate_off":Z
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    #@28
    .line 1714
    if-ne p1, v8, :cond_2

    #@2a
    .line 1716
    const/16 p1, 0xa

    #@2c
    .line 1718
    :cond_2
    new-instance v1, Landroid/content/Intent;

    #@2e
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    #@31
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@34
    .line 1719
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    #@37
    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3a
    .line 1720
    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    #@3d
    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@40
    .line 1721
    const/high16 v5, 0x4000000

    #@42
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@45
    .line 1722
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@47
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@49
    const-string/jumbo v7, "android.permission.BLUETOOTH"

    #@4c
    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@4f
    .line 1650
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    #@50
    .line 1657
    :cond_4
    const/4 v2, 0x0

    #@51
    .restart local v2    # "intermediate_off":Z
    goto :goto_0

    #@52
    .line 1656
    .end local v2    # "intermediate_off":Z
    :cond_5
    const/4 v2, 0x0

    #@53
    .restart local v2    # "intermediate_off":Z
    goto :goto_0

    #@54
    .line 1671
    :cond_6
    if-nez v2, :cond_9

    #@56
    .line 1674
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@58
    if-eqz v5, :cond_8

    #@5a
    .line 1676
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    #@5d
    .line 1685
    :cond_7
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@60
    .line 1687
    const/4 v3, 0x0

    #@61
    goto :goto_1

    #@62
    .line 1679
    :cond_8
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@64
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@67
    move-result-object v5

    #@68
    .line 1680
    const-string/jumbo v6, "android.hardware.bluetooth_le"

    #@6b
    .line 1679
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@6e
    move-result v5

    #@6f
    if-eqz v5, :cond_7

    #@71
    .line 1681
    new-instance v0, Landroid/content/Intent;

    #@73
    const-class v5, Landroid/bluetooth/IBluetoothGatt;

    #@75
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7c
    .line 1682
    .local v0, "i":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@7e
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@80
    const/16 v7, 0x41

    #@82
    invoke-virtual {p0, v0, v5, v7, v6}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@85
    goto :goto_2

    #@86
    .line 1689
    .end local v0    # "i":Landroid/content/Intent;
    :cond_9
    if-eqz v2, :cond_1

    #@88
    .line 1692
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@8b
    .line 1693
    const/4 v5, 0x0

    #@8c
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    #@8f
    .line 1695
    const/16 p2, 0xa

    #@91
    .line 1696
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    #@94
    goto :goto_1

    #@95
    .line 1698
    .end local v2    # "intermediate_off":Z
    :cond_a
    if-ne p2, v6, :cond_c

    #@97
    .line 1699
    if-ne p2, v6, :cond_b

    #@99
    const/4 v4, 0x1

    #@9a
    .line 1700
    .local v4, "isUp":Z
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    #@9d
    .line 1701
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@a0
    goto :goto_1

    #@a1
    .line 1699
    .end local v4    # "isUp":Z
    :cond_b
    const/4 v4, 0x0

    #@a2
    .restart local v4    # "isUp":Z
    goto :goto_3

    #@a3
    .line 1703
    .end local v4    # "isUp":Z
    :cond_c
    const/16 v5, 0xe

    #@a5
    if-eq p2, v5, :cond_d

    #@a7
    .line 1704
    const/16 v5, 0x10

    #@a9
    if-ne p2, v5, :cond_e

    #@ab
    .line 1705
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@ae
    .line 1706
    const/4 v3, 0x0

    #@af
    .line 1704
    goto/16 :goto_1

    #@b1
    .line 1708
    :cond_e
    const/16 v5, 0xb

    #@b3
    if-eq p2, v5, :cond_f

    #@b5
    .line 1709
    if-ne p2, v7, :cond_1

    #@b7
    .line 1710
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@ba
    goto/16 :goto_1
.end method

.method private canUnbindBluetoothService()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1771
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@3
    monitor-enter v2

    #@4
    .line 1778
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@6
    if-nez v3, :cond_0

    #@8
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-nez v3, :cond_1

    #@c
    :cond_0
    monitor-exit v2

    #@d
    return v1

    #@e
    .line 1779
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@10
    const/16 v4, 0x3c

    #@12
    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    monitor-exit v2

    #@19
    return v1

    #@1a
    .line 1780
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1c
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    move-result v3

    #@20
    const/16 v4, 0xa

    #@22
    if-ne v3, v4, :cond_3

    #@24
    const/4 v1, 0x1

    #@25
    :cond_3
    monitor-exit v2

    #@26
    return v1

    #@27
    .line 1781
    :catch_0
    move-exception v0

    #@28
    .line 1782
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "BluetoothManagerService"

    #@2b
    const-string/jumbo v4, "getState()"

    #@2e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    monitor-exit v2

    #@32
    .line 1785
    return v1

    #@33
    .line 1771
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method

.method private checkIfCallerIsForegroundUser()Z
    .locals 12

    #@0
    .prologue
    .line 1614
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v4

    #@4
    .line 1615
    .local v4, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 1616
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 1617
    .local v2, "callingIdentity":J
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v11, "user"

    #@11
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v8

    #@15
    check-cast v8, Landroid/os/UserManager;

    #@17
    .line 1618
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@1a
    move-result-object v7

    #@1b
    .line 1619
    .local v7, "ui":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_1

    #@1d
    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    #@1f
    .line 1620
    .local v6, "parentUser":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@22
    move-result v0

    #@23
    .line 1621
    .local v0, "callingAppId":I
    const/4 v9, 0x0

    #@24
    .line 1623
    .local v9, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v5

    #@28
    .line 1624
    .local v5, "foregroundUser":I
    if-eq v4, v5, :cond_0

    #@2a
    .line 1625
    if-ne v6, v5, :cond_2

    #@2c
    .line 1624
    :cond_0
    const/4 v9, 0x1

    #@2d
    .line 1635
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1637
    return v9

    #@31
    .line 1619
    .end local v0    # "callingAppId":I
    .end local v5    # "foregroundUser":I
    .end local v6    # "parentUser":I
    .end local v9    # "valid":Z
    :cond_1
    const/16 v6, -0x2710

    #@33
    .restart local v6    # "parentUser":I
    goto :goto_0

    #@34
    .line 1626
    .restart local v0    # "callingAppId":I
    .restart local v5    # "foregroundUser":I
    .restart local v9    # "valid":Z
    :cond_2
    const/16 v10, 0x403

    #@36
    if-eq v0, v10, :cond_0

    #@38
    .line 1627
    :try_start_1
    iget v10, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    if-ne v0, v10, :cond_3

    #@3c
    const/4 v9, 0x1

    #@3d
    goto :goto_1

    #@3e
    :cond_3
    const/4 v9, 0x0

    #@3f
    goto :goto_1

    #@40
    .line 1634
    .end local v5    # "foregroundUser":I
    :catchall_0
    move-exception v10

    #@41
    .line 1635
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 1634
    throw v10
.end method

.method private clearBleApps()V
    .locals 1

    #@0
    .prologue
    .line 529
    monitor-enter p0

    #@1
    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@6
    .line 531
    const/4 v0, 0x0

    #@7
    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 528
    return-void

    #@b
    .line 529
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method private disableBleScanMode()V
    .locals 3

    #@0
    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@6
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0xc

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 484
    const/4 v1, 0x0

    #@f
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 480
    :cond_0
    :goto_0
    return-void

    #@12
    .line 486
    :catch_0
    move-exception v0

    #@13
    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    #@16
    const-string/jumbo v2, "getState()"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method

.method private handleDisable()V
    .locals 4

    #@0
    .prologue
    .line 1595
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2
    monitor-enter v2

    #@3
    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@9
    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    :cond_0
    :goto_0
    monitor-exit v2

    #@10
    .line 1594
    return-void

    #@11
    .line 1602
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 1603
    const-string/jumbo v1, "BluetoothManagerService"

    #@1c
    const-string/jumbo v3, "IBluetooth.disable() returned false"

    #@1f
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 1605
    :catch_0
    move-exception v0

    #@24
    .line 1606
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothManagerService"

    #@27
    const-string/jumbo v3, "Unable to call disable()"

    #@2a
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 1595
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method private handleEnable(Z)V
    .locals 8
    .param p1, "quietMode"    # Z

    #@0
    .prologue
    .line 1534
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@2
    .line 1536
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@4
    monitor-enter v5

    #@5
    .line 1537
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@7
    if-nez v4, :cond_0

    #@9
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@b
    if-eqz v4, :cond_3

    #@d
    .line 1549
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v4, :cond_2

    #@11
    .line 1550
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@13
    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 1554
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@1b
    const/4 v6, 0x0

    #@1c
    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1557
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@21
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    #@23
    invoke-interface {v4, v6}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 1562
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    .line 1567
    :cond_1
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@2b
    if-nez v4, :cond_5

    #@2d
    .line 1568
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2f
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enable()Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    .line 1569
    const-string/jumbo v4, "BluetoothManagerService"

    #@38
    const-string/jumbo v6, "IBluetooth.enable() returned false"

    #@3b
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    :cond_2
    :goto_1
    monitor-exit v5

    #@3f
    .line 1533
    return-void

    #@40
    .line 1539
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@42
    const/16 v6, 0x64

    #@44
    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@47
    move-result-object v3

    #@48
    .line 1540
    .local v3, "timeoutMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4a
    const-wide/16 v6, 0xbb8

    #@4c
    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@4f
    .line 1541
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@51
    const/4 v6, 0x0

    #@52
    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    #@55
    .line 1542
    new-instance v1, Landroid/content/Intent;

    #@57
    const-class v4, Landroid/bluetooth/IBluetooth;

    #@59
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@60
    .line 1543
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@62
    .line 1544
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@64
    .line 1543
    const/16 v7, 0x41

    #@66
    invoke-virtual {p0, v1, v4, v7, v6}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@69
    move-result v4

    #@6a
    if-nez v4, :cond_4

    #@6c
    .line 1545
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@6e
    const/16 v6, 0x64

    #@70
    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@73
    goto :goto_1

    #@74
    .line 1536
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    #@75
    monitor-exit v5

    #@76
    throw v4

    #@77
    .line 1547
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_4
    const/4 v4, 0x1

    #@78
    :try_start_5
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@7a
    goto :goto_1

    #@7b
    .line 1558
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :catch_0
    move-exception v2

    #@7c
    .line 1559
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothManagerService"

    #@7f
    const-string/jumbo v6, "Unable to register BluetoothCallback"

    #@82
    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@85
    goto :goto_0

    #@86
    .line 1573
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_5
    :try_start_6
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@88
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    #@8b
    move-result v4

    #@8c
    if-nez v4, :cond_2

    #@8e
    .line 1574
    const-string/jumbo v4, "BluetoothManagerService"

    #@91
    const-string/jumbo v6, "IBluetooth.enableNoAutoConnect() returned false"

    #@94
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@97
    goto :goto_1

    #@98
    .line 1577
    :catch_1
    move-exception v0

    #@99
    .line 1578
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v4, "BluetoothManagerService"

    #@9c
    const-string/jumbo v6, "Unable to call enable()"

    #@9f
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@a2
    goto :goto_1
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 285
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 286
    const-string/jumbo v3, "airplane_mode_on"

    #@b
    .line 285
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v2

    #@f
    if-ne v2, v0, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0
.end method

.method private final isBluetoothPersistedStateOn()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 293
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@3
    .line 294
    const-string/jumbo v2, "bluetooth_on"

    #@6
    .line 293
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method private final isBluetoothPersistedStateOnBluetooth()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 301
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 302
    const-string/jumbo v3, "bluetooth_on"

    #@7
    .line 301
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v2

    #@b
    if-ne v2, v0, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    move v0, v1

    #@f
    goto :goto_0
.end method

.method private isNameAndAddressSet()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 321
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    if-lez v1, :cond_0

    #@11
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@16
    move-result v1

    #@17
    if-lez v1, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_0
    return v0
.end method

.method private loadStoredNameAndAddress()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 330
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    .line 331
    const v1, 0x1120051

    #@a
    .line 330
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 332
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@12
    const-string/jumbo v1, "bluetooth_addr_valid"

    #@15
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 335
    return-void

    #@1c
    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@1e
    const-string/jumbo v1, "bluetooth_name"

    #@21
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@27
    .line 338
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@29
    const-string/jumbo v1, "bluetooth_address"

    #@2c
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@32
    .line 328
    return-void
.end method

.method private onBluetoothGattServiceUp()V
    .locals 5

    #@0
    .prologue
    .line 547
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 548
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@c
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    #@f
    move-result v3

    #@10
    const/16 v4, 0xf

    #@12
    if-ne v3, v4, :cond_0

    #@14
    .line 549
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@16
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    #@19
    .line 552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v0

    #@1d
    .line 553
    .local v0, "callingIdentity":J
    const/4 v3, 0x1

    #@1e
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    #@21
    .line 554
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 544
    .end local v0    # "callingIdentity":J
    :cond_0
    :goto_0
    return-void

    #@25
    .line 556
    :catch_0
    move-exception v2

    #@26
    .line 557
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothManagerService"

    #@29
    const-string/jumbo v4, "Unable to call onServiceUp"

    #@2c
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_0
.end method

.method private persistBluetoothSetting(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 311
    const-string/jumbo v1, "bluetooth_on"

    #@9
    .line 310
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 309
    return-void
.end method

.method private recoverBluetoothServiceFromError()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1789
    const-string/jumbo v2, "BluetoothManagerService"

    #@4
    const-string/jumbo v3, "recoverBluetoothServiceFromError"

    #@7
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 1790
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@c
    monitor-enter v3

    #@d
    .line 1791
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1794
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@13
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    #@15
    invoke-interface {v2, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :cond_0
    :goto_0
    monitor-exit v3

    #@19
    .line 1801
    const-wide/16 v2, 0x1f4

    #@1b
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@1e
    .line 1804
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    #@21
    .line 1806
    const/4 v2, 0x1

    #@22
    invoke-direct {p0, v5, v2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    #@25
    .line 1808
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    #@28
    .line 1809
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2a
    monitor-enter v3

    #@2b
    .line 1810
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2d
    if-eqz v2, :cond_1

    #@2f
    .line 1811
    const/4 v2, 0x0

    #@30
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@32
    .line 1813
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@34
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@36
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@39
    .line 1815
    :cond_1
    const/4 v2, 0x0

    #@3a
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c
    monitor-exit v3

    #@3d
    .line 1818
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@3f
    const/16 v3, 0x3c

    #@41
    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@44
    .line 1819
    const/16 v2, 0xa

    #@46
    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@48
    .line 1821
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@4a
    .line 1823
    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@4c
    add-int/lit8 v3, v2, 0x1

    #@4e
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@50
    const/4 v3, 0x6

    #@51
    if-ge v2, v3, :cond_2

    #@53
    .line 1825
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@55
    .line 1826
    const/16 v3, 0x2a

    #@57
    .line 1825
    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@5a
    move-result-object v1

    #@5b
    .line 1827
    .local v1, "restartMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@5d
    const-wide/16 v4, 0xbb8

    #@5f
    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@62
    .line 1788
    .end local v1    # "restartMsg":Landroid/os/Message;
    :cond_2
    return-void

    #@63
    .line 1795
    :catch_0
    move-exception v0

    #@64
    .line 1796
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "BluetoothManagerService"

    #@67
    const-string/jumbo v4, "Unable to unregister"

    #@6a
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 1790
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@6f
    monitor-exit v3

    #@70
    throw v2

    #@71
    .line 1809
    :catchall_1
    move-exception v2

    #@72
    monitor-exit v3

    #@73
    throw v2
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 161
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v2

    #@6
    .line 163
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "airplane_mode_radios"

    #@9
    .line 162
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 165
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string/jumbo v4, "airplane_mode_toggleable_radios"

    #@10
    .line 164
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 166
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    #@16
    const/4 v1, 0x1

    #@17
    .line 168
    :goto_0
    if-eqz v1, :cond_0

    #@19
    .line 169
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@1c
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 160
    :cond_0
    return-void

    #@20
    .line 167
    :cond_1
    const-string/jumbo v4, "bluetooth"

    #@23
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@26
    move-result v1

    #@27
    .local v1, "mIsAirplaneSensitive":Z
    goto :goto_0
.end method

.method private registerForBleScanModeChange()V
    .locals 4

    #@0
    .prologue
    .line 459
    new-instance v0, Lcom/android/server/BluetoothManagerService$3;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    #@6
    .line 474
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@8
    .line 475
    const-string/jumbo v2, "ble_scan_always_enabled"

    #@b
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@e
    move-result-object v2

    #@f
    .line 476
    const/4 v3, 0x0

    #@10
    .line 474
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@13
    .line 458
    return-void
.end method

.method private sendBleStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    .line 1643
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1644
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e
    .line 1645
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 1646
    const/high16 v1, 0x4000000

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@19
    .line 1647
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@1b
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1d
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    #@20
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@23
    .line 1640
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .locals 6

    #@0
    .prologue
    .line 980
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2
    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    .line 983
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@a
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@d
    move-result v2

    #@e
    .line 984
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "Broadcasting onBluetoothServiceDown() to "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, " receivers."

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 985
    const/4 v1, 0x0

    #@30
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@32
    .line 987
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@34
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    #@3a
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 985
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 988
    :catch_0
    move-exception v0

    #@41
    .line 989
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    #@44
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "Unable to call onBluetoothServiceDown() on callback #"

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    goto :goto_1

    #@5c
    .line 992
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@5d
    .line 993
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@5f
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@62
    .line 992
    throw v3

    #@63
    .line 993
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@65
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@68
    .line 979
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method private sendBluetoothServiceUpCallback()V
    .locals 6

    #@0
    .prologue
    .line 959
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2
    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    .line 962
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@a
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@d
    move-result v2

    #@e
    .line 963
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "Broadcasting onBluetoothServiceUp() to "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, " receivers."

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 964
    const/4 v1, 0x0

    #@30
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@32
    .line 966
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@34
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    #@3a
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@3c
    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 964
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 967
    :catch_0
    move-exception v0

    #@43
    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Unable to call onBluetoothServiceUp() on callback #"

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    goto :goto_1

    #@5e
    .line 971
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@5f
    .line 972
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@61
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@64
    .line 971
    throw v3

    #@65
    .line 972
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@67
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@6a
    .line 958
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method private sendBluetoothStateCallback(Z)V
    .locals 6
    .param p1, "isUp"    # Z

    #@0
    .prologue
    .line 941
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result v2

    #@6
    .line 943
    .local v2, "n":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 945
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@11
    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 943
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 946
    :catch_0
    move-exception v0

    #@18
    .line 947
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Unable to call onBluetoothStateChange() on callback #"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    goto :goto_1

    #@33
    .line 950
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@34
    .line 951
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@36
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@39
    .line 950
    throw v3

    #@3a
    .line 951
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@3c
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@3f
    .line 939
    return-void
.end method

.method private sendBrEdrDownCallback()V
    .locals 3

    #@0
    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 569
    const-string/jumbo v1, "BluetoothManagerService"

    #@7
    const-string/jumbo v2, "Bluetooth handle is null"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 570
    return-void

    #@e
    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1

    #@14
    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@16
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 565
    :goto_0
    return-void

    #@1a
    .line 576
    :catch_0
    move-exception v0

    #@1b
    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    #@1e
    const-string/jumbo v2, "Call to onBrEdrDown() failed."

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0

    #@25
    .line 582
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@27
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->unregAll()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2a
    goto :goto_0

    #@2b
    .line 583
    :catch_1
    move-exception v0

    #@2c
    .line 584
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    #@2f
    const-string/jumbo v2, "Unable to disconnect all apps."

    #@32
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0
.end method

.method private sendDisableMsg()V
    .locals 3

    #@0
    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4
    const/4 v2, 0x2

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 1761
    return-void
.end method

.method private sendEnableMsg(Z)V
    .locals 5
    .param p1, "quietMode"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1766
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@6
    .line 1767
    if-eqz p1, :cond_0

    #@8
    move v0, v1

    #@9
    .line 1766
    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 1765
    return-void

    #@11
    :cond_0
    move v0, v2

    #@12
    .line 1767
    goto :goto_0
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 349
    if-eqz p1, :cond_0

    #@2
    .line 350
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v1, "bluetooth_name"

    #@7
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    .line 351
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@c
    .line 356
    :cond_0
    if-eqz p2, :cond_1

    #@e
    .line 357
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@10
    const-string/jumbo v1, "bluetooth_address"

    #@13
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@16
    .line 358
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@18
    .line 363
    :cond_1
    if-eqz p1, :cond_2

    #@1a
    if-eqz p2, :cond_2

    #@1c
    .line 364
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@1e
    const-string/jumbo v1, "bluetooth_addr_valid"

    #@21
    const/4 v2, 0x1

    #@22
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@25
    .line 348
    :cond_2
    return-void
.end method

.method private unbindAllBluetoothProfileServices()V
    .locals 8

    #@0
    .prologue
    .line 758
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@2
    monitor-enter v5

    #@3
    .line 759
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@5
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/Integer;

    #@19
    .line 760
    .local v1, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@1b
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 762
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 766
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap2(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 758
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "i$iterator":Ljava/util/Iterator;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 763
    .restart local v1    # "i":Ljava/lang/Integer;
    .restart local v2    # "i$iterator":Ljava/util/Iterator;
    .restart local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catch_0
    move-exception v0

    #@2e
    .line 764
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string/jumbo v4, "BluetoothManagerService"

    #@31
    new-instance v6, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v7, "Unable to unbind service with intent: "

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    iget-object v7, v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    goto :goto_1

    #@4b
    .line 768
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@4d
    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    monitor-exit v5

    #@51
    .line 757
    return-void
.end method

.method private waitForOnOff(ZZ)Z
    .locals 7
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    #@0
    .prologue
    const/16 v6, 0xc

    #@2
    const/16 v5, 0xa

    #@4
    const/4 v4, 0x1

    #@5
    .line 1733
    const/4 v1, 0x0

    #@6
    .line 1734
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    #@8
    .line 1735
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@a
    monitor-enter v3

    #@b
    .line 1737
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-nez v2, :cond_1

    #@f
    :goto_1
    monitor-exit v3

    #@10
    .line 1757
    :cond_0
    const-string/jumbo v2, "BluetoothManagerService"

    #@13
    const-string/jumbo v3, "waitForOnOff time out"

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 1758
    const/4 v2, 0x0

    #@1a
    return v2

    #@1b
    .line 1738
    :cond_1
    if-eqz p1, :cond_2

    #@1d
    .line 1739
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1f
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result v2

    #@23
    if-ne v2, v6, :cond_4

    #@25
    monitor-exit v3

    #@26
    return v4

    #@27
    .line 1740
    :cond_2
    if-eqz p2, :cond_3

    #@29
    .line 1741
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2b
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    move-result v2

    #@2f
    if-ne v2, v5, :cond_4

    #@31
    monitor-exit v3

    #@32
    return v4

    #@33
    .line 1743
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@35
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    move-result v2

    #@39
    if-eq v2, v6, :cond_4

    #@3b
    monitor-exit v3

    #@3c
    return v4

    #@3d
    .line 1745
    :catch_0
    move-exception v0

    #@3e
    .line 1746
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "BluetoothManagerService"

    #@41
    const-string/jumbo v4, "getState()"

    #@44
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@47
    goto :goto_1

    #@48
    .line 1735
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@49
    monitor-exit v3

    #@4a
    throw v2

    #@4b
    :cond_4
    monitor-exit v3

    #@4c
    .line 1750
    if-nez p1, :cond_5

    #@4e
    if-eqz p2, :cond_6

    #@50
    .line 1751
    :cond_5
    const-wide/16 v2, 0x12c

    #@52
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@55
    .line 1755
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@57
    goto :goto_0

    #@58
    .line 1753
    :cond_6
    const-wide/16 v2, 0x32

    #@5a
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@5d
    goto :goto_2
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .locals 8
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 712
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 717
    return v6

    #@7
    .line 719
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@9
    monitor-enter v4

    #@a
    .line 720
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@c
    new-instance v5, Ljava/lang/Integer;

    #@e
    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    #@11
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 721
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_3

    #@19
    .line 727
    if-eq p1, v7, :cond_1

    #@1b
    monitor-exit v4

    #@1c
    return v6

    #@1d
    .line 729
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    #@1f
    const-class v3, Landroid/bluetooth/IBluetoothHeadset;

    #@21
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@28
    .line 730
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    #@2a
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-direct {v2, p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    #@2d
    .line 731
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_2

    #@33
    monitor-exit v4

    #@34
    return v6

    #@35
    .line 733
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@37
    new-instance v5, Ljava/lang/Integer;

    #@39
    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    #@3c
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    monitor-exit v4

    #@40
    .line 738
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@42
    const/16 v4, 0x190

    #@44
    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@47
    move-result-object v0

    #@48
    .line 739
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@4a
    .line 740
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c
    .line 741
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4e
    const-wide/16 v4, 0x64

    #@50
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@53
    .line 742
    return v7

    #@54
    .line 719
    .end local v0    # "addProxyMsg":Landroid/os/Message;
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v3

    #@55
    monitor-exit v4

    #@56
    throw v3
.end method

.method public disable(Z)Z
    .locals 6
    .param p1, "persist"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 646
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    #@6
    .line 647
    const-string/jumbo v4, "Need BLUETOOTH ADMIN permissicacheNameAndAddresson"

    #@9
    .line 646
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v2

    #@10
    const/16 v3, 0x3e8

    #@12
    if-eq v2, v3, :cond_0

    #@14
    .line 650
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 660
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    monitor-enter v3

    #@1d
    .line 661
    if-eqz p1, :cond_1

    #@1f
    .line 663
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 664
    .local v0, "callingIdentity":J
    const/4 v2, 0x0

    #@24
    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    #@27
    .line 665
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 667
    .end local v0    # "callingIdentity":J
    :cond_1
    const/4 v2, 0x0

    #@2b
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@2d
    .line 668
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v3

    #@31
    .line 670
    const/4 v2, 0x1

    #@32
    return v2

    #@33
    .line 651
    :cond_2
    const-string/jumbo v2, "BluetoothManagerService"

    #@36
    const-string/jumbo v3, "disable(): not allowed for non-active and non system user"

    #@39
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 652
    return v5

    #@3d
    .line 660
    :catchall_0
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1585
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@a
    move-result-object v0

    #@b
    .line 1586
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@e
    .line 1587
    if-eqz v0, :cond_0

    #@10
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 1591
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 1588
    :cond_0
    const-string/jumbo v1, "BluetoothManagerService"

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "Fail to bind to: "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 1589
    return v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1835
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.DUMP"

    #@5
    const-string/jumbo v6, "BluetoothManagerService"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1837
    const-string/jumbo v4, "Bluetooth Status"

    #@e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 1838
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "  enabled: "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 1839
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "  state: "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    iget v5, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 1840
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "  address: "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c
    .line 1841
    new-instance v4, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v5, "  name: "

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    const-string/jumbo v5, "\n"

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 1842
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@7f
    .line 1844
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@81
    if-nez v4, :cond_1

    #@83
    .line 1845
    const-string/jumbo v4, "Bluetooth Service not connected"

    #@86
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 1834
    :cond_0
    :goto_0
    return-void

    #@8a
    .line 1847
    :cond_1
    const/4 v2, 0x0

    #@8b
    .line 1849
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string/jumbo v4, "Bonded devices:"

    #@8e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 1850
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@93
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    #@96
    move-result-object v5

    #@97
    const/4 v4, 0x0

    #@98
    array-length v6, v5

    #@99
    :goto_1
    if-ge v4, v6, :cond_2

    #@9b
    aget-object v0, v5, v4

    #@9d
    .line 1851
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v7, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v8, "  "

    #@a5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@ac
    move-result-object v8

    #@ad
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    .line 1852
    const-string/jumbo v8, " ["

    #@b4
    .line 1851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v7

    #@b8
    .line 1852
    sget-object v8, Lcom/android/server/BluetoothManagerService;->DEVICE_TYPE_NAMES:[Ljava/lang/String;

    #@ba
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    #@bd
    move-result v9

    #@be
    aget-object v8, v8, v9

    #@c0
    .line 1851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v7

    #@c4
    .line 1852
    const-string/jumbo v8, "] "

    #@c7
    .line 1851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    .line 1853
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@ce
    move-result-object v8

    #@cf
    .line 1851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v7

    #@d7
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@da
    .line 1850
    add-int/lit8 v4, v4, 0x1

    #@dc
    goto :goto_1

    #@dd
    .line 1855
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@e0
    .line 1857
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@e3
    move-result-object v2

    #@e4
    .line 1858
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@e6
    invoke-interface {v4, v2}, Landroid/bluetooth/IBluetooth;->dump(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e9
    .line 1864
    if-eqz v2, :cond_0

    #@eb
    .line 1866
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@ee
    goto :goto_0

    #@ef
    .line 1867
    :catch_0
    move-exception v1

    #@f0
    .line 1868
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "IOException attempting to close() fd"

    #@f3
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f6
    goto :goto_0

    #@f7
    .line 1861
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    #@f8
    .line 1862
    .restart local v1    # "ioe":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v4, "IOException attempting to dup() fd"

    #@fb
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@fe
    .line 1864
    if-eqz v2, :cond_0

    #@100
    .line 1866
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@103
    goto :goto_0

    #@104
    .line 1867
    :catch_2
    move-exception v1

    #@105
    .line 1868
    const-string/jumbo v4, "IOException attempting to close() fd"

    #@108
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 1859
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v3

    #@10e
    .line 1860
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v4, "RemoteException while calling Bluetooth Service"

    #@111
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@114
    .line 1864
    if-eqz v2, :cond_0

    #@116
    .line 1866
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@119
    goto/16 :goto_0

    #@11b
    .line 1867
    :catch_4
    move-exception v1

    #@11c
    .line 1868
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "IOException attempting to close() fd"

    #@11f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@122
    goto/16 :goto_0

    #@124
    .line 1863
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@125
    .line 1864
    if-eqz v2, :cond_3

    #@127
    .line 1866
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    #@12a
    .line 1863
    :cond_3
    :goto_2
    throw v4

    #@12b
    .line 1867
    :catch_5
    move-exception v1

    #@12c
    .line 1868
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "IOException attempting to close() fd"

    #@12f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@132
    goto :goto_2
.end method

.method public enable()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x3e8

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 623
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    #@15
    .line 629
    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    #@18
    .line 628
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 635
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1d
    monitor-enter v1

    #@1e
    .line 636
    const/4 v0, 0x0

    #@1f
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@21
    .line 637
    const/4 v0, 0x1

    #@22
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@24
    .line 639
    const/4 v0, 0x0

    #@25
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 642
    return v3

    #@2a
    .line 624
    :cond_1
    const-string/jumbo v0, "BluetoothManagerService"

    #@2d
    const-string/jumbo v1, "enable(): not allowed for non-active and non system user"

    #@30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 625
    return v2

    #@34
    .line 635
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0
.end method

.method public enableNoAutoConnect()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 600
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    #@6
    .line 601
    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    #@9
    .line 600
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@13
    move-result v0

    #@14
    .line 609
    .local v0, "callingAppId":I
    const/16 v1, 0x403

    #@16
    if-eq v0, v1, :cond_0

    #@18
    .line 610
    new-instance v1, Ljava/lang/SecurityException;

    #@1a
    const-string/jumbo v2, "no permission to enable Bluetooth quietly"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 613
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@23
    monitor-enter v2

    #@24
    .line 614
    const/4 v1, 0x1

    #@25
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@27
    .line 615
    const/4 v1, 0x1

    #@28
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@2a
    .line 616
    const/4 v1, 0x1

    #@2b
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v2

    #@2f
    .line 618
    return v4

    #@30
    .line 613
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 999
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@6
    .line 1000
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@9
    .line 999
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1002
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v1

    #@10
    const/16 v2, 0x3e8

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 1003
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@1c
    const-string/jumbo v2, "android.permission.LOCAL_MAC_ADDRESS"

    #@1f
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 1010
    const-string/jumbo v1, "02:00:00:00:00:00"

    #@28
    return-object v1

    #@29
    .line 1004
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@2c
    const-string/jumbo v2, "getAddress(): not allowed for non-active and non system user"

    #@2f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 1005
    return-object v4

    #@33
    .line 1013
    :cond_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@35
    monitor-enter v2

    #@36
    .line 1014
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 1016
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@3c
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    move-result-object v1

    #@40
    monitor-exit v2

    #@41
    return-object v1

    #@42
    .line 1017
    :catch_0
    move-exception v0

    #@43
    .line 1018
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothManagerService"

    #@46
    const-string/jumbo v3, "getAddress(): Unable to retrieve address remotely..Returning cached address"

    #@49
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    monitor-exit v2

    #@4d
    .line 1025
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@4f
    return-object v1

    #@50
    .line 1013
    :catchall_0
    move-exception v1

    #@51
    monitor-exit v2

    #@52
    throw v1
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .locals 1

    #@0
    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1029
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@6
    .line 1030
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@9
    .line 1029
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1032
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v1

    #@10
    const/16 v2, 0x3e8

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 1033
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1038
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@1c
    monitor-enter v2

    #@1d
    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 1041
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@23
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result-object v1

    #@27
    monitor-exit v2

    #@28
    return-object v1

    #@29
    .line 1034
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@2c
    const-string/jumbo v2, "getName(): not allowed for non-active and non system user"

    #@2f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 1035
    return-object v4

    #@33
    .line 1042
    :catch_0
    move-exception v0

    #@34
    .line 1043
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothManagerService"

    #@37
    const-string/jumbo v3, "getName(): Unable to retrieve name remotely..Returning cached name"

    #@3a
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    monitor-exit v2

    #@3e
    .line 1050
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@40
    return-object v1

    #@41
    .line 1038
    :catchall_0
    move-exception v1

    #@42
    monitor-exit v2

    #@43
    throw v1
.end method

.method public getNameAndAddress()V
    .locals 3

    #@0
    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2
    const/16 v2, 0xc8

    #@4
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 596
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 590
    return-void
.end method

.method public handleOnBootPhase()V
    .locals 1

    #@0
    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 780
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    #@f
    .line 782
    :cond_0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 785
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->getNameAndAddress()V

    #@18
    .line 776
    :cond_1
    return-void
.end method

.method public handleOnSwitchUser(I)V
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4
    const/16 v2, 0x12c

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 792
    return-void
.end method

.method public isBleAppPresent()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 538
    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@3
    .line 451
    const-string/jumbo v3, "ble_scan_always_enabled"

    #@6
    .line 450
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :cond_0
    return v1

    #@e
    .line 452
    :catch_0
    move-exception v0

    #@f
    .line 454
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method public isEnabled()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v2

    #@5
    const/16 v3, 0x3e8

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 411
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 416
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@11
    monitor-enter v2

    #@12
    .line 418
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@14
    if-eqz v3, :cond_1

    #@16
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@18
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v1

    #@1c
    :cond_1
    monitor-exit v2

    #@1d
    return v1

    #@1e
    .line 412
    :cond_2
    const-string/jumbo v2, "BluetoothManagerService"

    #@21
    const-string/jumbo v3, "isEnabled(): not allowed for non-active and non system user"

    #@24
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 413
    return v1

    #@28
    .line 419
    :catch_0
    move-exception v0

    #@29
    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "BluetoothManagerService"

    #@2c
    const-string/jumbo v4, "isEnabled()"

    #@2f
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    monitor-exit v2

    #@33
    .line 423
    return v1

    #@34
    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 369
    if-nez p1, :cond_0

    #@3
    .line 370
    const-string/jumbo v1, "BluetoothManagerService"

    #@6
    const-string/jumbo v2, "Callback is null in registerAdapter"

    #@9
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 371
    return-object v3

    #@d
    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@f
    const/16 v2, 0x14

    #@11
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 374
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    .line 375
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@19
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 376
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@1e
    monitor-enter v1

    #@1f
    .line 377
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v1

    #@22
    return-object v2

    #@23
    .line 376
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v1

    #@25
    throw v2
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@0
    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@5
    .line 395
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@8
    .line 394
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 396
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@d
    const/16 v2, 0x1e

    #@f
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    .line 397
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    .line 398
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@17
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 393
    return-void
.end method

.method public unbindAndFinish()V
    .locals 4

    #@0
    .prologue
    .line 679
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2
    monitor-enter v2

    #@3
    .line 680
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    return-void

    #@9
    .line 681
    :cond_0
    const/4 v1, 0x1

    #@a
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    #@c
    .line 682
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 683
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@12
    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 686
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1a
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    #@1c
    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    .line 692
    :cond_1
    :goto_0
    const/4 v1, 0x0

    #@20
    :try_start_3
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@22
    .line 694
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@24
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@26
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@29
    .line 695
    const/4 v1, 0x0

    #@2a
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    #@2c
    .line 696
    const/4 v1, 0x0

    #@2d
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@2f
    .line 700
    :goto_1
    const/4 v1, 0x0

    #@30
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@32
    monitor-exit v2

    #@33
    .line 673
    return-void

    #@34
    .line 687
    :catch_0
    move-exception v0

    #@35
    .line 688
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v1, "BluetoothManagerService"

    #@38
    const-string/jumbo v3, "Unable to unregister BluetoothCallback"

    #@3b
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 679
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1

    #@42
    .line 698
    :cond_2
    const/4 v1, 0x0

    #@43
    :try_start_5
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@45
    goto :goto_1
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 4
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@0
    .prologue
    .line 748
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@5
    new-instance v3, Ljava/lang/Integer;

    #@7
    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    #@a
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 750
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_0

    #@12
    monitor-exit v2

    #@13
    .line 751
    return-void

    #@14
    .line 753
    :cond_0
    :try_start_1
    invoke-static {v0, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap3(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 747
    return-void

    #@19
    .line 748
    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    #@0
    .prologue
    .line 382
    if-nez p1, :cond_0

    #@2
    .line 383
    const-string/jumbo v1, "BluetoothManagerService"

    #@5
    const-string/jumbo v2, "Callback is null in unregisterAdapter"

    #@8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 384
    return-void

    #@c
    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@11
    .line 387
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@14
    .line 386
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 388
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@19
    const/16 v2, 0x15

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@1e
    move-result-object v0

    #@1f
    .line 389
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    .line 390
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@23
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 381
    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@0
    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@5
    .line 403
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@8
    .line 402
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 404
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@d
    const/16 v2, 0x1f

    #@f
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    .line 405
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    .line 406
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@17
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 401
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;Z)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 492
    if-eqz p2, :cond_3

    #@3
    .line 493
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@5
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    #@b
    .line 494
    .local v2, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v2, :cond_1

    #@d
    .line 495
    new-instance v0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    #@f
    invoke-direct {v0, p0}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;)V

    #@12
    .line 497
    .local v0, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/4 v3, 0x0

    #@13
    :try_start_0
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 501
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@18
    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 502
    monitor-enter p0

    #@1c
    .line 503
    :try_start_1
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    sput v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_0
    :goto_0
    monitor-exit p0

    #@23
    .line 521
    :cond_1
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@25
    if-nez v3, :cond_2

    #@27
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@29
    if-eqz v3, :cond_2

    #@2b
    .line 522
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    #@2e
    .line 524
    :cond_2
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@30
    return v3

    #@31
    .line 498
    .restart local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catch_0
    move-exception v1

    #@32
    .line 499
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v4, "Wake lock is already dead."

    #@37
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 502
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@3c
    monitor-exit p0

    #@3d
    throw v3

    #@3e
    .line 509
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@40
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    #@46
    .line 510
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v2, :cond_1

    #@48
    .line 512
    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@4b
    .line 513
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@4d
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 514
    monitor-enter p0

    #@51
    .line 515
    :try_start_2
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@53
    if-lez v3, :cond_0

    #@55
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@57
    add-int/lit8 v3, v3, -0x1

    #@59
    sput v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5b
    goto :goto_0

    #@5c
    .line 514
    :catchall_1
    move-exception v3

    #@5d
    monitor-exit p0

    #@5e
    throw v3
.end method
