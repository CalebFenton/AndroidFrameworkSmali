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
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 229
    iput-object p1, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 227
    return-void
.end method


# virtual methods
.method public addListener(Landroid/hardware/ICameraServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 367
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/ICameraServiceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 368
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x6

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 361
    return-void

    #@29
    .line 371
    :catchall_0
    move-exception v2

    #@2a
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 371
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public connect(Landroid/hardware/ICameraClient;ILjava/lang/String;II)Landroid/hardware/ICamera;
    .locals 6
    .param p1, "client"    # Landroid/hardware/ICameraClient;
    .param p2, "cameraId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "clientUid"    # I
    .param p5, "clientPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 293
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/ICameraClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 294
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 295
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 296
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 297
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 298
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v4, 0x3

    #@27
    const/4 v5, 0x0

    #@28
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2e
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@31
    move-result-object v3

    #@32
    invoke-static {v3}, Landroid/hardware/ICamera$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result-object v2

    #@36
    .line 303
    .local v2, "_result":Landroid/hardware/ICamera;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 306
    return-object v2

    #@3d
    .line 302
    .end local v2    # "_result":Landroid/hardware/ICamera;
    :catchall_0
    move-exception v3

    #@3e
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 302
    throw v3
.end method

.method public connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 6
    .param p1, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p2, "cameraId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 319
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 320
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 321
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 322
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 323
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v4, 0x4

    #@24
    const/4 v5, 0x0

    #@25
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v2

    #@33
    .line 328
    .local v2, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 331
    return-object v2

    #@3a
    .line 327
    .end local v2    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    :catchall_0
    move-exception v3

    #@3b
    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 327
    throw v3
.end method

.method public connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;I)Landroid/hardware/ICamera;
    .locals 6
    .param p1, "client"    # Landroid/hardware/ICameraClient;
    .param p2, "cameraId"    # I
    .param p3, "halVersion"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 343
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/ICameraClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 345
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 346
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 347
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 348
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v4, 0x5

    #@27
    const/4 v5, 0x0

    #@28
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2e
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@31
    move-result-object v3

    #@32
    invoke-static {v3}, Landroid/hardware/ICamera$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result-object v2

    #@36
    .line 353
    .local v2, "_result":Landroid/hardware/ICamera;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 356
    return-object v2

    #@3d
    .line 352
    .end local v2    # "_result":Landroid/hardware/ICamera;
    :catchall_0
    move-exception v3

    #@3e
    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 352
    throw v3
.end method

.method public getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 403
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 406
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
    .line 413
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 416
    return-object v2

    #@31
    .line 409
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_0

    #@33
    .line 412
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v3

    #@34
    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 412
    throw v3
.end method

.method public getCameraInfo(I)Landroid/hardware/CameraInfo;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 268
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 271
    sget-object v3, Landroid/hardware/CameraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/hardware/CameraInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 278
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 281
    return-object v2

    #@30
    .line 274
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/hardware/CameraInfo;
    goto :goto_0

    #@32
    .line 277
    .end local v2    # "_result":Landroid/hardware/CameraInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 277
    throw v3
.end method

.method public getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 426
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 430
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 433
    sget-object v3, Landroid/hardware/camera2/params/VendorTagDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/hardware/camera2/params/VendorTagDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 440
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 443
    return-object v2

    #@2e
    .line 436
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    goto :goto_0

    #@30
    .line 439
    .end local v2    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :catchall_0
    move-exception v3

    #@31
    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 439
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 237
    const-string/jumbo v0, "android.hardware.ICameraService"

    #@3
    return-object v0
.end method

.method public getLegacyParameters(I)Ljava/lang/String;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 456
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 461
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 464
    return-object v2

    #@27
    .line 460
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 460
    throw v3
.end method

.method public getNumberOfCameras(I)I
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 242
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 247
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 252
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 255
    return v2

    #@26
    .line 251
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 251
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
    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 508
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.ICameraService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 510
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@10
    .line 511
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
    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 504
    return-void

    #@1d
    .line 513
    :catchall_0
    move-exception v1

    #@1e
    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 513
    throw v1
.end method

.method public removeListener(Landroid/hardware/ICameraServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 381
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 382
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/ICameraServiceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 383
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 376
    return-void

    #@29
    .line 386
    :catchall_0
    move-exception v2

    #@2a
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 386
    throw v2
.end method

.method public setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    .locals 5
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
    const/4 v2, 0x0

    #@1
    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 494
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 495
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 496
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xc

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 487
    return-void

    #@2d
    .line 499
    :catchall_0
    move-exception v2

    #@2e
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 499
    throw v2
.end method

.method public supportsCameraApi(II)Z
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
    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.ICameraService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 476
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 477
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xb

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 482
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 485
    return v2

    #@2d
    .line 479
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 481
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 481
    throw v3
.end method
