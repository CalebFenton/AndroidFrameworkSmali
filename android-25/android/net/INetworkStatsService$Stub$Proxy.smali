.class Landroid/net/INetworkStatsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService$Stub;
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
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 208
    iput-object p1, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 206
    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .locals 5
    .param p1, "thresholdBytes"    # J
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
    .line 400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 401
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 402
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xa

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 395
    return-void

    #@23
    .line 405
    :catchall_0
    move-exception v2

    #@24
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 405
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public forceUpdate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 386
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x9

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 380
    return-void

    #@20
    .line 389
    :catchall_0
    move-exception v2

    #@21
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 389
    throw v2
.end method

.method public forceUpdateIfaces()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 371
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x8

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 365
    return-void

    #@20
    .line 374
    :catchall_0
    move-exception v2

    #@21
    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 374
    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 296
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 299
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 306
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 309
    return-object v2

    #@30
    .line 302
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/net/NetworkStats;
    goto :goto_0

    #@32
    .line 305
    .end local v2    # "_result":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v3

    #@33
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 305
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 216
    const-string/jumbo v0, "android.net.INetworkStatsService"

    #@3
    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 319
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 324
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 327
    return-object v2

    #@23
    .line 323
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 323
    throw v3
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 8
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
    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 268
    if-eqz p1, :cond_0

    #@10
    .line 269
    const/4 v4, 0x1

    #@11
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 270
    const/4 v4, 0x0

    #@15
    invoke-virtual {p1, v0, v4}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 275
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 276
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 277
    iget-object v4, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v5, 0x3

    #@21
    const/4 v6, 0x0

    #@22
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-wide v2

    #@2c
    .line 282
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 285
    return-wide v2

    #@33
    .line 273
    .end local v2    # "_result":J
    :cond_0
    const/4 v4, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 281
    :catchall_0
    move-exception v4

    #@39
    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 281
    throw v4
.end method

.method public incrementOperationCount(III)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 337
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 338
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 339
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x6

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 330
    return-void

    #@28
    .line 342
    :catchall_0
    move-exception v2

    #@29
    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 342
    throw v2
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 222
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 225
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 226
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Landroid/net/INetworkStatsSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 231
    .local v2, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 234
    return-object v2

    #@27
    .line 230
    .end local v2    # "_result":Landroid/net/INetworkStatsSession;
    :catchall_0
    move-exception v3

    #@28
    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 230
    throw v3
.end method

.method public openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
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
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 250
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v3}, Landroid/net/INetworkStatsSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v2

    #@23
    .line 255
    .local v2, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 258
    return-object v2

    #@2a
    .line 254
    .end local v2    # "_result":Landroid/net/INetworkStatsSession;
    :catchall_0
    move-exception v3

    #@2b
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 254
    throw v3
.end method

.method public registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 419
    if-eqz p2, :cond_0

    #@13
    .line 420
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 421
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/net/DataUsageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 426
    :goto_0
    if-eqz p3, :cond_1

    #@1d
    .line 427
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 428
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 433
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 434
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v4, 0xb

    #@2c
    const/4 v5, 0x0

    #@2d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@33
    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    .line 437
    sget-object v3, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroid/net/DataUsageRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 444
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 447
    return-object v2

    #@48
    .line 424
    :cond_0
    const/4 v3, 0x0

    #@49
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 443
    :catchall_0
    move-exception v3

    #@4e
    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 443
    throw v3

    #@55
    .line 431
    :cond_1
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_1

    #@5a
    .line 440
    :cond_2
    const/4 v2, 0x0

    #@5b
    .local v2, "_result":Landroid/net/DataUsageRequest;
    goto :goto_2
.end method

.method public setUidForeground(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 355
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 356
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 348
    return-void

    #@29
    .line 359
    :catchall_0
    move-exception v2

    #@2a
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 359
    throw v2
.end method

.method public unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    .locals 5
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 456
    if-eqz p1, :cond_0

    #@10
    .line 457
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 458
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/DataUsageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 463
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xc

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 450
    return-void

    #@2a
    .line 461
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
    .line 466
    :catchall_0
    move-exception v2

    #@30
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 466
    throw v2
.end method
