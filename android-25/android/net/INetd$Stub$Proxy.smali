.class Landroid/net/INetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd$Stub;
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
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 219
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 217
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.INetd"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 305
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 306
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v4, 0x3

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    const/4 v2, 0x1

    #@26
    .line 311
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 314
    return v2

    #@2d
    .line 308
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 310
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 310
    throw v3
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .locals 6
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "isWhitelist"    # Z
    .param p3, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.INetd"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 270
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 271
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1b
    .line 272
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x2

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 274
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
    .line 277
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 280
    return v2

    #@33
    .line 274
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@34
    .restart local v2    # "_result":Z
    goto :goto_0

    #@35
    .line 276
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@36
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 276
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 227
    const-string/jumbo v0, "android.net.INetd"

    #@3
    return-object v0
.end method

.method public getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # [Ljava/lang/String;
    .param p4, "params"    # [I
    .param p5, "stats"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetd"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 434
    if-nez p2, :cond_0

    #@13
    .line 435
    const/4 v2, -0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 440
    :goto_0
    if-nez p3, :cond_1

    #@19
    .line 441
    const/4 v2, -0x1

    #@1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 446
    :goto_1
    if-nez p4, :cond_2

    #@1f
    .line 447
    const/4 v2, -0x1

    #@20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 452
    :goto_2
    if-nez p5, :cond_3

    #@25
    .line 453
    const/4 v2, -0x1

    #@26
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 458
    :goto_3
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2b
    const/4 v3, 0x7

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@33
    .line 460
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    #@36
    .line 461
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    #@39
    .line 462
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readIntArray([I)V

    #@3c
    .line 463
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 427
    return-void

    #@46
    .line 438
    :cond_0
    :try_start_1
    array-length v2, p2

    #@47
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 465
    :catchall_0
    move-exception v2

    #@4c
    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 465
    throw v2

    #@53
    .line 444
    :cond_1
    :try_start_2
    array-length v2, p3

    #@54
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    goto :goto_1

    #@58
    .line 450
    :cond_2
    array-length v2, p4

    #@59
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    goto :goto_2

    #@5d
    .line 456
    :cond_3
    array-length v2, p5

    #@5e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    goto :goto_3
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
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
    const-string/jumbo v2, "android.net.INetd"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 513
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 514
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x9

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 505
    return-void

    #@29
    .line 517
    :catchall_0
    move-exception v2

    #@2a
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 517
    throw v2
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 525
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetd"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 530
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 531
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xa

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 522
    return-void

    #@29
    .line 534
    :catchall_0
    move-exception v2

    #@2a
    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 534
    throw v2
.end method

.method public isAlive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetd"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 239
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 244
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 247
    return v2

    #@26
    .line 241
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 243
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 243
    throw v3
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V
    .locals 5
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetd"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 343
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 344
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@19
    .line 345
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v3, 0x4

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 337
    return-void

    #@2a
    .line 348
    :catchall_0
    move-exception v2

    #@2b
    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 348
    throw v2
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "family"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetd"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 547
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 548
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 549
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 550
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/16 v3, 0xb

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 539
    return-void

    #@2f
    .line 553
    :catchall_0
    move-exception v2

    #@30
    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 553
    throw v2
.end method

.method public setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # [Ljava/lang/String;
    .param p4, "params"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 388
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetd"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 391
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 393
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@17
    .line 394
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1a
    .line 395
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x6

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 385
    return-void

    #@2b
    .line 398
    :catchall_0
    move-exception v2

    #@2c
    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 398
    throw v2
.end method

.method public socketDestroy([Landroid/net/UidRange;[I)V
    .locals 5
    .param p1, "uidRanges"    # [Landroid/net/UidRange;
    .param p2, "exemptUids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 361
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetd"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 362
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12
    .line 363
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@15
    .line 364
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x5

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 356
    return-void

    #@26
    .line 367
    :catchall_0
    move-exception v2

    #@27
    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 367
    throw v2
.end method

.method public tetherApplyDnsInterfaces()Z
    .locals 6
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
    const-string/jumbo v3, "android.net.INetd"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 485
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 487
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
    .line 490
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 493
    return v2

    #@27
    .line 487
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 489
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 489
    throw v3
.end method
