.class Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser$Stub;
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
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 270
    iput-object p1, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 268
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public beginConfigure()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 389
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x5

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 383
    return-void

    #@1f
    .line 392
    :catchall_0
    move-exception v2

    #@20
    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 392
    throw v2
.end method

.method public cancelRequest(I)J
    .locals 7
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 365
    iget-object v4, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v5, 0x4

    #@14
    const/4 v6, 0x0

    #@15
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-wide v2

    #@1f
    .line 370
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 373
    return-wide v2

    #@26
    .line 369
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@27
    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 369
    throw v4
.end method

.method public createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 6
    .param p1, "templateId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 518
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 521
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 528
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 531
    return-object v2

    #@31
    .line 524
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_0

    #@33
    .line 527
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v3

    #@34
    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 527
    throw v3
.end method

.method public createInputStream(III)I
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 468
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 469
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 470
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x9

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 475
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 478
    return v2

    #@2d
    .line 474
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 474
    throw v3
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 6
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 442
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 443
    if-eqz p1, :cond_0

    #@10
    .line 444
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 445
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 450
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x8

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 455
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 458
    return v2

    #@2e
    .line 448
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 454
    :catchall_0
    move-exception v3

    #@34
    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 454
    throw v3
.end method

.method public deleteStream(I)V
    .locals 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 428
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x7

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 421
    return-void

    #@22
    .line 431
    :catchall_0
    move-exception v2

    #@23
    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 431
    throw v2
.end method

.method public disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 283
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 285
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 286
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 280
    return-void

    #@1f
    .line 289
    :catchall_0
    move-exception v2

    #@20
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 289
    throw v2
.end method

.method public endConfigure(Z)V
    .locals 5
    .param p1, "isConstrainedHighSpeed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 412
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 413
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x6

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 406
    return-void

    #@26
    .line 416
    :catchall_0
    move-exception v2

    #@27
    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 416
    throw v2
.end method

.method public flush()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 576
    iget-object v4, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0xe

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 581
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 584
    return-wide v2

    #@24
    .line 580
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 580
    throw v4
.end method

.method public getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 540
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 543
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 550
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 553
    return-object v2

    #@2e
    .line 546
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_0

    #@30
    .line 549
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v3

    #@31
    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 549
    throw v3
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 495
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 498
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 505
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 508
    return-object v2

    #@2e
    .line 501
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/view/Surface;
    goto :goto_0

    #@30
    .line 504
    .end local v2    # "_result":Landroid/view/Surface;
    :catchall_0
    move-exception v3

    #@31
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 504
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 278
    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceUser"

    #@3
    return-object v0
.end method

.method public prepare(I)V
    .locals 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 591
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 593
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xf

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 594
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 586
    return-void

    #@23
    .line 596
    :catchall_0
    move-exception v2

    #@24
    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 596
    throw v2
.end method

.method public prepare2(II)V
    .locals 5
    .param p1, "maxCount"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 623
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 624
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x11

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 616
    return-void

    #@26
    .line 627
    :catchall_0
    move-exception v2

    #@27
    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 627
    throw v2
.end method

.method public setDeferredConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 635
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 639
    if-eqz p2, :cond_0

    #@13
    .line 640
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 641
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/params/OutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 646
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x12

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 632
    return-void

    #@2d
    .line 644
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 649
    :catchall_0
    move-exception v2

    #@33
    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 649
    throw v2
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.hardware.camera2.ICameraDeviceUser"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 301
    if-eqz p1, :cond_0

    #@12
    .line 302
    const/4 v5, 0x1

    #@13
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 303
    const/4 v5, 0x0

    #@17
    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 308
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 309
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/4 v4, 0x2

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 312
    sget-object v3, Landroid/hardware/camera2/utils/SubmitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroid/hardware/camera2/utils/SubmitInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 319
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 322
    return-object v2

    #@3e
    .line 306
    :cond_0
    const/4 v5, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 318
    :catchall_0
    move-exception v3

    #@44
    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 318
    throw v3

    #@4b
    :cond_1
    move v3, v4

    #@4c
    .line 308
    goto :goto_1

    #@4d
    .line 315
    :cond_2
    const/4 v2, 0x0

    #@4e
    .local v2, "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    goto :goto_2
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 6
    .param p1, "requestList"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.camera2.ICameraDeviceUser"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 331
    const/4 v4, 0x0

    #@10
    invoke-virtual {v0, p1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@13
    .line 332
    if-eqz p2, :cond_0

    #@15
    const/4 v3, 0x1

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 333
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v4, 0x3

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 336
    sget-object v3, Landroid/hardware/camera2/utils/SubmitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/hardware/camera2/utils/SubmitInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 343
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 346
    return-object v2

    #@38
    .line 339
    :cond_1
    const/4 v2, 0x0

    #@39
    .local v2, "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    goto :goto_0

    #@3a
    .line 342
    .end local v2    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :catchall_0
    move-exception v3

    #@3b
    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 342
    throw v3
.end method

.method public tearDown(I)V
    .locals 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 604
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 608
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x10

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 601
    return-void

    #@23
    .line 611
    :catchall_0
    move-exception v2

    #@24
    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 611
    throw v2
.end method

.method public waitUntilIdle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 561
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xd

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 555
    return-void

    #@20
    .line 564
    :catchall_0
    move-exception v2

    #@21
    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 564
    throw v2
.end method
