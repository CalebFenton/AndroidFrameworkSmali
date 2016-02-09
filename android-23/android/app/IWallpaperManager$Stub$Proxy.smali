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
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 230
    iput-object p1, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 228
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearWallpaper(Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 380
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x6

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 373
    return-void

    #@22
    .line 383
    :catchall_0
    move-exception v2

    #@23
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 383
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
    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 460
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 465
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 468
    return v2

    #@24
    .line 464
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 464
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 238
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
    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 505
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 510
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 513
    return-object v2

    #@24
    .line 509
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 509
    throw v3
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 326
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IWallpaperManagerCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 327
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x4

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 330
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    #@30
    .line 335
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 336
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 340
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 343
    return-object v2

    #@40
    .line 333
    :cond_2
    const/4 v2, 0x0

    #@41
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@42
    .line 339
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    #@43
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 339
    throw v3
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 355
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 358
    sget-object v3, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 365
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 368
    return-object v2

    #@2d
    .line 361
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/app/WallpaperInfo;
    goto :goto_0

    #@2f
    .line 364
    .end local v2    # "_result":Landroid/app/WallpaperInfo;
    :catchall_0
    move-exception v3

    #@30
    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 364
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
    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 440
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 445
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 448
    return v2

    #@24
    .line 444
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 444
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
    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 399
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 404
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 407
    return v2

    #@29
    .line 401
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 403
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 403
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
    .line 537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 543
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xe

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 544
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 545
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
    .line 548
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 551
    return v2

    #@2a
    .line 545
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 547
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 547
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
    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 420
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 421
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 422
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x8

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 413
    return-void

    #@29
    .line 425
    :catchall_0
    move-exception v2

    #@2a
    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 425
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
    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 478
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 479
    if-eqz p1, :cond_0

    #@10
    .line 480
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 481
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 486
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 487
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xb

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 473
    return-void

    #@2d
    .line 484
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
    .line 490
    :catchall_0
    move-exception v2

    #@33
    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 490
    throw v2
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 251
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 252
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 255
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 262
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 265
    return-object v2

    #@33
    .line 258
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@35
    .line 261
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    #@36
    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 261
    throw v3
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
    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 298
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 301
    if-eqz p1, :cond_0

    #@10
    .line 302
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 303
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 308
    :goto_0
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 295
    return-void

    #@29
    .line 306
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
    .line 311
    :catchall_0
    move-exception v2

    #@2f
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 311
    throw v2
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 276
    if-eqz p1, :cond_0

    #@10
    .line 277
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 278
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 283
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 284
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x2

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 270
    return-void

    #@2c
    .line 281
    :cond_0
    const/4 v2, 0x0

    #@2d
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 287
    :catchall_0
    move-exception v2

    #@32
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 287
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
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 524
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xd

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 525
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 518
    return-void

    #@20
    .line 527
    :catchall_0
    move-exception v2

    #@21
    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 527
    throw v2
.end method
