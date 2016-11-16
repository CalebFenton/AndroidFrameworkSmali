.class Landroid/nfc/INfcTag$Stub$Proxy;
.super Ljava/lang/Object;
.source "INfcTag.java"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag$Stub;
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
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 266
    iput-object p1, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 264
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public canMakeReadOnly(I)Z
    .locals 6
    .param p1, "ndefType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 577
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x10

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 579
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
    .line 582
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 585
    return v2

    #@2a
    .line 579
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 581
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 581
    throw v3
.end method

.method public connect(II)I
    .locals 6
    .param p1, "nativeHandle"    # I
    .param p2, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 285
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 290
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 293
    return v2

    #@29
    .line 289
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 289
    throw v3
.end method

.method public formatNdef(I[B)I
    .locals 6
    .param p1, "nativeHandle"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 484
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 485
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xb

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 490
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 493
    return v2

    #@2a
    .line 489
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 489
    throw v3
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 608
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 611
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 612
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x12

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 614
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
    .line 617
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 620
    return v2

    #@27
    .line 614
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 616
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 616
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 274
    const-string/jumbo v0, "android.nfc.INfcTag"

    #@3
    return-object v0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 6
    .param p1, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 595
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x11

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 600
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 603
    return v2

    #@27
    .line 599
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 599
    throw v3
.end method

.method public getTechList(I)[I
    .locals 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 321
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 326
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 329
    return-object v2

    #@26
    .line 325
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@27
    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 325
    throw v3
.end method

.method public getTimeout(I)I
    .locals 6
    .param p1, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 545
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xe

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 550
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 553
    return v2

    #@27
    .line 549
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 549
    throw v3
.end method

.method public isNdef(I)Z
    .locals 6
    .param p1, "nativeHandle"    # I
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
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 339
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 341
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
    .line 344
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 347
    return v2

    #@29
    .line 341
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 343
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 343
    throw v3
.end method

.method public isPresent(I)Z
    .locals 6
    .param p1, "nativeHandle"    # I
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
    .line 355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 357
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x5

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 359
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
    .line 362
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 365
    return v2

    #@29
    .line 359
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 361
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 361
    throw v3
.end method

.method public ndefIsWritable(I)Z
    .locals 6
    .param p1, "nativeHandle"    # I
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
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 466
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 468
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
    .line 471
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 474
    return v2

    #@2a
    .line 468
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 470
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 470
    throw v3
.end method

.method public ndefMakeReadOnly(I)I
    .locals 6
    .param p1, "nativeHandle"    # I
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
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 448
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 453
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 456
    return v2

    #@27
    .line 452
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 452
    throw v3
.end method

.method public ndefRead(I)Landroid/nfc/NdefMessage;
    .locals 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 400
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 403
    sget-object v3, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/nfc/NdefMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 410
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 413
    return-object v2

    #@30
    .line 406
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/nfc/NdefMessage;
    goto :goto_0

    #@32
    .line 409
    .end local v2    # "_result":Landroid/nfc/NdefMessage;
    :catchall_0
    move-exception v3

    #@33
    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 409
    throw v3
.end method

.method public ndefWrite(ILandroid/nfc/NdefMessage;)I
    .locals 6
    .param p1, "nativeHandle"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 423
    if-eqz p2, :cond_0

    #@13
    .line 424
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 425
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 430
    :goto_0
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x8

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v2

    #@2a
    .line 435
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 438
    return v2

    #@31
    .line 428
    .end local v2    # "_result":I
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
    .line 434
    :catchall_0
    move-exception v3

    #@37
    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 434
    throw v3
.end method

.method public reconnect(I)I
    .locals 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 298
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 303
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 308
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 311
    return v2

    #@26
    .line 307
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 307
    throw v3
.end method

.method public rediscover(I)Landroid/nfc/Tag;
    .locals 6
    .param p1, "nativehandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 503
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xc

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 506
    sget-object v3, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/nfc/Tag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 513
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 516
    return-object v2

    #@31
    .line 509
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/nfc/Tag;
    goto :goto_0

    #@33
    .line 512
    .end local v2    # "_result":Landroid/nfc/Tag;
    :catchall_0
    move-exception v3

    #@34
    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 512
    throw v3
.end method

.method public resetTimeouts()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 561
    iget-object v2, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xf

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 555
    return-void

    #@20
    .line 564
    :catchall_0
    move-exception v2

    #@21
    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 564
    throw v2
.end method

.method public setTimeout(II)I
    .locals 6
    .param p1, "technology"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 527
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xd

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 532
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 535
    return v2

    #@2a
    .line 531
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 531
    throw v3
.end method

.method public transceive(I[BZ)Landroid/nfc/TransceiveResult;
    .locals 6
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .param p3, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.nfc.INfcTag"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@15
    .line 376
    if-eqz p3, :cond_0

    #@17
    const/4 v3, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 377
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x6

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 380
    sget-object v3, Landroid/nfc/TransceiveResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/nfc/TransceiveResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 387
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 390
    return-object v2

    #@3a
    .line 383
    :cond_1
    const/4 v2, 0x0

    #@3b
    .local v2, "_result":Landroid/nfc/TransceiveResult;
    goto :goto_0

    #@3c
    .line 386
    .end local v2    # "_result":Landroid/nfc/TransceiveResult;
    :catchall_0
    move-exception v3

    #@3d
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 386
    throw v3
.end method
