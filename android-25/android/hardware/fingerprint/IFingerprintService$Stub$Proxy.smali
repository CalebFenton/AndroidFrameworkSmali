.class Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintService$Stub;
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
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 238
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 236
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 514
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 517
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 518
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xe

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 511
    return-void

    #@2a
    .line 521
    :catchall_0
    move-exception v2

    #@2b
    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 521
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 257
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 258
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 259
    if-eqz p5, :cond_0

    #@1a
    invoke-interface {p5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 260
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 261
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 262
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v3, 0x1

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 250
    return-void

    #@38
    .line 265
    :catchall_0
    move-exception v2

    #@39
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 265
    throw v2
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 279
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 280
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x2

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 272
    return-void

    #@25
    .line 283
    :catchall_0
    move-exception v2

    #@26
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 283
    throw v2
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 319
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 312
    return-void

    #@22
    .line 322
    :catchall_0
    move-exception v2

    #@23
    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 322
    throw v2
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@15
    .line 298
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 299
    if-eqz p4, :cond_0

    #@1a
    invoke-interface {p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 300
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 301
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 302
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v3, 0x3

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 290
    return-void

    #@38
    .line 305
    :catchall_0
    move-exception v2

    #@39
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 305
    throw v2
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 481
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 482
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v5, 0xc

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    .line 487
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 490
    return-wide v2

    #@27
    .line 486
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@28
    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 486
    throw v4
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
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
    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 375
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 377
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 378
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x7

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 380
    sget-object v3, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 383
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 386
    return-object v2

    #@2b
    .line 382
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :catchall_0
    move-exception v3

    #@2c
    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 382
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 246
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintService"

    #@3
    return-object v0
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 458
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xb

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 460
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
    .line 463
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 466
    return v2

    #@2d
    .line 460
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 462
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 462
    throw v3
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 393
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 396
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 397
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 398
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 399
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 401
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
    .line 404
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 407
    return v2

    #@2d
    .line 401
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 403
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 403
    throw v3
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 432
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 437
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 442
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 445
    return v2

    #@27
    .line 441
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 441
    throw v3
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 419
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v5, 0x9

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    .line 424
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 427
    return-wide v2

    #@27
    .line 423
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@28
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 423
    throw v4
.end method

.method public remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 338
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 339
    if-eqz p5, :cond_0

    #@1d
    invoke-interface {p5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v2

    #@21
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 340
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v3, 0x5

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 329
    return-void

    #@35
    .line 343
    :catchall_0
    move-exception v2

    #@36
    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 343
    throw v2
.end method

.method public rename(IILjava/lang/String;)V
    .locals 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 357
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 358
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 359
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x6

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 350
    return-void

    #@28
    .line 362
    :catchall_0
    move-exception v2

    #@29
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 362
    throw v2
.end method

.method public resetTimeout([B)V
    .locals 5
    .param p1, "cryptoToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 501
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xd

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 494
    return-void

    #@23
    .line 504
    :catchall_0
    move-exception v2

    #@24
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 504
    throw v2
.end method

.method public setActiveUser(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 531
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 535
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xf

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 528
    return-void

    #@23
    .line 538
    :catchall_0
    move-exception v2

    #@24
    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 538
    throw v2
.end method
