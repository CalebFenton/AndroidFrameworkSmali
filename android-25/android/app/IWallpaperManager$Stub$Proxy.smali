.class Landroid/app/IWallpaperManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager$Stub;
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
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 310
    iput-object p1, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 308
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I
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
    .line 510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 513
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 514
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x7

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 505
    return-void

    #@28
    .line 517
    :catchall_0
    move-exception v2

    #@29
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 517
    throw v2
.end method

.method public getHeightHint()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 588
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xb

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 593
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 596
    return v2

    #@24
    .line 592
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 592
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 318
    const-string/jumbo v0, "android.app.IWallpaperManager"

    #@3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 633
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 638
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 641
    return-object v2

    #@24
    .line 637
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 637
    throw v3
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "which"    # I
    .param p3, "outParams"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 434
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IWallpaperManagerCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 435
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 436
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 437
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x4

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 440
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    #@36
    .line 445
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 446
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 450
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 453
    return-object v2

    #@46
    .line 443
    :cond_2
    const/4 v2, 0x0

    #@47
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@48
    .line 449
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    #@49
    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 449
    throw v3
.end method

.method public getWallpaperIdForUser(II)I
    .locals 6
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 462
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 463
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 464
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 469
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 472
    return v2

    #@29
    .line 468
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 468
    throw v3
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 487
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 490
    sget-object v3, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 497
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 500
    return-object v2

    #@30
    .line 493
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/app/WallpaperInfo;
    goto :goto_0

    #@32
    .line 496
    .end local v2    # "_result":Landroid/app/WallpaperInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 496
    throw v3
.end method

.method public getWidthHint()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 567
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 570
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 571
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 573
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 576
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 579
    return v2

    #@24
    .line 575
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 575
    throw v3
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 533
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 538
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 541
    return v2

    #@2a
    .line 535
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 537
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 537
    throw v3
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 690
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 691
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 692
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x10

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 693
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 697
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 700
    return v2

    #@2a
    .line 694
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 696
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 696
    throw v3
.end method

.method public isWallpaperBackupEligible(II)Z
    .locals 6
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 714
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x11

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 719
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 722
    return v2

    #@2d
    .line 716
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 718
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 718
    throw v3
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 671
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xf

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 673
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 676
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 679
    return v2

    #@2a
    .line 673
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 675
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 675
    throw v3
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 555
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 556
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x9

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 547
    return-void

    #@29
    .line 559
    :catchall_0
    move-exception v2

    #@2a
    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 559
    throw v2
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 604
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 607
    if-eqz p1, :cond_0

    #@10
    .line 608
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 609
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 614
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 615
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xc

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 601
    return-void

    #@2d
    .line 612
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
    .line 618
    :catchall_0
    move-exception v2

    #@33
    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 618
    throw v2
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 6
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 735
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IWallpaperManagerCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 736
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x12

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    const/4 v2, 0x1

    #@2a
    .line 741
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 744
    return v2

    #@31
    .line 738
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@32
    .restart local v2    # "_result":Z
    goto :goto_0

    #@33
    .line 740
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@34
    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 740
    throw v3
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cropHint"    # Landroid/graphics/Rect;
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "which"    # I
    .param p7, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v6, "android.app.IWallpaperManager"

    #@e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 345
    if-eqz p3, :cond_2

    #@19
    .line 346
    const/4 v6, 0x1

    #@1a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 347
    const/4 v6, 0x0

    #@1e
    invoke-virtual {p3, v0, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 352
    :goto_0
    if-eqz p4, :cond_3

    #@23
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 353
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 354
    if-eqz p7, :cond_0

    #@2b
    invoke-interface {p7}, Landroid/app/IWallpaperManagerCallback;->asBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v3

    #@2f
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@32
    .line 355
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 356
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/4 v4, 0x1

    #@38
    const/4 v5, 0x0

    #@39
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3c
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3f
    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_4

    #@45
    .line 359
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    #@4d
    .line 364
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_1

    #@53
    .line 365
    invoke-virtual {p5, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 369
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5c
    .line 372
    return-object v2

    #@5d
    .line 350
    :cond_2
    const/4 v6, 0x0

    #@5e
    :try_start_1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    goto :goto_0

    #@62
    .line 368
    :catchall_0
    move-exception v3

    #@63
    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@66
    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@69
    .line 368
    throw v3

    #@6a
    :cond_3
    move v4, v5

    #@6b
    .line 352
    goto :goto_1

    #@6c
    .line 362
    :cond_4
    const/4 v2, 0x0

    #@6d
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_2
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 409
    if-eqz p1, :cond_0

    #@10
    .line 410
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 411
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 416
    :goto_0
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 403
    return-void

    #@29
    .line 414
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 419
    :catchall_0
    move-exception v2

    #@2f
    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 419
    throw v2
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
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
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 383
    if-eqz p1, :cond_0

    #@10
    .line 384
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 385
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 390
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 391
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 392
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x2

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 377
    return-void

    #@2f
    .line 388
    :cond_0
    const/4 v2, 0x0

    #@30
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 395
    :catchall_0
    move-exception v2

    #@35
    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 395
    throw v2
.end method

.method public settingsRestored()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 651
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 652
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xe

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 646
    return-void

    #@20
    .line 655
    :catchall_0
    move-exception v2

    #@21
    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 655
    throw v2
.end method
