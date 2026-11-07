.class Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMagnificationConnection.java"

# interfaces
.implements Landroid/view/accessibility/IMagnificationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IMagnificationConnection$Stub;
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

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 367
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 370
    iget-object v0, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 438
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 441
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    nop

    .line 446
    return-void

    .line 444
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    throw v1
.end method

.method public blacklist enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "magnificationFrameOffsetRatioX"    # F
    .param p6, "magnificationFrameOffsetRatioY"    # F
    .param p7, "callback"    # Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 395
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 398
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 399
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 400
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 401
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 402
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 403
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2e

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return-void

    .line 406
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 374
    const-string v0, "android.view.accessibility.IMagnificationConnection"

    return-object v0
.end method

.method public blacklist moveWindowMagnifier(IFF)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 460
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 463
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 464
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    nop

    .line 469
    return-void

    .line 467
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    throw v1
.end method

.method public blacklist moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "positionX"    # F
    .param p3, "positionY"    # F
    .param p4, "callback"    # Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 482
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 485
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 486
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 487
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    nop

    .line 492
    return-void

    .line 490
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    throw v1
.end method

.method public blacklist onFullscreenMagnificationActivationChanged(IZ)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "activated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 589
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 592
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 596
    nop

    .line 597
    return-void

    .line 595
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 596
    throw v1
.end method

.method public blacklist onUserMagnificationScaleChanged(IIF)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "displayId"    # I
    .param p3, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 574
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 578
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    nop

    .line 583
    return-void

    .line 581
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    throw v1
.end method

.method public blacklist removeMagnificationButton(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    nop

    .line 528
    return-void

    .line 526
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    throw v1
.end method

.method public blacklist removeMagnificationSettingsPanel(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 538
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v1
.end method

.method public blacklist setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/view/accessibility/IMagnificationConnectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 555
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 557
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    nop

    .line 562
    return-void

    .line 560
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    throw v1
.end method

.method public blacklist setScaleForWindowMagnification(IF)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 419
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 422
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    nop

    .line 427
    return-void

    .line 425
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw v1
.end method

.method public blacklist showMagnificationButton(II)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 503
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v1, p0, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    throw v1
.end method
