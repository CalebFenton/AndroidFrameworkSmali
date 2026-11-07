.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGatt$WriteOperationReturnValues;,
        Landroid/bluetooth/BluetoothGatt$SubrateRequestMode;
    }
.end annotation


# static fields
.field static final blacklist AUTHENTICATION_MITM:I = 0x2

.field static final blacklist AUTHENTICATION_NONE:I = 0x0

.field static final blacklist AUTHENTICATION_NO_MITM:I = 0x1

.field private static final blacklist AUTH_RETRY_STATE_IDLE:I = 0x0

.field private static final blacklist AUTH_RETRY_STATE_MITM:I = 0x2

.field public static final whitelist CONNECTION_PRIORITY_BALANCED:I = 0x0

.field public static final whitelist CONNECTION_PRIORITY_DCK:I = 0x3

.field public static final whitelist CONNECTION_PRIORITY_HIGH:I = 0x1

.field public static final whitelist CONNECTION_PRIORITY_LOW_POWER:I = 0x2

.field private static final blacklist CONN_STATE_CLOSED:I = 0x4

.field private static final blacklist CONN_STATE_CONNECTED:I = 0x2

.field private static final blacklist CONN_STATE_CONNECTING:I = 0x1

.field private static final blacklist CONN_STATE_IDLE:I = 0x0

.field private static final blacklist DBG:Z = true

.field public static final whitelist GATT_CONNECTION_CONGESTED:I = 0x8f

.field public static final whitelist GATT_CONNECTION_TIMEOUT:I = 0x93

.field public static final whitelist GATT_FAILURE:I = 0x101

.field public static final whitelist GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final whitelist GATT_INSUFFICIENT_AUTHORIZATION:I = 0x8

.field public static final whitelist GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final whitelist GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final whitelist GATT_INVALID_OFFSET:I = 0x7

.field private static final blacklist GATT_MAX_ATTR_LEN:I = 0x200

.field public static final whitelist GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final whitelist GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final whitelist GATT_SUCCESS:I = 0x0

.field public static final whitelist GATT_WRITE_NOT_PERMITTED:I = 0x3

.field public static final blacklist SUBRATE_REQUEST_MODE_BALANCED:I = 0x0

.field public static final blacklist SUBRATE_REQUEST_MODE_HIGH:I = 0x1

.field public static final blacklist SUBRATE_REQUEST_MODE_LOW_POWER:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false

.field private static final blacklist WRITE_CHARACTERISTIC_MAX_RETRIES:I = 0x5

.field private static final blacklist WRITE_CHARACTERISTIC_TIME_TO_WAIT:I = 0xa


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private greylist-max-p mAuthRetryState:I

.field private greylist mAutoConnect:Z

.field private final blacklist mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

.field private volatile greylist mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private greylist mClientIf:I

.field private blacklist mConnState:I

.field private final blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private greylist-max-r mDeviceBusy:Ljava/lang/Boolean;

.field private final blacklist mDeviceBusyLock:Ljava/lang/Object;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mOpportunistic:Z

.field private final blacklist mPhy:I

.field private final greylist mService:Landroid/bluetooth/IBluetoothGatt;

.field private final blacklist mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStateLock:Ljava/lang/Object;

