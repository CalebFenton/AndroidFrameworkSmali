.class Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeystoreSecurityLevel.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreSecurityLevel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;
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

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedVersion:I

    .line 261
    const-string v0, "-1"

    iput-object v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 258
    iput-object p1, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 259
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist convertStorageKeyToEphemeral(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/EphemeralStorageKeyResponse;
    .registers 7
    .param p1, "storageKey"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 381
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 382
    .local v2, "_status":Z
    if-eqz v2, :cond_36

    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 386
    sget-object v3, Landroid/system/keystore2/EphemeralStorageKeyResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/EphemeralStorageKeyResponse;
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_3e

    .line 389
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/system/keystore2/EphemeralStorageKeyResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    nop

    .line 392
    return-object v3

    .line 383
    .end local v3    # "_result":Landroid/system/keystore2/EphemeralStorageKeyResponse;
    .restart local v2    # "_status":Z
    :cond_36
    :try_start_36
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method convertStorageKeyToEphemeral is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "storageKey":Landroid/system/keystore2/KeyDescriptor;
    throw v3
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3e

    .line 389
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "storageKey":Landroid/system/keystore2/KeyDescriptor;
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    throw v2
.end method

.method public blacklist createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;
    .registers 9
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "operationParameters"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p3, "forced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 279
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 280
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 282
    .local v2, "_status":Z
    if-eqz v2, :cond_3c

    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 286
    sget-object v3, Landroid/system/keystore2/CreateOperationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/CreateOperationResponse;
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_44

    .line 289
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/system/keystore2/CreateOperationResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    nop

    .line 292
    return-object v3

    .line 283
    .end local v3    # "_result":Landroid/system/keystore2/CreateOperationResponse;
    .restart local v2    # "_status":Z
    :cond_3c
    :try_start_3c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method createOperation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "operationParameters":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p3    # "forced":Z
    throw v3
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    .line 289
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "operationParameters":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p3    # "forced":Z
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    throw v2
.end method

.method public blacklist deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .registers 7
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 397
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 402
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 403
    .local v2, "_status":Z
    if-eqz v2, :cond_2e

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_36

    .line 409
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    nop

    .line 412
    return-void

    .line 404
    .restart local v2    # "_status":Z
    :cond_2e
    :try_start_2e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method deleteKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 409
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw v2
.end method

.method public blacklist generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 11
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 303
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 304
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 305
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 307
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 308
    .local v2, "_status":Z
    if-eqz v2, :cond_42

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 312
    sget-object v3, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyMetadata;
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_4a

    .line 315
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    nop

    .line 318
    return-object v3

    .line 309
    .end local v3    # "_result":Landroid/system/keystore2/KeyMetadata;
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method generateKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p4    # "flags":I
    .end local p5    # "entropy":[B
    throw v3
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    .line 315
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .restart local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p4    # "flags":I
    .restart local p5    # "entropy":[B
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 268
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 432
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 433
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 434
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 436
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 438
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 441
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    goto :goto_3e

    .line 441
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    throw v2

    .line 445
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 431
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

    .line 415
    iget v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 416
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 417
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 419
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 421
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 424
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    goto :goto_38

    .line 424
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw v2

    .line 428
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 11
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 329
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 330
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 331
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 333
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 334
    .local v2, "_status":Z
    if-eqz v2, :cond_42

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 338
    sget-object v3, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyMetadata;
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_4a

    .line 341
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    nop

    .line 344
    return-object v3

    .line 335
    .end local v3    # "_result":Landroid/system/keystore2/KeyMetadata;
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p4    # "flags":I
    .end local p5    # "keyData":[B
    throw v3
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    .line 341
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .restart local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p4    # "flags":I
    .restart local p5    # "keyData":[B
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    throw v2
.end method

.method public blacklist importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .registers 11
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "maskingKey"    # [B
    .param p4, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p5, "authenticators"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_f
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 355
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 356
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 357
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 358
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 359
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 360
    .local v2, "_status":Z
    if-eqz v2, :cond_42

    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 364
    sget-object v3, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyMetadata;
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_4a

    .line 367
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    nop

    .line 370
    return-object v3

    .line 361
    .end local v3    # "_result":Landroid/system/keystore2/KeyMetadata;
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importWrappedKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "wrappingKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "maskingKey":[B
    .end local p4    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p5    # "authenticators":[Landroid/system/keystore2/AuthenticatorSpec;
    throw v3
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    .line 367
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "wrappingKey":Landroid/system/keystore2/KeyDescriptor;
    .restart local p3    # "maskingKey":[B
    .restart local p4    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p5    # "authenticators":[Landroid/system/keystore2/AuthenticatorSpec;
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    throw v2
.end method
