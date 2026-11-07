.class Landroid/hardware/thermal/IThermal$Stub$Proxy;
.super Ljava/lang/Object;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/IThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/IThermal$Stub;
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

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mCachedVersion:I

    .line 328
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 325
    iput-object p1, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 326
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 331
    iget-object v0, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist forecastSkinTemperature(I)F
    .registers 7
    .param p1, "forecastSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 561
    .local v2, "_status":Z
    if-eqz v2, :cond_2e

    .line 564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_36

    .line 568
    .end local v2    # "_status":Z
    .local v3, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    nop

    .line 571
    return v3

    .line 562
    .end local v3    # "_result":F
    .restart local v2    # "_status":Z
    :cond_2e
    :try_start_2e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method forecastSkinTemperature is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "forecastSeconds":I
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 568
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "forecastSeconds":I
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    throw v2
.end method

.method public blacklist getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 345
    .local v2, "_status":Z
    if-eqz v2, :cond_2e

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 349
    sget-object v3, Landroid/hardware/thermal/CoolingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/thermal/CoolingDevice;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_36

    .line 352
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/hardware/thermal/CoolingDevice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    nop

    .line 355
    return-object v3

    .line 346
    .end local v3    # "_result":[Landroid/hardware/thermal/CoolingDevice;
    .restart local v2    # "_status":Z
    :cond_2e
    :try_start_2e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getCoolingDevices is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 352
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    throw v2
.end method

.method public blacklist getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 366
    .local v2, "_status":Z
    if-eqz v2, :cond_31

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 370
    sget-object v3, Landroid/hardware/thermal/CoolingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/thermal/CoolingDevice;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_39

    .line 373
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/hardware/thermal/CoolingDevice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    nop

    .line 376
    return-object v3

    .line 367
    .end local v3    # "_result":[Landroid/hardware/thermal/CoolingDevice;
    .restart local v2    # "_status":Z
    :cond_31
    :try_start_31
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getCoolingDevicesWithType is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "type":I
    throw v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 373
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 335
    sget-object v0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 592
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 593
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 594
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 596
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 598
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 599
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 601
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    goto :goto_3e

    .line 601
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    throw v2

    .line 605
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 591
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

    .line 575
    iget v0, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 576
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 577
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 579
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 580
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 581
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 584
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    goto :goto_38

    .line 584
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    throw v2

    .line 588
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 427
    .local v2, "_status":Z
    if-eqz v2, :cond_2e

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 431
    sget-object v3, Landroid/hardware/thermal/TemperatureThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/thermal/TemperatureThreshold;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_36

    .line 434
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/hardware/thermal/TemperatureThreshold;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    nop

    .line 437
    return-object v3

    .line 428
    .end local v3    # "_result":[Landroid/hardware/thermal/TemperatureThreshold;
    .restart local v2    # "_status":Z
    :cond_2e
    :try_start_2e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getTemperatureThresholds is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 434
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    throw v2
.end method

.method public blacklist getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 448
    .local v2, "_status":Z
    if-eqz v2, :cond_31

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 452
    sget-object v3, Landroid/hardware/thermal/TemperatureThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/thermal/TemperatureThreshold;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_39

    .line 455
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/hardware/thermal/TemperatureThreshold;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    nop

    .line 458
    return-object v3

    .line 449
    .end local v3    # "_result":[Landroid/hardware/thermal/TemperatureThreshold;
    .restart local v2    # "_status":Z
    :cond_31
    :try_start_31
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getTemperatureThresholdsWithType is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "type":I
    throw v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 455
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    throw v2
.end method

.method public blacklist getTemperatures()[Landroid/hardware/thermal/Temperature;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 386
    .local v2, "_status":Z
    if-eqz v2, :cond_2e

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 390
    sget-object v3, Landroid/hardware/thermal/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/thermal/Temperature;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_36

    .line 393
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/hardware/thermal/Temperature;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    nop

    .line 396
    return-object v3

    .line 387
    .end local v3    # "_result":[Landroid/hardware/thermal/Temperature;
    .restart local v2    # "_status":Z
    :cond_2e
    :try_start_2e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getTemperatures is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 393
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    throw v2
.end method

.method public blacklist getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 407
    .local v2, "_status":Z
    if-eqz v2, :cond_31

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 411
    sget-object v3, Landroid/hardware/thermal/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/thermal/Temperature;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_39

    .line 414
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/hardware/thermal/Temperature;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    nop

    .line 417
    return-object v3

    .line 408
    .end local v3    # "_result":[Landroid/hardware/thermal/Temperature;
    .restart local v2    # "_status":Z
    :cond_31
    :try_start_31
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getTemperaturesWithType is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "type":I
    throw v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 414
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw v2
.end method

.method public blacklist registerCoolingDeviceChangedCallbackWithType(Landroid/hardware/thermal/ICoolingDeviceChangedCallback;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/thermal/ICoolingDeviceChangedCallback;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 522
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 524
    .local v2, "_status":Z
    if-eqz v2, :cond_2d

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_35

    .line 530
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 532
    nop

    .line 533
    return-void

    .line 525
    .restart local v2    # "_status":Z
    :cond_2d
    :try_start_2d
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method registerCoolingDeviceChangedCallbackWithType is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/thermal/ICoolingDeviceChangedCallback;
    .end local p2    # "type":I
    throw v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 530
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/thermal/ICoolingDeviceChangedCallback;
    .restart local p2    # "type":I
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 532
    throw v2
.end method

.method public blacklist registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/thermal/IThermalChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 467
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 468
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_31

    .line 474
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 476
    nop

    .line 477
    return-void

    .line 469
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method registerThermalChangedCallback is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/thermal/IThermalChangedCallback;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 474
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/thermal/IThermalChangedCallback;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 476
    throw v2
.end method

.method public blacklist registerThermalChangedCallbackWithType(Landroid/hardware/thermal/IThermalChangedCallback;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/thermal/IThermalChangedCallback;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 487
    .local v2, "_status":Z
    if-eqz v2, :cond_2d

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_35

    .line 493
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    nop

    .line 496
    return-void

    .line 488
    .restart local v2    # "_status":Z
    :cond_2d
    :try_start_2d
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method registerThermalChangedCallbackWithType is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/thermal/IThermalChangedCallback;
    .end local p2    # "type":I
    throw v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 493
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/thermal/IThermalChangedCallback;
    .restart local p2    # "type":I
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    throw v2
.end method

.method public blacklist unregisterCoolingDeviceChangedCallback(Landroid/hardware/thermal/ICoolingDeviceChangedCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/thermal/ICoolingDeviceChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 541
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 542
    .local v2, "_status":Z
    if-eqz v2, :cond_2a

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_32

    .line 548
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
    nop

    .line 551
    return-void

    .line 543
    .restart local v2    # "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method unregisterCoolingDeviceChangedCallback is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/thermal/ICoolingDeviceChangedCallback;
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 548
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/thermal/ICoolingDeviceChangedCallback;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
    throw v2
.end method

.method public blacklist unregisterThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/thermal/IThermalChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/thermal/IThermal$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 504
    iget-object v2, p0, Landroid/hardware/thermal/IThermal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 505
    .local v2, "_status":Z
    if-eqz v2, :cond_2a

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_32

    .line 511
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    nop

    .line 514
    return-void

    .line 506
    .restart local v2    # "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method unregisterThermalChangedCallback is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/thermal/IThermalChangedCallback;
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 511
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermal$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/thermal/IThermalChangedCallback;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v2
.end method