.field private final greylist-max-r mTransport:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoConnect(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnState(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpportunistic(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhy(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGatt;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransport(Landroid/bluetooth/BluetoothGatt;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClientIf(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnState(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGatt;->runOrQueueCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterApp(Landroid/bluetooth/BluetoothGatt;)V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    const-class v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;IZILandroid/content/AttributionSource;)V
    .registers 9
    .param p1, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "transport"    # I
    .param p4, "opportunistic"    # Z
    .param p5, "phy"    # I
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    .line 81
    nop

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 224
    new-instance v1, Landroid/bluetooth/BluetoothGatt$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothGatt$1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    .line 1020
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 1021
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1022
    iput p3, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    .line 1023
    iput p5, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    .line 1024
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    .line 1025
    iput-object p6, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1026
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1028
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 1029
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    .line 1030
    return-void
.end method

.method private blacklist registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;Z)Z
    .registers 10
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eattSupport"    # Z

    .line 1170
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v1, "registerApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 1173
    :cond_d
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 1174
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    .line 1175
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 1176
    .local v0, "uuid":Ljava/util/UUID;
    sget-object v2, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerApp() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4, p3, v5}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;ZLandroid/content/AttributionSource;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3b} :catch_3e

    .line 1184
    nop

    .line 1186
    const/4 v1, 0x1

    return v1

    .line 1181
    :catch_3e
    move-exception v2

    .line 1182
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    return v1
.end method

.method private blacklist runOrQueueCallback(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "cb"    # Ljava/lang/Runnable;

    .line 1125
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    .line 1127
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 1130
    :goto_7
    goto :goto_16

    .line 1128
    :catch_8
    move-exception v0

    .line 1129
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_7

    .line 1132
    :cond_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1134
    :goto_16
    return-void
.end method

.method private greylist unregisterApp()V
    .registers 4

    .line 1194
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_42

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_9

    goto :goto_42

    .line 1195
    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterApp() - mClientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :try_start_23
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->unregisterGattClientDisconnected()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1199
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 1201
    :cond_2c
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(ILandroid/content/AttributionSource;)V

    .line 1202
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_38} :catch_39

    .line 1205
    goto :goto_41

    .line 1203
    :catch_39
    move-exception v0

    .line 1204
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    return-void

    .line 1194
    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public whitelist abortReliableWrite()V
    .registers 6

    .line 1966
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1967
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_21

    if-nez v0, :cond_9

    goto :goto_21

    .line 1970
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v4, v3}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;ZLandroid/content/AttributionSource;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 1973
    goto :goto_20

    .line 1971
    :catch_18
    move-exception v1

    .line 1972
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1974
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void

    .line 1967
    :cond_21
    :goto_21
    return-void
.end method

.method public whitelist abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p1, "mDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1983
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    .line 1984
    return-void
.end method

.method public whitelist beginReliableWrite()Z
    .registers 6

    .line 1905
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1906
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    if-nez v0, :cond_a

    goto :goto_23

    .line 1909
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_1a

    .line 1913
    nop

    .line 1915
    const/4 v1, 0x1

    return v1

    .line 1910
    :catch_1a
    move-exception v1

    .line 1911
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    return v2

    .line 1906
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return v2
.end method

.method public whitelist close()V
    .registers 3

    .line 1058
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    .line 1061
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->unregisterGattClientDisconnected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 1065
    :cond_13
    const/4 v0, 0x4

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 1066
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    .line 1067
    return-void
.end method

.method public whitelist connect()Z
    .registers 12

    .line 1285
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1286
    .local v1, "clientIf":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v9, 0x0

    if-nez v0, :cond_8

    return v9

    .line 1287
    :cond_8
    const/4 v10, 0x1

    if-nez v1, :cond_67

    .line 1288
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->unregisterGattClientDisconnected()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1289
    return v9

    .line 1291
    :cond_12
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1292
    :try_start_15
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    if-eqz v0, :cond_1b

    .line 1293
    monitor-exit v2

    return v9

    .line 1295
    :cond_1b
    iput v10, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 1296
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_64

    .line 1298
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 1299
    .local v3, "uuid":Ljava/util/UUID;
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect from connect(), UUID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :try_start_3a
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v4, v9, v5}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;ZLandroid/content/AttributionSource;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_48} :catch_4a

    .line 1314
    nop

    .line 1316
    return v10

    .line 1307
    :catch_4a
    move-exception v0

    move-object v4, v0

    .line 1308
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1310
    :try_start_56
    iput v9, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 1311
    monitor-exit v5
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_61

    .line 1312
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register callback"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return v9

    .line 1311
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v5
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0

    .line 1296
    .end local v3    # "uuid":Ljava/util/UUID;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0

    .line 1321
    :cond_67
    :try_start_67
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect(void) - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", auto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1327
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1328
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddressType()I

    move-result v3

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    if-nez v4, :cond_a1

    move v4, v10

    goto :goto_a2

    :cond_a1
    move v4, v9

    :goto_a2
    iget v5, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    iget-boolean v6, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    iget v7, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    iget-object v8, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1325
    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;IZIZILandroid/content/AttributionSource;)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_ad} :catch_ae

    .line 1334
    return v10

    .line 1335
    :catch_ae
    move-exception v0

    .line 1336
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    return v9
.end method

