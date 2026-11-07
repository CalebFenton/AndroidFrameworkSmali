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
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 344
    return-void
.end method


# virtual methods
.method public greylist-max-o addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 9
    .param p1, "presenceServiceHdl"    # I
    .param p2, "presenceServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p3, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 396
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 397
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 398
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 399
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 400
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 401
    invoke-virtual {p3, v1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_3e

    .line 405
    .end local v2    # "_status":Z
    :cond_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return-object v3

    .line 405
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 9
    .param p1, "presenceServiceHdl"    # I
    .param p2, "remoteUri"    # Ljava/lang/String;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 511
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 514
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 519
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 520
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 523
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    nop

    .line 526
    return-object v3

    .line 523
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    throw v2
.end method

.method public greylist-max-o getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 9
    .param p1, "presenceServiceHdl"    # I
    .param p2, "remoteUriList"    # [Ljava/lang/String;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 550
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 551
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 554
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    nop

    .line 557
    return-object v3

    .line 554
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 351
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    return-object v0
.end method

.method public greylist-max-o getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 7
    .param p1, "presenceServiceHdl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 368
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 369
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 372
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    nop

    .line 375
    return-object v3

    .line 372
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    throw v2
.end method

.method public greylist-max-o publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 9
    .param p1, "presenceServiceHdl"    # I
    .param p2, "myCapInfo"    # Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 480
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 486
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 488
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 489
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 492
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    nop

    .line 495
    return-object v3

    .line 492
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    throw v2
.end method

.method public greylist-max-o reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 8
    .param p1, "presenceServiceHdl"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 458
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 459
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 462
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    nop

    .line 465
    return-object v3

    .line 462
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    throw v2
.end method

.method public greylist-max-o removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 8
    .param p1, "presenceServiceHdl"    # I
    .param p2, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 425
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 426
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 427
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 430
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    nop

    .line 433
    return-object v3

    .line 430
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw v2
.end method

.method public greylist-max-o setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 10
    .param p1, "presenceServiceHdl"    # I
    .param p2, "featureTag"    # Ljava/lang/String;
    .param p3, "serviceInfo"    # Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .param p4, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 575
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 582
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 584
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 585
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 588
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    nop

    .line 591
    return-object v3

    .line 588
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    throw v2
.end method
