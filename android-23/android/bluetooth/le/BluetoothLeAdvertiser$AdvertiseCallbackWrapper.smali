.class Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvertiseCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private final mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

.field private final mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private mClientIf:I

.field private mIsAdvertising:Z

.field private final mScanResponse:Landroid/bluetooth/le/AdvertiseData;

.field private final mSettings:Landroid/bluetooth/le/AdvertiseSettings;

.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V
    .locals 1
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p2, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p5, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p6, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 245
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@3
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    #@6
    .line 243
    iput-boolean v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    #@8
    .line 249
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    #@a
    .line 250
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    #@c
    .line 251
    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    #@e
    .line 252
    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    #@10
    .line 253
    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@12
    .line 254
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@14
    .line 248
    return-void
.end method


# virtual methods
.method public onClientRegistered(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    #@0
    .prologue
    .line 308
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onClientRegistered() - status="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " clientIf="

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
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 309
    monitor-enter p0

    #@26
    .line 310
    if-nez p1, :cond_0

    #@28
    .line 311
    :try_start_0
    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 313
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@2c
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@2e
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    #@30
    .line 314
    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    #@32
    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    #@34
    .line 313
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 315
    return-void

    #@39
    .line 316
    :catch_0
    move-exception v0

    #@3a
    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    #@3d
    const-string/jumbo v2, "failed to start advertising"

    #@40
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    #@44
    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@46
    .line 322
    invoke-virtual {p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    monitor-exit p0

    #@4a
    .line 307
    return-void

    #@4b
    .line 309
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit p0

    #@4d
    throw v1
.end method

.method public onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "isStart"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    #@0
    .prologue
    .line 329
    monitor-enter p0

    #@1
    .line 330
    if-eqz p2, :cond_1

    #@3
    .line 331
    if-nez p1, :cond_0

    #@5
    .line 333
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    #@8
    .line 334
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@a
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    #@c
    invoke-static {v1, v2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-wrap1(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    #@f
    .line 350
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 328
    return-void

    #@14
    .line 337
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@16
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    #@18
    invoke-static {v1, v2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-wrap0(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 329
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1

    #@1f
    .line 342
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@21
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@23
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    #@26
    .line 343
    const/4 v1, -0x1

    #@27
    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@29
    .line 344
    const/4 v1, 0x0

    #@2a
    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    #@2c
    .line 345
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@2e
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    #@34
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 346
    :catch_0
    move-exception v0

    #@39
    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    #@3c
    const-string/jumbo v2, "remote exception when unregistering"

    #@3f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    goto :goto_0
.end method

.method public startRegisteration()V
    .locals 6

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 258
    monitor-enter p0

    #@2
    .line 259
    :try_start_0
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-ne v3, v4, :cond_0

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    .line 262
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@b
    move-result-object v2

    #@c
    .line 263
    .local v2, "uuid":Ljava/util/UUID;
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@e
    new-instance v4, Landroid/os/ParcelUuid;

    #@10
    invoke-direct {v4, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@13
    invoke-interface {v3, v4, p0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    #@16
    .line 264
    const-wide/16 v4, 0x7d0

    #@18
    invoke-virtual {p0, v4, v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 268
    .end local v2    # "uuid":Ljava/util/UUID;
    :goto_0
    :try_start_2
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@1d
    if-lez v3, :cond_1

    #@1f
    iget-boolean v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 269
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@25
    invoke-static {v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    #@28
    move-result-object v3

    #@29
    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    #@2b
    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    :goto_1
    monitor-exit p0

    #@2f
    .line 257
    return-void

    #@30
    .line 265
    :catch_0
    move-exception v1

    #@31
    .line 266
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothLeAdvertiser"

    #@34
    const-string/jumbo v4, "Failed to start registeration"

    #@37
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3c
    monitor-exit p0

    #@3d
    throw v3

    #@3e
    .line 270
    :cond_1
    :try_start_4
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@40
    if-gtz v3, :cond_2

    #@42
    .line 272
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@44
    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    #@46
    .line 273
    const/4 v5, 0x4

    #@47
    .line 272
    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-wrap0(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4a
    goto :goto_1

    #@4b
    .line 277
    :cond_2
    :try_start_5
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@4d
    iget v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@4f
    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    #@52
    .line 278
    const/4 v3, -0x1

    #@53
    iput v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@55
    goto :goto_1

    #@56
    .line 279
    :catch_1
    move-exception v0

    #@57
    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v3, "BluetoothLeAdvertiser"

    #@5a
    const-string/jumbo v4, "remote exception when unregistering"

    #@5d
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@60
    goto :goto_1
.end method

.method public stopAdvertising()V
    .locals 4

    #@0
    .prologue
    .line 287
    monitor-enter p0

    #@1
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    #@3
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    #@5
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopMultiAdvertising(I)V

    #@8
    .line 290
    const-wide/16 v2, 0x7d0

    #@a
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 297
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@f
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    #@15
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 298
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@1d
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    #@23
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    :cond_0
    monitor-exit p0

    #@27
    .line 286
    return-void

    #@28
    .line 291
    :catch_0
    move-exception v0

    #@29
    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    #@2c
    const-string/jumbo v2, "Failed to stop advertising"

    #@2f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@34
    monitor-exit p0

    #@35
    throw v1
.end method