.method greylist-max-r connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    .registers 7
    .param p1, "autoConnect"    # Ljava/lang/Boolean;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1232
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1235
    :try_start_27
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    if-nez v1, :cond_4e

    .line 1238
    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 1239
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_56

    .line 1241
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    .line 1243
    invoke-direct {p0, p2, p3}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1244
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    const/4 v1, 0x0

    :try_start_3f
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 1246
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 1247
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register callback"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return v1

    .line 1246
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1

    .line 1252
    :cond_4d
    return v1

    .line 1236
    :cond_4e
    :try_start_4e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not idle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothGatt;
    .end local p1    # "autoConnect":Ljava/lang/Boolean;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothGattCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    throw v1

    .line 1239
    .restart local p0    # "this":Landroid/bluetooth/BluetoothGatt;
    .restart local p1    # "autoConnect":Ljava/lang/Boolean;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothGattCallback;
    .restart local p3    # "handler":Landroid/os/Handler;
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v1
.end method

.method public whitelist disconnect()V
    .registers 5

    .line 1262
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOpen() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1264
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_3a

    if-nez v0, :cond_23

    goto :goto_3a

    .line 1267
    :cond_23
    :try_start_23
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_31

    .line 1270
    goto :goto_39

    .line 1268
    :catch_31
    move-exception v1

    .line 1269
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void

    .line 1264
    :cond_3a
    :goto_3a
    return-void
.end method

.method public blacklist discoverServiceByUuid(Ljava/util/UUID;)Z
    .registers 8
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 1445
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServiceByUuid() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1447
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    if-nez v0, :cond_24

    goto :goto_4d

    .line 1449
    :cond_24
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->fixBluetoothGattGettingDuplicateServices()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1450
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1454
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1455
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1454
    invoke-interface {v1, v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_41} :catch_44

    .line 1459
    nop

    .line 1460
    const/4 v1, 0x1

    return v1

    .line 1456
    :catch_44
    move-exception v1

    .line 1457
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1458
    return v2

    .line 1447
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return v2
.end method

.method public whitelist discoverServices()Z
    .registers 6

    .line 1414
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServices() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1417
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    if-nez v0, :cond_24

    goto :goto_48

    .line 1419
    :cond_24
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->fixBluetoothGattGettingDuplicateServices()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1420
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1424
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3c} :catch_3f

    .line 1428
    nop

    .line 1430
    const/4 v1, 0x1

    return v1

    .line 1425
    :catch_3f
    move-exception v1

    .line 1426
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1427
    return v2

    .line 1417
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_48
    :goto_48
    return v2
.end method

.method public whitelist executeReliableWrite()Z
    .registers 7

    .line 1934
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1935
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    if-nez v0, :cond_a

    goto :goto_48

    .line 1937
    :cond_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1938
    :try_start_d
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_17

    monitor-exit v1

    return v2

    .line 1939
    :cond_17
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1940
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_45

    .line 1943
    :try_start_1f
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v4, v3, v5}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;ZLandroid/content/AttributionSource;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2c} :catch_2e

    .line 1950
    nop

    .line 1952
    return v3

    .line 1944
    :catch_2e
    move-exception v1

    move-object v3, v1

    .line 1945
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1946
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1947
    :try_start_3a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1948
    monitor-exit v4

    .line 1949
    return v2

    .line 1948
    :catchall_42
    move-exception v1

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw v1

    .line 1940
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2

    .line 1935
    :cond_48
    :goto_48
    return v2
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 1046
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I

    .line 1092
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1093
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1094
    .local v3, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v4

    if-ne v4, p2, :cond_2d

    .line 1095
    return-object v3

    .line 1097
    .end local v3    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2d
    goto :goto_1a

    .line 1098
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_2e
    goto :goto_6

    .line 1099
    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I

    .line 1108
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1109
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1110
    .local v3, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 1111
    .local v5, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v6

    if-ne v6, p2, :cond_41

    .line 1112
    return-object v5

    .line 1114
    .end local v5    # "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_41
    goto :goto_2e

    .line 1115
    .end local v3    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_42
    goto :goto_1a

    .line 1116
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_43
    goto :goto_6

    .line 1117
    :cond_44
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 1397
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattService;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I

    .line 1075
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1076
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1077
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p3, :cond_2d

    .line 1078
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1079
    return-object v1

    .line 1081
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_2d
    goto :goto_6

    .line 1082
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 1501
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1502
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1503
    return-object v1

    .line 1505
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_29
    goto :goto_6

    .line 1507
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getServices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 1474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 1477
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1478
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    .end local v2    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_26
    goto :goto_b

    .line 1482
    :cond_27
    return-object v0
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "service"    # Landroid/os/IBinder;

    .line 1035
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 1

    .line 1040
    return-void
