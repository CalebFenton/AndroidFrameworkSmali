.class Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiAwareDiscoverySessionCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
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

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 402
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 409
    const-string v0, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    return-object v0
.end method

.method public blacklist onBootstrappingVerificationConfirmed(IZI)V
    .registers 9
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 638
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 641
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    nop

    .line 647
    return-void

    .line 645
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    throw v1
.end method

.method public blacklist onMatch(I[B[BI[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 14
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "peerCipherSuite"    # I
    .param p5, "scid"    # [B
    .param p6, "pairingAlias"    # Ljava/lang/String;
    .param p7, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p8, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 508
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 511
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 512
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 514
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 516
    invoke-virtual {v0, p8, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 517
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_30

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    throw v1
.end method

.method public blacklist onMatchExpired(I)V
    .registers 7
    .param p1, "peerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    nop

    .line 592
    return-void

    .line 590
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    throw v1
.end method

.method public blacklist onMatchWithDistance(I[B[BII[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 15
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "distanceMm"    # I
    .param p5, "peerCipherSuite"    # I
    .param p6, "scid"    # [B
    .param p7, "pairingAlias"    # Ljava/lang/String;
    .param p8, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p9, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 527
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 530
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 531
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 534
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    const/4 v1, 0x0

    invoke-virtual {v0, p8, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 536
    invoke-virtual {v0, p9, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 537
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_33

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    nop

    .line 542
    return-void

    .line 540
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    throw v1
.end method

.method public greylist-max-o onMessageReceived(I[B)V
    .registers 8
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 575
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
    nop

    .line 580
    return-void

    .line 578
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
    throw v1
.end method

.method public greylist-max-o onMessageSendFail(II)V
    .registers 8
    .param p1, "messageId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 559
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 566
    throw v1
.end method

.method public greylist-max-o onMessageSendSuccess(I)V
    .registers 7
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 547
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    nop

    .line 554
    return-void

    .line 552
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    throw v1
.end method

.method public blacklist onPairingSetupConfirmed(IZLjava/lang/String;)V
    .registers 9
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 610
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 613
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 618
    nop

    .line 619
    return-void

    .line 617
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 618
    throw v1
.end method

.method public blacklist onPairingSetupRequestReceived(II)V
    .registers 8
    .param p1, "peerId"    # I
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 597
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 604
    nop

    .line 605
    return-void

    .line 603
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 604
    throw v1
.end method

.method public blacklist onPairingVerificationConfirmed(IZLjava/lang/String;)V
    .registers 9
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 624
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 627
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    nop

    .line 633
    return-void

    .line 631
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    throw v1
.end method

.method public blacklist onRangingResultsReceived(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    .local p1, "rangingResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 652
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 653
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 654
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    nop

    .line 659
    return-void

    .line 657
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    throw v1
.end method

.method public greylist-max-o onSessionConfigFail(I)V
    .registers 7
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 438
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 444
    nop

    .line 445
    return-void

    .line 443
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 444
    throw v1
.end method

.method public greylist-max-o onSessionConfigSuccess()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    nop

    .line 433
    return-void

    .line 431
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw v1
.end method

.method public blacklist onSessionResumeFail(I)V
    .registers 7
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 496
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 502
    nop

    .line 503
    return-void

    .line 501
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 502
    throw v1
.end method

.method public blacklist onSessionResumeSucceeded()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 485
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    nop

    .line 491
    return-void

    .line 489
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    throw v1
.end method

.method public greylist-max-o onSessionStarted(I)V
    .registers 6
    .param p1, "discoverySessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    throw v1
.end method

.method public blacklist onSessionSuspendFail(I)V
    .registers 7
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 473
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    throw v1
.end method

.method public blacklist onSessionSuspendSucceeded()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 462
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    nop

    .line 468
    return-void

    .line 466
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    throw v1
.end method

.method public greylist-max-o onSessionTerminated(I)V
    .registers 7
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 450
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-object v1, p0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    nop

    .line 457
    return-void

    .line 455
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    throw v1
.end method
