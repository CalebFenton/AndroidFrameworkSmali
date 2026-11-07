.class public final Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IHwBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 505
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 509
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 848
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 850
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 852
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 854
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf444247

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 855
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 856
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 858
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 859
    nop

    .line 860
    return-void

    .line 858
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 859
    throw v2
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 524
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 960
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 964
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 965
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 966
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 968
    new-instance v2, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 969
    .local v2, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 970
    nop

    .line 972
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 970
    return-object v2

    .line 972
    .end local v2    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 973
    throw v2
.end method

.method public blacklist getHashChain()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v1, v0

    .line 885
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v2, v0

    .line 889
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_11
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 890
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 891
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    move-object v10, v3

    .line 897
    .local v10, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x8

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move v11, v3

    .line 898
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 899
    invoke-virtual {v10}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 898
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 902
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 903
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_45
    if-ge v4, v11, :cond_59

    .line 904
    const/16 v5, 0x20

    new-array v6, v5, [B

    .line 906
    .local v6, "_hidl_vec_element":[B
    mul-int/lit8 v7, v4, 0x20

    int-to-long v7, v7

    .line 907
    .local v7, "_hidl_array_offset_1":J
    invoke-virtual {v3, v7, v8, v6, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 908
    nop

    .line 910
    .end local v7    # "_hidl_array_offset_1":J
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_5e

    .line 903
    nop

    .end local v6    # "_hidl_vec_element":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 914
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    .end local v10    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 916
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 914
    return-object v0

    .line 916
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 917
    throw v0
.end method

.method public blacklist gnssAcquireWakelockCb()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 623
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 627
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 628
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 629
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    .line 631
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 632
    nop

    .line 633
    return-void

    .line 631
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 632
    throw v2
.end method

.method public blacklist gnssLocationCb(Landroid/hardware/gnss/V1_0/GnssLocation;)V
    .registers 7
    .param p1, "location"    # Landroid/hardware/gnss/V1_0/GnssLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 537
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1, v0}, Landroid/hardware/gnss/V1_0/GnssLocation;->writeToParcel(Landroid/os/HwParcel;)V

    .line 540
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 542
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 543
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 544
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_24

    .line 546
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 547
    throw v2
.end method

.method public blacklist gnssLocationCb_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)V
    .registers 7
    .param p1, "location"    # Landroid/hardware/gnss/V2_0/GnssLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 741
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@2.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1, v0}, Landroid/hardware/gnss/V2_0/GnssLocation;->writeToParcel(Landroid/os/HwParcel;)V

    .line 744
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 746
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 747
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 748
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 750
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 751
    nop

    .line 752
    return-void

    .line 750
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 751
    throw v2
.end method

.method public blacklist gnssNameCb(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 689
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.1::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 692
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 694
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 695
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 696
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 698
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 699
    nop

    .line 700
    return-void

    .line 698
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 699
    throw v2
.end method

.method public blacklist gnssNmeaCb(JLjava/lang/String;)V
    .registers 9
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 588
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 590
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 592
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 594
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 595
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 596
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_27

    .line 598
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 599
    nop

    .line 600
    return-void

    .line 598
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 599
    throw v2
.end method

.method public blacklist gnssReleaseWakelockCb()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 639
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 643
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 644
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 645
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    .line 647
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 648
    nop

    .line 649
    return-void

    .line 647
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 648
    throw v2
.end method

.method public blacklist gnssRequestLocationCb(Z)V
    .registers 7
    .param p1, "independentFromGnss"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 706
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.1::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 709
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 711
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 712
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 713
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 715
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 716
    nop

    .line 717
    return-void

    .line 715
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 716
    throw v2
.end method

.method public blacklist gnssRequestLocationCb_2_0(ZZ)V
    .registers 8
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 758
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@2.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 760
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 762
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 764
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 765
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 766
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_28

    .line 768
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 769
    nop

    .line 770
    return-void

    .line 768
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 769
    throw v2
.end method

.method public blacklist gnssRequestTimeCb()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 655
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 657
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 659
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 660
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 661
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_22

    .line 663
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 664
    nop

    .line 665
    return-void

    .line 663
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 664
    throw v2
.end method

.method public blacklist gnssSetCapabilitesCb(I)V
    .registers 7
    .param p1, "capabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 606
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 609
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 611
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 612
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 613
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_24

    .line 615
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 616
    nop

    .line 617
    return-void

    .line 615
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 616
    throw v2
.end method

.method public blacklist gnssSetCapabilitiesCb_2_0(I)V
    .registers 7
    .param p1, "capabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 724
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@2.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 727
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 729
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 730
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 731
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 733
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 734
    nop

    .line 735
    return-void

    .line 733
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 734
    throw v2
.end method

.method public blacklist gnssSetCapabilitiesCb_2_1(I)V
    .registers 7
    .param p1, "capabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 794
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@2.1::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 797
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 799
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 800
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 801
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 803
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 804
    nop

    .line 805
    return-void

    .line 803
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 804
    throw v2
.end method

.method public blacklist gnssSetSystemInfoCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 671
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1, v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 674
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 676
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 677
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 678
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 680
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 681
    nop

    .line 682
    return-void

    .line 680
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 681
    throw v2
.end method

.method public blacklist gnssStatusCb(B)V
    .registers 7
    .param p1, "status"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 554
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 557
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 559
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 560
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_24

    .line 563
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 564
    nop

    .line 565
    return-void

    .line 563
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 564
    throw v2
.end method

.method public blacklist gnssSvStatusCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;)V
    .registers 7
    .param p1, "svInfo"    # Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 571
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1, v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 574
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 576
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 577
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 578
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_24

    .line 580
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 581
    nop

    .line 582
    return-void

    .line 580
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 581
    throw v2
.end method

.method public blacklist gnssSvStatusCb_2_0(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    .local p1, "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 776
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@2.0::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 777
    invoke-static {v0, p1}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 779
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 781
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 782
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 783
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 785
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 786
    nop

    .line 787
    return-void

    .line 785
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 786
    throw v2
.end method

.method public blacklist gnssSvStatusCb_2_1(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    .local p1, "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 811
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@2.1::IGnssCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    invoke-static {v0, p1}, Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 814
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 816
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 817
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 818
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 820
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 821
    nop

    .line 822
    return-void

    .line 820
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 821
    throw v2
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 529
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 829
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 833
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 834
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 835
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 837
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 838
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 840
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 838
    return-object v2

    .line 840
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 841
    throw v2
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 866
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 868
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 870
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 871
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 872
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 874
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 875
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 877
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 875
    return-object v2

    .line 877
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 878
    throw v2
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public blacklist notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 979
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 980
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 982
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 984
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 985
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 987
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 988
    nop

    .line 989
    return-void

    .line 987
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 988
    throw v2
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 943
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 944
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 946
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 948
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 949
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 950
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 952
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 953
    nop

    .line 954
    return-void

    .line 952
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 953
    throw v2
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 924
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 926
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 928
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 929
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 931
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 932
    nop

    .line 933
    return-void

    .line 931
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 932
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 515
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 516
    :catch_18
    move-exception v0

    .line 519
    const-string v0, "[class or subclass of android.hardware.gnss@2.1::IGnssCallback]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
