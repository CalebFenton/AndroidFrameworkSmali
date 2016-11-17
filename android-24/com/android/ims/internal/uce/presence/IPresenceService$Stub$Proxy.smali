.class Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;
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
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 234
    return-void
.end method


# virtual methods
.method public addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "presenceServiceHdl"    # I
    .param p2, "presenceServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p3, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.uce.presence.IPresenceService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 293
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/ims/internal/uce/presence/IPresenceListener;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 294
    if-eqz p3, :cond_2

    #@1d
    .line 295
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 296
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 301
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v4, 0x2

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_3

    #@35
    .line 304
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;

    #@3d
    .line 309
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_1

    #@43
    .line 310
    invoke-virtual {p3, v1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 314
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 317
    return-object v2

    #@4d
    .line 299
    :cond_2
    const/4 v3, 0x0

    #@4e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 313
    :catchall_0
    move-exception v3

    #@53
    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 313
    throw v3

    #@5a
    .line 307
    :cond_3
    const/4 v2, 0x0

    #@5b
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "presenceServiceHdl"    # I
    .param p2, "remoteUri"    # Ljava/lang/String;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.presence.IPresenceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 452
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 453
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 454
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x6

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 457
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 464
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 467
    return-object v2

    #@36
    .line 460
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@38
    .line 463
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v3

    #@39
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 463
    throw v3
.end method

.method public getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "presenceServiceHdl"    # I
    .param p2, "remoteUriList"    # [Ljava/lang/String;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 486
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.presence.IPresenceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 489
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 490
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x7

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 493
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 500
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 503
    return-object v2

    #@36
    .line 496
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@38
    .line 499
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v3

    #@39
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 499
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 244
    const-string/jumbo v0, "com.android.ims.internal.uce.presence.IPresenceService"

    #@3
    return-object v0
.end method

.method public getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "presenceServiceHdl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.presence.IPresenceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 260
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 263
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 270
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 273
    return-object v2

    #@30
    .line 266
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@32
    .line 269
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v3

    #@33
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 269
    throw v3
.end method

.method public publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "presenceServiceHdl"    # I
    .param p2, "myCapInfo"    # Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.presence.IPresenceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 410
    if-eqz p2, :cond_0

    #@13
    .line 411
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 412
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Lcom/android/ims/internal/uce/presence/PresCapInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 417
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 418
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x5

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 421
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 428
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 431
    return-object v2

    #@3d
    .line 415
    :cond_0
    const/4 v3, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 427
    :catchall_0
    move-exception v3

    #@43
    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 427
    throw v3

    #@4a
    .line 424
    :cond_1
    const/4 v2, 0x0

    #@4b
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1
.end method

.method public reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "presenceServiceHdl"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 371
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.presence.IPresenceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 376
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 377
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x4

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 380
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 387
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 390
    return-object v2

    #@33
    .line 383
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@35
    .line 386
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v3

    #@36
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 386
    throw v3
.end method

.method public removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "presenceServiceHdl"    # I
    .param p2, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.presence.IPresenceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 333
    if-eqz p2, :cond_0

    #@13
    .line 334
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 335
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 340
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x3

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 343
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 350
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 353
    return-object v2

    #@3a
    .line 338
    :cond_0
    const/4 v3, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 349
    :catchall_0
    move-exception v3

    #@40
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 349
    throw v3

    #@47
    .line 346
    :cond_1
    const/4 v2, 0x0

    #@48
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1
.end method

.method public setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "presenceServiceHdl"    # I
    .param p2, "featureTag"    # Ljava/lang/String;
    .param p3, "serviceInfo"    # Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .param p4, "userData"    # I
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
    .line 524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.presence.IPresenceService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 527
    if-eqz p3, :cond_0

    #@16
    .line 528
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 529
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v0, v3}, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 534
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 535
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x8

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 538
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 545
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 548
    return-object v2

    #@41
    .line 532
    :cond_0
    const/4 v3, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 544
    :catchall_0
    move-exception v3

    #@47
    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 544
    throw v3

    #@4e
    .line 541
    :cond_1
    const/4 v2, 0x0

    #@4f
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1
.end method
