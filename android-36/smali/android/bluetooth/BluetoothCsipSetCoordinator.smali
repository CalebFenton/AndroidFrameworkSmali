.class public final Landroid/bluetooth/BluetoothCsipSetCoordinator;
.super Ljava/lang/Object;
.source "BluetoothCsipSetCoordinator.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;,
        Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CSIS_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.CSIS_CONNECTION_STATE_CHANGED"

.field public static final whitelist ACTION_CSIS_DEVICE_AVAILABLE:Ljava/lang/String; = "android.bluetooth.action.CSIS_DEVICE_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CSIS_SET_MEMBER_AVAILABLE:Ljava/lang/String; = "android.bluetooth.action.CSIS_SET_MEMBER_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field public static final whitelist EXTRA_CSIS_GROUP_ID:Ljava/lang/String; = "android.bluetooth.extra.CSIS_GROUP_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_CSIS_GROUP_SIZE:Ljava/lang/String; = "android.bluetooth.extra.CSIS_GROUP_SIZE"

.field public static final blacklist EXTRA_CSIS_GROUP_TYPE_UUID:Ljava/lang/String; = "android.bluetooth.extra.CSIS_GROUP_TYPE_UUID"

.field public static final whitelist GROUP_ID_INVALID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothCsipSetCoordinator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const-class v0, Landroid/bluetooth/BluetoothCsipSetCoordinator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 224
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mService:Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    .line 226
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mCloseGuard:Landroid/util/CloseGuard;

    .line 227
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mService:Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 517
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 521
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 525
    sget-object v0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 243
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 236
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->close()V

    .line 237
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getAllGroupIds(Landroid/os/ParcelUuid;)Ljava/util/List;
    .registers 7
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 377
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    if-nez v0, :cond_e

    .line 378
    sget-object v1, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 380
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 382
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getAllGroupIds(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v1

    .line 383
    :catch_1b
    move-exception v1

    .line 384
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 397
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    if-nez v0, :cond_e

    .line 398
    sget-object v1, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 400
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 402
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v1

    .line 403
    :catch_1b
    move-exception v1

    .line 404
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 502
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 503
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    if-nez v0, :cond_e

    .line 504
    sget-object v1, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 506
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p1}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 508
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21

    return v1

    .line 509
    :catch_21
    move-exception v1

    .line 510
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 438
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 439
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    if-nez v0, :cond_e

    .line 440
    sget-object v1, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 442
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 444
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v1

    .line 445
    :catch_1b
    move-exception v1

    .line 446
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 7
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 418
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    if-nez v0, :cond_e

    .line 419
    sget-object v1, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 421
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 423
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v1

    .line 424
    :catch_1b
    move-exception v1

    .line 425
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Map;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 352
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    if-nez v0, :cond_e

    .line 353
    sget-object v1, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 355
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 357
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/Map;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v1

    .line 358
    :catch_1b
    move-exception v1

    .line 359
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1
.end method

.method public whitelist lockGroup(ILjava/util/concurrent/Executor;Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;)Ljava/util/UUID;
    .registers 11
    .param p1, "groupId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 290
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 293
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 294
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 296
    :cond_15
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 297
    new-instance v2, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;

    invoke-direct {v2, p2, p3}, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;)V

    .line 300
    .local v2, "delegate":Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback;
    :try_start_20
    iget-object v3, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2, v3}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->lockGroup(ILandroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback;Landroid/content/AttributionSource;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 301
    .local v3, "ret":Landroid/os/ParcelUuid;
    if-nez v3, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_2e

    :goto_2d
    return-object v1

    .line 302
    .end local v3    # "ret":Landroid/os/ParcelUuid;
    :catch_2e
    move-exception v3

    .line 303
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v2    # "delegate":Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_58
    :goto_58
    return-object v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 249
    invoke-static {p1}, Landroid/bluetooth/IBluetoothCsipSetCoordinator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mService:Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    .line 250
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mService:Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    .line 257
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 470
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 471
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    if-nez v0, :cond_e

    .line 472
    sget-object v1, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 474
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 475
    invoke-static {p1}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_51

    if-eqz p2, :cond_20

    const/16 v1, 0x64

    if-ne p2, v1, :cond_51

    .line 479
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 480
    :catch_27
    move-exception v1

    .line 481
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist unlockGroup(Ljava/util/UUID;)Z
    .registers 7
    .param p1, "lockUuid"    # Ljava/util/UUID;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 322
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getService()Landroid/bluetooth/IBluetoothCsipSetCoordinator;

    move-result-object v0

    .line 324
    .local v0, "service":Landroid/bluetooth/IBluetoothCsipSetCoordinator;
    if-nez v0, :cond_11

    .line 325
    sget-object v1, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 327
    :cond_11
    invoke-direct {p0}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 329
    :try_start_17
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothCsipSetCoordinator;->unlockGroup(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_23

    .line 330
    const/4 v1, 0x1

    return v1

    .line 331
    :catch_23
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothCsipSetCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    const/4 v1, 0x0

    return v1
.end method
