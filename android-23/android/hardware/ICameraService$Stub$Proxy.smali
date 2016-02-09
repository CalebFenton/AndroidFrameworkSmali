.class Landroid/hardware/ICameraService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService$Stub;
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
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 273
    iput-object p1, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 271
    return-void
.end method


# virtual methods
.method public addListener(Landroid/hardware/ICameraServiceListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 381
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/ICameraServiceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 382
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x5

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 387
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 390
    return v2

    #@2d
    .line 386
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 386
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public connect(Landroid/hardware/ICameraClient;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I
    .locals 6
    .param p1, "client"    # Landroid/hardware/ICameraClient;
    .param p2, "cameraId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "clientUid"    # I
    .param p5, "device"    # Landroid/hardware/camera2/utils/BinderHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 332
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 333
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/ICameraClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 334
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 335
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 336
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 337
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v4, 0x3

    #@24
    const/4 v5, 0x0

    #@25
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v2

    #@2f
    .line 340
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 341
    invoke-virtual {p5, v1}, Landroid/hardware/camera2/utils/BinderHolder;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 345
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 348
    return v2

    #@3f
    .line 344
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@40
    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 344
    throw v3
.end method

.method public connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I
    .locals 6
    .param p1, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p2, "cameraId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "clientUid"    # I
    .param p5, "device"    # Landroid/hardware/camera2/utils/BinderHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 357
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 359
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 360
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 361
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v4, 0x4

    #@24
    const/4 v5, 0x0

    #@25
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v2

    #@2f
    .line 364
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 365
    invoke-virtual {p5, v1}, Landroid/hardware/camera2/utils/BinderHolder;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 369
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 372
    return v2

    #@3f
    .line 368
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@40
    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 368
    throw v3
.end method

.method public connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I
    .locals 6
    .param p1, "client"    # Landroid/hardware/ICameraClient;
    .param p2, "cameraId"    # I
    .param p3, "halVersion"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "clientUid"    # I
    .param p6, "device"    # Landroid/hardware/camera2/utils/BinderHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 512
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/ICameraClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 513
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 514
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 515
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 516
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 517
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v4, 0xb

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v2

    #@33
    .line 520
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_1

    #@39
    .line 521
    invoke-virtual {p6, v1}, Landroid/hardware/camera2/utils/BinderHolder;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 525
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 528
    return v2

    #@43
    .line 524
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@44
    .line 525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 524
    throw v3
.end method

.method public getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    .locals 6
    .param p1, "cameraId"    # I
    .param p2, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 413
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 418
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    .line 421
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 422
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 426
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 429
    return v2

    #@2f
    .line 425
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@30
    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 425
    throw v3
.end method

.method public getCameraInfo(ILandroid/hardware/CameraInfo;)I
    .locals 6
    .param p1, "cameraId"    # I
    .param p2, "info"    # Landroid/hardware/CameraInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 313
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    .line 316
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 317
    invoke-virtual {p2, v1}, Landroid/hardware/CameraInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 321
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 324
    return v2

    #@2f
    .line 320
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@30
    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 320
    throw v3
.end method

.method public getCameraVendorTagDescriptor(Landroid/hardware/camera2/utils/BinderHolder;)I
    .locals 6
    .param p1, "desc"    # Landroid/hardware/camera2/utils/BinderHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 443
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 444
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v2

    #@1d
    .line 447
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 448
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/utils/BinderHolder;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 452
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 455
    return v2

    #@2d
    .line 451
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 451
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 281
    const-string/jumbo v0, "android.hardware.ICameraService"

    #@3
    return-object v0
.end method

.method public getLegacyParameters(I[Ljava/lang/String;)I
    .locals 6
    .param p1, "cameraId"    # I
    .param p2, "parameters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 467
    if-nez p2, :cond_0

    #@13
    .line 468
    const/4 v3, -0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 473
    :goto_0
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x9

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v2

    #@26
    .line 476
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 482
    return v2

    #@30
    .line 471
    .end local v2    # "_result":I
    :cond_0
    :try_start_1
    array-length v3, p2

    #@31
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 478
    :catchall_0
    move-exception v3

    #@36
    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 478
    throw v3
.end method

.method public getNumberOfCameras()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 293
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 298
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 301
    return v2

    #@23
    .line 297
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 297
    throw v3
.end method

.method public notifySystemEvent(I[I)V
    .locals 5
    .param p1, "eventId"    # I
    .param p2, "args"    # [I
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
    .line 559
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.ICameraService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 561
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@10
    .line 562
    iget-object v1, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xd

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 555
    return-void

    #@1d
    .line 564
    :catchall_0
    move-exception v1

    #@1e
    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 564
    throw v1
.end method

.method public removeListener(Landroid/hardware/ICameraServiceListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 399
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/ICameraServiceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 400
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x6

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 405
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 408
    return v2

    #@2d
    .line 404
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 404
    throw v3
.end method

.method public setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)I
    .locals 6
    .param p1, "CameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 533
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 538
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 539
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 540
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0xc

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v2

    #@2a
    .line 545
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 548
    return v2

    #@31
    .line 544
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@32
    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 544
    throw v3
.end method

.method public supportsCameraApi(II)I
    .locals 6
    .param p1, "cameraId"    # I
    .param p2, "apiVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 495
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xa

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 500
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 503
    return v2

    #@2a
    .line 499
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 499
    throw v3
.end method
