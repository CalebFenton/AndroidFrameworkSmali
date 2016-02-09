.class Landroid/net/INetworkStatsSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkStatsSession.java"

# interfaces
.implements Landroid/net/INetworkStatsSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsSession$Stub;
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
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 231
    iput-object p1, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 229
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 460
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 463
    iget-object v2, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x8

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 457
    return-void

    #@20
    .line 466
    :catchall_0
    move-exception v2

    #@21
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 466
    throw v2
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 249
    if-eqz p1, :cond_0

    #@10
    .line 250
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 251
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 256
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 257
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 258
    iget-object v3, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x1

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 261
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 268
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 271
    return-object v2

    #@3d
    .line 254
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
    .line 267
    :catchall_0
    move-exception v3

    #@43
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 267
    throw v3

    #@4a
    .line 264
    :cond_1
    const/4 v2, 0x0

    #@4b
    .local v2, "_result":Landroid/net/NetworkStats;
    goto :goto_1
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 312
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 313
    if-eqz p1, :cond_0

    #@10
    .line 314
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 315
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 320
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 321
    iget-object v3, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x3

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 324
    sget-object v3, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 331
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 334
    return-object v2

    #@3a
    .line 318
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
    .line 330
    :catchall_0
    move-exception v3

    #@40
    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 330
    throw v3

    #@47
    .line 327
    :cond_1
    const/4 v2, 0x0

    #@48
    .local v2, "_result":Landroid/net/NetworkStatsHistory;
    goto :goto_1
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 377
    if-eqz p1, :cond_0

    #@10
    .line 378
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 379
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 384
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 385
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 386
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 387
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 388
    iget-object v3, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v4, 0x5

    #@27
    const/4 v5, 0x0

    #@28
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2e
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 391
    sget-object v3, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 398
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 401
    return-object v2

    #@43
    .line 382
    :cond_0
    const/4 v3, 0x0

    #@44
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 397
    :catchall_0
    move-exception v3

    #@49
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 397
    throw v3

    #@50
    .line 394
    :cond_1
    const/4 v2, 0x0

    #@51
    .local v2, "_result":Landroid/net/NetworkStatsHistory;
    goto :goto_1
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J
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
    .line 410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 411
    if-eqz p1, :cond_0

    #@10
    .line 412
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 413
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 418
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 419
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 420
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 421
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 422
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 423
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    #@2a
    .line 424
    iget-object v3, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/4 v4, 0x6

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@34
    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 427
    sget-object v3, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 434
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 437
    return-object v2

    #@49
    .line 416
    :cond_0
    const/4 v3, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 433
    :catchall_0
    move-exception v3

    #@4f
    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 433
    throw v3

    #@56
    .line 430
    :cond_1
    const/4 v2, 0x0

    #@57
    .local v2, "_result":Landroid/net/NetworkStatsHistory;
    goto :goto_1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 239
    const-string/jumbo v0, "android.net.INetworkStatsSession"

    #@3
    return-object v0
.end method

.method public getRelevantUids()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 447
    iget-object v3, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 452
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 455
    return-object v2

    #@23
    .line 451
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@24
    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 451
    throw v3
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z
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
    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.net.INetworkStatsSession"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 344
    if-eqz p1, :cond_0

    #@12
    .line 345
    const/4 v5, 0x1

    #@13
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 346
    const/4 v5, 0x0

    #@17
    invoke-virtual {p1, v0, v5}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 351
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@1d
    .line 352
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@20
    .line 353
    if-eqz p6, :cond_1

    #@22
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 354
    iget-object v3, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v4, 0x4

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 357
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 364
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 367
    return-object v2

    #@44
    .line 349
    :cond_0
    const/4 v5, 0x0

    #@45
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 363
    :catchall_0
    move-exception v3

    #@4a
    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 363
    throw v3

    #@51
    :cond_1
    move v3, v4

    #@52
    .line 353
    goto :goto_1

    #@53
    .line 360
    :cond_2
    const/4 v2, 0x0

    #@54
    .local v2, "_result":Landroid/net/NetworkStats;
    goto :goto_2
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 277
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 280
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 281
    if-eqz p1, :cond_0

    #@10
    .line 282
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 283
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 288
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 289
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 290
    iget-object v3, p0, Landroid/net/INetworkStatsSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x2

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 293
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 300
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 303
    return-object v2

    #@3d
    .line 286
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
    .line 299
    :catchall_0
    move-exception v3

    #@43
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 299
    throw v3

    #@4a
    .line 296
    :cond_1
    const/4 v2, 0x0

    #@4b
    .local v2, "_result":Landroid/net/NetworkStats;
    goto :goto_1
.end method
