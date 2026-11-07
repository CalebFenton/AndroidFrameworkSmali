.class Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "INsdManagerCallback.java"

# interfaces
.implements Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;
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

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 389
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 392
    iget-object v0, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 396
    const-string v0, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    return-object v0
.end method

.method public blacklist onDiscoverServicesFailed(II)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    throw v1
.end method

.method public blacklist onDiscoverServicesStarted(ILandroid/net/nsd/DiscoveryRequest;)V
    .registers 7
    .param p1, "listenerKey"    # I
    .param p2, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 405
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 409
    throw v1
.end method

.method public blacklist onRegisterServiceFailed(II)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 479
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    throw v1
.end method

.method public blacklist onRegisterServiceSucceeded(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 495
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return-void

    .line 498
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    throw v1
.end method

.method public blacklist onResolveServiceFailed(II)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 530
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    nop

    .line 538
    return-void

    .line 536
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    throw v1
.end method

.method public blacklist onResolveServiceSucceeded(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 543
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 546
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
    nop

    .line 551
    return-void

    .line 549
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
    throw v1
.end method

.method public blacklist onServiceFound(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 428
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 431
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    nop

    .line 436
    return-void

    .line 434
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    throw v1
.end method

.method public blacklist onServiceInfoCallbackRegistrationFailed(II)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 581
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    nop

    .line 589
    return-void

    .line 587
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    throw v1
.end method

.method public blacklist onServiceInfoCallbackUnregistered(I)V
    .registers 7
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 619
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 625
    nop

    .line 626
    return-void

    .line 624
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 625
    throw v1
.end method

.method public blacklist onServiceLost(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 441
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 444
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    nop

    .line 449
    return-void

    .line 447
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    throw v1
.end method

.method public blacklist onServiceUpdated(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 594
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 597
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    nop

    .line 602
    return-void

    .line 600
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    throw v1
.end method

.method public blacklist onServiceUpdatedLost(I)V
    .registers 7
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 607
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 613
    nop

    .line 614
    return-void

    .line 612
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 613
    throw v1
.end method

.method public blacklist onStopDiscoveryFailed(II)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 454
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    nop

    .line 462
    return-void

    .line 460
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    throw v1
.end method

.method public blacklist onStopDiscoverySucceeded(I)V
    .registers 7
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 467
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    nop

    .line 474
    return-void

    .line 472
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    throw v1
.end method

.method public blacklist onStopResolutionFailed(II)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 556
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 563
    nop

    .line 564
    return-void

    .line 562
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 563
    throw v1
.end method

.method public blacklist onStopResolutionSucceeded(I)V
    .registers 7
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 569
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    nop

    .line 576
    return-void

    .line 574
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    throw v1
.end method

.method public blacklist onUnregisterServiceFailed(II)V
    .registers 8
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 505
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    nop

    .line 513
    return-void

    .line 511
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    throw v1
.end method

.method public blacklist onUnregisterServiceSucceeded(I)V
    .registers 7
    .param p1, "listenerKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 518
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget-object v1, p0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    nop

    .line 525
    return-void

    .line 523
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    throw v1
.end method
