.class Landroid/hardware/ICameraServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraServiceListener.java"

# interfaces
.implements Landroid/hardware/ICameraServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraServiceListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 256
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 263
    const-string v0, "android.hardware.ICameraServiceListener"

    return-object v0
.end method

.method public blacklist onCameraAccessPrioritiesChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    nop

    .line 346
    return-void

    .line 344
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    throw v1
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;I)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    nop

    .line 393
    return-void

    .line 391
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    throw v1
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v1
.end method

.method public blacklist onCameraOpenedInSharedMode(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "primaryClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    nop

    .line 380
    return-void

    .line 378
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    throw v1
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v1
.end method

.method public blacklist onStatusChanged(ILjava/lang/String;I)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v1
.end method

.method public blacklist onTorchStatusChanged(ILjava/lang/String;I)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    nop

    .line 316
    return-void

    .line 314
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v1
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;II)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newTorchStrength"    # I
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 321
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v1
.end method
