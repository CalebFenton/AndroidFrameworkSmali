.class Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBiometricAuthenticator.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
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

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 352
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 473
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 475
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 476
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 479
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    nop

    .line 482
    return-void

    .line 479
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    throw v2
.end method

.method public blacklist createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 8
    .param p1, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 365
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 372
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/ITestSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 376
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    nop

    .line 379
    return-object v3

    .line 376
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw v2
.end method

.method public blacklist dumpSensorServiceStateProto(Z)[B
    .registers 7
    .param p1, "clearSchedulerBuffer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 410
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 414
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    nop

    .line 417
    return-object v3

    .line 414
    .end local v3    # "_result":[B
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw v2
.end method

.method public blacklist getAuthenticatorId(I)J
    .registers 7
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 568
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 572
    .end local v2    # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    nop

    .line 575
    return-wide v3

    .line 572
    .end local v3    # "_result":J
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 359
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    return-object v0
.end method

.method public blacklist getLockoutModeForUser(I)I
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 532
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 536
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    nop

    .line 539
    return v3

    .line 536
    .end local v3    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    throw v2
.end method

.method public blacklist getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .registers 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 391
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 392
    sget-object v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/SensorPropertiesInternal;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 395
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 397
    nop

    .line 398
    return-object v3

    .line 395
    .end local v3    # "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 397
    throw v2
.end method

.method public blacklist hasEnrolledTemplates(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 509
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 513
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 517
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    nop

    .line 520
    return v3

    .line 517
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    throw v2
.end method

.method public blacklist invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 550
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 551
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 554
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    nop

    .line 557
    return-void

    .line 554
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    throw v2
.end method

.method public blacklist isHardwareDetected(Ljava/lang/String;)Z
    .registers 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 493
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 497
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return v3

    .line 497
    .end local v3    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    throw v2
.end method

.method public blacklist prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V
    .registers 30
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationId"    # J
    .param p5, "userId"    # I
    .param p6, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "requestId"    # J
    .param p10, "cookie"    # I
    .param p11, "allowBackgroundAuthentication"    # Z
    .param p12, "isForLegacyFingerprintManager"    # Z
    .param p13, "isMandatoryBiometrics"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 427
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 429
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_6f

    .line 432
    move-wide/from16 v5, p3

    :try_start_1d
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_6d

    .line 433
    move/from16 v7, p5

    :try_start_22
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_6b

    .line 434
    move-object/from16 v8, p6

    :try_start_27
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_69

    .line 435
    move-object/from16 v9, p7

    :try_start_2c
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_67

    .line 436
    move-wide/from16 v10, p8

    :try_start_31
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_65

    .line 437
    move/from16 v12, p10

    :try_start_36
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_63

    .line 438
    move/from16 v13, p11

    :try_start_3b
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_61

    .line 439
    move/from16 v14, p12

    :try_start_40
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_5f

    .line 440
    move/from16 v15, p13

    :try_start_45
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 441
    move-object/from16 v3, p0

    iget-object v0, v3, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 442
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_5d

    .line 445
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    nop

    .line 448
    return-void

    .line 445
    :catchall_5d
    move-exception v0

    goto :goto_82

    :catchall_5f
    move-exception v0

    goto :goto_80

    :catchall_61
    move-exception v0

    goto :goto_7e

    :catchall_63
    move-exception v0

    goto :goto_7c

    :catchall_65
    move-exception v0

    goto :goto_7a

    :catchall_67
    move-exception v0

    goto :goto_78

    :catchall_69
    move-exception v0

    goto :goto_76

    :catchall_6b
    move-exception v0

    goto :goto_74

    :catchall_6d
    move-exception v0

    goto :goto_72

    :catchall_6f
    move-exception v0

    move-wide/from16 v5, p3

    :goto_72
    move/from16 v7, p5

    :goto_74
    move-object/from16 v8, p6

    :goto_76
    move-object/from16 v9, p7

    :goto_78
    move-wide/from16 v10, p8

    :goto_7a
    move/from16 v12, p10

    :goto_7c
    move/from16 v13, p11

    :goto_7e
    move/from16 v14, p12

    :goto_80
    move/from16 v15, p13

    :goto_82
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    throw v0
.end method

.method public blacklist resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hardwareAuthToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 585
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 588
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 589
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

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
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    throw v2
.end method

.method public blacklist startPreparedClient(I)V
    .registers 7
    .param p1, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 458
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 461
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    nop

    .line 464
    return-void

    .line 461
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    throw v2
.end method
