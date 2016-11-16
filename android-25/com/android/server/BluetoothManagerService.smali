.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$1;,
        Lcom/android/server/BluetoothManagerService$2;,
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
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

.field private static final DBG:Z = true

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

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final MESSAGE_USER_UNLOCKED:I = 0x12d

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

.field private mBluetoothBinder:Landroid/os/IBinder;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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

.method static synthetic -get10(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@2
    return v0
.end method

.method static synthetic -get15(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@2
    return v0
.end method

.method static synthetic -get16(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@2
    return v0
.end method

.method static synthetic -get18(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
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

.method static synthetic -get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

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

.method static synthetic -set10(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@2
    return p1
.end method

.method static synthetic -set7(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@2
    return p1
.end method

.method static synthetic -set9(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

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

.method static synthetic -wrap10(Lcom/android/server/BluetoothManagerService;I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p1, "quietMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z
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

.method static synthetic -wrap4(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p1, "quietMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@3
    .line 62
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
    .line 131
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@7
    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    #@a
    .line 130
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@c
    .line 135
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@e
    .line 152
    new-instance v3, Ljava/util/HashMap;

    #@10
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 151
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@15
    .line 167
    new-instance v3, Lcom/android/server/BluetoothManagerService$1;

    #@17
    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    #@1a
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    #@1c
    .line 175
    new-instance v3, Lcom/android/server/BluetoothManagerService$2;

    #@1e
    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    #@21
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@23
    .line 468
    new-instance v3, Ljava/util/HashMap;

    #@25
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@28
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@2a
    .line 1122
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2c
    invoke-direct {v3, p0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;)V

    #@2f
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@31
    .line 243
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@33
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {v3, p0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    #@3e
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@40
    .line 245
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@42
    .line 246
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@44
    .line 247
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    #@46
    .line 248
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@48
    .line 249
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@4a
    .line 250
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    #@4c
    .line 251
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@4e
    .line 252
    const/16 v3, 0xa

    #@50
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@52
    .line 253
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@54
    .line 254
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@56
    .line 255
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@58
    .line 256
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@5a
    .line 257
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@5c
    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5f
    move-result-object v3

    #@60
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@62
    .line 260
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    #@65
    .line 261
    new-instance v3, Landroid/os/RemoteCallbackList;

    #@67
    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    #@6a
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@6c
    .line 262
    new-instance v3, Landroid/os/RemoteCallbackList;

    #@6e
    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    #@71
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@73
    .line 263
    new-instance v1, Landroid/content/IntentFilter;

    #@75
    const-string/jumbo v3, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    #@78
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@7b
    .line 264
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    #@7e
    .line 265
    const/16 v3, 0x3e8

    #@80
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    #@83
    .line 266
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@85
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@87
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@8a
    .line 267
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    #@8d
    .line 268
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    #@90
    move-result v3

    #@91
    if-eqz v3, :cond_0

    #@93
    .line 269
    const/4 v3, 0x1

    #@94
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@96
    .line 272
    :cond_0
    const/4 v2, -0x1

    #@97
    .line 274
    .local v2, "sysUiUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@99
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9c
    move-result-object v3

    #@9d
    const-string/jumbo v4, "com.android.systemui"

    #@a0
    .line 275
    const/high16 v5, 0x100000

    #@a2
    const/4 v6, 0x0

    #@a3
    .line 274
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a6
    move-result v2

    #@a7
    .line 280
    :goto_0
    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    #@a9
    .line 242
    return-void

    #@aa
    .line 276
    :catch_0
    move-exception v0

    #@ab
    .line 278
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "BluetoothManagerService"

    #@ae
    const-string/jumbo v4, "Unable to resolve SystemUI\'s UID."

    #@b1
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b4
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
    const/4 v4, 0x0

    #@7
    const/16 v8, 0xf

    #@9
    .line 1680
    const/4 v3, 0x1

    #@a
    .line 1681
    .local v3, "isStandardBroadcast":Z
    if-eq p1, p2, :cond_3

    #@c
    .line 1683
    if-eq p2, v8, :cond_0

    #@e
    .line 1684
    if-ne p2, v5, :cond_a

    #@10
    .line 1685
    :cond_0
    if-ne p1, v7, :cond_5

    #@12
    .line 1686
    if-ne p2, v8, :cond_4

    #@14
    const/4 v2, 0x1

    #@15
    .line 1688
    .local v2, "intermediate_off":Z
    :goto_0
    if-ne p2, v5, :cond_6

    #@17
    .line 1690
    const-string/jumbo v5, "BluetoothManagerService"

    #@1a
    const-string/jumbo v6, "Bluetooth is complete turn off"

    #@1d
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1691
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    #@23
    .line 1692
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    #@26
    .line 1693
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@29
    .line 1695
    const/4 v3, 0x0

    #@2a
    .line 1739
    .end local v2    # "intermediate_off":Z
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    #@2c
    .line 1740
    if-ne p1, v8, :cond_2

    #@2e
    .line 1742
    const/16 p1, 0xa

    #@30
    .line 1744
    :cond_2
    new-instance v1, Landroid/content/Intent;

    #@32
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    #@35
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@38
    .line 1745
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    #@3b
    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 1746
    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    #@41
    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@44
    .line 1747
    const/high16 v5, 0x4000000

    #@46
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@49
    .line 1748
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@4b
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4d
    const-string/jumbo v7, "android.permission.BLUETOOTH"

    #@50
    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@53
    .line 1679
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    #@54
    .line 1686
    :cond_4
    const/4 v2, 0x0

    #@55
    .restart local v2    # "intermediate_off":Z
    goto :goto_0

    #@56
    .line 1685
    .end local v2    # "intermediate_off":Z
    :cond_5
    const/4 v2, 0x0

    #@57
    .restart local v2    # "intermediate_off":Z
    goto :goto_0

    #@58
    .line 1697
    :cond_6
    if-nez v2, :cond_9

    #@5a
    .line 1699
    const-string/jumbo v5, "BluetoothManagerService"

    #@5d
    const-string/jumbo v6, "Bluetooth is in LE only mode"

    #@60
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 1700
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@65
    if-eqz v5, :cond_8

    #@67
    .line 1701
    const-string/jumbo v5, "BluetoothManagerService"

    #@6a
    const-string/jumbo v6, "Calling BluetoothGattServiceUp"

    #@6d
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 1702
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    #@73
    .line 1711
    :cond_7
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@76
    .line 1713
    const/4 v3, 0x0

    #@77
    goto :goto_1

    #@78
    .line 1704
    :cond_8
    const-string/jumbo v5, "BluetoothManagerService"

    #@7b
    const-string/jumbo v6, "Binding Bluetooth GATT service"

    #@7e
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 1705
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@83
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@86
    move-result-object v5

    #@87
    .line 1706
    const-string/jumbo v6, "android.hardware.bluetooth_le"

    #@8a
    .line 1705
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@8d
    move-result v5

    #@8e
    if-eqz v5, :cond_7

    #@90
    .line 1707
    new-instance v0, Landroid/content/Intent;

    #@92
    const-class v5, Landroid/bluetooth/IBluetoothGatt;

    #@94
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9b
    .line 1708
    .local v0, "i":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@9d
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@9f
    const/16 v7, 0x41

    #@a1
    invoke-virtual {p0, v0, v5, v7, v6}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@a4
    goto :goto_2

    #@a5
    .line 1715
    .end local v0    # "i":Landroid/content/Intent;
    :cond_9
    if-eqz v2, :cond_1

    #@a7
    .line 1716
    const-string/jumbo v5, "BluetoothManagerService"

    #@aa
    const-string/jumbo v6, "Intermediate off, back to LE only mode"

    #@ad
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 1718
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@b3
    .line 1719
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    #@b6
    .line 1721
    const/16 p2, 0xa

    #@b8
    .line 1722
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    #@bb
    goto/16 :goto_1

    #@bd
    .line 1724
    .end local v2    # "intermediate_off":Z
    :cond_a
    if-ne p2, v6, :cond_c

    #@bf
    .line 1725
    if-ne p2, v6, :cond_b

    #@c1
    const/4 v4, 0x1

    #@c2
    .line 1726
    .local v4, "isUp":Z
    :cond_b
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    #@c5
    .line 1727
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@c8
    goto/16 :goto_1

    #@ca
    .line 1729
    .end local v4    # "isUp":Z
    :cond_c
    const/16 v5, 0xe

    #@cc
    if-eq p2, v5, :cond_d

    #@ce
    .line 1730
    const/16 v5, 0x10

    #@d0
    if-ne p2, v5, :cond_e

    #@d2
    .line 1731
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@d5
    .line 1732
    const/4 v3, 0x0

    #@d6
    .line 1730
    goto/16 :goto_1

    #@d8
    .line 1734
    :cond_e
    const/16 v5, 0xb

    #@da
    if-eq p2, v5, :cond_f

    #@dc
    .line 1735
    if-ne p2, v7, :cond_1

    #@de
    .line 1736
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    #@e1
    goto/16 :goto_1
.end method

.method private checkIfCallerIsForegroundUser()Z
    .locals 13

    #@0
    .prologue
    .line 1643
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v4

    #@4
    .line 1644
    .local v4, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 1645
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 1646
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
    .line 1647
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@1a
    move-result-object v7

    #@1b
    .line 1648
    .local v7, "ui":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_1

    #@1d
    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    #@1f
    .line 1649
    .local v6, "parentUser":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@22
    move-result v0

    #@23
    .line 1650
    .local v0, "callingAppId":I
    const/4 v9, 0x0

    #@24
    .line 1652
    .local v9, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@27
    move-result v5

    #@28
    .line 1653
    .local v5, "foregroundUser":I
    if-eq v4, v5, :cond_0

    #@2a
    .line 1654
    if-ne v6, v5, :cond_2

    #@2c
    .line 1653
    :cond_0
    const/4 v9, 0x1

    #@2d
    .line 1658
    :goto_1
    const-string/jumbo v10, "BluetoothManagerService"

    #@30
    new-instance v11, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v12, "checkIfCallerIsForegroundUser: valid="

    #@38
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v11

    #@3c
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v11

    #@40
    .line 1659
    const-string/jumbo v12, " callingUser="

    #@43
    .line 1658
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v11

    #@47
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v11

    #@4b
    .line 1660
    const-string/jumbo v12, " parentUser="

    #@4e
    .line 1658
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v11

    #@52
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v11

    #@56
    .line 1661
    const-string/jumbo v12, " foregroundUser="

    #@59
    .line 1658
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v11

    #@5d
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v11

    #@61
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v11

    #@65
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    .line 1664
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6b
    .line 1666
    return v9

    #@6c
    .line 1648
    .end local v0    # "callingAppId":I
    .end local v5    # "foregroundUser":I
    .end local v6    # "parentUser":I
    .end local v9    # "valid":Z
    :cond_1
    const/16 v6, -0x2710

    #@6e
    .restart local v6    # "parentUser":I
    goto :goto_0

    #@6f
    .line 1655
    .restart local v0    # "callingAppId":I
    .restart local v5    # "foregroundUser":I
    .restart local v9    # "valid":Z
    :cond_2
    const/16 v10, 0x403

    #@71
    if-eq v0, v10, :cond_0

    #@73
    .line 1656
    :try_start_1
    iget v10, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    if-ne v0, v10, :cond_3

    #@77
    const/4 v9, 0x1

    #@78
    goto :goto_1

    #@79
    :cond_3
    const/4 v9, 0x0

    #@7a
    goto :goto_1

    #@7b
    .line 1663
    .end local v5    # "foregroundUser":I
    :catchall_0
    move-exception v10

    #@7c
    .line 1664
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7f
    .line 1663
    throw v10
.end method

.method private clearBleApps()V
    .locals 1

    #@0
    .prologue
    .line 558
    monitor-enter p0

    #@1
    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@6
    .line 560
    const/4 v0, 0x0

    #@7
    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 557
    return-void

    #@b
    .line 558
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
    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@9
    .line 509
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@f
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    #@12
    move-result v1

    #@13
    const/16 v2, 0xc

    #@15
    if-eq v1, v2, :cond_0

    #@17
    .line 510
    const-string/jumbo v1, "BluetoothManagerService"

    #@1a
    const-string/jumbo v2, "Reseting the mEnable flag for clean disable"

    #@1d
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 511
    const/4 v1, 0x0

    #@21
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 516
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@2c
    .line 506
    :goto_0
    return-void

    #@2d
    .line 513
    :catch_0
    move-exception v0

    #@2e
    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@31
    const-string/jumbo v2, "getState()"

    #@34
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 516
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@40
    goto :goto_0

    #@41
    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@42
    .line 516
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@44
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@4b
    .line 515
    throw v1
.end method

.method private handleDisable()V
    .locals 3

    #@0
    .prologue
    .line 1627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@9
    .line 1628
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1629
    const-string/jumbo v1, "BluetoothManagerService"

    #@10
    const-string/jumbo v2, "Sending off request."

    #@13
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1630
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@18
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 1631
    const-string/jumbo v1, "BluetoothManagerService"

    #@21
    const-string/jumbo v2, "IBluetooth.disable() returned false"

    #@24
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1637
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@29
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@30
    .line 1625
    :goto_0
    return-void

    #@31
    .line 1634
    :catch_0
    move-exception v0

    #@32
    .line 1635
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@35
    const-string/jumbo v2, "Unable to call disable()"

    #@38
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 1637
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@3d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@44
    goto :goto_0

    #@45
    .line 1636
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@46
    .line 1637
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@48
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@4f
    .line 1636
    throw v1
.end method

.method private handleEnable(Z)V
    .locals 6
    .param p1, "quietMode"    # Z

    #@0
    .prologue
    .line 1578
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@2
    .line 1581
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@b
    .line 1582
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@d
    if-nez v3, :cond_0

    #@f
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 1593
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 1596
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    #@19
    if-nez v3, :cond_4

    #@1b
    .line 1597
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1d
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->enable()Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    .line 1598
    const-string/jumbo v3, "BluetoothManagerService"

    #@26
    const-string/jumbo v4, "IBluetooth.enable() returned false"

    #@29
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 1611
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2e
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@35
    .line 1577
    return-void

    #@36
    .line 1584
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@38
    const/16 v4, 0x64

    #@3a
    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@3d
    move-result-object v2

    #@3e
    .line 1585
    .local v2, "timeoutMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@40
    const-wide/16 v4, 0xbb8

    #@42
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@45
    .line 1586
    new-instance v1, Landroid/content/Intent;

    #@47
    const-class v3, Landroid/bluetooth/IBluetooth;

    #@49
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@50
    .line 1587
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@52
    .line 1588
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@54
    .line 1587
    const/16 v5, 0x41

    #@56
    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@59
    move-result v3

    #@5a
    if-nez v3, :cond_3

    #@5c
    .line 1589
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@5e
    const/16 v4, 0x64

    #@60
    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    goto :goto_0

    #@64
    .line 1610
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    #@65
    .line 1611
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@67
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@6e
    .line 1610
    throw v3

    #@6f
    .line 1591
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "timeoutMsg":Landroid/os/Message;
    :cond_3
    const/4 v3, 0x1

    #@70
    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@72
    goto :goto_0

    #@73
    .line 1602
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "timeoutMsg":Landroid/os/Message;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@75
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    #@78
    move-result v3

    #@79
    if-nez v3, :cond_1

    #@7b
    .line 1603
    const-string/jumbo v3, "BluetoothManagerService"

    #@7e
    const-string/jumbo v4, "IBluetooth.enableNoAutoConnect() returned false"

    #@81
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 1606
    :catch_0
    move-exception v0

    #@86
    .line 1607
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "BluetoothManagerService"

    #@89
    const-string/jumbo v4, "Unable to call enable()"

    #@8c
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@8f
    goto :goto_0
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 287
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 288
    const-string/jumbo v3, "airplane_mode_on"

    #@b
    .line 287
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
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 295
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 296
    const-string/jumbo v3, "bluetooth_on"

    #@7
    .line 295
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    move v0, v1

    #@f
    goto :goto_0
.end method

.method private final isBluetoothPersistedStateOnBluetooth()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 303
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@3
    .line 304
    const-string/jumbo v2, "bluetooth_on"

    #@6
    .line 303
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    if-ne v1, v0, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private isNameAndAddressSet()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 323
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
    .line 331
    const-string/jumbo v0, "BluetoothManagerService"

    #@4
    const-string/jumbo v1, "Loading stored name and address"

    #@7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 332
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    .line 333
    const v1, 0x1120057

    #@13
    .line 332
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 334
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@1b
    const-string/jumbo v1, "bluetooth_addr_valid"

    #@1e
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_0

    #@24
    .line 336
    const-string/jumbo v0, "BluetoothManagerService"

    #@27
    const-string/jumbo v1, "invalid bluetooth name and address stored"

    #@2a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 337
    return-void

    #@2e
    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@30
    const-string/jumbo v1, "bluetooth_name"

    #@33
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@39
    .line 340
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@3b
    const-string/jumbo v1, "bluetooth_address"

    #@3e
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@44
    .line 341
    const-string/jumbo v0, "BluetoothManagerService"

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v2, "Stored bluetooth Name="

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    const-string/jumbo v2, ",Address="

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 330
    return-void
.end method

.method private onBluetoothGattServiceUp()V
    .locals 5

    #@0
    .prologue
    .line 574
    const-string/jumbo v3, "BluetoothManagerService"

    #@3
    const-string/jumbo v4, "BluetoothGatt Service is Up"

    #@6
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 576
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@b
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@12
    .line 577
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_0

    #@18
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 578
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1e
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    #@21
    move-result v3

    #@22
    const/16 v4, 0xf

    #@24
    if-ne v3, v4, :cond_0

    #@26
    .line 579
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@28
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    #@2b
    .line 582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2e
    move-result-wide v0

    #@2f
    .line 583
    .local v0, "callingIdentity":J
    const/4 v3, 0x1

    #@30
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    #@33
    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 589
    .end local v0    # "callingIdentity":J
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@38
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@3f
    .line 573
    :goto_0
    return-void

    #@40
    .line 586
    :catch_0
    move-exception v2

    #@41
    .line 587
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "BluetoothManagerService"

    #@44
    const-string/jumbo v4, "Unable to call onServiceUp"

    #@47
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 589
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@4c
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@53
    goto :goto_0

    #@54
    .line 588
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@55
    .line 589
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@57
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@5e
    .line 588
    throw v3
.end method

.method private persistBluetoothSetting(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 313
    const-string/jumbo v1, "bluetooth_on"

    #@9
    .line 312
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 311
    return-void
.end method

.method private recoverBluetoothServiceFromError()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1798
    const-string/jumbo v2, "BluetoothManagerService"

    #@4
    const-string/jumbo v3, "recoverBluetoothServiceFromError"

    #@7
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 1800
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@13
    .line 1801
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1803
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@19
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    #@1b
    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1808
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@20
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@27
    .line 1811
    :goto_0
    const-wide/16 v2, 0x1f4

    #@29
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@2c
    .line 1814
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    #@2f
    .line 1816
    const/4 v2, 0x1

    #@30
    invoke-direct {p0, v4, v2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    #@33
    .line 1818
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    #@36
    .line 1821
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@38
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@3f
    .line 1822
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@41
    if-eqz v2, :cond_1

    #@43
    .line 1823
    const/4 v2, 0x0

    #@44
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@46
    .line 1825
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@48
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@4a
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@4d
    .line 1827
    :cond_1
    const/4 v2, 0x0

    #@4e
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@50
    .line 1829
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@52
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@59
    .line 1832
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@5b
    const/16 v3, 0x3c

    #@5d
    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@60
    .line 1833
    const/16 v2, 0xa

    #@62
    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@64
    .line 1835
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@66
    .line 1837
    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@68
    add-int/lit8 v3, v2, 0x1

    #@6a
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    #@6c
    const/4 v3, 0x6

    #@6d
    if-ge v2, v3, :cond_2

    #@6f
    .line 1839
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@71
    .line 1840
    const/16 v3, 0x2a

    #@73
    .line 1839
    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@76
    move-result-object v1

    #@77
    .line 1841
    .local v1, "restartMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@79
    const-wide/16 v4, 0xbb8

    #@7b
    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@7e
    .line 1797
    .end local v1    # "restartMsg":Landroid/os/Message;
    :cond_2
    return-void

    #@7f
    .line 1805
    :catch_0
    move-exception v0

    #@80
    .line 1806
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "BluetoothManagerService"

    #@83
    const-string/jumbo v3, "Unable to unregister"

    #@86
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@89
    .line 1808
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@8b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@92
    goto :goto_0

    #@93
    .line 1807
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@94
    .line 1808
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@96
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@9d
    .line 1807
    throw v2

    #@9e
    .line 1828
    :catchall_1
    move-exception v2

    #@9f
    .line 1829
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@a1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@a8
    .line 1828
    throw v2
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 155
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v2

    #@6
    .line 157
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "airplane_mode_radios"

    #@9
    .line 156
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 159
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string/jumbo v4, "airplane_mode_toggleable_radios"

    #@10
    .line 158
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 160
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    #@16
    const/4 v1, 0x1

    #@17
    .line 162
    .local v1, "mIsAirplaneSensitive":Z
    :goto_0
    if-eqz v1, :cond_0

    #@19
    .line 163
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@1c
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 154
    :cond_0
    return-void

    #@20
    .line 161
    .end local v1    # "mIsAirplaneSensitive":Z
    :cond_1
    const-string/jumbo v4, "bluetooth"

    #@23
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@26
    move-result v1

    #@27
    goto :goto_0
.end method

.method private registerForBleScanModeChange()V
    .locals 4

    #@0
    .prologue
    .line 482
    new-instance v0, Lcom/android/server/BluetoothManagerService$3;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    #@6
    .line 500
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@8
    .line 501
    const-string/jumbo v2, "ble_scan_always_enabled"

    #@b
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@e
    move-result-object v2

    #@f
    .line 502
    const/4 v3, 0x0

    #@10
    .line 500
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@13
    .line 481
    return-void
.end method

.method private sendBleStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    .line 1670
    const-string/jumbo v1, "BluetoothManagerService"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "BLE State Change Intent: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " -> "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1672
    new-instance v0, Landroid/content/Intent;

    #@27
    const-string/jumbo v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    #@2a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2d
    .line 1673
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    #@30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@33
    .line 1674
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    #@36
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@39
    .line 1675
    const/high16 v1, 0x4000000

    #@3b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3e
    .line 1676
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@40
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@42
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    #@45
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@48
    .line 1669
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .locals 6

    #@0
    .prologue
    .line 1016
    const-string/jumbo v3, "BluetoothManagerService"

    #@3
    const-string/jumbo v4, "Calling onBluetoothServiceDown callbacks"

    #@6
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1018
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@e
    move-result v2

    #@f
    .line 1019
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Broadcasting onBluetoothServiceDown() to "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const-string/jumbo v5, " receivers."

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1020
    const/4 v1, 0x0

    #@31
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@33
    .line 1022
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@35
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    #@3b
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 1020
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1023
    :catch_0
    move-exception v0

    #@42
    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "Unable to call onBluetoothServiceDown() on callback #"

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    goto :goto_1

    #@5d
    .line 1027
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@5e
    .line 1028
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@60
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@63
    .line 1027
    throw v3

    #@64
    .line 1028
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@66
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@69
    .line 1015
    return-void
.end method

.method private sendBluetoothServiceUpCallback()V
    .locals 6

    #@0
    .prologue
    .line 997
    const-string/jumbo v3, "BluetoothManagerService"

    #@3
    const-string/jumbo v4, "Calling onBluetoothServiceUp callbacks"

    #@6
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 999
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@e
    move-result v2

    #@f
    .line 1000
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Broadcasting onBluetoothServiceUp() to "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const-string/jumbo v5, " receivers."

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1001
    const/4 v1, 0x0

    #@31
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@33
    .line 1003
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@35
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    #@3b
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@3d
    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 1001
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1004
    :catch_0
    move-exception v0

    #@44
    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "Unable to call onBluetoothServiceUp() on callback #"

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    goto :goto_1

    #@5f
    .line 1008
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@60
    .line 1009
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@62
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@65
    .line 1008
    throw v3

    #@66
    .line 1009
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@68
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@6b
    .line 996
    return-void
.end method

.method private sendBluetoothStateCallback(Z)V
    .locals 6
    .param p1, "isUp"    # Z

    #@0
    .prologue
    .line 979
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 980
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Broadcasting onBluetoothStateChange("

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, ") to "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, " receivers."

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 981
    const/4 v1, 0x0

    #@33
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@35
    .line 983
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@37
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@3d
    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 981
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 984
    :catch_0
    move-exception v0

    #@44
    .line 985
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "Unable to call onBluetoothStateChange() on callback #"

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    goto :goto_1

    #@5f
    .line 988
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@60
    .line 989
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@62
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@65
    .line 988
    throw v3

    #@66
    .line 989
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    #@68
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@6b
    .line 977
    return-void
.end method

.method private sendBrEdrDownCallback()V
    .locals 3

    #@0
    .prologue
    .line 598
    const-string/jumbo v1, "BluetoothManagerService"

    #@3
    const-string/jumbo v2, "Calling sendBrEdrDownCallback callbacks"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 600
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@b
    if-nez v1, :cond_0

    #@d
    .line 601
    const-string/jumbo v1, "BluetoothManagerService"

    #@10
    const-string/jumbo v2, "Bluetooth handle is null"

    #@13
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 602
    return-void

    #@17
    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@1f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@26
    .line 608
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@28
    if-eqz v1, :cond_1

    #@2a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2c
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@38
    .line 597
    :goto_0
    return-void

    #@39
    .line 609
    :catch_0
    move-exception v0

    #@3a
    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@3d
    const-string/jumbo v2, "Call to onBrEdrDown() failed."

    #@40
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .line 612
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@45
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@4c
    goto :goto_0

    #@4d
    .line 611
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4e
    .line 612
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@50
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@57
    .line 611
    throw v1

    #@58
    .line 617
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@5a
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->unregAll()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@5d
    goto :goto_0

    #@5e
    .line 618
    :catch_1
    move-exception v0

    #@5f
    .line 619
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    #@62
    const-string/jumbo v2, "Unable to disconnect all apps."

    #@65
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    goto :goto_0
.end method

.method private sendDisableMsg()V
    .locals 3

    #@0
    .prologue
    .line 1789
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
    .line 1788
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
    .line 1793
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@6
    .line 1794
    if-eqz p1, :cond_0

    #@8
    move v0, v1

    #@9
    .line 1793
    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 1792
    return-void

    #@11
    :cond_0
    move v0, v2

    #@12
    .line 1794
    goto :goto_0
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    if-eqz p1, :cond_0

    #@2
    .line 352
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v1, "bluetooth_name"

    #@7
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    .line 353
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@c
    .line 354
    const-string/jumbo v0, "BluetoothManagerService"

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Stored Bluetooth name: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 355
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@1d
    const-string/jumbo v3, "bluetooth_name"

    #@20
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 358
    :cond_0
    if-eqz p2, :cond_1

    #@31
    .line 359
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@33
    const-string/jumbo v1, "bluetooth_address"

    #@36
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@39
    .line 360
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@3b
    .line 361
    const-string/jumbo v0, "BluetoothManagerService"

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "Stored Bluetoothaddress: "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    .line 362
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@4c
    const-string/jumbo v3, "bluetooth_address"

    #@4f
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 365
    :cond_1
    if-eqz p1, :cond_2

    #@60
    if-eqz p2, :cond_2

    #@62
    .line 366
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@64
    const-string/jumbo v1, "bluetooth_addr_valid"

    #@67
    const/4 v2, 0x1

    #@68
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@6b
    .line 350
    :cond_2
    return-void
.end method

.method private unbindAllBluetoothProfileServices()V
    .locals 8

    #@0
    .prologue
    .line 789
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@2
    monitor-enter v5

    #@3
    .line 790
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
    .line 791
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
    .line 793
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 797
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap2(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 789
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
    .line 794
    .restart local v1    # "i":Ljava/lang/Integer;
    .restart local v2    # "i$iterator":Ljava/util/Iterator;
    .restart local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catch_0
    move-exception v0

    #@2e
    .line 795
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
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    goto :goto_1

    #@4b
    .line 799
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
    .line 788
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
    .line 1759
    const/4 v1, 0x0

    #@6
    .line 1760
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    #@8
    .line 1762
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@a
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@11
    .line 1763
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-nez v2, :cond_1

    #@15
    .line 1775
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@17
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@1e
    .line 1784
    :cond_0
    :goto_1
    const-string/jumbo v2, "BluetoothManagerService"

    #@21
    const-string/jumbo v3, "waitForOnOff time out"

    #@24
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1785
    const/4 v2, 0x0

    #@28
    return v2

    #@29
    .line 1764
    :cond_1
    if-eqz p1, :cond_2

    #@2b
    .line 1765
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2d
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result v2

    #@31
    if-ne v2, v6, :cond_4

    #@33
    .line 1775
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@35
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@3c
    .line 1765
    return v4

    #@3d
    .line 1766
    :cond_2
    if-eqz p2, :cond_3

    #@3f
    .line 1767
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@41
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    move-result v2

    #@45
    if-ne v2, v5, :cond_4

    #@47
    .line 1775
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@49
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@50
    .line 1767
    return v4

    #@51
    .line 1769
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@53
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@56
    move-result v2

    #@57
    if-eq v2, v6, :cond_4

    #@59
    .line 1775
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@62
    .line 1769
    return v4

    #@63
    .line 1775
    :cond_4
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@65
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@6c
    .line 1777
    if-nez p1, :cond_5

    #@6e
    if-eqz p2, :cond_6

    #@70
    .line 1778
    :cond_5
    const-wide/16 v2, 0x12c

    #@72
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@75
    .line 1782
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@77
    goto :goto_0

    #@78
    .line 1771
    :catch_0
    move-exception v0

    #@79
    .line 1772
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "BluetoothManagerService"

    #@7c
    const-string/jumbo v3, "getState()"

    #@7f
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@82
    .line 1775
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@84
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@8b
    goto :goto_1

    #@8c
    .line 1774
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@8d
    .line 1775
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@8f
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@96
    .line 1774
    throw v2

    #@97
    .line 1780
    :cond_6
    const-wide/16 v2, 0x32

    #@99
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@9c
    goto :goto_2
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .locals 9
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 743
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 745
    const-string/jumbo v3, "BluetoothManagerService"

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Trying to bind to profile: "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    .line 746
    const-string/jumbo v5, ", while Bluetooth was disabled"

    #@1c
    .line 745
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 748
    return v7

    #@28
    .line 750
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@2a
    monitor-enter v4

    #@2b
    .line 751
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@2d
    new-instance v5, Ljava/lang/Integer;

    #@2f
    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    #@32
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    #@38
    .line 752
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_3

    #@3a
    .line 754
    const-string/jumbo v3, "BluetoothManagerService"

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "Creating new ProfileServiceConnections object for profile: "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 758
    if-eq p1, v8, :cond_1

    #@56
    monitor-exit v4

    #@57
    return v7

    #@58
    .line 760
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    #@5a
    const-class v3, Landroid/bluetooth/IBluetoothHeadset;

    #@5c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@63
    .line 761
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    #@65
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-direct {v2, p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    #@68
    .line 762
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    move-result v3

    #@6c
    if-nez v3, :cond_2

    #@6e
    monitor-exit v4

    #@6f
    return v7

    #@70
    .line 764
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@72
    new-instance v5, Ljava/lang/Integer;

    #@74
    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    #@77
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    monitor-exit v4

    #@7b
    .line 769
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@7d
    const/16 v4, 0x190

    #@7f
    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@82
    move-result-object v0

    #@83
    .line 770
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@85
    .line 771
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@87
    .line 772
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@89
    const-wide/16 v4, 0x64

    #@8b
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@8e
    .line 773
    return v8

    #@8f
    .line 750
    .end local v0    # "addProxyMsg":Landroid/os/Message;
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v3

    #@90
    monitor-exit v4

    #@91
    throw v3
.end method

.method public disable(Z)Z
    .locals 6
    .param p1, "persist"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 672
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    #@6
    .line 673
    const-string/jumbo v4, "Need BLUETOOTH ADMIN permissicacheNameAndAddresson"

    #@9
    .line 672
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v2

    #@10
    const/16 v3, 0x3e8

    #@12
    if-eq v2, v3, :cond_0

    #@14
    .line 676
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 682
    :cond_0
    const-string/jumbo v2, "BluetoothManagerService"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "disable(): mBluetooth = "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 683
    const-string/jumbo v4, " mBinding = "

    #@32
    .line 682
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 683
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@38
    .line 682
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 686
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@45
    monitor-enter v3

    #@46
    .line 687
    if-eqz p1, :cond_1

    #@48
    .line 689
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4b
    move-result-wide v0

    #@4c
    .line 690
    .local v0, "callingIdentity":J
    const/4 v2, 0x0

    #@4d
    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    #@50
    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 693
    .end local v0    # "callingIdentity":J
    :cond_1
    const/4 v2, 0x0

    #@54
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@56
    .line 694
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit v3

    #@5a
    .line 696
    const/4 v2, 0x1

    #@5b
    return v2

    #@5c
    .line 677
    :cond_2
    const-string/jumbo v2, "BluetoothManagerService"

    #@5f
    const-string/jumbo v3, "disable(): not allowed for non-active and non system user"

    #@62
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 678
    return v5

    #@66
    .line 686
    :catchall_0
    move-exception v2

    #@67
    monitor-exit v3

    #@68
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
    .line 1616
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
    .line 1617
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@e
    .line 1618
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
    .line 1622
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 1619
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
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 1620
    return v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1849
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v3, "android.permission.DUMP"

    #@6
    const-string/jumbo v4, "BluetoothManagerService"

    #@9
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1850
    const/4 v0, 0x0

    #@d
    .line 1851
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    #@f
    if-nez v2, :cond_0

    #@11
    .line 1852
    const-string/jumbo v0, "Bluetooth Service not connected"

    #@14
    .line 1860
    .end local v0    # "errorMsg":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    #@16
    .line 1862
    array-length v2, p3

    #@17
    if-lez v2, :cond_1

    #@19
    aget-object v2, p3, v5

    #@1b
    const-string/jumbo v3, "--proto"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 1863
    return-void

    #@25
    .line 1855
    .restart local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    #@27
    invoke-interface {v2, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    goto :goto_0

    #@2b
    .line 1856
    :catch_0
    move-exception v1

    #@2c
    .line 1857
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "RemoteException while calling Bluetooth Service"

    #@2f
    .local v0, "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@30
    .line 1864
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33
    .line 1848
    :cond_2
    return-void
.end method

.method public enable()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 648
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x3e8

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 649
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    #@15
    .line 655
    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    #@18
    .line 654
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 657
    const-string/jumbo v0, "BluetoothManagerService"

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "enable():  mBluetooth ="

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 658
    const-string/jumbo v2, " mBinding = "

    #@33
    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 658
    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@39
    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 658
    const-string/jumbo v2, " mState = "

    #@40
    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 658
    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    #@46
    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 661
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@53
    monitor-enter v1

    #@54
    .line 662
    const/4 v0, 0x0

    #@55
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@57
    .line 663
    const/4 v0, 0x1

    #@58
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@5a
    .line 665
    const/4 v0, 0x0

    #@5b
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    monitor-exit v1

    #@5f
    .line 667
    const-string/jumbo v0, "BluetoothManagerService"

    #@62
    const-string/jumbo v1, "enable returning"

    #@65
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 668
    return v3

    #@69
    .line 650
    :cond_1
    const-string/jumbo v0, "BluetoothManagerService"

    #@6c
    const-string/jumbo v1, "enable(): not allowed for non-active and non system user"

    #@6f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 651
    return v2

    #@73
    .line 661
    :catchall_0
    move-exception v0

    #@74
    monitor-exit v1

    #@75
    throw v0
.end method

.method public enableNoAutoConnect()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 626
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    #@6
    .line 627
    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    #@9
    .line 626
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 630
    const-string/jumbo v1, "BluetoothManagerService"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "enableNoAutoConnect():  mBluetooth ="

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 631
    const-string/jumbo v3, " mBinding = "

    #@24
    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 631
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@2a
    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 633
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@38
    move-result v1

    #@39
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@3c
    move-result v0

    #@3d
    .line 635
    .local v0, "callingAppId":I
    const/16 v1, 0x403

    #@3f
    if-eq v0, v1, :cond_0

    #@41
    .line 636
    new-instance v1, Ljava/lang/SecurityException;

    #@43
    const-string/jumbo v2, "no permission to enable Bluetooth quietly"

    #@46
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1

    #@4a
    .line 639
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@4c
    monitor-enter v2

    #@4d
    .line 640
    const/4 v1, 0x1

    #@4e
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@50
    .line 641
    const/4 v1, 0x1

    #@51
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@53
    .line 642
    const/4 v1, 0x1

    #@54
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    monitor-exit v2

    #@58
    .line 644
    return v4

    #@59
    .line 639
    :catchall_0
    move-exception v1

    #@5a
    monitor-exit v2

    #@5b
    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1033
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@6
    .line 1034
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@9
    .line 1033
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v1

    #@10
    const/16 v2, 0x3e8

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 1037
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1042
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
    .line 1044
    const-string/jumbo v1, "02:00:00:00:00:00"

    #@28
    return-object v1

    #@29
    .line 1038
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@2c
    const-string/jumbo v2, "getAddress(): not allowed for non-active and non system user"

    #@2f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 1039
    return-object v4

    #@33
    .line 1048
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@35
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@3c
    .line 1049
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@3e
    if-eqz v1, :cond_3

    #@40
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@42
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    move-result-object v1

    #@46
    .line 1053
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@48
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@4f
    .line 1049
    return-object v1

    #@50
    .line 1053
    :cond_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@52
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@59
    .line 1059
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    #@5b
    return-object v1

    #@5c
    .line 1050
    :catch_0
    move-exception v0

    #@5d
    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@60
    const-string/jumbo v2, "getAddress(): Unable to retrieve address remotely. Returning cached address"

    #@63
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .line 1053
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@68
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@6f
    goto :goto_0

    #@70
    .line 1052
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@71
    .line 1053
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@73
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@7a
    .line 1052
    throw v1
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .locals 1

    #@0
    .prologue
    .line 737
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
    .line 1063
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@6
    .line 1064
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@9
    .line 1063
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1066
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v1

    #@10
    const/16 v2, 0x3e8

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 1067
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1073
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@1c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@23
    .line 1074
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@25
    if-eqz v1, :cond_2

    #@27
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@29
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-object v1

    #@2d
    .line 1078
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@36
    .line 1074
    return-object v1

    #@37
    .line 1068
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@3a
    const-string/jumbo v2, "getName(): not allowed for non-active and non system user"

    #@3d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 1069
    return-object v4

    #@41
    .line 1078
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@43
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@4a
    .line 1084
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    #@4c
    return-object v1

    #@4d
    .line 1075
    :catch_0
    move-exception v0

    #@4e
    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@51
    const-string/jumbo v2, "getName(): Unable to retrieve name remotely. Returning cached name"

    #@54
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 1078
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@59
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@60
    goto :goto_0

    #@61
    .line 1077
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@62
    .line 1078
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@64
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@6b
    .line 1077
    throw v1
.end method

.method public getState()I
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    const/16 v2, 0x3e8

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 430
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 436
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@12
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@19
    .line 437
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1f
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v1

    #@23
    .line 441
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@25
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@2c
    .line 437
    return v1

    #@2d
    .line 431
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@30
    const-string/jumbo v2, "getState(): not allowed for non-active and non system user"

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 432
    return v3

    #@37
    .line 441
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@40
    .line 443
    :goto_0
    return v3

    #@41
    .line 438
    :catch_0
    move-exception v0

    #@42
    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@45
    const-string/jumbo v2, "getState()"

    #@48
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 441
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@4d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@54
    goto :goto_0

    #@55
    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@56
    .line 441
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@58
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@5f
    .line 440
    throw v1
.end method

.method public handleOnBootPhase()V
    .locals 3

    #@0
    .prologue
    .line 808
    const-string/jumbo v1, "BluetoothManagerService"

    #@3
    const-string/jumbo v2, "Bluetooth boot completed"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 809
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 810
    const-string/jumbo v1, "BluetoothManagerService"

    #@16
    const-string/jumbo v2, "Auto-enabling Bluetooth."

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 811
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    #@1e
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    #@21
    .line 807
    :cond_0
    :goto_0
    return-void

    #@22
    .line 812
    :cond_1
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_0

    #@28
    .line 813
    const-string/jumbo v1, "BluetoothManagerService"

    #@2b
    const-string/jumbo v2, "Getting adapter name and address"

    #@2e
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 814
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@33
    const/16 v2, 0xc8

    #@35
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@38
    move-result-object v0

    #@39
    .line 815
    .local v0, "getMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@3b
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@3e
    goto :goto_0
.end method

.method public handleOnSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 823
    const-string/jumbo v0, "BluetoothManagerService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "User "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " switched"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 824
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@23
    const/16 v1, 0x12c

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@2d
    .line 822
    return-void
.end method

.method public handleOnUnlockUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 831
    const-string/jumbo v0, "BluetoothManagerService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "User "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " unlocked"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 832
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@23
    const/16 v1, 0x12d

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@2d
    .line 830
    return-void
.end method

.method public isBleAppPresent()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 566
    const-string/jumbo v1, "BluetoothManagerService"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "isBleAppPresent() count: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 567
    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@1f
    if-lez v1, :cond_0

    #@21
    const/4 v0, 0x1

    #@22
    :cond_0
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 473
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    #@3
    .line 474
    const-string/jumbo v3, "ble_scan_always_enabled"

    #@6
    .line 473
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
    .line 475
    :catch_0
    move-exception v0

    #@f
    .line 477
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method public isEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0x3e8

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 412
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 418
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@18
    .line 419
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1e
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v1

    #@22
    .line 423
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@24
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@2b
    .line 419
    return v1

    #@2c
    .line 413
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@2f
    const-string/jumbo v2, "isEnabled(): not allowed for non-active and non system user"

    #@32
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 414
    return v3

    #@36
    .line 423
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@38
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@3f
    .line 425
    :goto_0
    return v3

    #@40
    .line 420
    :catch_0
    move-exception v0

    #@41
    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@44
    const-string/jumbo v2, "isEnabled()"

    #@47
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 423
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@4c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@53
    goto :goto_0

    #@54
    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@55
    .line 423
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@57
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@5e
    .line 422
    throw v1
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 371
    if-nez p1, :cond_0

    #@3
    .line 372
    const-string/jumbo v1, "BluetoothManagerService"

    #@6
    const-string/jumbo v2, "Callback is null in registerAdapter"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 373
    return-object v3

    #@d
    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@f
    const/16 v2, 0x14

    #@11
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 376
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    .line 377
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@19
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 379
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@1e
    return-object v1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@0
    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@5
    .line 396
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@8
    .line 395
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 397
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@d
    const/16 v2, 0x1e

    #@f
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    .line 398
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    .line 399
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@17
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 394
    return-void
.end method

.method public unbindAndFinish()V
    .locals 4

    #@0
    .prologue
    .line 701
    const-string/jumbo v1, "BluetoothManagerService"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "unbindAndFinish(): "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 702
    const-string/jumbo v3, " mBinding = "

    #@18
    .line 701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 702
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@1e
    .line 701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@32
    .line 707
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    if-eqz v1, :cond_0

    #@36
    .line 731
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@38
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@3f
    .line 707
    return-void

    #@40
    .line 708
    :cond_0
    const/4 v1, 0x1

    #@41
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    #@43
    .line 709
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@45
    const/16 v2, 0x3c

    #@47
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@4a
    .line 710
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4c
    const/16 v2, 0x191

    #@4e
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@51
    .line 711
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    if-eqz v1, :cond_1

    #@55
    .line 714
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@57
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    #@59
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    .line 719
    :goto_0
    :try_start_3
    const-string/jumbo v1, "BluetoothManagerService"

    #@5f
    const-string/jumbo v2, "Sending unbind request."

    #@62
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 720
    const/4 v1, 0x0

    #@66
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    #@68
    .line 721
    const/4 v1, 0x0

    #@69
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    #@6b
    .line 723
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@6d
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@6f
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@72
    .line 724
    const/4 v1, 0x0

    #@73
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    #@75
    .line 725
    const/4 v1, 0x0

    #@76
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    #@78
    .line 729
    :goto_1
    const/4 v1, 0x0

    #@79
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7b
    .line 731
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@7d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@84
    .line 699
    return-void

    #@85
    .line 715
    :catch_0
    move-exception v0

    #@86
    .line 716
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v1, "BluetoothManagerService"

    #@89
    const-string/jumbo v2, "Unable to unregister BluetoothCallback"

    #@8c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8f
    goto :goto_0

    #@90
    .line 730
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@91
    .line 731
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@93
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@9a
    .line 730
    throw v1

    #@9b
    .line 727
    :cond_1
    const/4 v1, 0x0

    #@9c
    :try_start_5
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@9e
    goto :goto_1
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 4
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@0
    .prologue
    .line 779
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 780
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
    .line 781
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_0

    #@12
    monitor-exit v2

    #@13
    .line 782
    return-void

    #@14
    .line 784
    :cond_0
    :try_start_1
    invoke-static {v0, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap3(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 778
    return-void

    #@19
    .line 779
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
    .line 383
    if-nez p1, :cond_0

    #@2
    .line 384
    const-string/jumbo v1, "BluetoothManagerService"

    #@5
    const-string/jumbo v2, "Callback is null in unregisterAdapter"

    #@8
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 385
    return-void

    #@c
    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@11
    .line 388
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@14
    .line 387
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 389
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@19
    const/16 v2, 0x15

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@1e
    move-result-object v0

    #@1f
    .line 390
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    .line 391
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@23
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 382
    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@0
    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    #@5
    .line 404
    const-string/jumbo v3, "Need BLUETOOTH permission"

    #@8
    .line 403
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 405
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@d
    const/16 v2, 0x1f

    #@f
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    .line 406
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    .line 407
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@17
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 402
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;Z)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 521
    if-eqz p2, :cond_2

    #@3
    .line 522
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@5
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    #@b
    .line 523
    .local v2, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v2, :cond_0

    #@d
    .line 524
    new-instance v0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    #@f
    invoke-direct {v0, p0}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;)V

    #@12
    .line 526
    .local v0, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/4 v3, 0x0

    #@13
    :try_start_0
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 530
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@18
    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 531
    monitor-enter p0

    #@1c
    .line 532
    :try_start_1
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    sput v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 534
    const-string/jumbo v3, "BluetoothManagerService"

    #@26
    const-string/jumbo v4, "Registered for death Notification"

    #@29
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 549
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_0
    :goto_0
    const-string/jumbo v3, "BluetoothManagerService"

    #@2f
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v5, "Updated BleAppCount"

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    sget v5, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 550
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@4a
    if-nez v3, :cond_1

    #@4c
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    #@4e
    if-eqz v3, :cond_1

    #@50
    .line 551
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    #@53
    .line 553
    :cond_1
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@55
    return v3

    #@56
    .line 527
    .restart local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catch_0
    move-exception v1

    #@57
    .line 528
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@59
    const-string/jumbo v4, "Wake lock is already dead."

    #@5c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v3

    #@60
    .line 531
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@61
    monitor-exit p0

    #@62
    throw v3

    #@63
    .line 538
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@65
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    move-result-object v2

    #@69
    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    #@6b
    .line 539
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v2, :cond_0

    #@6d
    .line 541
    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@70
    .line 542
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@72
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 543
    monitor-enter p0

    #@76
    .line 544
    :try_start_2
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@78
    if-lez v3, :cond_3

    #@7a
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    #@7c
    add-int/lit8 v3, v3, -0x1

    #@7e
    sput v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@80
    :cond_3
    monitor-exit p0

    #@81
    .line 546
    const-string/jumbo v3, "BluetoothManagerService"

    #@84
    const-string/jumbo v4, "Unregistered for death Notification"

    #@87
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    goto :goto_0

    #@8b
    .line 543
    :catchall_1
    move-exception v3

    #@8c
    monitor-exit p0

    #@8d
    throw v3
.end method
