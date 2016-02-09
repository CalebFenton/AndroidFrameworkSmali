.class Landroid/nfc/INfcAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter$Stub;
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
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 271
    iput-object p1, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 269
    return-void
.end method


# virtual methods
.method public addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V
    .locals 5
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "techList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 602
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 605
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 606
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1b
    .line 607
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x13

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 599
    return-void

    #@2d
    .line 610
    :catchall_0
    move-exception v2

    #@2e
    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 610
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public disable(Z)Z
    .locals 6
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 357
    if-eqz p1, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 358
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v4, 0x5

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 360
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
    .line 363
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 366
    return v2

    #@2d
    .line 360
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 362
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 362
    throw v3
.end method

.method public disableNdefPush()Z
    .locals 6
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
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 409
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 411
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
    .line 414
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 417
    return v2

    #@27
    .line 411
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 413
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 413
    throw v3
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 5
    .param p1, "tag"    # Landroid/nfc/Tag;
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
    .line 543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 544
    if-eqz p1, :cond_0

    #@10
    .line 545
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 546
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 551
    :goto_0
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x10

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 538
    return-void

    #@2a
    .line 549
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
    .line 554
    :catchall_0
    move-exception v2

    #@30
    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 554
    throw v2
.end method

.method public enable()Z
    .locals 6
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
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 375
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 377
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
    .line 380
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 383
    return v2

    #@26
    .line 377
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 379
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 379
    throw v3
.end method

.method public enableNdefPush()Z
    .locals 6
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
    .line 391
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 392
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 394
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
    .line 397
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 400
    return v2

    #@26
    .line 394
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 396
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 396
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 279
    const-string/jumbo v0, "android.nfc.INfcAdapter"

    #@3
    return-object v0
.end method

.method public getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 323
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v3}, Landroid/nfc/INfcAdapterExtras$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterExtras;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v2

    #@23
    .line 328
    .local v2, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 331
    return-object v2

    #@2a
    .line 327
    .end local v2    # "_result":Landroid/nfc/INfcAdapterExtras;
    :catchall_0
    move-exception v3

    #@2b
    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 327
    throw v3
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 305
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Landroid/nfc/INfcCardEmulation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcCardEmulation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 310
    .local v2, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 313
    return-object v2

    #@27
    .line 309
    .end local v2    # "_result":Landroid/nfc/INfcCardEmulation;
    :catchall_0
    move-exception v3

    #@28
    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 309
    throw v3
.end method

.method public getNfcTagInterface()Landroid/nfc/INfcTag;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 288
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Landroid/nfc/INfcTag$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 293
    .local v2, "_result":Landroid/nfc/INfcTag;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 296
    return-object v2

    #@27
    .line 292
    .end local v2    # "_result":Landroid/nfc/INfcTag;
    :catchall_0
    move-exception v3

    #@28
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 292
    throw v3
.end method

.method public getState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 340
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 345
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 348
    return v2

    #@23
    .line 344
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 344
    throw v3
.end method

.method public invokeBeam()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 513
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.nfc.INfcAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 514
    iget-object v1, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xe

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 509
    return-void

    #@17
    .line 516
    :catchall_0
    move-exception v1

    #@18
    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 516
    throw v1
.end method

.method public invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    .locals 5
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;
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
    .line 524
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.nfc.INfcAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 525
    if-eqz p1, :cond_0

    #@c
    .line 526
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 527
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/nfc/BeamShareData;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 532
    :goto_0
    iget-object v1, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0xf

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 520
    return-void

    #@21
    .line 530
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 534
    :catchall_0
    move-exception v1

    #@27
    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 534
    throw v1
.end method

.method public isNdefPushEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 426
    iget-object v3, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 428
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
    .line 431
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 434
    return v2

    #@27
    .line 428
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 430
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 430
    throw v3
.end method

.method public pausePolling(I)V
    .locals 5
    .param p1, "timeoutInMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 443
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xa

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 436
    return-void

    #@23
    .line 446
    :catchall_0
    move-exception v2

    #@24
    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 446
    throw v2
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    .locals 5
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 621
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 622
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x14

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 615
    return-void

    #@2a
    .line 625
    :catchall_0
    move-exception v2

    #@2b
    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 625
    throw v2
.end method

.method public resumePolling()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 457
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xb

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 451
    return-void

    #@20
    .line 460
    :catchall_0
    move-exception v2

    #@21
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 460
    throw v2
.end method

.method public setAppCallback(Landroid/nfc/IAppCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/nfc/IAppCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 500
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/nfc/IAppCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 501
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xd

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 494
    return-void

    #@2a
    .line 504
    :catchall_0
    move-exception v2

    #@2b
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 504
    throw v2
.end method

.method public setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # Landroid/nfc/TechListParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 471
    if-eqz p1, :cond_0

    #@10
    .line 472
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 473
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 478
    :goto_0
    const/4 v2, 0x0

    #@19
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1c
    .line 479
    if-eqz p3, :cond_1

    #@1e
    .line 480
    const/4 v2, 0x1

    #@1f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 481
    const/4 v2, 0x0

    #@23
    invoke-virtual {p3, v0, v2}, Landroid/nfc/TechListParcel;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 486
    :goto_1
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@28
    const/16 v3, 0xc

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 465
    return-void

    #@38
    .line 476
    :cond_0
    const/4 v2, 0x0

    #@39
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 489
    :catchall_0
    move-exception v2

    #@3e
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 489
    throw v2

    #@45
    .line 484
    :cond_1
    const/4 v2, 0x0

    #@46
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_1
.end method

.method public setP2pModes(II)V
    .locals 5
    .param p1, "initatorModes"    # I
    .param p2, "targetModes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 591
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x12

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 583
    return-void

    #@26
    .line 594
    :catchall_0
    move-exception v2

    #@27
    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 594
    throw v2
.end method

.method public setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/nfc/IAppCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcAdapter"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 566
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/nfc/IAppCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 567
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 568
    if-eqz p4, :cond_1

    #@20
    .line 569
    const/4 v2, 0x1

    #@21
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 570
    const/4 v2, 0x0

    #@25
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 575
    :goto_0
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v3, 0x11

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 559
    return-void

    #@3a
    .line 573
    :cond_1
    const/4 v2, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 578
    :catchall_0
    move-exception v2

    #@40
    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 578
    throw v2
.end method

.method public verifyNfcPermission()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.INfcAdapter"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 636
    iget-object v2, p0, Landroid/nfc/INfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x15

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 630
    return-void

    #@20
    .line 639
    :catchall_0
    move-exception v2

    #@21
    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 639
    throw v2
.end method
