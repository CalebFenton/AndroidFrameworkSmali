.class public final Landroid/bluetooth/BluetoothLeCallControl;
.super Ljava/lang/Object;
.source "BluetoothLeCallControl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeCallControl$Callback;,
        Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

.field private blacklist mCcid:I

.field private blacklist mService:Landroid/bluetooth/IBluetoothLeCallControl;

.field private blacklist mToken:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCcid(Landroid/bluetooth/BluetoothLeCallControl;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, Landroid/bluetooth/BluetoothLeCallControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 222
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 223
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 224
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    .line 225
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothLeCallControl;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    return-object v0
.end method


# virtual methods
.method public blacklist close()V
    .registers 3

    .line 229
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 232
    return-void
.end method

.method public blacklist currentCallsList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeCall;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeCall;>;"
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 517
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_e

    .line 518
    sget-object v1, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void

    .line 523
    :cond_e
    :try_start_e
    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetoothLeCallControl;->currentCallsList(ILjava/util/List;Landroid/content/AttributionSource;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 526
    goto :goto_40

    .line 524
    :catch_16
    move-exception v1

    .line 525
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

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

    .line 527
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_40
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onCallAdded(Landroid/bluetooth/BluetoothLeCall;)V
    .registers 7
    .param p1, "call"    # Landroid/bluetooth/BluetoothLeCall;

    .line 424
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallAdded: call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_1d

    .line 426
    return-void

    .line 429
    :cond_1d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 430
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_2b

    .line 431
    sget-object v1, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 436
    :cond_2b
    :try_start_2b
    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetoothLeCallControl;->callAdded(ILandroid/bluetooth/BluetoothLeCall;Landroid/content/AttributionSource;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_33

    .line 439
    goto :goto_5d

    .line 437
    :catch_33
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

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

    .line 440
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5d
    return-void
.end method

.method public blacklist onCallRemoved(Ljava/util/UUID;I)V
    .registers 8
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "reason"    # I

    .line 456
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callRemoved: callId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_1d

    .line 458
    return-void

    .line 461
    :cond_1d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 462
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_2b

    .line 463
    sget-object v1, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void

    .line 467
    :cond_2b
    :try_start_2b
    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->callRemoved(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_37} :catch_38

    .line 470
    goto :goto_62

    .line 468
    :catch_38
    move-exception v1

    .line 469
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

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

    .line 471
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_62
    return-void
.end method

.method public blacklist onCallStateChanged(Ljava/util/UUID;I)V
    .registers 8
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "state"    # I

    .line 487
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callStateChanged: callId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_27

    .line 489
    return-void

    .line 492
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 493
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_35

    .line 494
    sget-object v1, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void

    .line 499
    :cond_35
    :try_start_35
    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->callStateChanged(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_41} :catch_42

    .line 502
    goto :goto_6c

    .line 500
    :catch_42
    move-exception v1

    .line 501
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

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

    .line 503
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6c
    return-void
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 238
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    .line 239
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    .line 246
    return-void
.end method

.method public blacklist registerBearer(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)Z
    .registers 22
    .param p1, "uci"    # Ljava/lang/String;
    .param p3, "capabilities"    # I
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "technology"    # I
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/bluetooth/BluetoothLeCallControl$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/bluetooth/BluetoothLeCallControl$Callback;",
            ")Z"
        }
    .end annotation

    .line 333
    .local p2, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p7

    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v2, "registerBearer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v1, :cond_9c

    .line 337
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 338
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ccid is already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v2

    .line 342
    :cond_2b
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v4

    .line 345
    .local v4, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v4, :cond_3b

    .line 346
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v2

    .line 350
    :cond_3b
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    if-eqz v0, :cond_47

    .line 351
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v3, "Bearer can be opened only once"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v2

    .line 355
    :cond_47
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 357
    const/4 v3, 0x0

    :try_start_4a
    new-instance v6, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4c} :catch_6d

    move-object/from16 v13, p6

    :try_start_4e
    invoke-direct {v6, p0, v13, v1}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;-><init>(Landroid/bluetooth/BluetoothLeCallControl;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)V

    .line 358
    .local v6, "callbackWrapper":Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    iget-object v12, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v4 .. v12}, Landroid/bluetooth/IBluetoothLeCallControl;->registerBearer(Ljava/lang/String;Landroid/bluetooth/IBluetoothLeCallControlCallback;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/AttributionSource;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_61} :catch_6b

    .line 372
    .end local v6    # "callbackWrapper":Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
    nop

    .line 374
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_69

    .line 375
    iput-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 376
    return v2

    .line 379
    :cond_69
    const/4 v0, 0x1

    return v0

    .line 368
    :catch_6b
    move-exception v0

    goto :goto_70

    :catch_6d
    move-exception v0

    move-object/from16 v13, p6

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    :goto_70
    sget-object v5, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iput-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 371
    return v2

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "service":Landroid/bluetooth/IBluetoothLeCallControl;
    :cond_9c
    move-object/from16 v13, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestResult(II)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "result"    # I

    .line 550
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestResult: requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_27

    .line 552
    return-void

    .line 555
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 556
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_35

    .line 557
    sget-object v1, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void

    .line 562
    :cond_35
    :try_start_35
    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/bluetooth/IBluetoothLeCallControl;->requestResult(IIILandroid/content/AttributionSource;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 565
    goto :goto_67

    .line 563
    :catch_3d
    move-exception v1

    .line 564
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

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

    .line 566
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_67
    return-void
.end method

.method public blacklist unregisterBearer()V
    .registers 6

    .line 390
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v1, "unregisterBearer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_c

    .line 392
    return-void

    .line 395
    :cond_c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    .line 396
    .local v0, "service":Landroid/bluetooth/IBluetoothLeCallControl;
    if-nez v0, :cond_1a

    .line 397
    sget-object v1, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void

    .line 401
    :cond_1a
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    .line 402
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 405
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothLeCallControl;->unregisterBearer(Ljava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    .line 408
    goto :goto_52

    .line 406
    :catch_28
    move-exception v1

    .line 407
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeCallControl;->TAG:Ljava/lang/String;

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

    .line 409
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_52
    return-void
.end method
