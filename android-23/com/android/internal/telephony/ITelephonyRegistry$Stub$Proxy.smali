.class Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
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
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 481
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 479
    return-void
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephonyRegistry"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 498
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 499
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 491
    return-void

    #@2c
    .line 502
    :catchall_0
    move-exception v2

    #@2d
    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 502
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 489
    const-string/jumbo v0, "com.android.internal.telephony.ITelephonyRegistry"

    #@3
    return-object v0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 528
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 530
    if-eqz p2, :cond_0

    #@15
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v3

    #@19
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    .line 531
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 532
    if-eqz p4, :cond_1

    #@21
    const/4 v2, 0x1

    #@22
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 533
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x3

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 523
    return-void

    #@36
    .line 536
    :catchall_0
    move-exception v2

    #@37
    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 536
    throw v2
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 546
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 548
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 549
    if-eqz p3, :cond_0

    #@18
    invoke-interface {p3}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v3

    #@1c
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1f
    .line 550
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 551
    if-eqz p5, :cond_1

    #@24
    const/4 v2, 0x1

    #@25
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 552
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v3, 0x4

    #@2b
    const/4 v4, 0x0

    #@2c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 541
    return-void

    #@39
    .line 555
    :catchall_0
    move-exception v2

    #@3a
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 555
    throw v2
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 5
    .param p1, "cfi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephonyRegistry"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 682
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 683
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xb

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 676
    return-void

    #@27
    .line 686
    :catchall_0
    move-exception v2

    #@28
    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 686
    throw v2
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 694
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 696
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephonyRegistry"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 697
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 698
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 699
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xc

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 700
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 691
    return-void

    #@2a
    .line 702
    :catchall_0
    move-exception v2

    #@2b
    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 702
    throw v2
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
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
    .line 565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 567
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 568
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x5

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 560
    return-void

    #@25
    .line 571
    :catchall_0
    move-exception v2

    #@26
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 571
    throw v2
.end method

