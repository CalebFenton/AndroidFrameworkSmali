.class Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMDns.java"

# interfaces
.implements Landroid/net/connectivity/android/net/mdns/aidl/IMDns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;
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

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mCachedVersion:I

    .line 197
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 194
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 195
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist discover(Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 263
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 265
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 266
    .local v2, "_status":Z
    if-eqz v2, :cond_25

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2d

    .line 272
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    nop

    .line 275
    return-void

    .line 267
    .restart local v2    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method discover is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .end local p1    # "info":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    throw v3
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 272
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .restart local p1    # "info":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 204
    sget-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 385
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 387
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 389
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 391
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 394
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    goto :goto_3a

    .line 394
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    throw v2

    .line 398
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 384
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    iget v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 372
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 374
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 377
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    goto :goto_34

    .line 377
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    throw v2

    .line 381
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getServiceAddress(Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 302
    .local v2, "_status":Z
    if-eqz v2, :cond_25

    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2d

    .line 308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    nop

    .line 311
    return-void

    .line 303
    .restart local v2    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getServiceAddress is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .end local p1    # "info":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    throw v3
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 308
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .restart local p1    # "info":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw v2
.end method

.method public blacklist registerEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 337
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 338
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 344
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    nop

    .line 347
    return-void

    .line 339
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method registerEventListener is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .end local p1    # "listener":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 344
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .restart local p1    # "listener":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    throw v2
.end method

.method public blacklist registerService(Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 247
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 248
    .local v2, "_status":Z
    if-eqz v2, :cond_25

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2d

    .line 254
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    nop

    .line 257
    return-void

    .line 249
    .restart local v2    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method registerService is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .end local p1    # "info":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    throw v3
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 254
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .restart local p1    # "info":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    throw v2
.end method

.method public blacklist resolve(Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 283
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 284
    .local v2, "_status":Z
    if-eqz v2, :cond_25

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2d

    .line 290
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-void

    .line 285
    .restart local v2    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method resolve is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .end local p1    # "info":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    throw v3
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 290
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .restart local p1    # "info":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw v2
.end method

.method public blacklist startDaemon()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 213
    .local v2, "_status":Z
    if-eqz v2, :cond_22

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2a

    .line 219
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    nop

    .line 222
    return-void

    .line 214
    .restart local v2    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method startDaemon is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    throw v3
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 219
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw v2
.end method

.method public blacklist stopDaemon()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 230
    .local v2, "_status":Z
    if-eqz v2, :cond_22

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2a

    .line 236
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return-void

    .line 231
    .restart local v2    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method stopDaemon is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    throw v3
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 236
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v2
.end method

.method public blacklist stopOperation(I)V
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 320
    .local v2, "_status":Z
    if-eqz v2, :cond_25

    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2d

    .line 326
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    nop

    .line 329
    return-void

    .line 321
    .restart local v2    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method stopOperation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .end local p1    # "id":I
    throw v3
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 326
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .restart local p1    # "id":I
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    throw v2
.end method

.method public blacklist unregisterEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 355
    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 356
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 362
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    nop

    .line 365
    return-void

    .line 357
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method unregisterEventListener is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .end local p1    # "listener":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 362
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    .restart local p1    # "listener":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v2
.end method
