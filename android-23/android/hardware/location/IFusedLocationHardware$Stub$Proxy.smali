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
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 457
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xc

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
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 247
    iget-object v3, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 252
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 255
    return v2

    #@23
    .line 251
    .end local v2    # "_result":I
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

.method public getVersion()I
    .locals 6
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
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 475
    iget-object v3, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 480
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 483
    return v2

    #@24
    .line 479
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 479
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
    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 438
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xb

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 431
    return-void

    #@23
    .line 441
    :catchall_0
    move-exception v2

    #@24
    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 441
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
    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 395
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x9

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 388
    return-void

    #@23
    .line 398
    :catchall_0
    move-exception v2

    #@24
    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 398
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
    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 350
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 352
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x7

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 345
    return-void

    #@22
    .line 355
    :catchall_0
    move-exception v2

    #@23
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 355
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
    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 272
    if-eqz p2, :cond_0

    #@13
    .line 273
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 274
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/location/FusedBatchOptions;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 279
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x4

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 265
    return-void

    #@2c
    .line 277
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
    .line 282
    :catchall_0
    move-exception v2

    #@32
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 282
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
    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 300
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x5

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 293
    return-void

    #@22
    .line 303
    :catchall_0
    move-exception v2

    #@23
    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 303
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
    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 414
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 415
    iget-object v3, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 417
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
    .line 420
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 423
    return v2

    #@27
    .line 417
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 419
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 419
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
    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 372
    iget-object v3, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 374
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
    .line 377
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 380
    return v2

    #@27
    .line 374
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 376
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 376
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
    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.location.IFusedLocationHardware"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 323
    if-eqz p2, :cond_0

    #@13
    .line 324
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 325
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/location/FusedBatchOptions;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 330
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x6

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 316
    return-void

    #@2c
    .line 328
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
    .line 333
    :catchall_0
    move-exception v2

    #@32
    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 333
    throw v2
.end method
