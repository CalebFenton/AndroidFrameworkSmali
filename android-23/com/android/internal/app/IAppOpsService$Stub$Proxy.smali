.class Lcom/android/internal/app/IAppOpsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppOpsService.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 303
    iput-object p1, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 301
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 597
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 602
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 603
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 604
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 605
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0x10

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 610
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 613
    return v2

    #@30
    .line 609
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 609
    throw v3
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 325
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 326
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x1

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    .line 331
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 334
    return v2

    #@2c
    .line 330
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2d
    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 330
    throw v3
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 495
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xa

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 500
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 503
    return v2

    #@2a
    .line 499
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 499
    throw v3
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 384
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 385
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 386
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 387
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x4

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 377
    return-void

    #@2b
    .line 390
    :catchall_0
    move-exception v2

    #@2c
    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 390
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 311
    const-string/jumbo v0, "com.android.internal.app.IAppOpsService"

    #@3
    return-object v0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 532
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@17
    .line 533
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xc

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 535
    sget-object v3, Landroid/app/AppOpsManager$PackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v2

    #@28
    .line 538
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 541
    return-object v2

    #@2f
    .line 537
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_0
    move-exception v3

    #@30
    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 537
    throw v3
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 6
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11
    .line 513
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 515
    sget-object v3, Landroid/app/AppOpsManager$PackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 518
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 521
    return-object v2

    #@29
    .line 517
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_0
    move-exception v3

    #@2a
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 517
    throw v3
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 6
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 435
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 440
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 443
    return-object v2

    #@26
    .line 439
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    #@27
    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 439
    throw v3
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 345
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 346
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x2

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    .line 351
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 354
    return v2

    #@2c
    .line 350
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2d
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 350
    throw v3
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 471
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 472
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 473
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 474
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0x9

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 479
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 482
    return v2

    #@30
    .line 478
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 478
    throw v3
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 448
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 451
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 453
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 458
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 461
    return v2

    #@27
    .line 457
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 457
    throw v3
.end method

.method public removeUser(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 663
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x13

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 656
    return-void

    #@23
    .line 666
    :catchall_0
    move-exception v2

    #@24
    .line 667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 666
    throw v2
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 5
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 581
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 583
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 585
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 586
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xf

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 578
    return-void

    #@26
    .line 589
    :catchall_0
    move-exception v2

    #@27
    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 589
    throw v2
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 622
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 623
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 624
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 625
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1d
    .line 626
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/16 v3, 0x11

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 615
    return-void

    #@2f
    .line 629
    :catchall_0
    move-exception v2

    #@30
    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 629
    throw v2
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 567
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 568
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 569
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 570
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0xe

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 560
    return-void

    #@2c
    .line 573
    :catchall_0
    move-exception v2

    #@2d
    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 573
    throw v2
.end method

.method public setUidMode(III)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 550
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 551
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 552
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xd

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 543
    return-void

    #@29
    .line 555
    :catchall_0
    move-exception v2

    #@2a
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 555
    throw v2
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 640
    if-eqz p1, :cond_0

    #@10
    .line 641
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 642
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 647
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 648
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x12

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 634
    return-void

    #@2d
    .line 645
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 651
    :catchall_0
    move-exception v2

    #@33
    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 651
    throw v2
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 366
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 367
    iget-object v3, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x3

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@24
    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v2

    #@28
    .line 372
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 375
    return v2

    #@2f
    .line 371
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@30
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 371
    throw v3
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 403
    if-eqz p3, :cond_0

    #@17
    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v2

    #@1b
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e
    .line 404
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x5

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 395
    return-void

    #@2f
    .line 407
    :catchall_0
    move-exception v2

    #@30
    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 407
    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 418
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 419
    iget-object v2, p0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x6

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 412
    return-void

    #@29
    .line 422
    :catchall_0
    move-exception v2

    #@2a
    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 422
    throw v2
.end method
