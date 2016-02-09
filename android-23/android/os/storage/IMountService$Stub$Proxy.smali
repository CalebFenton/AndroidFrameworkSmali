.class Landroid/os/storage/IMountService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 40
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public benchmark(Ljava/lang/String;)J
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1016
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1017
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x3c

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1019
    return-wide v2

    #@27
    .line 1020
    :catchall_0
    move-exception v2

    #@28
    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1020
    throw v2
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 653
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 655
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 656
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x1d

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 657
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 658
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 660
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 663
    return v2

    #@2a
    .line 659
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 659
    throw v3
.end method

.method public clearPassword()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 718
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 721
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x26

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 716
    return-void

    #@20
    .line 723
    :catchall_0
    move-exception v2

    #@21
    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 723
    throw v2
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "IMountService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 262
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 263
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 264
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 265
    if-eqz p6, :cond_0

    #@20
    const/4 v3, 0x1

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 266
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v4, 0xb

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v2

    #@33
    .line 270
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 273
    return v2

    #@3a
    .line 269
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@3b
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 269
    throw v3
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 620
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1b

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 621
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 624
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 627
    return v2

    #@27
    .line 623
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 623
    throw v3
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 283
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "IMountService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 288
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 289
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xd

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 293
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 296
    return v2

    #@2e
    .line 292
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2f
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 292
    throw v3
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 638
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x1c

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 642
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 645
    return v2

    #@2a
    .line 641
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 641
    throw v3
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 311
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xc

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 315
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 318
    return v2

    #@27
    .line 314
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 314
    throw v3
.end method

.method public finishMediaUpdate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 477
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x15

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 472
    return-void

    #@20
    .line 479
    :catchall_0
    move-exception v2

    #@21
    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 479
    throw v2
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 814
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 815
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x22

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 819
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 822
    return v2

    #@2d
    .line 818
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 818
    throw v3
.end method

.method public forgetAllVolumes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1126
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x39

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1121
    return-void

    #@20
    .line 1128
    :catchall_0
    move-exception v2

    #@21
    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1128
    throw v2
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 5
    .param p1, "fsUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1112
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x38

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1106
    return-void

    #@23
    .line 1114
    :catchall_0
    move-exception v2

    #@24
    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1114
    throw v2
.end method

