.class final Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
.super Landroid/bluetooth/le/IScannerCallback$Stub;
.source "BluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BleScanCallbackWrapper"
.end annotation


# static fields
.field private static final blacklist REGISTRATION_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private final blacklist mBluetoothScan:Landroid/bluetooth/IBluetoothScan;

.field private final blacklist mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private blacklist mScannerId:I

.field private final blacklist mSettings:Landroid/bluetooth/le/ScanSettings;

.field private final blacklist mWorkSource:Landroid/os/WorkSource;

.field final synthetic blacklist this$0:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method public static synthetic blacklist $r8$lambda$I4z8KMPS6iTsCg_NGr13yUQ9S38(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->lambda$onBatchScanResults$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ta6PTcFwkn2YJinnfgkq2Y57mQw(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->lambda$onScanResult$0(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$togeeQLvjPkGbbeq1af7yW6BwAo(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;ILandroid/bluetooth/le/ScanResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->lambda$onFoundOrLost$2(ILandroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothScan;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .registers 7
    .param p2, "bluetoothScan"    # Landroid/bluetooth/IBluetoothScan;
    .param p4, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "scanCallback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothScan;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 402
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/IScannerCallback$Stub;-><init>()V

    .line 403
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothScan:Landroid/bluetooth/IBluetoothScan;

    .line 404
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    .line 405
    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    .line 406
    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mWorkSource:Landroid/os/WorkSource;

    .line 407
    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 408
    const/4 p1, 0x0

    iput p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 409
    return-void
.end method

.method private synthetic blacklist lambda$onBatchScanResults$1(Ljava/util/List;)V
    .registers 3
    .param p1, "results"    # Ljava/util/List;

    .line 548
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFoundOrLost$2(ILandroid/bluetooth/le/ScanResult;)V
    .registers 4
    .param p1, "callbackType"    # I
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 568
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onScanResult$0(Landroid/bluetooth/le/ScanResult;)V
    .registers 4
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 537
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 538
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScanResult() - handler run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_14
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 542
    return-void
.end method


# virtual methods
.method blacklist flushPendingBatchResults()V
    .registers 4

    .line 462
    monitor-enter p0

    .line 463
    :try_start_1
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_23

    .line 464
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state, mLeHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_3d

    return-void

    .line 468
    :cond_23
    :try_start_23
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothScan:Landroid/bluetooth/IBluetoothScan;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothScan;->flushPendingBatchResults(ILandroid/content/AttributionSource;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_31
    .catchall {:try_start_23 .. :try_end_30} :catchall_3d

    .line 471
    goto :goto_3b

    .line 469
    :catch_31
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to get pending scan results"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3b
    monitor-exit p0

    .line 473
    return-void

    .line 472
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public blacklist onBatchScanResults(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    .line 548
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmHandler(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    return-void
.end method

.method public blacklist onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .registers 6
    .param p1, "onFound"    # Z
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 553
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 559
    monitor-enter p0

    .line 560
    :try_start_a
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_10

    .line 561
    monitor-exit p0

    return-void

    .line 563
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_26

    .line 565
    if-eqz p1, :cond_15

    .line 566
    const/4 v0, 0x2

    goto :goto_16

    .line 567
    :cond_15
    const/4 v0, 0x4

    :goto_16
    nop

    .line 568
    .local v0, "callbackType":I
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmHandler(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p2}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;ILandroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    return-void

    .line 563
    .end local v0    # "callbackType":I
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public blacklist onScanManagerErrorCallback(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 576
    monitor-enter p0

    .line 577
    :try_start_1
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_7

    .line 578
    monitor-exit p0

    return-void

    .line 580
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    .line 581
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$mpostCallbackError(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    .line 582
    return-void

    .line 580
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public blacklist onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 6
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 519
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 520
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 521
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScanResult() - mScannerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_30
    monitor-enter p0

    .line 527
    :try_start_31
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_4a

    .line 528
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 529
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring result as scan stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_48
    monitor-exit p0

    return-void

    .line 534
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_5a

    .line 535
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmHandler(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void

    .line 534
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method public blacklist onScannerRegistered(II)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "scannerId"    # I

    .line 478
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScannerRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scannerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScannerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    monitor-enter p0

    .line 487
    const/4 v0, -0x1

    if-nez p1, :cond_78

    .line 489
    :try_start_34
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-ne v1, v0, :cond_44

    .line 491
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothScan:Landroid/bluetooth/IBluetoothScan;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/bluetooth/IBluetoothScan;->unregisterScanner(ILandroid/content/AttributionSource;)V

    goto :goto_57

    .line 493
    :cond_44
    iput p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 494
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothScan:Landroid/bluetooth/IBluetoothScan;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v5}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothScan;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_57} :catch_5a
    .catchall {:try_start_34 .. :try_end_57} :catchall_58

    .line 500
    :goto_57
    goto :goto_81

    .line 509
    :catchall_58
    move-exception v0

    goto :goto_86

    .line 497
    :catch_5a
    move-exception v1

    .line 498
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5b
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to start le scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_57

    .line 501
    :cond_78
    const/4 v1, 0x6

    if-ne p1, v1, :cond_7f

    .line 503
    const/4 v0, -0x2

    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    goto :goto_81

    .line 506
    :cond_7f
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 508
    :goto_81
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 509
    monitor-exit p0

    .line 510
    return-void

    .line 509
    :goto_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_5b .. :try_end_87} :catchall_58

    throw v0
.end method

.method blacklist startRegistration()V
    .registers 7

    .line 413
    monitor-enter p0

    .line 415
    :try_start_1
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_60

    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_62

    const/4 v2, -0x2

    if-ne v0, v2, :cond_c

    goto :goto_60

    .line 417
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothScan:Landroid/bluetooth/IBluetoothScan;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v4}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v0, p0, v3, v4}, Landroid/bluetooth/IBluetoothScan;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;Landroid/content/AttributionSource;)V

    .line 418
    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_1e} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_1f
    .catchall {:try_start_c .. :try_end_1e} :catchall_62

    .line 422
    goto :goto_31

    .line 419
    :catch_1f
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application registration exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$mpostCallbackError(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-lez v0, :cond_41

    .line 424
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmLeScanClients(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 428
    :cond_41
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-nez v0, :cond_47

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 431
    :cond_47
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-ne v0, v2, :cond_56

    .line 432
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registration failed because app is scanning too frequently"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    monitor-exit p0

    return-void

    .line 436
    :cond_56
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$mpostCallbackError(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    .line 440
    :goto_5e
    monitor-exit p0

    .line 441
    return-void

    .line 415
    :cond_60
    :goto_60
    monitor-exit p0

    return-void

    .line 440
    :catchall_62
    move-exception v0

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_20 .. :try_end_64} :catchall_62

    throw v0
.end method

.method blacklist stopLeScan()V
    .registers 4

    .line 445
    monitor-enter p0

    .line 446
    :try_start_1
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_23

    .line 447
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state, mLeHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_4d

    return-void

    .line 451
    :cond_23
    :try_start_23
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothScan:Landroid/bluetooth/IBluetoothScan;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothScan;->stopScan(ILandroid/content/AttributionSource;)V

    .line 452
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothScan:Landroid/bluetooth/IBluetoothScan;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothScan;->unregisterScanner(ILandroid/content/AttributionSource;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3d} :catch_3e
    .catchall {:try_start_23 .. :try_end_3d} :catchall_4d

    .line 455
    goto :goto_48

    .line 453
    :catch_3e
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to stop scan and unregister"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_48
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 457
    monitor-exit p0

    .line 458
    return-void

    .line 457
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_4d

    throw v0
.end method
