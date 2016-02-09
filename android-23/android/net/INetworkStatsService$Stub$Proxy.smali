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
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 162
    iput-object p1, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 160
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
    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 355
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 356
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xa

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 349
    return-void

    #@23
    .line 359
    :catchall_0
    move-exception v2

    #@24
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 359
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 166
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
    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 340
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x9

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 334
    return-void

    #@20
    .line 343
    :catchall_0
    move-exception v2

    #@21
    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 343
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
    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 325
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x8

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 319
    return-void

    #@20
    .line 328
    :catchall_0
    move-exception v2

    #@21
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 328
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
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 250
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 253
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
    .line 260
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 263
    return-object v2

    #@30
    .line 256
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/net/NetworkStats;
    goto :goto_0

    #@32
    .line 259
    .end local v2    # "_result":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v3

    #@33
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 259
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 170
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
    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 273
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 278
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 281
    return-object v2

    #@23
    .line 277
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 277
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
    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 222
    if-eqz p1, :cond_0

    #@10
    .line 223
    const/4 v4, 0x1

    #@11
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 224
    const/4 v4, 0x0

    #@15
    invoke-virtual {p1, v0, v4}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 229
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 230
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 231
    iget-object v4, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v5, 0x3

    #@21
    const/4 v6, 0x0

    #@22
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-wide v2

    #@2c
    .line 236
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 239
    return-wide v2

    #@33
    .line 227
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
    .line 235
    :catchall_0
    move-exception v4

    #@39
    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 235
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
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 292
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 293
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x6

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 284
    return-void

    #@28
    .line 296
    :catchall_0
    move-exception v2

    #@29
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 296
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
    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 180
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 182
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
    .line 185
    .local v2, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 188
    return-object v2

    #@27
    .line 184
    .end local v2    # "_result":Landroid/net/INetworkStatsSession;
    :catchall_0
    move-exception v3

    #@28
    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 184
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
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 204
    iget-object v3, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 206
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
    .line 209
    .local v2, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 212
    return-object v2

    #@2a
    .line 208
    .end local v2    # "_result":Landroid/net/INetworkStatsSession;
    :catchall_0
    move-exception v3

    #@2b
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 208
    throw v3
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
    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 305
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.INetworkStatsService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 309
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 310
    iget-object v2, p0, Landroid/net/INetworkStatsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 302
    return-void

    #@29
    .line 313
    :catchall_0
    move-exception v2

    #@2a
    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 313
    throw v2
.end method