.end method

.method public whitelist readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 12
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1524
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1525
    return v1

    .line 1529
    :cond_a
    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1530
    .local v3, "clientIf":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_62

    if-nez v3, :cond_13

    goto :goto_62

    .line 1532
    :cond_13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    .line 1533
    .local v8, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v8, :cond_1a

    return v1

    .line 1535
    :cond_1a
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 1536
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_21

    return v1

    .line 1538
    :cond_21
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1539
    :try_start_24
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    monitor-exit v2

    return v1

    .line 1540
    :cond_2e
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1541
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_5f

    .line 1544
    :try_start_36
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 1546
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1547
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v5

    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1544
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/content/AttributionSource;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_46} :catch_48

    .line 1556
    nop

    .line 1558
    return v0

    .line 1550
    :catch_48
    move-exception v0

    move-object v4, v0

    .line 1551
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1553
    :try_start_54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1554
    monitor-exit v5

    .line 1555
    return v1

    .line 1554
    :catchall_5c
    move-exception v0

    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5c

    throw v0

    .line 1541
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0

    .line 1530
    .end local v8    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_62
    :goto_62
    return v1
.end method

.method public whitelist readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 13
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .line 1759
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1760
    .local v1, "clientIf":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v6, 0x0

    if-eqz v0, :cond_60

    if-nez v1, :cond_a

    goto :goto_60

    .line 1762
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    .line 1763
    .local v7, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v7, :cond_11

    return v6

    .line 1765
    :cond_11
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    .line 1766
    .local v8, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v8, :cond_18

    return v6

    .line 1768
    :cond_18
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 1769
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_1f

    return v6

    .line 1771
    :cond_1f
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1772
    :try_start_22
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    monitor-exit v2

    return v6

    .line 1773
    :cond_2c
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1774
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_5d

    .line 1777
    :try_start_34
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 1779
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1780
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v3

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1777
    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/content/AttributionSource;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_44} :catch_46

    .line 1789
    nop

    .line 1791
    return v10

    .line 1783
    :catch_46
    move-exception v0

    move-object v3, v0

    .line 1784
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1786
    :try_start_52
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1787
    monitor-exit v4

    .line 1788
    return v6

    .line 1787
    :catchall_5a
    move-exception v0

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v0

    .line 1774
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0

    .line 1760
    .end local v7    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v8    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_60
    :goto_60
    return v6
.end method

.method public whitelist readPhy()V
    .registers 5

    .line 1380
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1381
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_20

    if-nez v0, :cond_9

    goto :goto_20

    .line 1384
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->clientReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 1387
    goto :goto_1f

    .line 1385
    :catch_17
    move-exception v1

    .line 1386
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1388
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void

    .line 1381
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist readRemoteRssi()Z
    .registers 6

    .line 2070
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readRssi() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 2072
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    if-nez v0, :cond_24

    goto :goto_3d

    .line 2075
    :cond_24
    :try_start_24
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_34

    .line 2079
    nop

    .line 2081
    const/4 v1, 0x1

    return v1

    .line 2076
    :catch_34
    move-exception v1

    .line 2077
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2078
    return v2

    .line 2072
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    return v2
.end method

