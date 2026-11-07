.class Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioVoiceIndication.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;
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

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mCachedVersion:I

    .line 420
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 417
    iput-object p1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 418
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 423
    iget-object v0, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "isGsm"    # Z
    .param p3, "record"    # Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 450
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 451
    .local v1, "_status":Z
    if-eqz v1, :cond_26

    .line 456
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    nop

    .line 458
    return-void

    .line 452
    .restart local v1    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method callRing is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "isGsm":Z
    .end local p3    # "record":Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    throw v2
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 456
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "isGsm":Z
    .restart local p3    # "record":Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    throw v1
.end method

.method public blacklist callStateChanged(I)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 471
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 474
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 479
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    nop

    .line 481
    return-void

    .line 475
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method callStateChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 479
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw v1
.end method

.method public blacklist cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "callWaitingRecord"    # Landroid/hardware/radio/voice/CdmaCallWaiting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 493
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 496
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 497
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 502
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    nop

    .line 504
    return-void

    .line 498
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cdmaCallWaiting is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "callWaitingRecord":Landroid/hardware/radio/voice/CdmaCallWaiting;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 502
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "callWaitingRecord":Landroid/hardware/radio/voice/CdmaCallWaiting;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    throw v1
.end method

.method public blacklist cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "records"    # [Landroid/hardware/radio/voice/CdmaInformationRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 517
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 520
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 521
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 526
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    nop

    .line 528
    return-void

    .line 522
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cdmaInfoRec is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "records":[Landroid/hardware/radio/voice/CdmaInformationRecord;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 526
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "records":[Landroid/hardware/radio/voice/CdmaInformationRecord;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    throw v1
.end method

.method public blacklist cdmaOtaProvisionStatus(II)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 540
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2b

    .line 544
    .local v1, "_status":Z
    if-eqz v1, :cond_23

    .line 549
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
    nop

    .line 551
    return-void

    .line 545
    .restart local v1    # "_status":Z
    :cond_23
    :try_start_23
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cdmaOtaProvisionStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "status":I
    throw v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 549
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "status":I
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 550
    throw v1
.end method

.method public blacklist currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "emergencyNumberList"    # [Landroid/hardware/radio/voice/EmergencyNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 578
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 581
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 582
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 587
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    nop

    .line 589
    return-void

    .line 583
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method currentEmergencyNumberList is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "emergencyNumberList":[Landroid/hardware/radio/voice/EmergencyNumber;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 587
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "emergencyNumberList":[Landroid/hardware/radio/voice/EmergencyNumber;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    throw v1
.end method

.method public blacklist enterEmergencyCallbackMode(I)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 600
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 603
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 608
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    nop

    .line 610
    return-void

    .line 604
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method enterEmergencyCallbackMode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 608
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    throw v1
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 621
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 624
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 629
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    nop

    .line 631
    return-void

    .line 625
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method exitEmergencyCallbackMode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 629
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 427
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 806
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 807
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 808
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 810
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    iget-object v2, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 812
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 815
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 817
    goto :goto_3e

    .line 815
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 817
    throw v2

    .line 819
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 805
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

    .line 789
    iget v0, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 790
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 791
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 793
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 794
    iget-object v2, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 795
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 798
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    goto :goto_38

    .line 798
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    throw v2

    .line 802
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist indicateRingbackTone(IZ)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "start"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 642
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 645
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 646
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 651
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 652
    nop

    .line 653
    return-void

    .line 647
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method indicateRingbackTone is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "start":Z
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 651
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "start":Z
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 652
    throw v1
.end method

.method public blacklist onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "ss"    # Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 664
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 667
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 668
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 673
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 674
    nop

    .line 675
    return-void

    .line 669
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onSupplementaryServiceIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "ss":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 673
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "ss":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 674
    throw v1
.end method

.method public blacklist onUssd(IILjava/lang/String;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "modeType"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 688
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 693
    .local v1, "_status":Z
    if-eqz v1, :cond_27

    .line 698
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 699
    nop

    .line 700
    return-void

    .line 694
    .restart local v1    # "_status":Z
    :cond_27
    :try_start_27
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onUssd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "modeType":I
    .end local p3    # "msg":Ljava/lang/String;
    throw v2
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 698
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "modeType":I
    .restart local p3    # "msg":Ljava/lang/String;
    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 699
    throw v1
.end method

.method public blacklist resendIncallMute(I)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 710
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 713
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 718
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    nop

    .line 720
    return-void

    .line 714
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method resendIncallMute is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 718
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    throw v1
.end method

.method public blacklist srvccStateNotify(II)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 731
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 735
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 740
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 741
    nop

    .line 742
    return-void

    .line 736
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method srvccStateNotify is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "state":I
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 740
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "state":I
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 741
    throw v1
.end method

.method public blacklist stkCallControlAlphaNotify(ILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "alpha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 753
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 757
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 762
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    nop

    .line 764
    return-void

    .line 758
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method stkCallControlAlphaNotify is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "alpha":Ljava/lang/String;
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 762
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "alpha":Ljava/lang/String;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    throw v1
.end method

.method public blacklist stkCallSetup(IJ)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 775
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 778
    iget-object v1, p0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 779
    .local v1, "_status":Z
    if-eqz v1, :cond_24

    .line 784
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    nop

    .line 786
    return-void

    .line 780
    .restart local v1    # "_status":Z
    :cond_24
    :try_start_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method stkCallSetup is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "timeout":J
    throw v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 784
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "timeout":J
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    throw v1
.end method
