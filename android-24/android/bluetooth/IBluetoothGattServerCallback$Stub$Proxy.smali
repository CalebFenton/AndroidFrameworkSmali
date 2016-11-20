.class Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 306
    iput-object p1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 304
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 314
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattServerCallback"

    #@3
    return-object v0
.end method

.method public onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "srvcType"    # I
    .param p6, "srvcInstId"    # I
    .param p7, "srvcId"    # Landroid/os/ParcelUuid;
    .param p8, "charInstId"    # I
    .param p9, "charId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGattServerCallback"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 385
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 386
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 387
    if-eqz p4, :cond_0

    #@17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 388
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 389
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 390
    if-eqz p7, :cond_1

    #@22
    .line 391
    const/4 v1, 0x1

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 392
    const/4 v1, 0x0

    #@27
    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 397
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 398
    if-eqz p9, :cond_2

    #@2f
    .line 399
    const/4 v1, 0x1

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 400
    const/4 v1, 0x0

    #@34
    invoke-virtual {p9, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 405
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@39
    const/4 v2, 0x5

    #@3a
    const/4 v3, 0x0

    #@3b
    const/4 v4, 0x1

    #@3c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 379
    return-void

    #@43
    :cond_0
    move v1, v2

    #@44
    .line 387
    goto :goto_0

    #@45
    .line 395
    :cond_1
    const/4 v1, 0x0

    #@46
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_1

    #@4a
    .line 407
    :catchall_0
    move-exception v1

    #@4b
    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 407
    throw v1

    #@4f
    .line 403
    :cond_2
    const/4 v1, 0x0

    #@50
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_2
.end method

.method public onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "srvcType"    # I
    .param p8, "srvcInstId"    # I
    .param p9, "srvcId"    # Landroid/os/ParcelUuid;
    .param p10, "charInstId"    # I
    .param p11, "charId"    # Landroid/os/ParcelUuid;
    .param p12, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 454
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGattServerCallback"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 455
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 456
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 457
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 458
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 459
    if-eqz p5, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 460
    if-eqz p6, :cond_1

    #@1e
    const/4 v2, 0x1

    #@1f
    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 461
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 462
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 463
    if-eqz p9, :cond_2

    #@2a
    .line 464
    const/4 v2, 0x1

    #@2b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 465
    const/4 v2, 0x0

    #@2f
    invoke-virtual {p9, v1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    .line 470
    :goto_2
    move/from16 v0, p10

    #@34
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 471
    if-eqz p11, :cond_3

    #@39
    .line 472
    const/4 v2, 0x1

    #@3a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 473
    const/4 v2, 0x0

    #@3e
    move-object/from16 v0, p11

    #@40
    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@43
    .line 478
    :goto_3
    move-object/from16 v0, p12

    #@45
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@48
    .line 479
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@4a
    const/4 v3, 0x7

    #@4b
    const/4 v4, 0x0

    #@4c
    const/4 v5, 0x1

    #@4d
    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 450
    return-void

    #@54
    .line 459
    :cond_0
    const/4 v2, 0x0

    #@55
    goto :goto_0

    #@56
    .line 460
    :cond_1
    const/4 v2, 0x0

    #@57
    goto :goto_1

    #@58
    .line 468
    :cond_2
    const/4 v2, 0x0

    #@59
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    goto :goto_2

    #@5d
    .line 481
    :catchall_0
    move-exception v2

    #@5e
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 481
    throw v2

    #@62
    .line 476
    :cond_3
    const/4 v2, 0x0

    #@63
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    goto :goto_3
.end method

.method public onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "srvcType"    # I
    .param p6, "srvcInstId"    # I
    .param p7, "srvcId"    # Landroid/os/ParcelUuid;
    .param p8, "charInstId"    # I
    .param p9, "charId"    # Landroid/os/ParcelUuid;
    .param p10, "descrId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGattServerCallback"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 417
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 418
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 419
    if-eqz p4, :cond_0

    #@17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 420
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 421
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 422
    if-eqz p7, :cond_1

    #@22
    .line 423
    const/4 v1, 0x1

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 424
    const/4 v1, 0x0

    #@27
    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 429
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 430
    if-eqz p9, :cond_2

    #@2f
    .line 431
    const/4 v1, 0x1

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 432
    const/4 v1, 0x0

    #@34
    invoke-virtual {p9, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 437
    :goto_2
    if-eqz p10, :cond_3

    #@39
    .line 438
    const/4 v1, 0x1

    #@3a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 439
    const/4 v1, 0x0

    #@3e
    invoke-virtual {p10, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@41
    .line 444
    :goto_3
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@43
    const/4 v2, 0x6

    #@44
    const/4 v3, 0x0

    #@45
    const/4 v4, 0x1

    #@46
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 411
    return-void

    #@4d
    :cond_0
    move v1, v2

    #@4e
    .line 419
    goto :goto_0

    #@4f
    .line 427
    :cond_1
    const/4 v1, 0x0

    #@50
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    goto :goto_1

    #@54
    .line 446
    :catchall_0
    move-exception v1

    #@55
    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 446
    throw v1

    #@59
    .line 435
    :cond_2
    const/4 v1, 0x0

    #@5a
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    goto :goto_2

    #@5e
    .line 442
    :cond_3
    const/4 v1, 0x0

    #@5f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    goto :goto_3
.end method

.method public onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "srvcType"    # I
    .param p8, "srvcInstId"    # I
    .param p9, "srvcId"    # Landroid/os/ParcelUuid;
    .param p10, "charInstId"    # I
    .param p11, "charId"    # Landroid/os/ParcelUuid;
    .param p12, "descrId"    # Landroid/os/ParcelUuid;
    .param p13, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 489
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGattServerCallback"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 490
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 491
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 492
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 493
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 494
    if-eqz p5, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 495
    if-eqz p6, :cond_1

    #@1e
    const/4 v2, 0x1

    #@1f
    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 496
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 497
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 498
    if-eqz p9, :cond_2

    #@2a
    .line 499
    const/4 v2, 0x1

    #@2b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 500
    const/4 v2, 0x0

    #@2f
    invoke-virtual {p9, v1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    .line 505
    :goto_2
    move/from16 v0, p10

    #@34
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 506
    if-eqz p11, :cond_3

    #@39
    .line 507
    const/4 v2, 0x1

    #@3a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 508
    const/4 v2, 0x0

    #@3e
    move-object/from16 v0, p11

    #@40
    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@43
    .line 513
    :goto_3
    if-eqz p12, :cond_4

    #@45
    .line 514
    const/4 v2, 0x1

    #@46
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 515
    const/4 v2, 0x0

    #@4a
    move-object/from16 v0, p12

    #@4c
    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@4f
    .line 520
    :goto_4
    move-object/from16 v0, p13

    #@51
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@54
    .line 521
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@56
    const/16 v3, 0x8

    #@58
    const/4 v4, 0x0

    #@59
    const/4 v5, 0x1

    #@5a
    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@60
    .line 485
    return-void

    #@61
    .line 494
    :cond_0
    const/4 v2, 0x0

    #@62
    goto :goto_0

    #@63
    .line 495
    :cond_1
    const/4 v2, 0x0

    #@64
    goto :goto_1

    #@65
    .line 503
    :cond_2
    const/4 v2, 0x0

    #@66
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    goto :goto_2

    #@6a
    .line 523
    :catchall_0
    move-exception v2

    #@6b
    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@6e
    .line 523
    throw v2

    #@6f
    .line 511
    :cond_3
    const/4 v2, 0x0

    #@70
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@73
    goto :goto_3

    #@74
    .line 518
    :cond_4
    const/4 v2, 0x0

    #@75
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@78
    goto :goto_4
.end method

.method public onExecuteWrite(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "execWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 531
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGattServerCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 533
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 534
    if-eqz p3, :cond_0

    #@13
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 535
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/16 v2, 0x9

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 527
    return-void

    #@23
    .line 534
    :cond_0
    const/4 v1, 0x0

    #@24
    goto :goto_0

    #@25
    .line 537
    :catchall_0
    move-exception v1

    #@26
    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 537
    throw v1
.end method

.method public onMtuChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 558
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattServerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 561
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xb

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 554
    return-void

    #@1d
    .line 563
    :catchall_0
    move-exception v1

    #@1e
    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 563
    throw v1
.end method

.method public onNotificationSent(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 545
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattServerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 547
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 548
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xa

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 541
    return-void

    #@1d
    .line 550
    :catchall_0
    move-exception v1

    #@1e
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 550
    throw v1
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 333
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattServerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 334
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 335
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 336
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@13
    .line 337
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x2

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 329
    return-void

    #@1f
    .line 339
    :catchall_0
    move-exception v1

    #@20
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 339
    throw v1
.end method

.method public onServerConnectionState(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 347
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGattServerCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 350
    if-eqz p3, :cond_0

    #@13
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 351
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 352
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v2, 0x3

    #@1c
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x1

    #@1e
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 343
    return-void

    #@25
    .line 350
    :cond_0
    const/4 v1, 0x0

    #@26
    goto :goto_0

    #@27
    .line 354
    :catchall_0
    move-exception v1

    #@28
    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 354
    throw v1
.end method

.method public onServerRegistered(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattServerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 323
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 316
    return-void

    #@1c
    .line 325
    :catchall_0
    move-exception v1

    #@1d
    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 325
    throw v1
.end method

.method public onServiceAdded(IIILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattServerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 366
    if-eqz p4, :cond_0

    #@15
    .line 367
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 368
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 373
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x4

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 358
    return-void

    #@29
    .line 371
    :cond_0
    const/4 v1, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 375
    :catchall_0
    move-exception v1

    #@2f
    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 375
    throw v1
.end method
