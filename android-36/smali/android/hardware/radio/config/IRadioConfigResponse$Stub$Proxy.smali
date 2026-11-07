.class Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfigResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfigResponse$Stub;
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

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mCachedVersion:I

    .line 369
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 366
    iput-object p1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 367
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getHalDeviceCapabilitiesResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "modemReducedFeatureSet1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 405
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2b

    .line 406
    .local v1, "_status":Z
    if-eqz v1, :cond_23

    .line 411
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    nop

    .line 413
    return-void

    .line 407
    .restart local v1    # "_status":Z
    :cond_23
    :try_start_23
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getHalDeviceCapabilitiesResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "modemReducedFeatureSet1":Z
    throw v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 411
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "modemReducedFeatureSet1":Z
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 376
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 691
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 692
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 693
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 695
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 696
    iget-object v2, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 697
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 698
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 700
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    goto :goto_3e

    .line 700
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    throw v2

    .line 704
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 690
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

    .line 674
    iget v0, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 675
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 676
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 678
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 679
    iget-object v2, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 680
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 683
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 685
    goto :goto_38

    .line 683
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 685
    throw v2

    .line 687
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;B)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "numOfLiveModems"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 428
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 431
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 432
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 437
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    nop

    .line 439
    return-void

    .line 433
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getNumOfLiveModemsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "numOfLiveModems":B
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 437
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "numOfLiveModems":B
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    throw v1
.end method

.method public blacklist getPhoneCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/config/PhoneCapability;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "phoneCapability"    # Landroid/hardware/radio/config/PhoneCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 455
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 457
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 458
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 459
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 464
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    nop

    .line 466
    return-void

    .line 460
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getPhoneCapabilityResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "phoneCapability":Landroid/hardware/radio/config/PhoneCapability;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 464
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "phoneCapability":Landroid/hardware/radio/config/PhoneCapability;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    throw v1
.end method

.method public blacklist getSimSlotsStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimSlotStatus;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "slotStatus"    # [Landroid/hardware/radio/config/SimSlotStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 485
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 487
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 488
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 489
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 494
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    nop

    .line 496
    return-void

    .line 490
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSimSlotsStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "slotStatus":[Landroid/hardware/radio/config/SimSlotStatus;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 494
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "slotStatus":[Landroid/hardware/radio/config/SimSlotStatus;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    throw v1
.end method

.method public blacklist getSimTypeInfoResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimTypeInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "simTypeInfo"    # [Landroid/hardware/radio/config/SimTypeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 630
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 631
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 632
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 633
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 634
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 639
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 640
    nop

    .line 641
    return-void

    .line 635
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSimTypeInfoResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "simTypeInfo":[Landroid/hardware/radio/config/SimTypeInfo;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 639
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "simTypeInfo":[Landroid/hardware/radio/config/SimTypeInfo;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 640
    throw v1
.end method

.method public blacklist getSimultaneousCallingSupportResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enabledLogicalSlots"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 598
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 599
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 600
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 601
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 602
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 607
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    nop

    .line 609
    return-void

    .line 603
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSimultaneousCallingSupportResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "enabledLogicalSlots":[I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 607
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "enabledLogicalSlots":[I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    throw v1
.end method

.method public blacklist setNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 510
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 511
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 512
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 513
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 518
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    nop

    .line 520
    return-void

    .line 514
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setNumOfLiveModemsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 518
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    throw v1
.end method

.method public blacklist setPreferredDataModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 535
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 536
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 537
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 538
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 543
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-void

    .line 539
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setPreferredDataModemResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 543
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v1
.end method

.method public blacklist setSimSlotsMappingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 563
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 564
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 565
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 566
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 571
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 572
    nop

    .line 573
    return-void

    .line 567
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setSimSlotsMappingResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 571
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 572
    throw v1
.end method

.method public blacklist setSimTypeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 661
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 663
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 664
    .local v1, "_status":Z
    if-eqz v1, :cond_22

    .line 669
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    nop

    .line 671
    return-void

    .line 665
    .restart local v1    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setSimTypeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 669
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw v1
.end method
