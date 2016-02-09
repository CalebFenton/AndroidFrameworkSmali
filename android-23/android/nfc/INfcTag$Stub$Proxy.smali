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
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 276
    iput-object p1, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 274
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 280
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
    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 600
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 603
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 605
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x11

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 607
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
    .line 610
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 613
    return v2

    #@2a
    .line 607
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 609
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 609
    throw v3
.end method

.method public close(I)I
    .locals 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 294
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 299
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 302
    return v2

    #@26
    .line 298
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 298
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
    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 310
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 312
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 313
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x2

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 318
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 321
    return v2

    #@29
    .line 317
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 317
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
    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 507
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 513
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xc

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 518
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 521
    return v2

    #@2a
    .line 517
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 517
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
    .line 635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 640
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x13

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 642
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
    .line 645
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 648
    return v2

    #@27
    .line 642
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 644
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 644
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 284
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
    .line 617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 623
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x12

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 628
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 631
    return v2

    #@27
    .line 627
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 627
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
    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 349
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 354
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 357
    return-object v2

    #@26
    .line 353
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@27
    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 353
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
    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 573
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xf

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 578
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 581
    return v2

    #@27
    .line 577
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 577
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
    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 367
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x5

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 369
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
    .line 372
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 375
    return v2

    #@29
    .line 369
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 371
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 371
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
    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 385
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 387
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
    .line 390
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 393
    return v2

    #@29
    .line 387
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 389
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 389
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
    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 494
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 496
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
    .line 499
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 502
    return v2

    #@2a
    .line 496
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 498
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 498
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
    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 476
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 481
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 484
    return v2

    #@27
    .line 480
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 480
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
    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 423
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 428
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 431
    sget-object v3, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/nfc/NdefMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 438
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 441
    return-object v2

    #@31
    .line 434
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/nfc/NdefMessage;
    goto :goto_0

    #@33
    .line 437
    .end local v2    # "_result":Landroid/nfc/NdefMessage;
    :catchall_0
    move-exception v3

    #@34
    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 437
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
    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 451
    if-eqz p2, :cond_0

    #@13
    .line 452
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 453
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 458
    :goto_0
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x9

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v2

    #@2a
    .line 463
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 466
    return v2

    #@31
    .line 456
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
    .line 462
    :catchall_0
    move-exception v3

    #@37
    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 462
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
    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 331
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 336
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 339
    return v2

    #@26
    .line 335
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 335
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
    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 531
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xd

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 534
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
    .line 541
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 544
    return-object v2

    #@31
    .line 537
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/nfc/Tag;
    goto :goto_0

    #@33
    .line 540
    .end local v2    # "_result":Landroid/nfc/Tag;
    :catchall_0
    move-exception v3

    #@34
    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 540
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
    const-string/jumbo v2, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 589
    iget-object v2, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x10

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 583
    return-void

    #@20
    .line 592
    :catchall_0
    move-exception v2

    #@21
    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 592
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
    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcTag"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 555
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xe

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 560
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 563
    return v2

    #@2a
    .line 559
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 559
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
    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.nfc.INfcTag"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 403
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@15
    .line 404
    if-eqz p3, :cond_0

    #@17
    const/4 v3, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 405
    iget-object v3, p0, Landroid/nfc/INfcTag$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x7

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 408
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
    .line 415
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 418
    return-object v2

    #@3a
    .line 411
    :cond_1
    const/4 v2, 0x0

    #@3b
    .local v2, "_result":Landroid/nfc/TransceiveResult;
    goto :goto_0

    #@3c
    .line 414
    .end local v2    # "_result":Landroid/nfc/TransceiveResult;
    :catchall_0
    move-exception v3

    #@3d
    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 414
    throw v3
.end method