.method public format(Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1002
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x32

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 996
    return-void

    #@23
    .line 1004
    :catchall_0
    move-exception v2

    #@24
    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1004
    throw v2
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 6
    .param p1, "mountPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 197
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 199
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 203
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 206
    return v2

    #@27
    .line 202
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 202
    throw v3
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 918
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 919
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2d

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 921
    sget-object v3, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, [Landroid/os/storage/DiskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 923
    .local v2, "_result":[Landroid/os/storage/DiskInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 926
    return-object v2

    #@28
    .line 922
    .end local v2    # "_result":[Landroid/os/storage/DiskInfo;
    :catchall_0
    move-exception v3

    #@29
    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 922
    throw v3
.end method

.method public getEncryptionState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 603
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x20

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 607
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 610
    return v2

    #@24
    .line 606
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 606
    throw v3
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 746
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 751
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x28

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 752
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 755
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 758
    return-object v2

    #@27
    .line 754
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 754
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "IMountService"

    #@3
    return-object v0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "rawPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 566
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 568
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x19

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 572
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 575
    return-object v2

    #@27
    .line 571
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 571
    throw v3
.end method

.method public getPassword()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 706
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x25

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 710
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 713
    return-object v2

    #@24
    .line 709
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 709
    throw v3
.end method

.method public getPasswordType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 686
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 690
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x24

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 694
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 697
    return v2

    #@24
    .line 693
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 693
    throw v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1156
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1157
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x3a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1161
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1164
    return-object v2

    #@24
    .line 1160
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1160
    throw v3
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 791
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1f

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 795
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 798
    return-object v2

    #@27
    .line 794
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 794
    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 435
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 439
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x13

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 443
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 446
    return-object v2

    #@24
    .line 442
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 442
    throw v3
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 420
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x12

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 424
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 427
    return-object v2

    #@27
    .line 423
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 423
    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 219
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 223
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 226
    return-object v2

    #@27
    .line 222
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@28
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 222
    throw v3
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 767
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 769
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 770
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 771
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x1e

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 773
    sget-object v3, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, [Landroid/os/storage/StorageVolume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 775
    .local v2, "_result":[Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 778
    return-object v2

    #@31
    .line 774
    .end local v2    # "_result":[Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v3

    #@32
    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 774
    throw v3
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .locals 6
    .param p1, "_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 955
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x2f

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 957
    sget-object v3, Landroid/os/storage/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/os/storage/VolumeRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 959
    .local v2, "_result":[Landroid/os/storage/VolumeRecord;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 962
    return-object v2

    #@2b
    .line 958
    .end local v2    # "_result":[Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v3

    #@2c
    .line 959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 958
    throw v3
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mountPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 239
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 243
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 246
    return-object v2

    #@27
    .line 242
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 242
    throw v3
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .locals 6
    .param p1, "_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 937
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x2e

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 939
    sget-object v3, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 941
    .local v2, "_result":[Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 944
    return-object v2

    #@2b
    .line 940
    .end local v2    # "_result":[Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v3

    #@2c
    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 940
    throw v3
.end method

.method public isExternalStorageEmulated()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 587
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 589
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
    .line 591
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 594
    return v2

    #@27
    .line 589
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 590
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 590
    throw v3
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "rawPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 543
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 546
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 548
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x18

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 550
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
    .line 552
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 555
    return v2

    #@2a
    .line 550
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 551
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 551
    throw v3
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
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
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 378
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x10

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 380
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
    .line 382
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 385
    return v2

    #@2a
    .line 380
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 381
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 381
    throw v3
.end method

.method public isUsbMassStorageConnected()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 92
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 95
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 96
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 98
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
    .line 100
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 103
    return v2

    #@26
    .line 98
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 99
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 99
    throw v3
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 135
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 137
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
    .line 139
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 142
    return v2

    #@26
    .line 137
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 138
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 138
    throw v3
.end method

.method public lastMaintenance()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "IMountService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 872
    iget-object v4, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x2a

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 876
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 879
    return-wide v2

    #@24
    .line 875
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 875
    throw v4
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 834
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x23

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 838
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 841
    return v2

    #@2a
    .line 837
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 837
    throw v3
.end method

.method public mount(Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 970
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 972
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x30

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 973
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 966
    return-void

    #@23
    .line 974
    :catchall_0
    move-exception v2

    #@24
    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 974
    throw v2
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 5
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 499
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 500
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 501
    if-eqz p4, :cond_0

    #@1a
    invoke-interface {p4}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 502
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 503
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v3, 0x16

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 493
    return-void

    #@36
    .line 505
    :catchall_0
    move-exception v2

    #@37
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 505
    throw v2
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "IMountService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 334
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 335
    if-eqz p4, :cond_0

    #@1a
    const/4 v3, 0x1

    #@1b
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 336
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0xe

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v2

    #@2d
    .line 340
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 343
    return v2

    #@34
    .line 339
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@35
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 339
    throw v3
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 6
    .param p1, "mountPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 156
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 160
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 163
    return v2

    #@26
    .line 159
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 159
    throw v3
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 5
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1059
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1061
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1063
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1064
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x35

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1057
    return-void

    #@26
    .line 1066
    :catchall_0
    move-exception v2

    #@27
    .line 1067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1066
    throw v2
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 5
    .param p1, "diskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1044
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1046
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1047
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1048
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x34

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1042
    return-void

    #@23
    .line 1050
    :catchall_0
    move-exception v2

    #@24
    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1050
    throw v2
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 5
    .param p1, "diskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1031
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1033
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x33

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1034
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1027
    return-void

    #@23
    .line 1035
    :catchall_0
    move-exception v2

    #@24
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1035
    throw v2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 57
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 58
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 60
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 61
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 62
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 56
    return-void

    #@29
    .line 64
    :catchall_0
    move-exception v2

    #@2a
    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 64
    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 400
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x11

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 404
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 407
    return v2

    #@2a
    .line 403
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 403
    throw v3
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 854
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 855
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x29

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 857
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 859
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 862
    return v2

    #@2d
    .line 858
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 858
    throw v3
.end method

.method public runMaintenance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 885
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 887
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 888
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x2b

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 894
    return-void

    #@20
    .line 890
    :catchall_0
    move-exception v2

    #@21
    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 890
    throw v2
.end method

.method public setDebugFlags(II)V
    .locals 5
    .param p1, "_flags"    # I
    .param p2, "_mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1141
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1142
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x3d

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1135
    return-void

    #@26
    .line 1144
    :catchall_0
    move-exception v2

    #@27
    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1144
    throw v2
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 733
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 734
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 735
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 736
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x27

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 729
    return-void

    #@26
    .line 738
    :catchall_0
    move-exception v2

    #@27
    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 738
    throw v2
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1175
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/content/pm/IPackageMoveObserver;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 1176
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x3b

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1177
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1169
    return-void

    #@2d
    .line 1178
    :catchall_0
    move-exception v2

    #@2e
    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1178
    throw v2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 113
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 116
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 117
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x4

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 111
    return-void

    #@26
    .line 119
    :catchall_0
    move-exception v2

    #@27
    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 119
    throw v2
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1075
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1077
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1079
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1080
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x36

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1081
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1073
    return-void

    #@26
    .line 1082
    :catchall_0
    move-exception v2

    #@27
    .line 1083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1082
    throw v2
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .locals 5
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1091
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1093
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1094
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1095
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1096
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1097
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x37

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1089
    return-void

    #@29
    .line 1099
    :catchall_0
    move-exception v2

    #@2a
    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1099
    throw v2
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 459
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/os/storage/IMountShutdownObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 460
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x14

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 454
    return-void

    #@2a
    .line 462
    :catchall_0
    move-exception v2

    #@2b
    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 462
    throw v2
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 983
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 987
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x31

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 981
    return-void

    #@23
    .line 989
    :catchall_0
    move-exception v2

    #@24
    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 989
    throw v2
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 5
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "IMountService"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 526
    if-eqz p2, :cond_0

    #@15
    const/4 v3, 0x1

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 527
    if-eqz p3, :cond_1

    #@1b
    invoke-interface {p3}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v2

    #@1f
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 528
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 529
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x17

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 520
    return-void

    #@37
    .line 531
    :catchall_0
    move-exception v2

    #@38
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 531
    throw v2
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "IMountService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 357
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 358
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xf

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 362
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 365
    return v2

    #@2e
    .line 361
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2f
    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 361
    throw v3
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "IMountService"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 178
    if-eqz p2, :cond_0

    #@15
    move v4, v2

    #@16
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 179
    if-eqz p3, :cond_1

    #@1b
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 180
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x7

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 172
    return-void

    #@2f
    :cond_0
    move v4, v3

    #@30
    .line 178
    goto :goto_0

    #@31
    :cond_1
    move v2, v3

    #@32
    .line 179
    goto :goto_1

    #@33
    .line 182
    :catchall_0
    move-exception v2

    #@34
    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 182
    throw v2
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 75
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 77
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 78
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 79
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 73
    return-void

    #@29
    .line 81
    :catchall_0
    move-exception v2

    #@2a
    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 81
    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 669
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 672
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "IMountService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 674
    iget-object v3, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x21

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 678
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 681
    return v2

    #@27
    .line 677
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 677
    throw v3
.end method

.method public waitForAsecScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 900
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "IMountService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 903
    iget-object v2, p0, Landroid/os/storage/IMountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x2c

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 909
    return-void

    #@20
    .line 905
    :catchall_0
    move-exception v2

    #@21
    .line 906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 905
    throw v2
.end method
