.class Landroid/net/INetworkPolicyManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager$Stub;
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
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 243
    iput-object p1, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 241
    return-void
.end method


# virtual methods
.method public addUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I
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
    const-string/jumbo v2, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 278
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x2

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 270
    return-void

    #@25
    .line 281
    :catchall_0
    move-exception v2

    #@26
    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 281
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 5
    .param p1, "subscriber"    # Ljava/lang/String;
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
    const-string/jumbo v2, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 550
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x11

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 543
    return-void

    #@23
    .line 553
    :catchall_0
    move-exception v2

    #@24
    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 553
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 251
    const-string/jumbo v0, "android.net.INetworkPolicyManager"

    #@3
    return-object v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
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
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 410
    iget-object v3, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 412
    sget-object v3, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 415
    .local v2, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 418
    return-object v2

    #@2b
    .line 414
    .end local v2    # "_result":[Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    #@2c
    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 414
    throw v3
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 497
    if-eqz p1, :cond_0

    #@10
    .line 498
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 499
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkState;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 504
    :goto_0
    iget-object v3, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xf

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 507
    sget-object v3, Landroid/net/NetworkQuotaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 514
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 517
    return-object v2

    #@38
    .line 502
    :cond_0
    const/4 v3, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 513
    :catchall_0
    move-exception v3

    #@3e
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 513
    throw v3

    #@45
    .line 510
    :cond_1
    const/4 v2, 0x0

    #@46
    .local v2, "_result":Landroid/net/NetworkQuotaInfo;
    goto :goto_1
.end method

.method public getRestrictBackground()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 465
    iget-object v3, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 470
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 473
    return v2

    #@27
    .line 467
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 469
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 469
    throw v3
.end method

.method public getUidPolicy(I)I
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 305
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 308
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 310
    iget-object v3, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 315
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 318
    return v2

    #@26
    .line 314
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 314
    throw v3
.end method

.method public getUidsWithPolicy(I)[I
    .locals 6
    .param p1, "policy"    # I
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
    .line 326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 328
    iget-object v3, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x5

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 333
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 336
    return-object v2

    #@26
    .line 332
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@27
    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 332
    throw v3
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 526
    if-eqz p1, :cond_0

    #@10
    .line 527
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 528
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkState;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 533
    :goto_0
    iget-object v3, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x10

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 535
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
    .line 538
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 541
    return v2

    #@31
    .line 531
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 537
    :catchall_0
    move-exception v3

    #@37
    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 537
    throw v3

    #@3e
    .line 535
    :cond_1
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isUidForeground(I)Z
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 346
    iget-object v3, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 348
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
    .line 351
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 354
    return v2

    #@29
    .line 348
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 350
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 350
    throw v3
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 361
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 362
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/INetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 363
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 356
    return-void

    #@29
    .line 366
    :catchall_0
    move-exception v2

    #@2a
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 366
    throw v2
.end method

.method public removeUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 294
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x3

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 286
    return-void

    #@25
    .line 297
    :catchall_0
    move-exception v2

    #@26
    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 297
    throw v2
.end method

.method public setDeviceIdleMode(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 481
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 482
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xe

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 475
    return-void

    #@27
    .line 485
    :catchall_0
    move-exception v2

    #@28
    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 485
    throw v2
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;
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
    const-string/jumbo v2, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 393
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12
    .line 394
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v3, 0x9

    #@16
    const/4 v4, 0x0

    #@17
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 387
    return-void

    #@24
    .line 397
    :catchall_0
    move-exception v2

    #@25
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 397
    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 449
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 450
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xc

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 443
    return-void

    #@27
    .line 453
    :catchall_0
    move-exception v2

    #@28
    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 453
    throw v2
.end method

.method public setUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 262
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x1

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 254
    return-void

    #@25
    .line 265
    :catchall_0
    move-exception v2

    #@26
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 265
    throw v2
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkPolicyManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 427
    if-eqz p1, :cond_0

    #@10
    .line 428
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 429
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 434
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xb

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 421
    return-void

    #@2a
    .line 432
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 437
    :catchall_0
    move-exception v2

    #@30
    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 437
    throw v2
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkPolicyManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 377
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/INetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 378
    iget-object v2, p0, Landroid/net/INetworkPolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x8

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 371
    return-void

    #@2a
    .line 381
    :catchall_0
    move-exception v2

    #@2b
    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 381
    throw v2
.end method
