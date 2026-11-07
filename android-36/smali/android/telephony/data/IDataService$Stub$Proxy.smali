.class Landroid/telephony/data/IDataService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataService.java"

# interfaces
.implements Landroid/telephony/data/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataService$Stub;
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

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 362
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "cid"    # I
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 520
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 524
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    nop

    .line 529
    return-void

    .line 527
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v1
.end method

.method public greylist-max-o createDataServiceProvider(I)V
    .registers 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 375
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1c

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 381
    nop

    .line 382
    return-void

    .line 380
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 381
    throw v1
.end method

.method public greylist-max-o deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 427
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    nop

    .line 432
    return-void

    .line 430
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 369
    const-string v0, "android.telephony.data.IDataService"

    return-object v0
.end method

.method public greylist-max-o registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 480
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 483
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    nop

    .line 488
    return-void

    .line 486
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    throw v1
.end method

.method public blacklist registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 537
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    nop

    .line 542
    return-void

    .line 540
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    throw v1
.end method

.method public greylist-max-o removeDataServiceProvider(I)V
    .registers 7
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 387
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    nop

    .line 394
    return-void

    .line 392
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw v1
.end method

.method public blacklist requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 467
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 470
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    nop

    .line 475
    return-void

    .line 473
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    throw v1
.end method

.method public blacklist requestNetworkValidation(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "cid"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 560
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 564
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    nop

    .line 569
    return-void

    .line 567
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    throw v1
.end method

.method public greylist-max-o setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 10
    .param p1, "slotId"    # I
    .param p3, "isRoaming"    # Z
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/IDataServiceCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    .local p2, "dps":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 456
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 457
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    nop

    .line 462
    return-void

    .line 460
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    throw v1
.end method

.method public greylist-max-o setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 437
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 440
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 441
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 442
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    nop

    .line 447
    return-void

    .line 445
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    throw v1
.end method

.method public blacklist setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 29
    .param p1, "slotId"    # I
    .param p2, "accessNetwork"    # I
    .param p3, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p4, "isRoaming"    # Z
    .param p5, "allowRoaming"    # Z
    .param p6, "reason"    # I
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "pduSessionId"    # I
    .param p9, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p10, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;
    .param p11, "matchAllRuleAllowed"    # Z
    .param p12, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 399
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.telephony.data.IDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 400
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    move/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_83

    .line 402
    const/4 v0, 0x0

    move-object/from16 v4, p3

    :try_start_1a
    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_7f

    .line 403
    move/from16 v5, p4

    :try_start_1f
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_7b

    .line 404
    move/from16 v6, p5

    :try_start_24
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_77

    .line 405
    move/from16 v7, p6

    :try_start_29
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_73

    .line 406
    move-object/from16 v8, p7

    :try_start_2e
    invoke-virtual {v1, v8, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_6f

    .line 407
    move/from16 v9, p8

    :try_start_33
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_6b

    .line 408
    move-object/from16 v10, p9

    :try_start_38
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_67

    .line 409
    move-object/from16 v11, p10

    :try_start_3d
    invoke-virtual {v1, v11, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_63

    .line 410
    move/from16 v12, p11

    :try_start_42
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5f

    .line 411
    move-object/from16 v13, p12

    :try_start_47
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5b

    .line 412
    move-object/from16 v14, p0

    :try_start_4c
    iget-object v0, v14, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v3, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_59

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_59
    move-exception v0

    goto :goto_9a

    :catchall_5b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9a

    :catchall_5f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_98

    :catchall_63
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_96

    :catchall_67
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_94

    :catchall_6b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_92

    :catchall_6f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_90

    :catchall_73
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8e

    :catchall_77
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8c

    :catchall_7b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8a

    :catchall_7f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_88

    :catchall_83
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_88
    move/from16 v5, p4

    :goto_8a
    move/from16 v6, p5

    :goto_8c
    move/from16 v7, p6

    :goto_8e
    move-object/from16 v8, p7

    :goto_90
    move/from16 v9, p8

    :goto_92
    move-object/from16 v10, p9

    :goto_94
    move-object/from16 v11, p10

    :goto_96
    move/from16 v12, p11

    :goto_98
    move-object/from16 v13, p12

    :goto_9a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw v0
.end method

.method public blacklist startHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "cid"    # I
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 506
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 510
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    nop

    .line 515
    return-void

    .line 513
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    throw v1
.end method

.method public greylist-max-o unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 493
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 496
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    nop

    .line 501
    return-void

    .line 499
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    throw v1
.end method

.method public blacklist unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Landroid/telephony/data/IDataService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 547
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 550
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    throw v1
.end method