.method public blacklist readUsingCharacteristicUuid(Ljava/util/UUID;II)Z
    .registers 14
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "startHandle"    # I
    .param p3, "endHandle"    # I

    .line 1577
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1578
    .local v1, "clientIf":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v8, 0x0

    if-eqz v0, :cond_5f

    if-nez v1, :cond_c

    move v4, p2

    move v5, p3

    goto :goto_61

    .line 1580
    :cond_c
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1581
    :try_start_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_58

    if-eqz v0, :cond_1d

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    return v8

    .line 1583
    :catchall_19
    move-exception v0

    move v4, p2

    move v5, p3

    goto :goto_5b

    .line 1582
    :cond_1d
    const/4 v9, 0x1

    :try_start_1e
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1583
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_58

    .line 1586
    :try_start_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1588
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_34} :catch_3f

    .line 1586
    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    .end local p2    # "startHandle":I
    .end local p3    # "endHandle":I
    .local v4, "startHandle":I
    .local v5, "endHandle":I
    :try_start_37
    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;IIILandroid/content/AttributionSource;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3c

    .line 1600
    nop

    .line 1602
    return v9

    .line 1594
    :catch_3c
    move-exception v0

    move-object p2, v0

    goto :goto_43

    .end local v4    # "startHandle":I
    .end local v5    # "endHandle":I
    .restart local p2    # "startHandle":I
    .restart local p3    # "endHandle":I
    :catch_3f
    move-exception v0

    move v4, p2

    move v5, p3

    move-object p2, v0

    .line 1595
    .end local p3    # "endHandle":I
    .restart local v4    # "startHandle":I
    .restart local v5    # "endHandle":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_43
    sget-object p3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1596
    iget-object p3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1597
    :try_start_4d
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1598
    monitor-exit p3

    .line 1599
    return v8

    .line 1598
    :catchall_55
    move-exception v0

    monitor-exit p3
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    throw v0

    .line 1583
    .end local v4    # "startHandle":I
    .end local v5    # "endHandle":I
    .local p2, "startHandle":I
    .restart local p3    # "endHandle":I
    :catchall_58
    move-exception v0

    move v4, p2

    move v5, p3

    .end local p2    # "startHandle":I
    .end local p3    # "endHandle":I
    .restart local v4    # "startHandle":I
    .restart local v5    # "endHandle":I
    :goto_5b
    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5d

    throw v0

    :catchall_5d
    move-exception v0

    goto :goto_5b

    .line 1578
    .end local v4    # "startHandle":I
    .end local v5    # "endHandle":I
    .restart local p2    # "startHandle":I
    .restart local p3    # "endHandle":I
    :cond_5f
    move v4, p2

    move v5, p3

    .end local p2    # "startHandle":I
    .end local p3    # "endHandle":I
    .restart local v4    # "startHandle":I
    .restart local v5    # "endHandle":I
    :goto_61
    return v8
.end method

.method public greylist refresh()Z
    .registers 6

    .line 2044
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 2046
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    if-nez v0, :cond_24

    goto :goto_3d

    .line 2049
    :cond_24
    :try_start_24
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_34

    .line 2053
    nop

    .line 2055
    const/4 v1, 0x1

    return v1

    .line 2050
    :catch_34
    move-exception v1

    .line 2051
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2052
    return v2

    .line 2046
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    return v2
.end method

.method public whitelist requestConnectionPriority(I)Z
    .registers 7
    .param p1, "connectionPriority"    # I

    .line 2135
    if-ltz p1, :cond_41

    const/4 v0, 0x3

    if-gt p1, v0, :cond_41

    .line 2140
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnectionPriority() - params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 2142
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    if-nez v0, :cond_27

    goto :goto_40

    .line 2145
    :cond_27
    :try_start_27
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2146
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2145
    invoke-interface {v1, v0, v3, p1, v4}, Landroid/bluetooth/IBluetoothGatt;->connectionParameterUpdate(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_37

    .line 2150
    nop

    .line 2152
    const/4 v1, 0x1

    return v1

    .line 2147
    :catch_37
    move-exception v1

    .line 2148
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2149
    return v2

    .line 2142
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_40
    :goto_40
    return v2

    .line 2137
    .end local v0    # "clientIf":I
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPriority not within valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestLeConnectionUpdate(IIIIII)Z
    .registers 19
    .param p1, "minConnectionInterval"    # I
    .param p2, "maxConnectionInterval"    # I
    .param p3, "slaveLatency"    # I
    .param p4, "supervisionTimeout"    # I
    .param p5, "minConnectionEventLen"    # I
    .param p6, "maxConnectionEventLen"    # I

    .line 2173
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLeConnectionUpdate() - min=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v3, p1

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "msec, max=("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v2, p2

    mul-double/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msec, latency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msec, min_ce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max_ce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v10, p6

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 2194
    .local v3, "clientIf":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    if-nez v3, :cond_72

    goto :goto_8e

    .line 2197
    :cond_72
    :try_start_72
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2199
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2197
    move v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v11}, Landroid/bluetooth/IBluetoothGatt;->leConnectionUpdate(ILjava/lang/String;IIIIIILandroid/content/AttributionSource;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_82} :catch_85

    .line 2210
    nop

    .line 2212
    const/4 v0, 0x1

    return v0

    .line 2207
    :catch_85
    move-exception v0

    .line 2208
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    return v1

    .line 2194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8e
    :goto_8e
    return v1
