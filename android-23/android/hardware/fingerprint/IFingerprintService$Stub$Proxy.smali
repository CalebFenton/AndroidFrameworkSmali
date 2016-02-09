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
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 207
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 222
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 226
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 227
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 228
    if-eqz p5, :cond_0

    #@1a
    invoke-interface {p5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 229
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 230
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 231
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v3, 0x1

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 219
    return-void

    #@38
    .line 234
    :catchall_0
    move-exception v2

    #@39
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 234
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
    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 249
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x2

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 241
    return-void

    #@25
    .line 252
    :catchall_0
    move-exception v2

    #@26
    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 252
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
    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 283
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 285
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 287
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 280
    return-void

    #@22
    .line 290
    :catchall_0
    move-exception v2

    #@23
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 290
    throw v2
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 266
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@15
    .line 267
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 268
    if-eqz p4, :cond_0

    #@1a
    invoke-interface {p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 269
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 270
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v3, 0x3

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 259
    return-void

    #@35
    .line 273
    :catchall_0
    move-exception v2

    #@36
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 273
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
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 451
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v5, 0xc

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    .line 456
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 459
    return-wide v2

    #@27
    .line 455
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@28
    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 455
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
    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 345
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x7

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 347
    sget-object v3, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 350
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 353
    return-object v2

    #@2b
    .line 349
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :catchall_0
    move-exception v3

    #@2c
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 349
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
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
    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 426
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 427
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xb

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 429
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
    .line 432
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 435
    return v2

    #@2d
    .line 429
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 431
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 431
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
    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 364
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 366
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 368
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
    .line 371
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 374
    return v2

    #@2d
    .line 368
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 370
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 370
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
    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 406
    iget-object v3, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 411
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 414
    return v2

    #@27
    .line 410
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 410
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
    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 386
    iget-object v4, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v5, 0x9

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    .line 391
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 394
    return-wide v2

    #@27
    .line 390
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    #@28
    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 390
    throw v4
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.fingerprint.IFingerprintService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 304
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 305
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 306
    if-eqz p4, :cond_0

    #@1a
    invoke-interface {p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 307
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v3, 0x5

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 297
    return-void

    #@32
    .line 310
    :catchall_0
    move-exception v2

    #@33
    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 310
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
    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 325
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 326
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x6

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 317
    return-void

    #@28
    .line 329
    :catchall_0
    move-exception v2

    #@29
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 329
    throw v2
.end method
