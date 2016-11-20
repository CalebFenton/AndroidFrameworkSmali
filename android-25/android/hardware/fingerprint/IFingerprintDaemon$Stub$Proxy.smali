.class Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerprintDaemon.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;
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
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 188
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 186
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public authenticate(JI)I
    .locals 7
    .param p1, "sessionId"    # J
    .param p3, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 205
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 206
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 207
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 212
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 215
    return v2

    #@29
    .line 211
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 211
    throw v3
.end method

.method public cancelAuthentication()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 224
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 229
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 232
    return v2

    #@23
    .line 228
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 228
    throw v3
.end method

.method public cancelEnrollment()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 261
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 266
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 269
    return v2

    #@23
    .line 265
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 265
    throw v3
.end method

.method public cancelEnumeration()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 429
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 433
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xe

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 438
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 441
    return v2

    #@24
    .line 437
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 437
    throw v3
.end method

.method public closeHal()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 367
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 372
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 375
    return v2

    #@24
    .line 371
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 371
    throw v3
.end method

.method public enroll([BII)I
    .locals 6
    .param p1, "token"    # [B
    .param p2, "groupId"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 243
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 244
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x3

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    .line 249
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 252
    return v2

    #@2c
    .line 248
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2d
    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 248
    throw v3
.end method

.method public enumerate()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 412
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 415
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 416
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 421
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 424
    return v2

    #@24
    .line 420
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 420
    throw v3
.end method

.method public getAuthenticatorId()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 310
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 313
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 314
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x7

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 319
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 322
    return-wide v2

    #@23
    .line 318
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 318
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 196
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintDaemon"

    #@3
    return-object v0
.end method

.method public init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 383
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 384
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xb

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 377
    return-void

    #@2a
    .line 387
    :catchall_0
    move-exception v2

    #@2b
    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 387
    throw v2
.end method

.method public openHal()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 346
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 349
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 350
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x9

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 352
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 355
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 358
    return-wide v2

    #@24
    .line 354
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 354
    throw v4
.end method

.method public postEnroll()I
    .locals 6
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
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 399
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 404
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 407
    return v2

    #@24
    .line 403
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 403
    throw v3
.end method

.method public preEnroll()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 278
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x5

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 283
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 286
    return-wide v2

    #@23
    .line 282
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 282
    throw v4
.end method

.method public remove(II)I
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 296
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 297
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x6

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 302
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 305
    return v2

    #@29
    .line 301
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 301
    throw v3
.end method

.method public setActiveGroup(I[B)I
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 333
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 338
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 341
    return v2

    #@2a
    .line 337
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 337
    throw v3
.end method