.end method

.method public whitelist requestMtu(I)Z
    .registers 7
    .param p1, "mtu"    # I

    .line 2105
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureMTU() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mtu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 2108
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    if-nez v0, :cond_2e

    goto :goto_47

    .line 2111
    :cond_2e
    :try_start_2e
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v3, p1, v4}, Landroid/bluetooth/IBluetoothGatt;->configureMTU(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3b} :catch_3e

    .line 2115
    nop

    .line 2117
    const/4 v1, 0x1

    return v1

    .line 2112
    :catch_3e
    move-exception v1

    .line 2113
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2114
    return v2

    .line 2108
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_47
    :goto_47
    return v2
.end method

.method public blacklist requestSubrateMode(I)I
    .registers 7
    .param p1, "subrateMode"    # I

    .line 2236
    if-ltz p1, :cond_40

    const/4 v0, 0x2

    if-gt p1, v0, :cond_40

    .line 2242
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestsubrateMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 2245
    .local v0, "clientIf":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    if-nez v0, :cond_2d

    goto :goto_3f

    .line 2250
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v3, p1, v4}, Landroid/bluetooth/IBluetoothGatt;->subrateModeRequest(ILandroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_38

    return v1

    .line 2251
    :catch_38
    move-exception v1

    .line 2252
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 2253
    return v2

    .line 2246
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    return v2

    .line 2238
    .end local v0    # "clientIf":I
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subrate Mode not within valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .registers 13
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enable"    # Z

    .line 2004
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCharacteristicNotification() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2007
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2004
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 2012
    .local v3, "clientIf":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    if-nez v3, :cond_31

    move v6, p2

    goto :goto_61

    .line 2014
    :cond_31
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    .line 2015
    .local v8, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v8, :cond_38

    return v1

    .line 2017
    :cond_38
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 2018
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_3f

    return v1

    .line 2021
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 2023
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2024
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v5

    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4b} :catch_55

    .line 2021
    move v6, p2

    .end local p2    # "enable":Z
    .local v6, "enable":Z
    :try_start_4c
    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IZLandroid/content/AttributionSource;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_52

    .line 2030
    nop

    .line 2032
    const/4 p2, 0x1

    return p2

    .line 2027
    :catch_52
    move-exception v0

    move-object p2, v0

    goto :goto_58

    .end local v6    # "enable":Z
    .restart local p2    # "enable":Z
    :catch_55
    move-exception v0

    move v6, p2

    move-object p2, v0

    .line 2028
    .restart local v6    # "enable":Z
    .local p2, "e":Landroid/os/RemoteException;
    :goto_58
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2029
    return v1

    .line 2012
    .end local v6    # "enable":Z
    .end local v8    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    .local p2, "enable":Z
    :cond_60
    move v6, p2

    .end local p2    # "enable":Z
    .restart local v6    # "enable":Z
    :goto_61
    return v1
.end method

.method public whitelist setPreferredPhy(III)V
    .registers 11
    .param p1, "txPhy"    # I
    .param p2, "rxPhy"    # I
    .param p3, "phyOptions"    # I

    .line 1362
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1363
    .local v1, "clientIf":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_2d

    if-nez v1, :cond_c

    move v3, p1

    move v4, p2

    move v5, p3

    goto :goto_30

    .line 1366
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1367
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_20

    .line 1366
    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "txPhy":I
    .end local p2    # "rxPhy":I
    .end local p3    # "phyOptions":I
    .local v3, "txPhy":I
    .local v4, "rxPhy":I
    .local v5, "phyOptions":I
    :try_start_19
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->clientSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 1370
    goto :goto_2c

    .line 1368
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .end local v3    # "txPhy":I
    .end local v4    # "rxPhy":I
    .end local v5    # "phyOptions":I
    .restart local p1    # "txPhy":I
    .restart local p2    # "rxPhy":I
    .restart local p3    # "phyOptions":I
    :catch_20
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object p1, v0

    .line 1369
    .end local p2    # "rxPhy":I
    .end local p3    # "phyOptions":I
    .restart local v3    # "txPhy":I
    .restart local v4    # "rxPhy":I
    .restart local v5    # "phyOptions":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    sget-object p2, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string p3, ""

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void

    .line 1363
    .end local v3    # "txPhy":I
    .end local v4    # "rxPhy":I
    .end local v5    # "phyOptions":I
    .local p1, "txPhy":I
    .restart local p2    # "rxPhy":I
    .restart local p3    # "phyOptions":I
    :cond_2d
    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "txPhy":I
    .end local p2    # "rxPhy":I
    .end local p3    # "phyOptions":I
    .restart local v3    # "txPhy":I
    .restart local v4    # "rxPhy":I
    .restart local v5    # "phyOptions":I
    :goto_30
    return-void
