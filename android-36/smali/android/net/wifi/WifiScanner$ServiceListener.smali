.class Landroid/net/wifi/WifiScanner$ServiceListener;
.super Landroid/net/wifi/IWifiScannerListener$Stub;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field private blacklist mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method public static synthetic blacklist $r8$lambda$uZRC5xA1MlhtGeoCR6Be_0o2Lb8(Landroid/net/wifi/WifiScanner$ServiceListener;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiScanner$ServiceListener;->lambda$onFailure$0(ILjava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiScanner;Landroid/net/wifi/WifiScanner$ActionListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ActionListener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 339
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->this$0:Landroid/net/wifi/WifiScanner;

    invoke-direct {p0}, Landroid/net/wifi/IWifiScannerListener$Stub;-><init>()V

    .line 340
    iput-object p2, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    .line 341
    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 342
    return-void
.end method

.method private synthetic blacklist lambda$onFailure$0(ILjava/lang/String;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onFullResult$2(Landroid/net/wifi/WifiScanner$ScanListener;Landroid/net/wifi/ScanResult;)V
    .registers 2
    .param p0, "scanListener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .line 384
    invoke-interface {p0, p1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static synthetic blacklist lambda$onFullResults$3(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 4
    .param p0, "fullScanResult"    # Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .param p1, "scanListener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 398
    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/WifiScanner$ScanListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPnoNetworkFound$4(Landroid/net/wifi/WifiScanner$PnoScanListener;[Landroid/net/wifi/ScanResult;)V
    .registers 2
    .param p0, "pnoScanListener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .line 417
    invoke-interface {p0, p1}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static synthetic blacklist lambda$onResults$1(Landroid/net/wifi/WifiScanner$ScanListener;[Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 2
    .param p0, "scanListener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 370
    invoke-interface {p0, p1}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(ILjava/lang/String;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    if-nez v0, :cond_5

    return-void

    .line 354
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 355
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/WifiScanner$ServiceListener;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->this$0:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner;->-$$Nest$mremoveListener(Landroid/net/wifi/WifiScanner;Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 358
    return-void
.end method

.method public blacklist onFullResult(Landroid/net/wifi/ScanResult;)V
    .registers 5
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .line 378
    const-string v0, "WifiScanner"

    const-string v1, "onFullResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    if-nez v0, :cond_c

    return-void

    .line 380
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    instance-of v0, v0, Landroid/net/wifi/WifiScanner$ScanListener;

    if-nez v0, :cond_13

    return-void

    .line 381
    :cond_13
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .line 382
    .local v0, "scanListener":Landroid/net/wifi/WifiScanner$ScanListener;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 383
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiScanner$ScanListener;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public blacklist onFullResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p1, "fullScanResult":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    const-string v0, "WifiScanner"

    const-string v1, "onFullResults"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    if-nez v0, :cond_c

    return-void

    .line 394
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    instance-of v0, v0, Landroid/net/wifi/WifiScanner$ScanListener;

    if-nez v0, :cond_13

    return-void

    .line 395
    :cond_13
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .line 396
    .local v0, "scanListener":Landroid/net/wifi/WifiScanner$ScanListener;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 397
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v0}, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/net/wifi/WifiScanner$ScanListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method public blacklist onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .registers 5
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .line 412
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    if-nez v0, :cond_5

    return-void

    .line 413
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    instance-of v0, v0, Landroid/net/wifi/WifiScanner$PnoScanListener;

    if-nez v0, :cond_c

    return-void

    .line 414
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    check-cast v0, Landroid/net/wifi/WifiScanner$PnoScanListener;

    .line 415
    .local v0, "pnoScanListener":Landroid/net/wifi/WifiScanner$PnoScanListener;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 416
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiScanner$PnoScanListener;[Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public blacklist onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 5
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 365
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    if-nez v0, :cond_5

    return-void

    .line 366
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    instance-of v0, v0, Landroid/net/wifi/WifiScanner$ScanListener;

    if-nez v0, :cond_c

    return-void

    .line 367
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .line 368
    .local v0, "scanListener":Landroid/net/wifi/WifiScanner$ScanListener;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 369
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, p1}, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/WifiScanner$ScanListener;[Landroid/net/wifi/WifiScanner$ScanData;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method public blacklist onSingleScanCompleted()V
    .registers 3

    .line 404
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->this$0:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner;->-$$Nest$mremoveListener(Landroid/net/wifi/WifiScanner;Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 405
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 4

    .line 346
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    if-nez v0, :cond_5

    return-void

    .line 347
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 348
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener;->mActionListener:Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiScanner$ActionListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method
