.class Landroid/media/tv/ITvInputSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession$Stub;
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
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 240
    iput-object p1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 238
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
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
    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 376
    if-eqz p2, :cond_0

    #@f
    .line 377
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 378
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 383
    :goto_0
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x9

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 370
    return-void

    #@24
    .line 381
    :cond_0
    const/4 v1, 0x0

    #@25
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 385
    :catchall_0
    move-exception v1

    #@2a
    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 385
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 393
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 395
    if-eqz p2, :cond_0

    #@f
    .line 396
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 397
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 402
    :goto_0
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0xa

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 389
    return-void

    #@24
    .line 400
    :cond_0
    const/4 v1, 0x0

    #@25
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 404
    :catchall_0
    move-exception v1

    #@2a
    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 404
    throw v1
.end method

.method public dispatchSurfaceChanged(III)V
    .locals 5
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
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
    .line 295
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 298
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 299
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x4

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 291
    return-void

    #@1f
    .line 301
    :catchall_0
    move-exception v1

    #@20
    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 301
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 248
    const-string/jumbo v0, "android.media.tv.ITvInputSession"

    #@3
    return-object v0
.end method

.method public relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
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
    .line 412
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 413
    if-eqz p1, :cond_0

    #@c
    .line 414
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 415
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 420
    :goto_0
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0xb

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 408
    return-void

    #@21
    .line 418
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 422
    :catchall_0
    move-exception v1

    #@27
    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 422
    throw v1
.end method

.method public release()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 254
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 255
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 250
    return-void

    #@16
    .line 257
    :catchall_0
    move-exception v1

    #@17
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 257
    throw v1
.end method

.method public removeOverlayView()V
    .locals 5
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
    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 431
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xc

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 426
    return-void

    #@17
    .line 433
    :catchall_0
    move-exception v1

    #@18
    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 433
    throw v1
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;
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
    .line 361
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 363
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 364
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x8

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 357
    return-void

    #@1d
    .line 366
    :catchall_0
    move-exception v1

    #@1e
    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 366
    throw v1
.end method

.method public setCaptionEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.tv.ITvInputSession"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 350
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 351
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x7

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 345
    return-void

    #@1c
    .line 350
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 353
    :catchall_0
    move-exception v1

    #@1f
    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 353
    throw v1
.end method

.method public setMain(Z)V
    .locals 5
    .param p1, "isMain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 265
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.tv.ITvInputSession"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 266
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 267
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x2

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 261
    return-void

    #@1c
    .line 266
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 269
    :catchall_0
    move-exception v1

    #@1f
    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 269
    throw v1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 277
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 278
    if-eqz p1, :cond_0

    #@c
    .line 279
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 280
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 285
    :goto_0
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x3

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 273
    return-void

    #@20
    .line 283
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 287
    :catchall_0
    move-exception v1

    #@26
    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 287
    throw v1
.end method

.method public setVolume(F)V
    .locals 5
    .param p1, "volume"    # F
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
    .line 312
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@d
    .line 314
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x5

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 308
    return-void

    #@19
    .line 316
    :catchall_0
    move-exception v1

    #@1a
    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 316
    throw v1
.end method

.method public timeShiftEnablePositionTracking(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 505
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.tv.ITvInputSession"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 506
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 507
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x12

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 501
    return-void

    #@1d
    .line 506
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0

    #@1f
    .line 509
    :catchall_0
    move-exception v1

    #@20
    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 509
    throw v1
.end method

.method public timeShiftPause()V
    .locals 5
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
    .line 453
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 454
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xe

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 449
    return-void

    #@17
    .line 456
    :catchall_0
    move-exception v1

    #@18
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 456
    throw v1
.end method

.method public timeShiftResume()V
    .locals 5
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
    .line 464
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 465
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xf

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 460
    return-void

    #@17
    .line 467
    :catchall_0
    move-exception v1

    #@18
    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 467
    throw v1
.end method

.method public timeShiftSeekTo(J)V
    .locals 5
    .param p1, "timeMs"    # J
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
    .line 475
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 476
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 477
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x10

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 471
    return-void

    #@1a
    .line 479
    :catchall_0
    move-exception v1

    #@1b
    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 479
    throw v1
.end method

.method public timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 5
    .param p1, "params"    # Landroid/media/PlaybackParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 487
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 488
    if-eqz p1, :cond_0

    #@c
    .line 489
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 490
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/media/PlaybackParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 495
    :goto_0
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x11

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 483
    return-void

    #@21
    .line 493
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 497
    :catchall_0
    move-exception v1

    #@27
    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 497
    throw v1
.end method

.method public tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 324
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 325
    if-eqz p1, :cond_0

    #@c
    .line 326
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 327
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 332
    :goto_0
    if-eqz p2, :cond_1

    #@16
    .line 333
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 334
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 339
    :goto_1
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x6

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 320
    return-void

    #@2a
    .line 330
    :cond_0
    const/4 v1, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 341
    :catchall_0
    move-exception v1

    #@30
    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 341
    throw v1

    #@34
    .line 337
    :cond_1
    const/4 v1, 0x0

    #@35
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_1
.end method

.method public unblockContent(Ljava/lang/String;)V
    .locals 5
    .param p1, "unblockedRating"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 441
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 443
    iget-object v1, p0, Landroid/media/tv/ITvInputSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xd

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 437
    return-void

    #@1a
    .line 445
    :catchall_0
    move-exception v1

    #@1b
    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 445
    throw v1
.end method
