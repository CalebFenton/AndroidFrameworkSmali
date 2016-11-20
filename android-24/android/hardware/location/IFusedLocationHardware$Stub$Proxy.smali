.class Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFusedLocationHardware.java"

# interfaces
.implements Landroid/hardware/location/IFusedLocationHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IFusedLocationHardware$Stub;
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
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 185
    iput-object p1, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 183
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public flushBatchedLocations()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 451
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 452
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xc

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 446
    return-void

    #@20
    .line 455
    :catchall_0
    move-exception v2

    #@21
    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 455
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 193
    const-string/jumbo v0, "android.hardware.location.IFusedLocationHardware"

    #@3
    return-object v0
.end method

.method public getSupportedBatchSize()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 242
    iget-object v3, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 247
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 250
    return v2

    #@23
    .line 246
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 246
    throw v3
.end method

.method public getVersion()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 467
    iget-object v3, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 472
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 475
    return v2

    #@24
    .line 471
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 471
    throw v3
.end method

.method public injectDeviceContext(I)V
    .locals 5
    .param p1, "deviceEnabledContext"    # I
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
    .line 431
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 433
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xb

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 426
    return-void

    #@23
    .line 436
    :catchall_0
    move-exception v2

    #@24
    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 436
    throw v2
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 390
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x9

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 383
    return-void

    #@23
    .line 393
    :catchall_0
    move-exception v2

    #@24
    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 393
    throw v2
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 5
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 206
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 207
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 200
    return-void

    #@29
    .line 210
    :catchall_0
    move-exception v2

    #@2a
    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 210
    throw v2
.end method

.method public requestBatchOfLocations(I)V
    .locals 5
    .param p1, "batchSizeRequested"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 343
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 347
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x7

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 340
    return-void

    #@22
    .line 350
    :catchall_0
    move-exception v2

    #@23
    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 350
    throw v2
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Landroid/location/FusedBatchOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 267
    if-eqz p2, :cond_0

    #@13
    .line 268
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 269
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/location/FusedBatchOptions;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 274
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x4

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 260
    return-void

    #@2c
    .line 272
    :cond_0
    const/4 v2, 0x0

    #@2d
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 277
    :catchall_0
    move-exception v2

    #@32
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 277
    throw v2
.end method

.method public stopBatching(I)V
    .locals 5
    .param p1, "id"    # I
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
    .line 293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 295
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x5

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 288
    return-void

    #@22
    .line 298
    :catchall_0
    move-exception v2

    #@23
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 298
    throw v2
.end method

.method public supportsDeviceContextInjection()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 410
    iget-object v3, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 412
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
    .line 415
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 418
    return v2

    #@27
    .line 412
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 414
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 414
    throw v3
.end method

.method public supportsDiagnosticDataInjection()Z
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
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 367
    iget-object v3, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

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
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 372
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 375
    return v2

    #@27
    .line 369
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 371
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 371
    throw v3
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 5
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 225
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 226
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 227
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 220
    return-void

    #@29
    .line 230
    :catchall_0
    move-exception v2

    #@2a
    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 230
    throw v2
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Landroid/location/FusedBatchOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 318
    if-eqz p2, :cond_0

    #@13
    .line 319
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 320
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/location/FusedBatchOptions;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 325
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x6

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 311
    return-void

    #@2c
    .line 323
    :cond_0
    const/4 v2, 0x0

    #@2d
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 328
    :catchall_0
    move-exception v2

    #@32
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 328
    throw v2
.end method
