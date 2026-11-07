.class public final Landroid/hardware/gnss/V1_1/IGnss$Proxy;
.super Ljava/lang/Object;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V1_1/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_1/IGnss;
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

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 274
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist cleanup()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 364
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 368
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 369
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 370
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    .line 372
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 373
    nop

    .line 374
    return-void

    .line 372
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 373
    throw v2
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

    .line 778
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 779
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 781
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 783
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 785
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf444247

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 786
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 787
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 789
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 790
    nop

    .line 791
    return-void

    .line 789
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 790
    throw v2
.end method

.method public blacklist deleteAidingData(S)V
    .registers 7
    .param p1, "aidingDataFlags"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 424
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 427
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 429
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 430
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 431
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_24

    .line 433
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 434
    nop

    .line 435
    return-void

    .line 433
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 434
    throw v2
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 293
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

    .line 890
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 891
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 893
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 895
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 896
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 897
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 899
    new-instance v2, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 900
    .local v2, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 901
    nop

    .line 903
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 901
    return-object v2

    .line 903
    .end local v2    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 904
    throw v2
.end method

.method public blacklist getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 503
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 507
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 508
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 509
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 511
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IAGnss;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 512
    .local v2, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    nop

    .line 514
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 512
    return-object v2

    .line 514
    .end local v2    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 515
    throw v2
.end method

.method public blacklist getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 465
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 469
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 470
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 471
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 473
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 474
    .local v2, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    nop

    .line 476
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 474
    return-object v2

    .line 476
    .end local v2    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 477
    throw v2
.end method

.method public blacklist getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 636
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 638
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 640
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 641
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 642
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 644
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 645
    .local v2, "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    nop

    .line 647
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 645
    return-object v2

    .line 647
    .end local v2    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 648
    throw v2
.end method

.method public blacklist getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 598
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 600
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 602
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 603
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 604
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 606
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 607
    .local v2, "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    nop

    .line 609
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 607
    return-object v2

    .line 609
    .end local v2    # "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 610
    throw v2
.end method

.method public blacklist getExtensionGnssConfiguration_1_1()Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 701
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 705
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 706
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 707
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 709
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_1/IGnssConfiguration;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssConfiguration;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 710
    .local v2, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    nop

    .line 712
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 710
    return-object v2

    .line 712
    .end local v2    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 713
    throw v2
.end method

.method public blacklist getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 617
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 621
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 622
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 623
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 625
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 626
    .local v2, "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    nop

    .line 628
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 626
    return-object v2

    .line 628
    .end local v2    # "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 629
    throw v2
.end method

.method public blacklist getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 484
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 488
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 489
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 490
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 492
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 493
    .local v2, "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    nop

    .line 495
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 493
    return-object v2

    .line 495
    .end local v2    # "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 496
    throw v2
.end method

.method public blacklist getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 541
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 545
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 546
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 547
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 549
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 550
    .local v2, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    nop

    .line 552
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 550
    return-object v2

    .line 552
    .end local v2    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 553
    throw v2
.end method

.method public blacklist getExtensionGnssMeasurement_1_1()Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 720
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 722
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 724
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 725
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 726
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 728
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_1/IGnssMeasurement;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssMeasurement;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 729
    .local v2, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    nop

    .line 731
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 729
    return-object v2

    .line 731
    .end local v2    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 732
    throw v2
.end method

.method public blacklist getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 560
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 562
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 564
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 565
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 568
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 569
    .local v2, "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    nop

    .line 571
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 569
    return-object v2

    .line 571
    .end local v2    # "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 572
    throw v2
.end method

.method public blacklist getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 522
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 524
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 526
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 527
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 528
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 530
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IGnssNi;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 531
    .local v2, "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    nop

    .line 533
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 531
    return-object v2

    .line 533
    .end local v2    # "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 534
    throw v2
.end method

