.class Landroid/net/INetworkStatsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 450
    return-void
.end method


# virtual methods
.method public blacklist advisePersistThreshold(J)V
    .registers 8
    .param p1, "thresholdBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 745
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 749
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 750
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 753
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    nop

    .line 756
    return-void

    .line 753
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist clearTrafficStatsRateLimitCaches()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 785
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 786
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 789
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 791
    nop

    .line 792
    return-void

    .line 789
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 791
    throw v2
.end method

.method public greylist-max-o forceUpdate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 600
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 604
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 607
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    nop

    .line 610
    return-void

    .line 607
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    throw v2
.end method

.method public greylist-max-o getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 507
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 513
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 514
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 517
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/NetworkStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    nop

    .line 520
    return-object v3

    .line 517
    .end local v3    # "_result":Landroid/net/NetworkStats;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    throw v2
.end method

.method public blacklist getIfaceStats(Ljava/lang/String;)Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 677
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 678
    sget-object v3, Landroid/net/connectivity/android/net/netstats/StatsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/netstats/StatsResult;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 681
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    nop

    .line 684
    return-object v3

    .line 681
    .end local v3    # "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 457
    const-string v0, "android.net.INetworkStatsService"

    return-object v0
.end method

.method public greylist getMobileIfaces()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 550
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 554
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    nop

    .line 557
    return-object v3

    .line 554
    .end local v3    # "_result":[Ljava/lang/String;
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    throw v2
.end method

.method public blacklist getRateLimitCacheConfig()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 797
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 801
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 802
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 803
    sget-object v3, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 806
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 808
    nop

    .line 809
    return-object v3

    .line 806
    .end local v3    # "_result":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 808
    throw v2
.end method

.method public blacklist getTotalStats()Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 695
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 696
    sget-object v3, Landroid/net/connectivity/android/net/netstats/StatsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/netstats/StatsResult;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 699
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    nop

    .line 702
    return-object v3

    .line 699
    .end local v3    # "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    throw v2
.end method

.method public blacklist getUidStats(I)Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 655
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 658
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 659
    sget-object v3, Landroid/net/connectivity/android/net/netstats/StatsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/netstats/StatsResult;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 662
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 664
    nop

    .line 665
    return-object v3

    .line 662
    .end local v3    # "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 664
    throw v2
.end method

.method public blacklist getUidStatsForTransport(I)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "transport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 532
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 533
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 536
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/NetworkStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    nop

    .line 539
    return-object v3

    .line 536
    .end local v3    # "_result":Landroid/net/NetworkStats;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    throw v2
.end method

.method public greylist-max-o incrementOperationCount(III)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 570
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 573
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    nop

    .line 576
    return-void

    .line 573
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    throw v2
.end method

.method public blacklist noteUidForeground(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 733
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 734
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 737
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 739
    nop

    .line 740
    return-void

    .line 737
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 739
    throw v2
.end method

.method public blacklist notifyNetworkStatus([Landroid/net/Network;[Landroid/net/NetworkStateSnapshot;Ljava/lang/String;[Landroid/net/UnderlyingNetworkInfo;)V
    .registers 10
    .param p1, "defaultNetworks"    # [Landroid/net/Network;
    .param p2, "snapshots"    # [Landroid/net/NetworkStateSnapshot;
    .param p3, "activeIface"    # Ljava/lang/String;
    .param p4, "underlyingNetworkInfos"    # [Landroid/net/UnderlyingNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 581
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 583
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 585
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 586
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 588
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 589
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 592
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    nop

    .line 595
    return-void

    .line 592
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    throw v2
.end method

.method public greylist-max-o openSession()Landroid/net/INetworkStatsSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 468
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 472
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    nop

    .line 475
    return-object v3

    .line 472
    .end local v3    # "_result":Landroid/net/INetworkStatsSession;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    throw v2
.end method

.method public greylist-max-o openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .registers 8
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 494
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 498
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    nop

    .line 501
    return-object v3

    .line 498
    .end local v3    # "_result":Landroid/net/INetworkStatsSession;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    throw v2
.end method

.method public blacklist registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/INetworkStatsProvider;)Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/net/netstats/provider/INetworkStatsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 714
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 715
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 719
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    nop

    .line 722
    return-object v3

    .line 719
    .end local v3    # "_result":Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    throw v2
.end method

.method public blacklist registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/net/connectivity/android/net/netstats/IUsageCallback;)Landroid/net/DataUsageRequest;
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "callback"    # Landroid/net/connectivity/android/net/netstats/IUsageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 621
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 622
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 623
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 624
    sget-object v3, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/DataUsageRequest;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 627
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/DataUsageRequest;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    nop

    .line 630
    return-object v3

    .line 627
    .end local v3    # "_result":Landroid/net/DataUsageRequest;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    throw v2
.end method

.method public blacklist setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "warning"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 763
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 769
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 770
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 771
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 774
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    nop

    .line 777
    return-void

    .line 774
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    throw v2
.end method

.method public greylist-max-o unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    .registers 7
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 638
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.INetworkStatsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 639
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 640
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 644
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    nop

    .line 647
    return-void

    .line 644
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    throw v2
.end method
