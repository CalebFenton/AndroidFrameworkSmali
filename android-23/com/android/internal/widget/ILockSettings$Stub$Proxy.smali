.class Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings$Stub;
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
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 267
    iput-object p1, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 265
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 477
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 479
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 480
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xb

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 483
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 490
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 493
    return-object v2

    #@34
    .line 486
    :cond_0
    const/4 v2, 0x0

    #@35
    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@36
    .line 489
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    #@37
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 489
    throw v3
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 413
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 414
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 417
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 424
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 427
    return-object v2

    #@34
    .line 420
    :cond_0
    const/4 v2, 0x0

    #@35
    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@36
    .line 423
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    #@37
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 423
    throw v3
.end method

.method public checkVoldPassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 526
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 528
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xd

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 530
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
    .line 533
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 536
    return v2

    #@2a
    .line 530
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 532
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 532
    throw v3
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

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
    .line 334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 336
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 338
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x4

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 343
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 346
    return v2

    #@33
    .line 340
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@34
    .restart local v2    # "_result":Z
    goto :goto_0

    #@35
    .line 342
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@36
    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 342
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 275
    const-string/jumbo v0, "com.android.internal.widget.ILockSettings"

    #@3
    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
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
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 356
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 357
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 358
    iget-object v4, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v5, 0x5

    #@1a
    const/4 v6, 0x0

    #@1b
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-wide v2

    #@25
    .line 363
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 366
    return-wide v2

    #@2c
    .line 362
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@2d
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 362
    throw v4
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
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
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 376
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 377
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 378
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x6

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v2

    #@25
    .line 383
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 386
    return-object v2

    #@2c
    .line 382
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2d
    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 382
    throw v3
.end method

.method public havePassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 559
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 564
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xf

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 566
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
    .line 569
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 572
    return v2

    #@2a
    .line 566
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 568
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 568
    throw v3
.end method

.method public havePattern(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 546
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xe

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 548
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
    .line 551
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 554
    return v2

    #@2a
    .line 548
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 550
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 550
    throw v3
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 280
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 284
    if-eqz p2, :cond_0

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 285
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 286
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 277
    return-void

    #@2c
    :cond_0
    move v2, v3

    #@2d
    .line 284
    goto :goto_0

    #@2e
    .line 289
    :catchall_0
    move-exception v2

    #@2f
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 289
    throw v2
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 457
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 462
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 463
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xa

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 454
    return-void

    #@29
    .line 466
    :catchall_0
    move-exception v2

    #@2a
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 466
    throw v2
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 396
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 397
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x7

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 388
    return-void

    #@28
    .line 400
    :catchall_0
    move-exception v2

    #@29
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 400
    throw v2
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 301
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 302
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 303
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x2

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 294
    return-void

    #@28
    .line 306
    :catchall_0
    move-exception v2

    #@29
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 306
    throw v2
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 319
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 320
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x3

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 311
    return-void

    #@28
    .line 323
    :catchall_0
    move-exception v2

    #@29
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 323
    throw v2
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 503
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 504
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 505
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xc

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 508
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 515
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 518
    return-object v2

    #@37
    .line 511
    :cond_0
    const/4 v2, 0x0

    #@38
    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@39
    .line 514
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    #@3a
    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 514
    throw v3
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 432
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 437
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 438
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 439
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x9

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 442
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 449
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 452
    return-object v2

    #@37
    .line 445
    :cond_0
    const/4 v2, 0x0

    #@38
    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    #@39
    .line 448
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    #@3a
    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 448
    throw v3
.end method