.method public blacklist getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 579
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 581
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 583
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 584
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 585
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 587
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 588
    .local v2, "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    nop

    .line 590
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 588
    return-object v2

    .line 590
    .end local v2    # "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 591
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

    .line 815
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v1, v0

    .line 816
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 818
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v2, v0

    .line 820
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_11
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 821
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 822
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    move-object v10, v3

    .line 828
    .local v10, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x8

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move v11, v3

    .line 829
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 830
    invoke-virtual {v10}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 829
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 833
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 834
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_45
    if-ge v4, v11, :cond_59

    .line 835
    const/16 v5, 0x20

    new-array v6, v5, [B

    .line 837
    .local v6, "_hidl_vec_element":[B
    mul-int/lit8 v7, v4, 0x20

    int-to-long v7, v7

    .line 838
    .local v7, "_hidl_array_offset_1":J
    invoke-virtual {v3, v7, v8, v6, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 839
    nop

    .line 841
    .end local v7    # "_hidl_array_offset_1":J
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_5e

    .line 834
    nop

    .end local v6    # "_hidl_vec_element":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 845
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    .end local v10    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 847
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 845
    return-object v0

    .line 847
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 848
    throw v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 298
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist injectBestLocation(Landroid/hardware/gnss/V1_0/GnssLocation;)Z
    .registers 7
    .param p1, "location"    # Landroid/hardware/gnss/V1_0/GnssLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 739
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1, v0}, Landroid/hardware/gnss/V1_0/GnssLocation;->writeToParcel(Landroid/os/HwParcel;)V

    .line 742
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 744
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 745
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 746
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 748
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 749
    .local v2, "_hidl_out_success":Z
    nop

    .line 751
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 749
    return v2

    .line 751
    .end local v2    # "_hidl_out_success":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 752
    throw v2
.end method

.method public blacklist injectLocation(DDF)Z
    .registers 11
    .param p1, "latitudeDegrees"    # D
    .param p3, "longitudeDegrees"    # D
    .param p5, "accuracyMeters"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 402
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeDouble(D)V

    .line 404
    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeDouble(D)V

    .line 405
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeFloat(F)V

    .line 407
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 409
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 410
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 411
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 413
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 414
    .local v2, "_hidl_out_success":Z
    nop

    .line 416
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 414
    return v2

    .line 416
    .end local v2    # "_hidl_out_success":Z
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 417
    throw v2
.end method

.method public blacklist injectTime(JJI)Z
    .registers 11
    .param p1, "timeMs"    # J
    .param p3, "timeReferenceMs"    # J
    .param p5, "uncertaintyMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 380
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 382
    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 383
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 385
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 387
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 388
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 389
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 391
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 392
    .local v2, "_hidl_out_success":Z
    nop

    .line 394
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 392
    return v2

    .line 394
    .end local v2    # "_hidl_out_success":Z
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 395
    throw v2
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

    .line 759
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 760
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 762
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 764
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 765
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 766
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 768
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 769
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 771
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 769
    return-object v2

    .line 771
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 772
    throw v2
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 797
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 799
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 801
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 802
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 803
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 805
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 806
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 808
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 806
    return-object v2

    .line 808
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 809
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

    .line 869
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 910
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 911
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 915
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 916
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 918
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 919
    nop

    .line 920
    return-void

    .line 918
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 919
    throw v2
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 875
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 877
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 879
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 880
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 881
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 883
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 884
    nop

    .line 885
    return-void

    .line 883
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 884
    throw v2
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z
    .registers 7
    .param p1, "callback"    # Landroid/hardware/gnss/V1_0/IGnssCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 306
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 309
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 311
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1a
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 312
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 313
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 315
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    .line 316
    .local v2, "_hidl_out_success":Z
    nop

    .line 318
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 316
    return v2

    .line 318
    .end local v2    # "_hidl_out_success":Z
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 319
    throw v2
.end method

.method public blacklist setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssCallback;)Z
    .registers 7
    .param p1, "callback"    # Landroid/hardware/gnss/V1_1/IGnssCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 656
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 657
    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/gnss/V1_1/IGnssCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 659
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 661
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1a
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 662
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 663
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 665
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_31

    .line 666
    .local v2, "_hidl_out_success":Z
    nop

    .line 668
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 666
    return v2

    .line 668
    .end local v2    # "_hidl_out_success":Z
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 669
    throw v2
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 854
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 855
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 859
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 860
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 862
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 863
    nop

    .line 864
    return-void

    .line 862
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 863
    throw v2
.end method

.method public blacklist setPositionMode(BIIII)Z
    .registers 11
    .param p1, "mode"    # B
    .param p2, "recurrence"    # I
    .param p3, "minIntervalMs"    # I
    .param p4, "preferredAccuracyMeters"    # I
    .param p5, "preferredTimeMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 441
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 443
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 444
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 445
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 446
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 448
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 450
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 451
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 452
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 454
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_35

    .line 455
    .local v2, "_hidl_out_success":Z
    nop

    .line 457
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 455
    return v2

    .line 457
    .end local v2    # "_hidl_out_success":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 458
    throw v2
.end method

.method public blacklist setPositionMode_1_1(BIIIIZ)Z
    .registers 12
    .param p1, "mode"    # B
    .param p2, "recurrence"    # I
    .param p3, "minIntervalMs"    # I
    .param p4, "preferredAccuracyMeters"    # I
    .param p5, "preferredTimeMs"    # I
    .param p6, "lowPowerMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 676
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 678
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 679
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 680
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 681
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 682
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 684
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 686
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_21
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 687
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 688
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 690
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_38

    .line 691
    .local v2, "_hidl_out_success":Z
    nop

    .line 693
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 691
    return v2

    .line 693
    .end local v2    # "_hidl_out_success":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 694
    throw v2
.end method

.method public blacklist start()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 326
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 330
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 331
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 332
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 334
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 335
    .local v2, "_hidl_out_success":Z
    nop

    .line 337
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 335
    return v2

    .line 337
    .end local v2    # "_hidl_out_success":Z
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 338
    throw v2
.end method

.method public blacklist stop()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 345
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 349
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 350
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 351
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 353
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 354
    .local v2, "_hidl_out_success":Z
    nop

    .line 356
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 354
    return v2

    .line 356
    .end local v2    # "_hidl_out_success":Z
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 357
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 284
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 285
    :catch_18
    move-exception v0

    .line 288
    const-string v0, "[class or subclass of android.hardware.gnss@1.1::IGnss]@Proxy"

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

    .line 925
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
