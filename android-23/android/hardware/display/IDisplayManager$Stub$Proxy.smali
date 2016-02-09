.class Landroid/hardware/display/IDisplayManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager$Stub;
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
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 236
    iput-object p1, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 234
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
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
    .line 341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 343
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x6

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 336
    return-void

    #@22
    .line 346
    :catchall_0
    move-exception v2

    #@23
    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 346
    throw v2
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .locals 6
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projectionToken"    # Landroid/media/projection/IMediaProjection;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "surface"    # Landroid/view/Surface;
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 464
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 468
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 469
    if-eqz p2, :cond_0

    #@1a
    invoke-interface {p2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 470
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 471
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 472
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 473
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 474
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 475
    if-eqz p8, :cond_2

    #@32
    .line 476
    const/4 v3, 0x1

    #@33
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 477
    const/4 v3, 0x0

    #@37
    invoke-virtual {p8, v0, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@3a
    .line 482
    :goto_1
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 483
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3f
    const/16 v4, 0xd

    #@41
    const/4 v5, 0x0

    #@42
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@45
    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@48
    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result v2

    #@4c
    .line 488
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 491
    return v2

    #@53
    .end local v2    # "_result":I
    :cond_1
    move-object v4, v3

    #@54
    .line 468
    goto :goto_0

    #@55
    .line 480
    :cond_2
    const/4 v3, 0x0

    #@56
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    goto :goto_1

    #@5a
    .line 487
    :catchall_0
    move-exception v3

    #@5b
    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 487
    throw v3
.end method

.method public disconnectWifiDisplay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 359
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x7

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 353
    return-void

    #@1f
    .line 362
    :catchall_0
    move-exception v2

    #@20
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 362
    throw v2
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 392
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 394
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x9

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 387
    return-void

    #@23
    .line 397
    :catchall_0
    move-exception v2

    #@24
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 397
    throw v2
.end method

.method public getDisplayIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 276
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 281
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 284
    return-object v2

    #@23
    .line 280
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@24
    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 280
    throw v3
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 254
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 257
    sget-object v3, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/view/DisplayInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 264
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 267
    return-object v2

    #@30
    .line 260
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/view/DisplayInfo;
    goto :goto_0

    #@32
    .line 263
    .end local v2    # "_result":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 263
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 244
    const-string/jumbo v0, "android.hardware.display.IDisplayManager"

    #@3
    return-object v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 442
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 443
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 446
    sget-object v3, Landroid/hardware/display/WifiDisplayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 453
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 456
    return-object v2

    #@2e
    .line 449
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/hardware/display/WifiDisplayStatus;
    goto :goto_0

    #@30
    .line 452
    .end local v2    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :catchall_0
    move-exception v3

    #@31
    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 452
    throw v3
.end method

.method public pauseWifiDisplay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 410
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xa

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 404
    return-void

    #@20
    .line 413
    :catchall_0
    move-exception v2

    #@21
    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 413
    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 292
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 293
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 286
    return-void

    #@29
    .line 296
    :catchall_0
    move-exception v2

    #@2a
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 296
    throw v2
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 545
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 546
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x10

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 539
    return-void

    #@2a
    .line 549
    :catchall_0
    move-exception v2

    #@2b
    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 549
    throw v2
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 376
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 377
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x8

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 369
    return-void

    #@26
    .line 380
    :catchall_0
    move-exception v2

    #@27
    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 380
    throw v2
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 501
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 502
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 503
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 504
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 505
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v3, 0xe

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 495
    return-void

    #@33
    .line 508
    :catchall_0
    move-exception v2

    #@34
    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 508
    throw v2
.end method

.method public resumeWifiDisplay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 423
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 426
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xb

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 420
    return-void

    #@20
    .line 429
    :catchall_0
    move-exception v2

    #@21
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 429
    throw v2
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 521
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 522
    if-eqz p2, :cond_1

    #@1a
    .line 523
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 524
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 529
    :goto_0
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xf

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 515
    return-void

    #@34
    .line 527
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 532
    :catchall_0
    move-exception v2

    #@3a
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 532
    throw v2
.end method

.method public startWifiDisplayScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 310
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x4

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 304
    return-void

    #@1f
    .line 313
    :catchall_0
    move-exception v2

    #@20
    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 313
    throw v2
.end method

.method public stopWifiDisplayScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 326
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x5

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 320
    return-void

    #@1f
    .line 329
    :catchall_0
    move-exception v2

    #@20
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 329
    throw v2
.end method
