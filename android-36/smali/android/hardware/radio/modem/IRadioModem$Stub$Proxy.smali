.class Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioModem.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModem$Stub;
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

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mCachedVersion:I

    .line 537
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 534
    iput-object p1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 535
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 540
    iget-object v0, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist enableModem(IZ)V
    .registers 7
    .param p1, "serial"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 569
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 570
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 575
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    nop

    .line 577
    return-void

    .line 571
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method enableModem is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "on":Z
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 575
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "on":Z
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    throw v1
.end method

.method public blacklist getBasebandVersion(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 591
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 594
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 599
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    nop

    .line 601
    return-void

    .line 595
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getBasebandVersion is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 599
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    throw v1
.end method

.method public blacklist getDeviceIdentity(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 618
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 621
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 626
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 627
    nop

    .line 628
    return-void

    .line 622
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getDeviceIdentity is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 626
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 627
    throw v1
.end method

.method public blacklist getHardwareConfig(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 642
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 645
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 650
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    nop

    .line 652
    return-void

    .line 646
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getHardwareConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 650
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    throw v1
.end method

.method public blacklist getImei(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1020
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1023
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 1028
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1029
    nop

    .line 1030
    return-void

    .line 1024
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getImei is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1028
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1029
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 544
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 1050
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1051
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1052
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 1054
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1055
    iget-object v2, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1056
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 1059
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1061
    goto :goto_3e

    .line 1059
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1061
    throw v2

    .line 1063
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 1049
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

    .line 1033
    iget v0, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 1034
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1035
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1037
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1039
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 1042
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    goto :goto_38

    .line 1042
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    throw v2

    .line 1046
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getModemActivityInfo(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 668
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 671
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 676
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    nop

    .line 678
    return-void

    .line 672
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getModemActivityInfo is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 676
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    throw v1
.end method

.method public blacklist getModemStackStatus(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 693
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 696
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 701
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    nop

    .line 703
    return-void

    .line 697
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getModemStackStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 701
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    throw v1
.end method

.method public blacklist getRadioCapability(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 717
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 720
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 725
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    nop

    .line 727
    return-void

    .line 721
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getRadioCapability is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 725
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    throw v1
.end method

.method public blacklist nvReadItem(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "itemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 743
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 747
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 752
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    nop

    .line 754
    return-void

    .line 748
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method nvReadItem is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "itemId":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 752
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "itemId":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    throw v1
.end method

.method public blacklist nvResetConfig(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "resetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 770
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 774
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 779
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    nop

    .line 781
    return-void

    .line 775
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method nvResetConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "resetType":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 779
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "resetType":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    throw v1
.end method

.method public blacklist nvWriteCdmaPrl(I[B)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "prl"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 799
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 802
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 803
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 808
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    nop

    .line 810
    return-void

    .line 804
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method nvWriteCdmaPrl is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "prl":[B
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 808
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "prl":[B
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    throw v1
.end method

.method public blacklist nvWriteItem(ILandroid/hardware/radio/modem/NvWriteItem;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "item"    # Landroid/hardware/radio/modem/NvWriteItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 826
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 829
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 830
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 835
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 836
    nop

    .line 837
    return-void

    .line 831
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method nvWriteItem is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "item":Landroid/hardware/radio/modem/NvWriteItem;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 835
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "item":Landroid/hardware/radio/modem/NvWriteItem;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 836
    throw v1
.end method

.method public blacklist requestShutdown(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 852
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 855
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 860
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    nop

    .line 862
    return-void

    .line 856
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method requestShutdown is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 860
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw v1
.end method

.method public blacklist responseAcknowledgement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 874
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 875
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_26

    .line 876
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 881
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    nop

    .line 883
    return-void

    .line 877
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method responseAcknowledgement is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 881
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    throw v1
.end method

.method public blacklist sendDeviceState(IIZ)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "deviceStateType"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 900
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 904
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 905
    .local v1, "_status":Z
    if-eqz v1, :cond_27

    .line 910
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    nop

    .line 912
    return-void

    .line 906
    .restart local v1    # "_status":Z
    :cond_27
    :try_start_27
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendDeviceState is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "deviceStateType":I
    .end local p3    # "state":Z
    throw v2
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 910
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "deviceStateType":I
    .restart local p3    # "state":Z
    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    throw v1
.end method

.method public blacklist setRadioCapability(ILandroid/hardware/radio/modem/RadioCapability;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "rc"    # Landroid/hardware/radio/modem/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 929
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 932
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 933
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 938
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 939
    nop

    .line 940
    return-void

    .line 934
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setRadioCapability is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "rc":Landroid/hardware/radio/modem/RadioCapability;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 938
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "rc":Landroid/hardware/radio/modem/RadioCapability;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 939
    throw v1
.end method

.method public blacklist setRadioPower(IZZZ)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "powerOn"    # Z
    .param p3, "forEmergencyCall"    # Z
    .param p4, "preferredForEmergencyCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 969
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 972
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 973
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 974
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_32

    .line 975
    .local v1, "_status":Z
    if-eqz v1, :cond_2a

    .line 980
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 981
    nop

    .line 982
    return-void

    .line 976
    .restart local v1    # "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setRadioPower is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "powerOn":Z
    .end local p3    # "forEmergencyCall":Z
    .end local p4    # "preferredForEmergencyCall":Z
    throw v2
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 980
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "powerOn":Z
    .restart local p3    # "forEmergencyCall":Z
    .restart local p4    # "preferredForEmergencyCall":Z
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 981
    throw v1
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V
    .registers 8
    .param p1, "radioModemResponse"    # Landroid/hardware/radio/modem/IRadioModemResponse;
    .param p2, "radioModemIndication"    # Landroid/hardware/radio/modem/IRadioModemIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 993
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 997
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 998
    iget-object v1, p0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 999
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 1004
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    nop

    .line 1006
    return-void

    .line 1000
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setResponseFunctions is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .end local p1    # "radioModemResponse":Landroid/hardware/radio/modem/IRadioModemResponse;
    .end local p2    # "radioModemIndication":Landroid/hardware/radio/modem/IRadioModemIndication;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1004
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    .restart local p1    # "radioModemResponse":Landroid/hardware/radio/modem/IRadioModemResponse;
    .restart local p2    # "radioModemIndication":Landroid/hardware/radio/modem/IRadioModemIndication;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    throw v1
.end method
