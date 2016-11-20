.class Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
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
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 372
    iput-object p1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 370
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public disableSelf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 631
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 634
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xc

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 628
    return-void

    #@20
    .line 637
    :catchall_0
    move-exception v2

    #@21
    .line 638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 637
    throw v2
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 411
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 412
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 413
    if-eqz p5, :cond_0

    #@1a
    invoke-interface {p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 414
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 415
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 416
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x2

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 421
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 424
    return v2

    #@3f
    .line 418
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 420
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 420
    throw v3
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 429
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 434
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 435
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 436
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 437
    if-eqz p6, :cond_0

    #@1d
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 438
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 439
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x3

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 444
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 447
    return v2

    #@3f
    .line 441
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 443
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 443
    throw v3
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewId"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 457
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 458
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 459
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 460
    if-eqz p6, :cond_0

    #@1d
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 461
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 462
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x4

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 467
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 470
    return v2

    #@3f
    .line 464
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 466
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 466
    throw v3
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 475
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 478
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 480
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 481
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 482
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 483
    if-eqz p6, :cond_0

    #@1d
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 484
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 485
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x5

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 490
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 493
    return v2

    #@3f
    .line 487
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 489
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 489
    throw v3
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 503
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 504
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 505
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 506
    if-eqz p6, :cond_0

    #@1d
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 507
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 508
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x6

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 513
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 516
    return v2

    #@3f
    .line 510
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 512
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 512
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 380
    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@3
    return-object v0
.end method

.method public getMagnificationCenterX()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 675
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 679
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xf

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 684
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 687
    return v2

    #@24
    .line 683
    .end local v2    # "_result":F
    :catchall_0
    move-exception v3

    #@25
    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 683
    throw v3
.end method

.method public getMagnificationCenterY()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 696
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x10

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 698
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 701
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 704
    return v2

    #@24
    .line 700
    .end local v2    # "_result":F
    :catchall_0
    move-exception v3

    #@25
    .line 701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 700
    throw v3
.end method

.method public getMagnificationRegion()Landroid/graphics/Region;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 713
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x11

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 716
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/graphics/Region;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 723
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 726
    return-object v2

    #@2e
    .line 719
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/graphics/Region;
    goto :goto_0

    #@30
    .line 722
    .end local v2    # "_result":Landroid/graphics/Region;
    :catchall_0
    move-exception v3

    #@31
    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 722
    throw v3
.end method

.method public getMagnificationScale()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 662
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xe

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 667
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 670
    return v2

    #@24
    .line 666
    .end local v2    # "_result":F
    :catchall_0
    move-exception v3

    #@25
    .line 667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 666
    throw v3
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 594
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 595
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 598
    sget-object v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 605
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 608
    return-object v2

    #@2e
    .line 601
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_0

    #@30
    .line 604
    .end local v2    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v3

    #@31
    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 604
    throw v3
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 554
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 556
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 559
    sget-object v3, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 566
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 569
    return-object v2

    #@31
    .line 562
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_0

    #@33
    .line 565
    .end local v2    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v3

    #@34
    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 565
    throw v3
.end method

.method public getWindows()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 578
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 580
    sget-object v3, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 583
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 586
    return-object v2

    #@26
    .line 582
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v3

    #@27
    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 582
    throw v3
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 526
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 527
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 528
    if-eqz p5, :cond_1

    #@1a
    .line 529
    const/4 v4, 0x1

    #@1b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 530
    const/4 v4, 0x0

    #@1f
    invoke-virtual {p5, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 535
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 536
    if-eqz p7, :cond_0

    #@27
    invoke-interface {p7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v3

    #@2b
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2e
    .line 537
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    #@31
    .line 538
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@33
    const/4 v4, 0x7

    #@34
    const/4 v5, 0x0

    #@35
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@38
    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3b
    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    const/4 v2, 0x1

    #@42
    .line 543
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 546
    return v2

    #@49
    .line 533
    .end local v2    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 542
    :catchall_0
    move-exception v3

    #@4f
    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 542
    throw v3

    #@56
    .line 540
    :cond_2
    const/4 v2, 0x0

    #@57
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public performGlobalAction(I)Z
    .locals 6
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 616
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 618
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 623
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 626
    return v2

    #@2a
    .line 620
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 622
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 622
    throw v3
.end method

.method public resetMagnification(Z)Z
    .locals 6
    .param p1, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 735
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 736
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x12

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    const/4 v2, 0x1

    #@27
    .line 741
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 744
    return v2

    #@2e
    .line 738
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "_result":Z
    goto :goto_0

    #@30
    .line 740
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@31
    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 740
    throw v3
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 818
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 822
    if-eqz p2, :cond_0

    #@13
    .line 823
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 824
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 829
    :goto_0
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x17

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 815
    return-void

    #@2d
    .line 827
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
    .line 832
    :catchall_0
    move-exception v2

    #@33
    .line 833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 832
    throw v2
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 773
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 774
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x14

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 767
    return-void

    #@27
    .line 777
    :catchall_0
    move-exception v2

    #@28
    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 777
    throw v2
.end method

.method public setMagnificationScaleAndCenter(FFFZ)Z
    .locals 6
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@12
    .line 754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@15
    .line 755
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    #@18
    .line 756
    if-eqz p4, :cond_0

    #@1a
    const/4 v3, 0x1

    #@1b
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 757
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x13

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    const/4 v2, 0x1

    #@30
    .line 762
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 765
    return v2

    #@37
    .line 759
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@38
    .restart local v2    # "_result":Z
    goto :goto_0

    #@39
    .line 761
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3a
    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 761
    throw v3
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 5
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 646
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 647
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 649
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0xd

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 642
    return-void

    #@20
    .line 647
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0

    #@22
    .line 651
    :catchall_0
    move-exception v1

    #@23
    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 651
    throw v1
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 388
    if-eqz p1, :cond_0

    #@10
    .line 389
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 390
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 395
    :goto_0
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 382
    return-void

    #@29
    .line 393
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 398
    :catchall_0
    move-exception v2

    #@2f
    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 398
    throw v2
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 805
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 806
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 807
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x16

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 808
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 800
    return-void

    #@27
    .line 810
    :catchall_0
    move-exception v2

    #@28
    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 810
    throw v2
.end method

.method public setSoftKeyboardShowMode(I)Z
    .locals 6
    .param p1, "showMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 785
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 788
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 789
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 790
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x15

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 795
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 798
    return v2

    #@2a
    .line 792
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 794
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 794
    throw v3
.end method
