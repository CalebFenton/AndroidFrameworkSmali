.class Landroid/security/IKeyChainService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyChainService.java"

# interfaces
.implements Landroid/security/IKeyChainService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeyChainService$Stub;
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
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 207
    iput-object p1, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 205
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public containsCaAlias(Ljava/lang/String;)Z
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 381
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 383
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 385
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
    .line 388
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 391
    return v2

    #@2a
    .line 385
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 387
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 387
    throw v3
.end method

.method public deleteCaCertificate(Ljava/lang/String;)Z
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 304
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x5

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 306
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
    .line 309
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 312
    return v2

    #@29
    .line 306
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 308
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 308
    throw v3
.end method

.method public getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p1, "rootAlias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.security.IKeyChainService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 420
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 421
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xb

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 426
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 429
    return-object v2

    #@2e
    .line 425
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    #@2f
    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 425
    throw v3
.end method

.method public getCertificate(Ljava/lang/String;)[B
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 243
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 245
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 250
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 253
    return-object v2

    #@26
    .line 249
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@27
    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 249
    throw v3
.end method

.method public getEncodedCaCertificate(Ljava/lang/String;Z)[B
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 396
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 399
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.security.IKeyChainService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 401
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 402
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xa

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 407
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 410
    return-object v2

    #@2e
    .line 406
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@2f
    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 406
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    const-string/jumbo v0, "android.security.IKeyChainService"

    #@3
    return-object v0
.end method

.method public getSystemCaAliases()Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 360
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 363
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 370
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 373
    return-object v2

    #@2e
    .line 366
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    #@30
    .line 369
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    #@31
    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 369
    throw v3
.end method

.method public getUserCaAliases()Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 338
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 341
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 348
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 351
    return-object v2

    #@2d
    .line 344
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    #@2f
    .line 347
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    #@30
    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 347
    throw v3
.end method

.method public hasGrant(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
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
    .line 456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 458
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 459
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xd

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 464
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 467
    return v2

    #@2d
    .line 461
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 463
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 463
    throw v3
.end method

.method public installCaCertificate([B)V
    .locals 5
    .param p1, "caCertificate"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 264
    iget-object v2, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 257
    return-void

    #@22
    .line 267
    :catchall_0
    move-exception v2

    #@23
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 267
    throw v2
.end method

.method public installKeyPair([B[BLjava/lang/String;)Z
    .locals 6
    .param p1, "privateKey"    # [B
    .param p2, "userCert"    # [B
    .param p3, "alias"    # Ljava/lang/String;
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
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 282
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 283
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 284
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x4

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    const/4 v2, 0x1

    #@28
    .line 289
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 292
    return v2

    #@2f
    .line 286
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@30
    .restart local v2    # "_result":Z
    goto :goto_0

    #@31
    .line 288
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@32
    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 288
    throw v3
.end method

.method public requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
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
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 227
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 232
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 235
    return-object v2

    #@26
    .line 231
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@27
    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 231
    throw v3
.end method

.method public reset()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 321
    iget-object v3, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 323
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
    .line 326
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 329
    return v2

    #@26
    .line 323
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 325
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 325
    throw v3
.end method

.method public setGrant(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeyChainService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 440
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 441
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 442
    iget-object v2, p0, Landroid/security/IKeyChainService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xc

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 433
    return-void

    #@2d
    .line 445
    :catchall_0
    move-exception v2

    #@2e
    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 445
    throw v2
.end method
