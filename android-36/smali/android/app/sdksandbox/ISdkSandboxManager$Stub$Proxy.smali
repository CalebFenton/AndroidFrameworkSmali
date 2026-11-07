.class Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISdkSandboxManager.java"

# interfaces
.implements Landroid/app/sdksandbox/ISdkSandboxManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/ISdkSandboxManager$Stub;
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

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 398
    return-void
.end method


# virtual methods
.method public blacklist addSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V
    .registers 9
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p3, "callback"    # Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 416
    iget-object v3, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 417
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 420
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    nop

    .line 423
    return-void

    .line 420
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getAdServicesManager()Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 656
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 661
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 665
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 667
    nop

    .line 668
    return-object v3

    .line 665
    .end local v3    # "_result":Landroid/os/IBinder;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 667
    throw v2
.end method

.method public blacklist getAppOwnedSdkSandboxInterfaces(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;
    .registers 8
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/sdksandbox/SandboxLatencyInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 533
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 539
    iget-object v3, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 540
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 541
    sget-object v3, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 544
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    nop

    .line 547
    return-object v3

    .line 544
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;>;"
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 405
    const-string v0, "android.app.sdksandbox.ISdkSandboxManager"

    return-object v0
.end method

.method public blacklist getSandboxedSdks(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;
    .registers 8
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/sdksandbox/SandboxLatencyInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 558
    iget-object v3, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 559
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 560
    sget-object v3, Landroid/app/sdksandbox/SandboxedSdk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 563
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/SandboxedSdk;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    nop

    .line 566
    return-object v3

    .line 563
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/SandboxedSdk;>;"
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    throw v2
.end method

.method public blacklist isSdkSandboxServiceRunning(Ljava/lang/String;)Z
    .registers 7
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 589
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 592
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 596
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 598
    nop

    .line 599
    return v3

    .line 596
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 598
    throw v2
.end method

.method public blacklist loadSdk(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/ILoadSdkCallback;)V
    .registers 12
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "appProcessToken"    # Landroid/os/IBinder;
    .param p3, "sdkName"    # Ljava/lang/String;
    .param p4, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "callback"    # Landroid/app/sdksandbox/ILoadSdkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 479
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 482
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 484
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 485
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 486
    iget-object v1, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2d

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    nop

    .line 491
    return-void

    .line 489
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    throw v1
.end method

.method public blacklist logSandboxActivityApiLatency(III)V
    .registers 9
    .param p1, "method"    # I
    .param p2, "callResult"    # I
    .param p3, "latencyMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object v2, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 644
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    nop

    .line 647
    return-void

    .line 644
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    throw v2
.end method

.method public blacklist logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 7
    .param p1, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 623
    iget-object v3, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 624
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 627
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    nop

    .line 630
    return-void

    .line 627
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    throw v2
.end method

.method public blacklist registerAppOwnedSdkSandboxInterface(Ljava/lang/String;Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 9
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "appOwnedSdkSandboxInterface"    # Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 449
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 450
    iget-object v3, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 451
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 454
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    nop

    .line 457
    return-void

    .line 454
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    throw v2
.end method

.method public blacklist removeSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V
    .registers 9
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p3, "callback"    # Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 432
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 433
    iget-object v3, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 434
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 437
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    nop

    .line 440
    return-void

    .line 437
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    throw v2
.end method

.method public blacklist requestSurfacePackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IIILandroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/IRequestSurfacePackageCallback;)V
    .registers 15
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sdkName"    # Ljava/lang/String;
    .param p3, "hostToken"    # Landroid/os/IBinder;
    .param p4, "displayId"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p8, "params"    # Landroid/os/Bundle;
    .param p9, "callback"    # Landroid/app/sdksandbox/IRequestSurfacePackageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 514
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 518
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 522
    invoke-virtual {v0, p8, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 523
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 524
    iget-object v1, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_36

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    nop

    .line 529
    return-void

    .line 527
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v1
.end method

.method public blacklist stopSdkSandbox(Ljava/lang/String;)V
    .registers 7
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 604
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 609
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 612
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 614
    nop

    .line 615
    return-void

    .line 612
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 614
    throw v2
.end method

.method public blacklist syncDataFromClient(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/SharedPreferencesUpdate;Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;)V
    .registers 10
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p3, "update"    # Landroid/app/sdksandbox/SharedPreferencesUpdate;
    .param p4, "callback"    # Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 575
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 576
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 577
    iget-object v1, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 581
    nop

    .line 582
    return-void

    .line 580
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 581
    throw v1
.end method

.method public blacklist unloadSdk(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 9
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sdkName"    # Ljava/lang/String;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 501
    iget-object v3, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 502
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 505
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    nop

    .line 508
    return-void

    .line 505
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    throw v2
.end method

.method public blacklist unregisterAppOwnedSdkSandboxInterface(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 9
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 463
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 467
    iget-object v3, p0, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 468
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 471
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    nop

    .line 474
    return-void

    .line 471
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    throw v2
.end method
