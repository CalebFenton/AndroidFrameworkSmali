.class Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "BluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleScanCallbackWrapper"
.end annotation


# static fields
.field private static final REGISTRATION_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private mClientIf:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mResultStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mSettings:Landroid/bluetooth/le/ScanSettings;

.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeScanner;
    .param p2, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p4, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p5, "scanCallback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothGatt;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p6, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    #@5
    .line 250
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@7
    .line 251
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    #@9
    .line 252
    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    #@b
    .line 253
    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    #@d
    .line 254
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@10
    .line 255
    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mResultStorages:Ljava/util/List;

    #@12
    .line 249
    return-void
.end method


# virtual methods
.method flushPendingBatchResults()V
    .locals 4

    #@0
    .prologue
    .line 296
    monitor-enter p0

    #@1
    .line 297
    :try_start_0
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@3
    if-gtz v1, :cond_0

    #@5
    .line 298
    const-string/jumbo v1, "BluetoothLeScanner"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Error state, mLeHandle: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 299
    return-void

    #@23
    .line 302
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@25
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@27
    const/4 v3, 0x0

    #@28
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->flushPendingBatchResults(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    :goto_0
    monitor-exit p0

    #@2c
    .line 295
    return-void

    #@2d
    .line 303
    :catch_0
    move-exception v0

    #@2e
    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothLeScanner"

    #@31
    const-string/jumbo v2, "Failed to get pending scan results"

    #@34
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@39
    monitor-exit p0

    #@3a
    throw v1
.end method

.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 363
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 364
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;

    #@b
    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Ljava/util/List;)V

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 362
    return-void
.end method

.method public onClientRegistered(II)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 314
    const-string/jumbo v0, "BluetoothLeScanner"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "onClientRegistered() - status="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 315
    const-string/jumbo v2, " clientIf="

    #@17
    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 316
    monitor-enter p0

    #@27
    .line 317
    :try_start_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@29
    if-ne v0, v3, :cond_0

    #@2b
    .line 318
    const-string/jumbo v0, "BluetoothLeScanner"

    #@2e
    const-string/jumbo v1, "onClientRegistered LE scan canceled"

    #@31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 321
    :cond_0
    if-nez p1, :cond_1

    #@36
    .line 322
    iput p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 324
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@3a
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@3c
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    #@3e
    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    #@40
    .line 325
    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mResultStorages:Ljava/util/List;

    #@42
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    .line 324
    const/4 v2, 0x0

    #@47
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 334
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    monitor-exit p0

    #@4e
    .line 313
    return-void

    #@4f
    .line 326
    :catch_0
    move-exception v7

    #@50
    .line 327
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v0, "BluetoothLeScanner"

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v2, "fail to start le scan: "

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 328
    const/4 v0, -0x1

    #@6b
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 316
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@6f
    monitor-exit p0

    #@70
    throw v0

    #@71
    .line 332
    :cond_1
    const/4 v0, -0x1

    #@72
    :try_start_4
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@74
    goto :goto_0
.end method

.method public onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .locals 2
    .param p1, "onFound"    # Z
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    #@0
    .prologue
    .line 380
    monitor-enter p0

    #@1
    .line 381
    :try_start_0
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-gtz v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 382
    return-void

    #@7
    :cond_0
    monitor-exit p0

    #@8
    .line 384
    new-instance v0, Landroid/os/Handler;

    #@a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@11
    .line 385
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;

    #@13
    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;ZLandroid/bluetooth/le/ScanResult;)V

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@19
    .line 373
    return-void

    #@1a
    .line 380
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public onScanManagerErrorCallback(I)V
    .locals 2
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 404
    monitor-enter p0

    #@1
    .line 405
    :try_start_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-gtz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 406
    return-void

    #@7
    :cond_0
    monitor-exit p0

    #@8
    .line 408
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    #@a
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    #@c
    invoke-static {v0, v1, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->-wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    #@f
    .line 400
    return-void

    #@10
    .line 404
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 2
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    #@0
    .prologue
    .line 348
    monitor-enter p0

    #@1
    .line 349
    :try_start_0
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-gtz v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_0
    monitor-exit p0

    #@8
    .line 351
    new-instance v0, Landroid/os/Handler;

    #@a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@11
    .line 352
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;

    #@13
    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@19
    .line 344
    return-void

    #@1a
    .line 348
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public startRegisteration()V
    .locals 5

    #@0
    .prologue
    .line 259
    monitor-enter p0

    #@1
    .line 261
    :try_start_0
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    const/4 v3, -0x1

    #@4
    if-ne v2, v3, :cond_0

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    .line 263
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@b
    move-result-object v1

    #@c
    .line 264
    .local v1, "uuid":Ljava/util/UUID;
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@e
    new-instance v3, Landroid/os/ParcelUuid;

    #@10
    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@13
    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    #@16
    .line 265
    const-wide/16 v2, 0x7d0

    #@18
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 270
    .end local v1    # "uuid":Ljava/util/UUID;
    :goto_0
    :try_start_2
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@1d
    if-lez v2, :cond_1

    #@1f
    .line 271
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    #@21
    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeScanner;->-get0(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;

    #@24
    move-result-object v2

    #@25
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    #@27
    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    :goto_1
    monitor-exit p0

    #@2b
    .line 258
    return-void

    #@2c
    .line 266
    :catch_0
    move-exception v0

    #@2d
    .line 267
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "BluetoothLeScanner"

    #@30
    const-string/jumbo v3, "application registeration exception"

    #@33
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 268
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    #@38
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    #@3a
    const/4 v4, 0x3

    #@3b
    invoke-static {v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->-wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@40
    monitor-exit p0

    #@41
    throw v2

    #@42
    .line 273
    :cond_1
    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    #@44
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    #@46
    .line 274
    const/4 v4, 0x2

    #@47
    .line 273
    invoke-static {v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->-wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4a
    goto :goto_1
.end method

.method public stopLeScan()V
    .locals 4

    #@0
    .prologue
    .line 280
    monitor-enter p0

    #@1
    .line 281
    :try_start_0
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@3
    if-gtz v1, :cond_0

    #@5
    .line 282
    const-string/jumbo v1, "BluetoothLeScanner"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Error state, mLeHandle: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 283
    return-void

    #@23
    .line 286
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@25
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@27
    const/4 v3, 0x0

    #@28
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    #@2b
    .line 287
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@2d
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    #@2f
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 291
    :goto_0
    const/4 v1, -0x1

    #@33
    :try_start_2
    iput v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    monitor-exit p0

    #@36
    .line 279
    return-void

    #@37
    .line 288
    :catch_0
    move-exception v0

    #@38
    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "BluetoothLeScanner"

    #@3b
    const-string/jumbo v2, "Failed to stop scan and unregister"

    #@3e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit p0

    #@44
    throw v1
.end method
