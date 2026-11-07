.class Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibrator$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mCachedVersion:I

    .line 470
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 467
    iput-object p1, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 468
    return-void
.end method


# virtual methods
.method public blacklist alwaysOnDisable(I)V
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 762
    .local v2, "_status":Z
    if-eqz v2, :cond_2a

    .line 765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_32

    .line 768
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 770
    nop

    .line 771
    return-void

    .line 763
    .restart local v2    # "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method alwaysOnDisable is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "id":I
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 768
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "id":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 770
    throw v2
.end method

.method public blacklist alwaysOnEnable(IIB)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "effect"    # I
    .param p3, "strength"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 739
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 743
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 744
    .local v2, "_status":Z
    if-eqz v2, :cond_30

    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_38

    .line 750
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    nop

    .line 753
    return-void

    .line 745
    .restart local v2    # "_status":Z
    :cond_30
    :try_start_30
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method alwaysOnEnable is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "id":I
    .end local p2    # "effect":I
    .end local p3    # "strength":B
    throw v3
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_38

    .line 750
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "id":I
    .restart local p2    # "effect":I
    .restart local p3    # "strength":B
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 473
    iget-object v0, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist compose([Landroid/hardware/vibrator/CompositeEffect;Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 8
    .param p1, "composite"    # [Landroid/hardware/vibrator/CompositeEffect;
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 701
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 702
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 703
    iget-object v3, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 704
    .local v2, "_status":Z
    if-eqz v2, :cond_2d

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_35

    .line 710
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    nop

    .line 713
    return-void

    .line 705
    .restart local v2    # "_status":Z
    :cond_2d
    :try_start_2d
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method compose is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "composite":[Landroid/hardware/vibrator/CompositeEffect;
    .end local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    throw v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 710
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "composite":[Landroid/hardware/vibrator/CompositeEffect;
    .restart local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    throw v2
.end method

.method public blacklist composePwle([Landroid/hardware/vibrator/PrimitivePwle;Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 8
    .param p1, "composite"    # [Landroid/hardware/vibrator/PrimitivePwle;
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 942
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 945
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 946
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 947
    iget-object v3, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 948
    .local v2, "_status":Z
    if-eqz v2, :cond_2d

    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_35

    .line 954
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 956
    nop

    .line 957
    return-void

    .line 949
    .restart local v2    # "_status":Z
    :cond_2d
    :try_start_2d
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method composePwle is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "composite":[Landroid/hardware/vibrator/PrimitivePwle;
    .end local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    throw v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 954
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "composite":[Landroid/hardware/vibrator/PrimitivePwle;
    .restart local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 956
    throw v2
.end method

.method public blacklist composePwleV2(Landroid/hardware/vibrator/CompositePwleV2;Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 8
    .param p1, "composite"    # Landroid/hardware/vibrator/CompositePwleV2;
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1062
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1063
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1064
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1065
    iget-object v3, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1066
    .local v2, "_status":Z
    if-eqz v2, :cond_2d

    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_35

    .line 1072
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1074
    nop

    .line 1075
    return-void

    .line 1067
    .restart local v2    # "_status":Z
    :cond_2d
    :try_start_2d
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method composePwleV2 is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "composite":Landroid/hardware/vibrator/CompositePwleV2;
    .end local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    throw v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 1072
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "composite":Landroid/hardware/vibrator/CompositePwleV2;
    .restart local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1074
    throw v2
.end method

.method public blacklist getBandwidthAmplitudeMap()[F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 862
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 863
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 867
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 870
    .end local v2    # "_status":Z
    .local v3, "_result":[F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    nop

    .line 873
    return-object v3

    .line 864
    .end local v3    # "_result":[F
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getBandwidthAmplitudeMap is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 870
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    throw v2
.end method

.method public blacklist getCapabilities()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 487
    .local v2, "_status":Z
    if-eqz v2, :cond_2a

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_32

    .line 494
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    nop

    .line 497
    return v3

    .line 488
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getCapabilities is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 494
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    throw v2
.end method

.method public blacklist getCompositionDelayMax()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 622
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 629
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 631
    nop

    .line 632
    return v3

    .line 623
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getCompositionDelayMax is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 629
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 631
    throw v2
.end method

.method public blacklist getCompositionSizeMax()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 642
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 649
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    nop

    .line 652
    return v3

    .line 643
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getCompositionSizeMax is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 649
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    throw v2
.end method

.method public blacklist getFrequencyMinimum()F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 840
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 842
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 849
    .end local v2    # "_status":Z
    .local v3, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 851
    nop

    .line 852
    return v3

    .line 843
    .end local v3    # "_result":F
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getFrequencyMinimum is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 849
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 851
    throw v2
.end method

.method public blacklist getFrequencyResolution()F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 816
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 819
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 820
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 821
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 828
    .end local v2    # "_status":Z
    .local v3, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    nop

    .line 831
    return v3

    .line 822
    .end local v3    # "_result":F
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getFrequencyResolution is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 828
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    throw v2
.end method

.method public blacklist getFrequencyToOutputAccelerationMap()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/vibrator/FrequencyAccelerationMapEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 979
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 980
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 985
    .local v2, "_status":Z
    if-eqz v2, :cond_2d

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 989
    sget-object v3, Landroid/hardware/vibrator/FrequencyAccelerationMapEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_35

    .line 992
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/vibrator/FrequencyAccelerationMapEntry;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    nop

    .line 995
    return-object v3

    .line 986
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/vibrator/FrequencyAccelerationMapEntry;>;"
    .restart local v2    # "_status":Z
    :cond_2d
    :try_start_2d
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getFrequencyToOutputAccelerationMap is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 992
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 477
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1095
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1096
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1097
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 1099
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1100
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1101
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1102
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 1104
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1106
    goto :goto_3e

    .line 1104
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1106
    throw v2

    .line 1108
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 1094
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1078
    iget v0, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 1079
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1080
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1082
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1083
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1084
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 1087
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1089
    goto :goto_38

    .line 1087
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1089
    throw v2

    .line 1091
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getPrimitiveDuration(I)I
    .registers 7
    .param p1, "primitive"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 683
    .local v2, "_status":Z
    if-eqz v2, :cond_2e

    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_36

    .line 690
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    nop

    .line 693
    return v3

    .line 684
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2e
    :try_start_2e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getPrimitiveDuration is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "primitive":I
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 690
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "primitive":I
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    throw v2
.end method

.method public blacklist getPwleCompositionSizeMax()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 900
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 905
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 912
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    nop

    .line 915
    return v3

    .line 906
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getPwleCompositionSizeMax is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 912
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    throw v2
.end method

.method public blacklist getPwlePrimitiveDurationMax()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 879
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 882
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 883
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 884
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 891
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    nop

    .line 894
    return v3

    .line 885
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getPwlePrimitiveDurationMax is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 891
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    throw v2
.end method

.method public blacklist getPwleV2CompositionSizeMax()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1023
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1024
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1025
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 1028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 1032
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1034
    nop

    .line 1035
    return v3

    .line 1026
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getPwleV2CompositionSizeMax is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 1032
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1034
    throw v2
.end method

.method public blacklist getPwleV2PrimitiveDurationMaxMillis()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 999
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1000
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1004
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1005
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 1012
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1014
    nop

    .line 1015
    return v3

    .line 1006
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getPwleV2PrimitiveDurationMaxMillis is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 1012
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1014
    throw v2
.end method

.method public blacklist getPwleV2PrimitiveDurationMinMillis()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1040
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1043
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1044
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1045
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 1048
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 1052
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1054
    nop

    .line 1055
    return v3

    .line 1046
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getPwleV2PrimitiveDurationMinMillis is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 1052
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1054
    throw v2
.end method

.method public blacklist getQFactor()F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 799
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 800
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 807
    .end local v2    # "_status":Z
    .local v3, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    nop

    .line 810
    return v3

    .line 801
    .end local v3    # "_result":F
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getQFactor is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 807
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    throw v2
.end method

.method public blacklist getResonantFrequency()F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 779
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 780
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 787
    .end local v2    # "_status":Z
    .local v3, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    nop

    .line 790
    return v3

    .line 781
    .end local v3    # "_result":F
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getResonantFrequency is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 787
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    throw v2
.end method

.method public blacklist getSupportedAlwaysOnEffects()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 717
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 722
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 729
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    nop

    .line 732
    return-object v3

    .line 723
    .end local v3    # "_result":[I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getSupportedAlwaysOnEffects is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 729
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    throw v2
.end method

.method public blacklist getSupportedBraking()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 921
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 926
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 930
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 933
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 935
    nop

    .line 936
    return-object v3

    .line 927
    .end local v3    # "_result":[I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getSupportedBraking is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 933
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 935
    throw v2
.end method

.method public blacklist getSupportedEffects()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 566
    .local v2, "_status":Z
    if-eqz v2, :cond_2a

    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_32

    .line 573
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    nop

    .line 576
    return-object v3

    .line 567
    .end local v3    # "_result":[I
    .restart local v2    # "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getSupportedEffects is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 573
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    throw v2
.end method

.method public blacklist getSupportedPrimitives()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 662
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_33

    .line 669
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    nop

    .line 672
    return-object v3

    .line 663
    .end local v3    # "_result":[I
    .restart local v2    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getSupportedPrimitives is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 669
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    throw v2
.end method

.method public blacklist off()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 502
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 506
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2e

    .line 512
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    nop

    .line 515
    return-void

    .line 507
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method off is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 512
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    throw v2
.end method

.method public blacklist on(ILandroid/hardware/vibrator/IVibratorCallback;)V
    .registers 8
    .param p1, "timeoutMs"    # I
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 524
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 525
    .local v2, "_status":Z
    if-eqz v2, :cond_2c

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_34

    .line 531
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    nop

    .line 534
    return-void

    .line 526
    .restart local v2    # "_status":Z
    :cond_2c
    :try_start_2c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method on is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "timeoutMs":I
    .end local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    throw v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 531
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "timeoutMs":I
    .restart local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    throw v2
.end method

.method public blacklist perform(IBLandroid/hardware/vibrator/IVibratorCallback;)I
    .registers 9
    .param p1, "effect"    # I
    .param p2, "strength"    # B
    .param p3, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 544
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 545
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 546
    .local v2, "_status":Z
    if-eqz v2, :cond_33

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_3b

    .line 553
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 555
    nop

    .line 556
    return v3

    .line 547
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_33
    :try_start_33
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method perform is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "effect":I
    .end local p2    # "strength":B
    .end local p3    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    throw v3
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 553
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "effect":I
    .restart local p2    # "strength":B
    .restart local p3    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 555
    throw v2
.end method

.method public blacklist performVendorEffect(Landroid/hardware/vibrator/VendorEffect;Landroid/hardware/vibrator/IVibratorCallback;)V
    .registers 8
    .param p1, "vendorEffect"    # Landroid/hardware/vibrator/VendorEffect;
    .param p2, "callback"    # Landroid/hardware/vibrator/IVibratorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 961
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 964
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 965
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 966
    iget-object v3, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 967
    .local v2, "_status":Z
    if-eqz v2, :cond_2d

    .line 970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_35

    .line 973
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 975
    nop

    .line 976
    return-void

    .line 968
    .restart local v2    # "_status":Z
    :cond_2d
    :try_start_2d
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method performVendorEffect is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "vendorEffect":Landroid/hardware/vibrator/VendorEffect;
    .end local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    throw v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 973
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "vendorEffect":Landroid/hardware/vibrator/VendorEffect;
    .restart local p2    # "callback":Landroid/hardware/vibrator/IVibratorCallback;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 975
    throw v2
.end method

.method public blacklist setAmplitude(F)V
    .registers 7
    .param p1, "amplitude"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 585
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 586
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_31

    .line 592
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    nop

    .line 595
    return-void

    .line 587
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setAmplitude is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "amplitude":F
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 592
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "amplitude":F
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    throw v2
.end method

.method public blacklist setExternalControl(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 603
    iget-object v2, p0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 604
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_31

    .line 610
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    nop

    .line 613
    return-void

    .line 605
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setExternalControl is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .end local p1    # "enabled":Z
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 610
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    .restart local p1    # "enabled":Z
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    throw v2
.end method
