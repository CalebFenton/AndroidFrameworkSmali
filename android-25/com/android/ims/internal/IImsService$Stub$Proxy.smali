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
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 261
    iput-object p1, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 259
    return-void
.end method


# virtual methods
.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 382
    if-eqz p3, :cond_0

    #@17
    invoke-interface {p3}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v2

    #@1b
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e
    .line 383
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x6

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 374
    return-void

    #@2f
    .line 386
    :catchall_0
    move-exception v2

    #@30
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 386
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 265
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
    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 305
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 298
    return-void

    #@22
    .line 308
    :catchall_0
    move-exception v2

    #@23
    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 308
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
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 400
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 401
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x7

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 404
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
    .line 411
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 414
    return-object v2

    #@36
    .line 407
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Lcom/android/ims/ImsCallProfile;
    goto :goto_0

    #@38
    .line 410
    .end local v2    # "_result":Lcom/android/ims/ImsCallProfile;
    :catchall_0
    move-exception v3

    #@39
    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 410
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
    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 424
    if-eqz p2, :cond_1

    #@14
    .line 425
    const/4 v4, 0x1

    #@15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 426
    const/4 v4, 0x0

    #@19
    invoke-virtual {p2, v0, v4}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 431
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
    .line 432
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x8

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@33
    move-result-object v3

    #@34
    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result-object v2

    #@38
    .line 437
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 440
    return-object v2

    #@3f
    .line 429
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_1
    const/4 v4, 0x0

    #@40
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 436
    :catchall_0
    move-exception v3

    #@45
    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 436
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
    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 493
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 495
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
    .line 498
    .local v2, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 501
    return-object v2

    #@2b
    .line 497
    .end local v2    # "_result":Lcom/android/ims/internal/IImsConfig;
    :catchall_0
    move-exception v3

    #@2c
    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 497
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
    .line 549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 551
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xe

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 553
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
    .line 556
    .local v2, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 559
    return-object v2

    #@2b
    .line 555
    .end local v2    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :catchall_0
    move-exception v3

    #@2c
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 555
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 269
    const-string/jumbo v0, "com.android.ims.internal.IImsService"

    #@3
    return-object v0
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 6
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 598
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x10

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 599
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v3}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMultiEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 603
    .local v2, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 606
    return-object v2

    #@2b
    .line 602
    .end local v2    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :catchall_0
    move-exception v3

    #@2c
    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 602
    throw v3
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
    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 449
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 450
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 451
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x9

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 453
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
    .line 456
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 459
    return-object v2

    #@2e
    .line 455
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :catchall_0
    move-exception v3

    #@2f
    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 455
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
    .line 466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 472
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 474
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
    .line 477
    .local v2, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 480
    return-object v2

    #@2b
    .line 476
    .end local v2    # "_result":Lcom/android/ims/internal/IImsUt;
    :catchall_0
    move-exception v3

    #@2c
    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 476
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
    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 321
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 322
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 323
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x3

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 325
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
    .line 328
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 331
    return v2

    #@2f
    .line 325
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@30
    .restart local v2    # "_result":Z
    goto :goto_0

    #@31
    .line 327
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@32
    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 327
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
    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 341
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 343
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
    .line 346
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 349
    return v2

    #@29
    .line 343
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 345
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 345
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
    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 279
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 280
    if-eqz p3, :cond_1

    #@17
    .line 281
    const/4 v4, 0x1

    #@18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 282
    const/4 v4, 0x0

    #@1c
    invoke-virtual {p3, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 287
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
    .line 288
    iget-object v3, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v4, 0x1

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result v2

    #@36
    .line 293
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 296
    return v2

    #@3d
    .line 285
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
    .line 292
    :catchall_0
    move-exception v3

    #@43
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 292
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
    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 362
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 363
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x5

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 355
    return-void

    #@2c
    .line 366
    :catchall_0
    move-exception v2

    #@2d
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 366
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
    .line 569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 571
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 572
    if-eqz p3, :cond_0

    #@16
    .line 573
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 574
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p3, v0, v2}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 579
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0xf

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 564
    return-void

    #@30
    .line 577
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
    .line 582
    :catchall_0
    move-exception v2

    #@36
    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 582
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
    .line 530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 532
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xd

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 525
    return-void

    #@23
    .line 535
    :catchall_0
    move-exception v2

    #@24
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 535
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
    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 513
    iget-object v2, p0, Lcom/android/ims/internal/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xc

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 506
    return-void

    #@23
    .line 516
    :catchall_0
    move-exception v2

    #@24
    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 516
    throw v2
.end method
