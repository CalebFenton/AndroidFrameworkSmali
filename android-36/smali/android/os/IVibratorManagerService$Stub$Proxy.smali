.class Landroid/os/IVibratorManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVibratorManagerService.java"

# interfaces
.implements Landroid/os/IVibratorManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 373
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 376
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelVibrate(ILandroid/os/IBinder;)V
    .registers 8
    .param p1, "usageFilter"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 541
    iget-object v2, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 542
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 545
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 547
    nop

    .line 548
    return-void

    .line 545
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 547
    throw v2
.end method

.method public blacklist getCapabilities()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 407
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 411
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    nop

    .line 414
    return v3

    .line 411
    .end local v3    # "_result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 380
    const-string v0, "android.os.IVibratorManagerService"

    return-object v0
.end method

.method public blacklist getVibratorIds()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 390
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 394
    .end local v2    # "_status":Z
    .local v3, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    nop

    .line 397
    return-object v3

    .line 394
    .end local v3    # "_result":[I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    throw v2
.end method

.method public blacklist getVibratorInfo(I)Landroid/os/VibratorInfo;
    .registers 7
    .param p1, "vibratorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-object v2, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 425
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 426
    sget-object v3, Landroid/os/VibratorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibratorInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 429
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/VibratorInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    nop

    .line 432
    return-object v3

    .line 429
    .end local v3    # "_result":Landroid/os/VibratorInfo;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v2
.end method

.method public blacklist isVibrating(I)Z
    .registers 7
    .param p1, "vibratorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 437
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-object v2, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 443
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 447
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    nop

    .line 450
    return v3

    .line 447
    .end local v3    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    throw v2
.end method

.method public blacklist performHapticFeedback(IILjava/lang/String;ILjava/lang/String;II)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "privFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 556
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v1, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_30

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    nop

    .line 569
    return-void

    .line 567
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    throw v1
.end method

.method public blacklist performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "inputDeviceId"    # I
    .param p6, "inputSource"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "privFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 578
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-object v1, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_36

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    nop

    .line 593
    return-void

    .line 591
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    throw v1
.end method

.method public blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 8
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 461
    iget-object v2, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 462
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 466
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    nop

    .line 469
    return v3

    .line 466
    .end local v3    # "_result":Z
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    throw v2
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "vibration"    # Landroid/os/CombinedVibration;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 501
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 502
    iget-object v3, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 503
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 507
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 509
    nop

    .line 510
    return v3

    .line 507
    .end local v3    # "_result":Z
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 509
    throw v2
.end method

.method public blacklist startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;
    .registers 13
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "vibratorIds"    # [I
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/os/vibrator/IVibrationSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 597
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 605
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 606
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 608
    iget-object v3, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 609
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_42

    .line 613
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    nop

    .line 616
    return-object v3

    .line 613
    .end local v3    # "_result":Landroid/os/ICancellationSignal;
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    throw v2
.end method

.method public blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 8
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 477
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 480
    iget-object v2, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 481
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 485
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    nop

    .line 488
    return v3

    .line 485
    .end local v3    # "_result":Z
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    throw v2
.end method

.method public blacklist vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "vibration"    # Landroid/os/CombinedVibration;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.os.IVibratorManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 522
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 523
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 525
    iget-object v3, p0, Landroid/os/IVibratorManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 526
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 529
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    nop

    .line 532
    return-void

    .line 529
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    throw v2
.end method