.method public notifyCallStateForSubscriber(IILjava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 584
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 585
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x6

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 576
    return-void

    #@28
    .line 588
    :catchall_0
    move-exception v2

    #@29
    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 588
    throw v2
.end method

.method public notifyCarrierNetworkChange(Z)V
    .locals 5
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1057
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1059
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephonyRegistry"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1060
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1061
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x1f

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1054
    return-void

    #@27
    .line 1064
    :catchall_0
    move-exception v2

    #@28
    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1064
    throw v2
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 902
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 905
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@11
    .line 907
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x16

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 900
    return-void

    #@23
    .line 910
    :catchall_0
    move-exception v2

    #@24
    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 910
    throw v2
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 968
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 971
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 972
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 973
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@14
    .line 974
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1a

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 966
    return-void

    #@26
    .line 977
    :catchall_0
    move-exception v2

    #@27
    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 977
    throw v2
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "cellLocation"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 845
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 848
    if-eqz p1, :cond_0

    #@10
    .line 849
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 850
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 855
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x13

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 842
    return-void

    #@2a
    .line 853
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 858
    :catchall_0
    move-exception v2

    #@30
    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 858
    throw v2
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 866
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 870
    if-eqz p2, :cond_0

    #@13
    .line 871
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 872
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 877
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x14

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 878
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 863
    return-void

    #@2d
    .line 875
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
    .line 880
    :catchall_0
    move-exception v2

    #@33
    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 880
    throw v2
.end method

.method public notifyDataActivity(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 714
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xd

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 707
    return-void

    #@23
    .line 717
    :catchall_0
    move-exception v2

    #@24
    .line 718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 717
    throw v2
.end method

.method public notifyDataActivityForSubscriber(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 727
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 728
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 729
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 730
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xe

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 722
    return-void

    #@26
    .line 733
    :catchall_0
    move-exception v2

    #@27
    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 733
    throw v2
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 741
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 745
    if-eqz p2, :cond_0

    #@15
    move v4, v2

    #@16
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 746
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 747
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 748
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    .line 749
    if-eqz p6, :cond_1

    #@24
    .line 750
    const/4 v4, 0x1

    #@25
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 751
    const/4 v4, 0x0

    #@29
    invoke-virtual {p6, v0, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 756
    :goto_1
    if-eqz p7, :cond_2

    #@2e
    .line 757
    const/4 v4, 0x1

    #@2f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 758
    const/4 v4, 0x0

    #@33
    invoke-virtual {p7, v0, v4}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@36
    .line 763
    :goto_2
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 764
    if-eqz p9, :cond_3

    #@3b
    :goto_3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 765
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@40
    const/16 v3, 0xf

    #@42
    const/4 v4, 0x0

    #@43
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@46
    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 738
    return-void

    #@50
    :cond_0
    move v4, v3

    #@51
    .line 745
    goto :goto_0

    #@52
    .line 754
    :cond_1
    const/4 v4, 0x0

    #@53
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    goto :goto_1

    #@57
    .line 768
    :catchall_0
    move-exception v2

    #@58
    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 768
    throw v2

    #@5f
    .line 761
    :cond_2
    const/4 v4, 0x0

    #@60
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    goto :goto_2

    #@64
    :cond_3
    move v2, v3

    #@65
    .line 764
    goto :goto_3
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 814
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 816
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 817
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x11

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 809
    return-void

    #@26
    .line 820
    :catchall_0
    move-exception v2

    #@27
    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 820
    throw v2
.end method

.method public notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 832
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 833
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 834
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x12

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 825
    return-void

    #@29
    .line 837
    :catchall_0
    move-exception v2

    #@2a
    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 837
    throw v2
.end method

.method public notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "isDataConnectivityPossible"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "apnType"    # Ljava/lang/String;
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p9, "networkType"    # I
    .param p10, "roaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 776
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 781
    if-eqz p3, :cond_0

    #@18
    move v4, v2

    #@19
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 782
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 783
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    .line 784
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 785
    if-eqz p7, :cond_1

    #@27
    .line 786
    const/4 v4, 0x1

    #@28
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 787
    const/4 v4, 0x0

    #@2c
    invoke-virtual {p7, v0, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 792
    :goto_1
    if-eqz p8, :cond_2

    #@31
    .line 793
    const/4 v4, 0x1

    #@32
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 794
    const/4 v4, 0x0

    #@36
    invoke-virtual {p8, v0, v4}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 799
    :goto_2
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 800
    if-eqz p10, :cond_3

    #@3e
    :goto_3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 801
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@43
    const/16 v3, 0x10

    #@45
    const/4 v4, 0x0

    #@46
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@49
    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 773
    return-void

    #@53
    :cond_0
    move v4, v3

    #@54
    .line 781
    goto :goto_0

    #@55
    .line 790
    :cond_1
    const/4 v4, 0x0

    #@56
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    goto :goto_1

    #@5a
    .line 804
    :catchall_0
    move-exception v2

    #@5b
    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 804
    throw v2

    #@62
    .line 797
    :cond_2
    const/4 v4, 0x0

    #@63
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    goto :goto_2

    #@67
    :cond_3
    move v2, v3

    #@68
    .line 800
    goto :goto_3
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 5
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 988
    if-eqz p1, :cond_0

    #@10
    .line 989
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 990
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/telephony/DataConnectionRealTimeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 995
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x1b

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 982
    return-void

    #@2a
    .line 993
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 998
    :catchall_0
    move-exception v2

    #@30
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 998
    throw v2
.end method

.method public notifyDisconnectCause(II)V
    .locals 5
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 935
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 937
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 939
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 940
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x18

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 932
    return-void

    #@26
    .line 943
    :catchall_0
    move-exception v2

    #@27
    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 943
    throw v2
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephonyRegistry"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 667
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 668
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xa

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 659
    return-void

    #@2d
    .line 671
    :catchall_0
    move-exception v2

    #@2e
    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 671
    throw v2
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1031
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 1032
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1d

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1033
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1024
    return-void

    #@26
    .line 1035
    :catchall_0
    move-exception v2

    #@27
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1035
    throw v2
.end method

.method public notifyOtaspChanged(I)V
    .locals 5
    .param p1, "otaspMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 890
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 892
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x15

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 885
    return-void

    #@23
    .line 895
    :catchall_0
    move-exception v2

    #@24
    .line 896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 895
    throw v2
.end method

.method public notifyPreciseCallState(III)V
    .locals 5
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 923
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 924
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x17

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 915
    return-void

    #@29
    .line 927
    :catchall_0
    move-exception v2

    #@2a
    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 927
    throw v2
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 955
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 956
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 957
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 958
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x19

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 959
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 948
    return-void

    #@2c
    .line 961
    :catchall_0
    move-exception v2

    #@2d
    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 961
    throw v2
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 598
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 600
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 601
    if-eqz p3, :cond_0

    #@16
    .line 602
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 603
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p3, v0, v2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 608
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x7

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 593
    return-void

    #@2f
    .line 606
    :cond_0
    const/4 v2, 0x0

    #@30
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 611
    :catchall_0
    move-exception v2

    #@35
    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 611
    throw v2
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
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
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 622
    if-eqz p1, :cond_0

    #@10
    .line 623
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 624
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 629
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x8

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 616
    return-void

    #@2a
    .line 627
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 632
    :catchall_0
    move-exception v2

    #@30
    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 632
    throw v2
.end method

.method public notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 640
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 644
    if-eqz p2, :cond_0

    #@13
    .line 645
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 646
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 651
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x9

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 637
    return-void

    #@2d
    .line 649
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
    .line 654
    :catchall_0
    move-exception v2

    #@33
    .line 655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 654
    throw v2
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1043
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1045
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1046
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x1e

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1040
    return-void

    #@20
    .line 1049
    :catchall_0
    move-exception v2

    #@21
    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1049
    throw v2
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 5
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1006
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1008
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1009
    if-eqz p1, :cond_0

    #@10
    .line 1010
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1011
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/telephony/VoLteServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1016
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x1c

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1020
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1003
    return-void

    #@2a
    .line 1014
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 1019
    :catchall_0
    move-exception v2

    #@30
    .line 1020
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1019
    throw v2
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 510
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephonyRegistry"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 514
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 515
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x2

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 507
    return-void

    #@2c
    .line 518
    :catchall_0
    move-exception v2

    #@2d
    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 518
    throw v2
.end method
