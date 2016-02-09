.class Landroid/os/IDeviceIdleController$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeviceIdleController.java"

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController$Stub;
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
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 200
    iput-object p1, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 198
    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
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
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 402
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 403
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 404
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 405
    iget-object v2, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0xc

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 395
    return-void

    #@2c
    .line 408
    :catchall_0
    move-exception v2

    #@2d
    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 408
    throw v2
.end method

.method public addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 419
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 422
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 423
    iget-object v4, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v5, 0xd

    #@1b
    const/4 v6, 0x0

    #@1c
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-wide v2

    #@26
    .line 428
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 431
    return-wide v2

    #@2d
    .line 427
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@2e
    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 427
    throw v4
.end method

.method public addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 442
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 443
    iget-object v4, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v5, 0xe

    #@1b
    const/4 v6, 0x0

    #@1c
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-wide v2

    #@26
    .line 448
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 451
    return-wide v2

    #@2d
    .line 447
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@2e
    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 447
    throw v4
.end method

.method public addPowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 217
    iget-object v2, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x1

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 210
    return-void

    #@22
    .line 220
    :catchall_0
    move-exception v2

    #@23
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 220
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public exitIdle(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 460
    iget-object v2, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xf

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 453
    return-void

    #@23
    .line 463
    :catchall_0
    move-exception v2

    #@24
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 463
    throw v2
.end method

.method public getAppIdTempWhitelist()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 345
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 348
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 349
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 354
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 357
    return-object v2

    #@24
    .line 353
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@25
    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 353
    throw v3
.end method

.method public getAppIdWhitelist()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 332
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 337
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 340
    return-object v2

    #@24
    .line 336
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@25
    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 336
    throw v3
.end method

.method public getAppIdWhitelistExceptIdle()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 315
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 320
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 323
    return-object v2

    #@23
    .line 319
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@24
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 319
    throw v3
.end method

.method public getFullPowerWhitelist()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 294
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 297
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 298
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 303
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 306
    return-object v2

    #@23
    .line 302
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 302
    throw v3
.end method

.method public getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 6
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
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 281
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 286
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 289
    return-object v2

    #@23
    .line 285
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 285
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 208
    const-string/jumbo v0, "android.os.IDeviceIdleController"

    #@3
    return-object v0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 6
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
    .line 263
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 264
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 269
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 272
    return-object v2

    #@23
    .line 268
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 268
    throw v3
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 247
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 252
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 255
    return-object v2

    #@23
    .line 251
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 251
    throw v3
.end method

.method public isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
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
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 385
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 387
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
    .line 390
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 393
    return v2

    #@2a
    .line 387
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 389
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 389
    throw v3
.end method

.method public isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
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
    const-string/jumbo v3, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 367
    iget-object v3, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 369
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
    .line 372
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 375
    return v2

    #@2a
    .line 369
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 371
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 371
    throw v3
.end method

.method public removePowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 232
    iget-object v2, p0, Landroid/os/IDeviceIdleController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 225
    return-void

    #@22
    .line 235
    :catchall_0
    move-exception v2

    #@23
    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 235
    throw v2
.end method
