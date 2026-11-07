.class Landroid/hardware/gnss/IAGnss$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAGnss.java"

# interfaces
.implements Landroid/hardware/gnss/IAGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnss$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mCachedVersion:I

    .line 209
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 206
    iput-object p1, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 207
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist dataConnClosed()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 243
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2e

    .line 249
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    nop

    .line 252
    return-void

    .line 244
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method dataConnClosed is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 249
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    throw v2
.end method

.method public blacklist dataConnFailed()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 260
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2e

    .line 266
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    nop

    .line 269
    return-void

    .line 261
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method dataConnFailed is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 266
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    throw v2
.end method

.method public blacklist dataConnOpen(JLjava/lang/String;I)V
    .registers 10
    .param p1, "networkHandle"    # J
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "apnIpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v2, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 300
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_37

    .line 306
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    nop

    .line 309
    return-void

    .line 301
    .restart local v2    # "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method dataConnOpen is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    .end local p1    # "networkHandle":J
    .end local p3    # "apn":Ljava/lang/String;
    .end local p4    # "apnIpType":I
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 306
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    .restart local p1    # "networkHandle":J
    .restart local p3    # "apn":Ljava/lang/String;
    .restart local p4    # "apnIpType":I
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 216
    sget-object v0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 329
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 330
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 331
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 333
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 335
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 338
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    goto :goto_3e

    .line 338
    .end local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw v2

    .line 342
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 328
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    iget v0, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 313
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 314
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 316
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 318
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 321
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    goto :goto_38

    .line 321
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    throw v2

    .line 325
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IAGnssCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/gnss/IAGnssCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 225
    iget-object v2, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 226
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_31

    .line 232
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    nop

    .line 235
    return-void

    .line 227
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setCallback is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/gnss/IAGnssCallback;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 232
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/gnss/IAGnssCallback;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw v2
.end method

.method public blacklist setServer(ILjava/lang/String;I)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v2, p0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 280
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_37

    .line 286
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    nop

    .line 289
    return-void

    .line 281
    .restart local v2    # "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setServer is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "hostname":Ljava/lang/String;
    .end local p3    # "port":I
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 286
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "hostname":Ljava/lang/String;
    .restart local p3    # "port":I
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    throw v2
.end method
