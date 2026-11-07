.class Landroid/nearby/NearbyManager$ScanListenerTransport;
.super Landroid/nearby/IScanListener$Stub;
.source "NearbyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/NearbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanListenerTransport"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mScanCallback:Landroid/nearby/ScanCallback;

.field private blacklist mScanType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$009aqv-xNvIWl8l2W8YY6jLXP6E(Landroid/nearby/NearbyManager$ScanListenerTransport;Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nearby/NearbyManager$ScanListenerTransport;->lambda$onDiscovered$0(Landroid/nearby/NearbyDeviceParcelable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K6WTK8_lV9Gcvnq_dyjPWMvNavE(Landroid/nearby/NearbyManager$ScanListenerTransport;Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nearby/NearbyManager$ScanListenerTransport;->lambda$onUpdated$1(Landroid/nearby/NearbyDeviceParcelable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LQ1LP8EiPJKeWlRjtwrf0ltLIBw(Landroid/nearby/NearbyManager$ScanListenerTransport;Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nearby/NearbyManager$ScanListenerTransport;->lambda$onLost$2(Landroid/nearby/NearbyDeviceParcelable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rrhnG6TwICm1XVX0RUhtwjfMX4s(Landroid/nearby/NearbyManager$ScanListenerTransport;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nearby/NearbyManager$ScanListenerTransport;->lambda$onError$3(I)V

    return-void
.end method

.method constructor blacklist <init>(ILandroid/nearby/ScanCallback;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "scanType"    # I
    .param p2, "scanCallback"    # Landroid/nearby/ScanCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 368
    invoke-direct {p0}, Landroid/nearby/IScanListener$Stub;-><init>()V

    .line 369
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 371
    invoke-static {p1}, Landroid/nearby/ScanRequest;->isValidScanType(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scan type must be one of ScanRequest#SCAN_TYPE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 374
    iput p1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanType:I

    .line 375
    iput-object p2, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    .line 376
    iput-object p3, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 377
    return-void
.end method

.method private synthetic blacklist lambda$onDiscovered$0(Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 4
    .param p1, "nearbyDeviceParcelable"    # Landroid/nearby/NearbyDeviceParcelable;

    .line 397
    iget v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanType:I

    invoke-static {p1, v0}, Landroid/nearby/NearbyManager;->-$$Nest$smtoClientNearbyDevice(Landroid/nearby/NearbyDeviceParcelable;I)Landroid/nearby/NearbyDevice;

    move-result-object v0

    .line 398
    .local v0, "nearbyDevice":Landroid/nearby/NearbyDevice;
    iget-object v1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 399
    iget-object v1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    invoke-interface {v1, v0}, Landroid/nearby/ScanCallback;->onDiscovered(Landroid/nearby/NearbyDevice;)V

    .line 401
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$onError$3(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 430
    iget-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    if-eqz v0, :cond_9

    .line 431
    iget-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    invoke-interface {v0, p1}, Landroid/nearby/ScanCallback;->onError(I)V

    .line 433
    :cond_9
    return-void
.end method

.method private synthetic blacklist lambda$onLost$2(Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 5
    .param p1, "nearbyDeviceParcelable"    # Landroid/nearby/NearbyDeviceParcelable;

    .line 419
    iget v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanType:I

    invoke-static {p1, v0}, Landroid/nearby/NearbyManager;->-$$Nest$smtoClientNearbyDevice(Landroid/nearby/NearbyDeviceParcelable;I)Landroid/nearby/NearbyDevice;

    move-result-object v0

    .line 420
    .local v0, "nearbyDevice":Landroid/nearby/NearbyDevice;
    iget-object v1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    .line 421
    iget-object v1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    iget v2, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanType:I

    .line 422
    invoke-static {p1, v2}, Landroid/nearby/NearbyManager;->-$$Nest$smtoClientNearbyDevice(Landroid/nearby/NearbyDeviceParcelable;I)Landroid/nearby/NearbyDevice;

    move-result-object v2

    .line 421
    invoke-interface {v1, v2}, Landroid/nearby/ScanCallback;->onLost(Landroid/nearby/NearbyDevice;)V

    .line 424
    :cond_17
    return-void
.end method

.method private synthetic blacklist lambda$onUpdated$1(Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 5
    .param p1, "nearbyDeviceParcelable"    # Landroid/nearby/NearbyDeviceParcelable;

    .line 408
    iget v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanType:I

    invoke-static {p1, v0}, Landroid/nearby/NearbyManager;->-$$Nest$smtoClientNearbyDevice(Landroid/nearby/NearbyDeviceParcelable;I)Landroid/nearby/NearbyDevice;

    move-result-object v0

    .line 409
    .local v0, "nearbyDevice":Landroid/nearby/NearbyDevice;
    iget-object v1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    .line 410
    iget-object v1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    iget v2, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanType:I

    .line 411
    invoke-static {p1, v2}, Landroid/nearby/NearbyManager;->-$$Nest$smtoClientNearbyDevice(Landroid/nearby/NearbyDeviceParcelable;I)Landroid/nearby/NearbyDevice;

    move-result-object v2

    .line 410
    invoke-interface {v1, v2}, Landroid/nearby/ScanCallback;->onUpdated(Landroid/nearby/NearbyDevice;)V

    .line 413
    :cond_17
    return-void
.end method


# virtual methods
.method blacklist isRegistered()Z
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist onDiscovered(Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 4
    .param p1, "nearbyDeviceParcelable"    # Landroid/nearby/NearbyDeviceParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda1;-><init>(Landroid/nearby/NearbyManager$ScanListenerTransport;Landroid/nearby/NearbyDeviceParcelable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public blacklist onError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 429
    iget-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda2;-><init>(Landroid/nearby/NearbyManager$ScanListenerTransport;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method public blacklist onLost(Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 4
    .param p1, "nearbyDeviceParcelable"    # Landroid/nearby/NearbyDeviceParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda3;-><init>(Landroid/nearby/NearbyManager$ScanListenerTransport;Landroid/nearby/NearbyDeviceParcelable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public blacklist onUpdated(Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 4
    .param p1, "nearbyDeviceParcelable"    # Landroid/nearby/NearbyDeviceParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda0;-><init>(Landroid/nearby/NearbyManager$ScanListenerTransport;Landroid/nearby/NearbyDeviceParcelable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method

.method blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 380
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null executor"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 382
    iput-object p1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 383
    return-void
.end method

.method blacklist unregister()V
    .registers 2

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport;->mScanCallback:Landroid/nearby/ScanCallback;

    .line 391
    return-void
.end method
