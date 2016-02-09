.class Lcom/android/ims/internal/IImsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsService.java"

# interfaces
.implements Lcom/android/ims/internal/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsService$Stub;
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
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 238
    iput-object p1, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 236
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public close(I)V
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 280
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 282
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 275
    return-void

    #@22
    .line 285
    :catchall_0
    move-exception v2

    #@23
    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 285
    throw v2
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 347
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 350
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 352
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 353
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 354
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x6

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 357
    sget-object v3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 364
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 367
    return-object v2

    #@36
    .line 360
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Lcom/android/ims/ImsCallProfile;
    goto :goto_0

    #@38
    .line 363
    .end local v2    # "_result":Lcom/android/ims/ImsCallProfile;
    :catchall_0
    move-exception v3

    #@39
    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 363
    throw v3
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 375
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 377
    if-eqz p2, :cond_1

    #@14
    .line 378
    const/4 v4, 0x1

    #@15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 379
    const/4 v4, 0x0

    #@19
    invoke-virtual {p2, v0, v4}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 384
    :goto_0
    if-eqz p3, :cond_0

    #@1e
    invoke-interface {p3}, Lcom/android/ims/internal/IImsCallSessionListener;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v3

    #@22
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 385
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v4, 0x7

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32
    move-result-object v3

    #@33
    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result-object v2

    #@37
    .line 390
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 393
    return-object v2

    #@3e
    .line 382
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_1
    const/4 v4, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 389
    :catchall_0
    move-exception v3

    #@44
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 389
    throw v3
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 6
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 446
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v3}, Lcom/android/ims/internal/IImsConfig$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 451
    .local v2, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 454
    return-object v2

    #@2b
    .line 450
    .end local v2    # "_result":Lcom/android/ims/internal/IImsConfig;
    :catchall_0
    move-exception v3

    #@2c
    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 450
    throw v3
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 6
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 504
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xd

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v3}, Lcom/android/ims/internal/IImsEcbm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsEcbm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 509
    .local v2, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 512
    return-object v2

    #@2b
    .line 508
    .end local v2    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :catchall_0
    move-exception v3

    #@2c
    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 508
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 246
    const-string/jumbo v0, "com.android.ims.internal.IImsService"

    #@3
    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 403
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 404
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 409
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 412
    return-object v2

    #@2e
    .line 408
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :catchall_0
    move-exception v3

    #@2f
    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 408
    throw v3
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 6
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 425
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v3}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 430
    .local v2, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 433
    return-object v2

    #@2b
    .line 429
    .end local v2    # "_result":Lcom/android/ims/internal/IImsUt;
    :catchall_0
    move-exception v3

    #@2c
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 429
    throw v3
.end method

.method public isConnected(III)Z
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 300
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x3

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    const/4 v2, 0x1

    #@28
    .line 305
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 308
    return v2

    #@2f
    .line 302
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@30
    .restart local v2    # "_result":Z
    goto :goto_0

    #@31
    .line 304
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@32
    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 304
    throw v3
.end method

.method public isOpened(I)Z
    .locals 6
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 318
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 320
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
    .line 323
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 326
    return v2

    #@29
    .line 320
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 322
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 322
    throw v3
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 257
    if-eqz p3, :cond_1

    #@17
    .line 258
    const/4 v4, 0x1

    #@18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 259
    const/4 v4, 0x0

    #@1c
    invoke-virtual {p3, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 264
    :goto_0
    if-eqz p4, :cond_0

    #@21
    invoke-interface {p4}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v3

    #@25
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 265
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v4, 0x1

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result v2

    #@36
    .line 270
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 273
    return v2

    #@3d
    .line 262
    .end local v2    # "_result":I
    :cond_1
    const/4 v4, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 269
    :catchall_0
    move-exception v3

    #@43
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 269
    throw v3
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 334
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 335
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 336
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x5

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 328
    return-void

    #@2c
    .line 339
    :catchall_0
    move-exception v2

    #@2d
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 339
    throw v2
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 524
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 525
    if-eqz p3, :cond_0

    #@16
    .line 526
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 527
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p3, v0, v2}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 532
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0xe

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 517
    return-void

    #@30
    .line 530
    :cond_0
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 535
    :catchall_0
    move-exception v2

    #@36
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 535
    throw v2
.end method

.method public turnOffIms(I)V
    .locals 5
    .param p1, "phoneId"    # I
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
    .line 483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 485
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xc

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 478
    return-void

    #@23
    .line 488
    :catchall_0
    move-exception v2

    #@24
    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 488
    throw v2
.end method

.method public turnOnIms(I)V
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 466
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xb

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 459
    return-void

    #@23
    .line 469
    :catchall_0
    move-exception v2

    #@24
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 469
    throw v2
.end method
