.class Landroid/service/quicksettings/IQSService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQSService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSService$Stub;
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
    iput-object p1, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 198
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 208
    const-string/jumbo v0, "android.service.quicksettings.IQSService"

    #@3
    return-object v0
.end method

.method public getTile(Landroid/content/ComponentName;)Landroid/service/quicksettings/Tile;
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
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
    .line 216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 217
    if-eqz p1, :cond_0

    #@10
    .line 218
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 219
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 224
    :goto_0
    iget-object v3, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x1

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 227
    sget-object v3, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/service/quicksettings/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 234
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 237
    return-object v2

    #@37
    .line 222
    :cond_0
    const/4 v3, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 233
    :catchall_0
    move-exception v3

    #@3d
    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 233
    throw v3

    #@44
    .line 230
    :cond_1
    const/4 v2, 0x0

    #@45
    .local v2, "_result":Landroid/service/quicksettings/Tile;
    goto :goto_1
.end method

.method public isLocked()Z
    .locals 6
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
    const-string/jumbo v3, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 338
    iget-object v3, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 340
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
    .line 343
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 346
    return v2

    #@26
    .line 340
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 342
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 342
    throw v3
.end method

.method public isSecure()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 355
    iget-object v3, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 357
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
    .line 360
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 363
    return v2

    #@26
    .line 357
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 359
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 359
    throw v3
.end method

.method public onDialogHidden(Landroid/service/quicksettings/Tile;)V
    .locals 5
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 389
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 391
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 392
    if-eqz p1, :cond_0

    #@10
    .line 393
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 394
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 399
    :goto_0
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x9

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 386
    return-void

    #@2a
    .line 397
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 402
    :catchall_0
    move-exception v2

    #@30
    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 402
    throw v2
.end method

.method public onShowDialog(Landroid/service/quicksettings/Tile;)V
    .locals 5
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 295
    if-eqz p1, :cond_0

    #@10
    .line 296
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 297
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 302
    :goto_0
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x4

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 289
    return-void

    #@29
    .line 300
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 305
    :catchall_0
    move-exception v2

    #@2f
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 305
    throw v2
.end method

.method public onStartActivity(Landroid/service/quicksettings/Tile;)V
    .locals 5
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 316
    if-eqz p1, :cond_0

    #@10
    .line 317
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 318
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 323
    :goto_0
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 310
    return-void

    #@29
    .line 321
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 326
    :catchall_0
    move-exception v2

    #@2f
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 326
    throw v2
.end method

.method public onStartSuccessful(Landroid/service/quicksettings/Tile;)V
    .locals 5
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 413
    if-eqz p1, :cond_0

    #@10
    .line 414
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 415
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 420
    :goto_0
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xa

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 407
    return-void

    #@2a
    .line 418
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 423
    :catchall_0
    move-exception v2

    #@30
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 423
    throw v2
.end method

.method public startUnlockAndRun(Landroid/service/quicksettings/Tile;)V
    .locals 5
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
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
    .line 370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 371
    if-eqz p1, :cond_0

    #@10
    .line 372
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 373
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 378
    :goto_0
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x8

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 365
    return-void

    #@2a
    .line 376
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 381
    :catchall_0
    move-exception v2

    #@30
    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 381
    throw v2
.end method

.method public updateQsTile(Landroid/service/quicksettings/Tile;)V
    .locals 5
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 242
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 245
    if-eqz p1, :cond_0

    #@10
    .line 246
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 247
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 252
    :goto_0
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 239
    return-void

    #@29
    .line 250
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 255
    :catchall_0
    move-exception v2

    #@2f
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 255
    throw v2
.end method

.method public updateStatusIcon(Landroid/service/quicksettings/Tile;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 5
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "contentDescription"    # Ljava/lang/String;
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
    const-string/jumbo v2, "android.service.quicksettings.IQSService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 266
    if-eqz p1, :cond_0

    #@10
    .line 267
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 268
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 273
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 274
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 275
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 280
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 281
    iget-object v2, p0, Landroid/service/quicksettings/IQSService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x3

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 260
    return-void

    #@36
    .line 271
    :cond_0
    const/4 v2, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 284
    :catchall_0
    move-exception v2

    #@3c
    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 284
    throw v2

    #@43
    .line 278
    :cond_1
    const/4 v2, 0x0

    #@44
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    goto :goto_1
.end method
