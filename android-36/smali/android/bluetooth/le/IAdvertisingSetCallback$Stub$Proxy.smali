.class Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAdvertisingSetCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IAdvertisingSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 273
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 280
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    return-object v0
.end method

.method public blacklist onAdvertisingDataSet(II)V
    .registers 8
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    nop

    .line 349
    return-void

    .line 347
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    throw v1
.end method

.method public blacklist onAdvertisingEnabled(IZI)V
    .registers 9
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 330
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    throw v1
.end method

.method public blacklist onAdvertisingParametersUpdated(III)V
    .registers 9
    .param p1, "advertiserId"    # I
    .param p2, "tx_power"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 367
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    nop

    .line 376
    return-void

    .line 374
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    throw v1
.end method

.method public blacklist onAdvertisingSetStarted(Landroid/os/IBinder;III)V
    .registers 9
    .param p1, "advertiseBinder"    # Landroid/os/IBinder;
    .param p2, "advertiserId"    # I
    .param p3, "tx_power"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 288
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    nop

    .line 296
    return-void

    .line 294
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v1
.end method

.method public blacklist onAdvertisingSetStopped(I)V
    .registers 7
    .param p1, "advertiserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    throw v1
.end method

.method public blacklist onOwnAddressRead(IILjava/lang/String;)V
    .registers 9
    .param p1, "advertiserId"    # I
    .param p2, "addressType"    # I
    .param p3, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 301
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 309
    nop

    .line 310
    return-void

    .line 308
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 309
    throw v1
.end method

.method public blacklist onPeriodicAdvertisingDataSet(II)V
    .registers 8
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v1
.end method

.method public blacklist onPeriodicAdvertisingEnabled(IZI)V
    .registers 9
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 410
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    nop

    .line 416
    return-void

    .line 414
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw v1
.end method

.method public blacklist onPeriodicAdvertisingParametersUpdated(II)V
    .registers 8
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 381
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw v1
.end method

.method public blacklist onScanResponseDataSet(II)V
    .registers 8
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    nop

    .line 362
    return-void

    .line 360
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v1
.end method
