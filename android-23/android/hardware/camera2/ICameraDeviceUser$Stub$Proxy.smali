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
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 282
    iput-object p1, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 280
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public beginConfigure()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 399
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 404
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 407
    return v2

    #@23
    .line 403
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 403
    throw v3
.end method

.method public cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 371
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    .line 374
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 375
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/utils/LongParcelable;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 379
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 382
    return v2

    #@2f
    .line 378
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@30
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 378
    throw v3
.end method

.method public createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    .locals 6
    .param p1, "templateId"    # I
    .param p2, "request"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 547
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v2

    #@20
    .line 550
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 551
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 555
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 558
    return v2

    #@30
    .line 554
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 554
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
    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 499
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 500
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 501
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x9

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 506
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 509
    return v2

    #@2d
    .line 505
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 505
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
    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 463
    if-eqz p1, :cond_0

    #@10
    .line 464
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 465
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 470
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x8

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 475
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 478
    return v2

    #@2e
    .line 468
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
    .line 474
    :catchall_0
    move-exception v3

    #@34
    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 474
    throw v3
.end method

.method public deleteStream(I)I
    .locals 6
    .param p1, "streamId"    # I
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
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 444
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 449
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 452
    return v2

    #@26
    .line 448
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 448
    throw v3
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
    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 302
    iget-object v2, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 296
    return-void

    #@1f
    .line 305
    :catchall_0
    move-exception v2

    #@20
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 305
    throw v2
.end method

.method public endConfigure(Z)I
    .locals 6
    .param p1, "isConstrainedHighSpeed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.camera2.ICameraDeviceUser"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 425
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 426
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v4, 0x6

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 431
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 434
    return v2

    #@2a
    .line 430
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 430
    throw v3
.end method

.method public flush(Landroid/hardware/camera2/utils/LongParcelable;)I
    .locals 6
    .param p1, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 600
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 603
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 604
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xe

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v2

    #@1d
    .line 607
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 608
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/utils/LongParcelable;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 612
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 615
    return v2

    #@2d
    .line 611
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 611
    throw v3
.end method

.method public getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I
    .locals 6
    .param p1, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 566
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 567
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 568
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v2

    #@1d
    .line 570
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 571
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 575
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 578
    return v2

    #@2d
    .line 574
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 574
    throw v3
.end method

.method public getInputSurface(Landroid/view/Surface;)I
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 526
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v2

    #@1d
    .line 529
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 530
    invoke-virtual {p1, v1}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 534
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 537
    return v2

    #@2d
    .line 533
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 533
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 290
    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceUser"

    #@3
    return-object v0
.end method

.method public prepare(I)I
    .locals 6
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 620
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 625
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xf

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 627
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 630
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 633
    return v2

    #@27
    .line 629
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 629
    throw v3
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .param p3, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
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
    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.hardware.camera2.ICameraDeviceUser"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 320
    if-eqz p1, :cond_1

    #@12
    .line 321
    const/4 v5, 0x1

    #@13
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 322
    const/4 v5, 0x0

    #@17
    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 327
    :goto_0
    if-eqz p2, :cond_2

    #@1c
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 328
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/4 v4, 0x2

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v2

    #@2d
    .line 331
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_0

    #@33
    .line 332
    invoke-virtual {p3, v1}, Landroid/hardware/camera2/utils/LongParcelable;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 336
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 339
    return v2

    #@3d
    .line 325
    .end local v2    # "_result":I
    :cond_1
    const/4 v5, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 335
    :catchall_0
    move-exception v3

    #@43
    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 335
    throw v3

    #@4a
    :cond_2
    move v3, v4

    #@4b
    .line 327
    goto :goto_1
.end method

.method public submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 6
    .param p2, "streaming"    # Z
    .param p3, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v3, 0x0

    #@1
    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.camera2.ICameraDeviceUser"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@12
    .line 349
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 350
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x3

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 352
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v2

    #@26
    .line 353
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 354
    invoke-virtual {p3, v1}, Landroid/hardware/camera2/utils/LongParcelable;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 358
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 361
    return v2

    #@36
    .line 357
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@37
    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 357
    throw v3
.end method

.method public tearDown(I)I
    .locals 6
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 643
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x10

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 648
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 651
    return v2

    #@27
    .line 647
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 647
    throw v3
.end method

.method public waitUntilIdle()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 587
    iget-object v3, p0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 592
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 595
    return v2

    #@24
    .line 591
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 591
    throw v3
.end method
