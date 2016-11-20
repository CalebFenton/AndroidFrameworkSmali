.class Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOptionsService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsService$Stub;
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
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 239
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 237
    return-void
.end method


# virtual methods
.method public addListener(ILcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "optionsServiceHandle"    # I
    .param p2, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p3, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.uce.options.IOptionsService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 296
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/ims/internal/uce/options/IOptionsListener;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 297
    if-eqz p3, :cond_2

    #@1d
    .line 298
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 299
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 304
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v4, 0x2

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_3

    #@35
    .line 307
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;

    #@3d
    .line 312
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_1

    #@43
    .line 313
    invoke-virtual {p3, v1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 317
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 320
    return-object v2

    #@4d
    .line 302
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
    .line 316
    :catchall_0
    move-exception v3

    #@53
    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 316
    throw v3

    #@5a
    .line 310
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
    .line 243
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "optionsServiceHandle"    # I
    .param p2, "remoteURI"    # Ljava/lang/String;
    .param p3, "reqUserData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.options.IOptionsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 452
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 453
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x6

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 456
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
    .line 463
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 466
    return-object v2

    #@36
    .line 459
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@38
    .line 462
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v3

    #@39
    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 462
    throw v3
.end method

.method public getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "optionsServiceHandle"    # I
    .param p2, "remoteURIList"    # [Ljava/lang/String;
    .param p3, "reqUserData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.options.IOptionsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 486
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 487
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 488
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x7

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 491
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
    .line 498
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 501
    return-object v2

    #@36
    .line 494
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@38
    .line 497
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v3

    #@39
    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 497
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 247
    const-string/jumbo v0, "com.android.ims.internal.uce.options.IOptionsService"

    #@3
    return-object v0
.end method

.method public getMyInfo(II)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "optionsServiceHandle"    # I
    .param p2, "reqUserdata"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 412
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 415
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.options.IOptionsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 417
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 418
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 421
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
    .line 428
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 431
    return-object v2

    #@33
    .line 424
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@35
    .line 427
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v3

    #@36
    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 427
    throw v3
.end method

.method public getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "optionsServiceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.options.IOptionsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 264
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 267
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
    .line 274
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 277
    return-object v2

    #@30
    .line 270
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@32
    .line 273
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v3

    #@33
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 273
    throw v3
.end method

.method public removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "optionsServiceHandle"    # I
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.options.IOptionsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 337
    if-eqz p2, :cond_0

    #@13
    .line 338
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 339
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 344
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x3

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 347
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
    .line 354
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 357
    return-object v2

    #@3a
    .line 342
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
    .line 353
    :catchall_0
    move-exception v3

    #@40
    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 353
    throw v3

    #@47
    .line 350
    :cond_1
    const/4 v2, 0x0

    #@48
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1
.end method

.method public responseIncomingOptions(IIILjava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;Z)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "optionsServiceHandle"    # I
    .param p2, "tId"    # I
    .param p3, "sipResponseCode"    # I
    .param p4, "reasonPhrase"    # Ljava/lang/String;
    .param p5, "capInfo"    # Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .param p6, "bContactInBL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.ims.internal.uce.options.IOptionsService"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 523
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 524
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 525
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 526
    if-eqz p5, :cond_0

    #@1e
    .line 527
    const/4 v5, 0x1

    #@1f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 528
    const/4 v5, 0x0

    #@23
    invoke-virtual {p5, v0, v5}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 533
    :goto_0
    if-eqz p6, :cond_1

    #@28
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 534
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v4, 0x8

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@36
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 537
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 544
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 547
    return-object v2

    #@4b
    .line 531
    :cond_0
    const/4 v5, 0x0

    #@4c
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 543
    :catchall_0
    move-exception v3

    #@51
    .line 544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 543
    throw v3

    #@58
    :cond_1
    move v3, v4

    #@59
    .line 533
    goto :goto_1

    #@5a
    .line 540
    :cond_2
    const/4 v2, 0x0

    #@5b
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_2
.end method

.method public setMyInfo(ILcom/android/ims/internal/uce/common/CapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 6
    .param p1, "optionsServiceHandle"    # I
    .param p2, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;
    .param p3, "reqUserData"    # I
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
    .line 375
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.uce.options.IOptionsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 377
    if-eqz p2, :cond_0

    #@13
    .line 378
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 379
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Lcom/android/ims/internal/uce/common/CapInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 384
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 385
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x4

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 388
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
    .line 395
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 398
    return-object v2

    #@3d
    .line 382
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
    .line 394
    :catchall_0
    move-exception v3

    #@43
    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 394
    throw v3

    #@4a
    .line 391
    :cond_1
    const/4 v2, 0x0

    #@4b
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1
.end method
