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
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 172
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 170
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 176
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
    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 185
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 188
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 189
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 190
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 191
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 196
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 199
    return v2

    #@29
    .line 195
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 195
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
    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 208
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 213
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 216
    return v2

    #@23
    .line 212
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 212
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
    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 245
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 250
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 253
    return v2

    #@23
    .line 249
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 249
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
    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 347
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 350
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 351
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 356
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 359
    return v2

    #@24
    .line 355
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 355
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
    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 228
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x3

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    .line 233
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 236
    return v2

    #@2c
    .line 232
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2d
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 232
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
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 298
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x7

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 303
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 306
    return-wide v2

    #@23
    .line 302
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 302
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
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
    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 367
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 368
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xb

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 361
    return-void

    #@2a
    .line 371
    :catchall_0
    move-exception v2

    #@2b
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 371
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
    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 334
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v5, 0x9

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v2

    #@1d
    .line 339
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 342
    return-wide v2

    #@24
    .line 338
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@25
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 338
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
    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 383
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xc

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 388
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 391
    return v2

    #@24
    .line 387
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 387
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
    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 262
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x5

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 267
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 270
    return-wide v2

    #@23
    .line 266
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@24
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 266
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
    .line 278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 280
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 281
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x6

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 286
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 289
    return v2

    #@29
    .line 285
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2a
    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 285
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
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 316
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 317
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 322
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 325
    return v2

    #@2a
    .line 321
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 321
    throw v3
.end method