.end method

.method public whitelist writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)I
    .registers 20
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "value"    # [B
    .param p3, "writeType"    # I

    .line 1668
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    if-eqz p1, :cond_d5

    .line 1671
    if-eqz v8, :cond_cd

    .line 1674
    array-length v0, v8

    const/16 v2, 0x200

    if-gt v0, v2, :cond_c5

    .line 1679
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_20

    .line 1680
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_20

    .line 1683
    const/16 v0, 0xc8

    return v0

    .line 1685
    :cond_20
    iget v3, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1686
    .local v3, "clientIf":I
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_c2

    if-nez v3, :cond_2a

    goto/16 :goto_c2

    .line 1690
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v10

    .line 1691
    .local v10, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v10, :cond_ba

    .line 1695
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 1696
    .local v11, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v11, :cond_b2

    .line 1700
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1701
    :try_start_39
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v12, 0xc9

    if-eqz v0, :cond_45

    .line 1702
    monitor-exit v2

    return v12

    .line 1704
    :cond_45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1705
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_af

    .line 1707
    const v0, 0x7fffffff

    .line 1709
    .local v0, "requestStatus":I
    const/4 v2, 0x0

    move v13, v0

    move v14, v2

    .end local v0    # "requestStatus":I
    .local v13, "requestStatus":I
    .local v14, "i":I
    :goto_53
    const/4 v0, 0x5

    const/4 v15, 0x0

    if-ge v14, v0, :cond_9d

    .line 1710
    :try_start_57
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 1713
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1714
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v5

    iget-object v9, v1, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1711
    const/4 v7, 0x0

    move/from16 v6, p3

    invoke-interface/range {v2 .. v9}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[BLandroid/content/AttributionSource;)I

    move-result v0
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_6a} :catch_81

    move v13, v0

    .line 1719
    if-eq v13, v12, :cond_6e

    .line 1720
    goto :goto_9d

    .line 1723
    :cond_6e
    const-wide/16 v4, 0xa

    :try_start_70
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_74
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_73} :catch_81

    .line 1726
    goto :goto_7c

    .line 1724
    :catch_74
    move-exception v0

    .line 1725
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_75
    sget-object v2, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7c} :catch_81

    .line 1709
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_7c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p2

    goto :goto_53

    .line 1728
    .end local v14    # "i":I
    :catch_81
    move-exception v0

    move v2, v13

    .end local v13    # "requestStatus":I
    .local v2, "requestStatus":I
    move-object v4, v0

    .line 1729
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1730
    iget-object v5, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1731
    :try_start_8e
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1732
    monitor-exit v5
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_9a

    .line 1733
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1732
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0

    .line 1734
    .end local v2    # "requestStatus":I
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v13    # "requestStatus":I
    :cond_9d
    :goto_9d
    nop

    .line 1735
    if-eqz v13, :cond_ae

    .line 1736
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1737
    :try_start_a3
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1738
    monitor-exit v2

    goto :goto_ae

    :catchall_ab
    move-exception v0

    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_ab

    throw v0

    .line 1741
    :cond_ae
    :goto_ae
    return v13

    .line 1705
    .end local v13    # "requestStatus":I
    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v0

    .line 1697
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service must have a non-null device"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1692
    .end local v11    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Characteristic must have a non-null service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1687
    .end local v10    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_c2
    :goto_c2
    const/16 v0, 0x9

    return v0

    .line 1675
    .end local v3    # "clientIf":I
    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "value should not be longer than max length of an attribute value"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1672
    :cond_cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "value must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1669
    :cond_d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "characteristic must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1626
    nop

    .line 1628
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    .line 1629
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v2

    .line 1626
    invoke-virtual {p0, p1, v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)I

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_12

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 1631
    :catch_12
    move-exception v1

    .line 1632
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public whitelist writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)I
    .registers 13
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "value"    # [B

    .line 1834
    if-eqz p1, :cond_9c

    .line 1837
    if-eqz p2, :cond_93

    .line 1841
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    .line 1842
    .local v1, "clientIf":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_8f

    if-nez v1, :cond_f

    move-object v5, p2

    goto/16 :goto_90

    .line 1846
    :cond_f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    .line 1847
    .local v7, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v7, :cond_86

    .line 1851
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    .line 1852
    .local v8, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v8, :cond_7d

    .line 1856
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 1857
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v9, :cond_74

    .line 1861
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1862
    :try_start_24
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_6e

    if-eqz v0, :cond_33

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_30

    const/16 v0, 0xc9

    return v0

    .line 1864
    :catchall_30
    move-exception v0

    move-object v5, p2

    goto :goto_70

    .line 1863
    :cond_33
    const/4 v0, 0x1

    :try_start_34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1864
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_6e

    .line 1867
    :try_start_3b
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 1869
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1870
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v3

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_47} :catch_51

    .line 1867
    const/4 v4, 0x0

    move-object v5, p2

    .end local p2    # "value":[B
    .local v5, "value":[B
    :try_start_49
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;II[BLandroid/content/AttributionSource;)I

    move-result p2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4d} :catch_4e

    return p2

    .line 1874
    :catch_4e
    move-exception v0

    move-object p2, v0

    goto :goto_54

    .end local v5    # "value":[B
    .restart local p2    # "value":[B
    :catch_51
    move-exception v0

    move-object v5, p2

    move-object p2, v0

    .line 1875
    .restart local v5    # "value":[B
    .local p2, "e":Landroid/os/RemoteException;
    :goto_54
    sget-object v0, Landroid/bluetooth/BluetoothGatt;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1877
    const/4 v0, 0x0

    :try_start_5f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1878
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6b

    .line 1879
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1878
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0

    .line 1864
    .end local v5    # "value":[B
    .local p2, "value":[B
    :catchall_6e
    move-exception v0

    move-object v5, p2

    .end local p2    # "value":[B
    .restart local v5    # "value":[B
    :goto_70
    :try_start_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_72

    throw v0

    :catchall_72
    move-exception v0

    goto :goto_70

    .line 1858
    .end local v5    # "value":[B
    .restart local p2    # "value":[B
    :cond_74
    move-object v5, p2

    .end local p2    # "value":[B
    .restart local v5    # "value":[B
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Service must have a non-null device"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1853
    .end local v5    # "value":[B
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "value":[B
    :cond_7d
    move-object v5, p2

    .end local p2    # "value":[B
    .restart local v5    # "value":[B
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Characteristic must have a non-null service"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1848
    .end local v5    # "value":[B
    .end local v8    # "service":Landroid/bluetooth/BluetoothGattService;
    .restart local p2    # "value":[B
    :cond_86
    move-object v5, p2

    .end local p2    # "value":[B
    .restart local v5    # "value":[B
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Descriptor must have a non-null characteristic"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1842
    .end local v5    # "value":[B
    .end local v7    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local p2    # "value":[B
    :cond_8f
    move-object v5, p2

    .line 1843
    .end local p2    # "value":[B
    .restart local v5    # "value":[B
    :goto_90
    const/16 p2, 0x9

    return p2

    .line 1838
    .end local v1    # "clientIf":I
    .end local v5    # "value":[B
    .restart local p2    # "value":[B
    :cond_93
    move-object v5, p2

    .end local p2    # "value":[B
    .restart local v5    # "value":[B
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "value must not be null"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1835
    .end local v5    # "value":[B
    .restart local p2    # "value":[B
    :cond_9c
    move-object v5, p2

    .end local p2    # "value":[B
    .restart local v5    # "value":[B
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor must not be null"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 4
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1813
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_d

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 1815
    :catch_d
    move-exception v1

    .line 1816
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
