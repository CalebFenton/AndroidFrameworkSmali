.class Landroid/media/tv/ITvInputClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInputClient.java"

# interfaces
.implements Landroid/media/tv/ITvInputClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputClient$Stub;
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
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 221
    iput-object p1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 219
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "android.media.tv.ITvInputClient"

    #@3
    return-object v0
.end method

.method public onChannelRetuned(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 289
    if-eqz p1, :cond_0

    #@c
    .line 290
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 291
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 296
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 297
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x4

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 284
    return-void

    #@23
    .line 294
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 299
    :catchall_0
    move-exception v1

    #@29
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 299
    throw v1
.end method

.method public onContentAllowed(I)V
    .locals 5
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 361
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x9

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 355
    return-void

    #@1a
    .line 363
    :catchall_0
    move-exception v1

    #@1b
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 363
    throw v1
.end method

.method public onContentBlocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 371
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 374
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xa

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 367
    return-void

    #@1d
    .line 376
    :catchall_0
    move-exception v1

    #@1e
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 376
    throw v1
.end method

.method public onLayoutSurface(IIIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 384
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 386
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 387
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 388
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 389
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 390
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/16 v2, 0xb

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 380
    return-void

    #@26
    .line 392
    :catchall_0
    move-exception v1

    #@27
    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 392
    throw v1
.end method

.method public onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "channel"    # Landroid/view/InputChannel;
    .param p4, "seq"    # I
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
    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 238
    if-eqz p3, :cond_0

    #@12
    .line 239
    const/4 v1, 0x1

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 240
    const/4 v1, 0x0

    #@17
    invoke-virtual {p3, v0, v1}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 245
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 246
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x1

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 231
    return-void

    #@29
    .line 243
    :cond_0
    const/4 v1, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 248
    :catchall_0
    move-exception v1

    #@2f
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 248
    throw v1
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 270
    if-eqz p2, :cond_0

    #@f
    .line 271
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 272
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 277
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 278
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x3

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 264
    return-void

    #@26
    .line 275
    :cond_0
    const/4 v1, 0x0

    #@27
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 280
    :catchall_0
    move-exception v1

    #@2c
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 280
    throw v1
.end method

.method public onSessionReleased(I)V
    .locals 5
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 258
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x2

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 252
    return-void

    #@19
    .line 260
    :catchall_0
    move-exception v1

    #@1a
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 260
    throw v1
.end method

.method public onTimeShiftCurrentPositionChanged(JI)V
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 426
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 427
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 428
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 429
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xe

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 422
    return-void

    #@1d
    .line 431
    :catchall_0
    move-exception v1

    #@1e
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 431
    throw v1
.end method

.method public onTimeShiftStartPositionChanged(JI)V
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "seq"    # I
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
    .line 413
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 414
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 416
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xd

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 409
    return-void

    #@1d
    .line 418
    :catchall_0
    move-exception v1

    #@1e
    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 418
    throw v1
.end method

.method public onTimeShiftStatusChanged(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 400
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 403
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xc

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 396
    return-void

    #@1d
    .line 405
    :catchall_0
    move-exception v1

    #@1e
    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 405
    throw v1
.end method

.method public onTrackSelected(ILjava/lang/String;I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "seq"    # I
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
    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 323
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 324
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x6

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 316
    return-void

    #@1f
    .line 326
    :catchall_0
    move-exception v1

    #@20
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 326
    throw v1
.end method

.method public onTracksChanged(Ljava/util/List;I)V
    .locals 5
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d
    .line 309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 310
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x5

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 303
    return-void

    #@1c
    .line 312
    :catchall_0
    move-exception v1

    #@1d
    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 312
    throw v1
.end method

.method public onVideoAvailable(I)V
    .locals 5
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 336
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x7

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 330
    return-void

    #@19
    .line 338
    :catchall_0
    move-exception v1

    #@1a
    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 338
    throw v1
.end method

.method public onVideoUnavailable(II)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "seq"    # I
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
    .line 346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 348
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 349
    iget-object v1, p0, Landroid/media/tv/ITvInputClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 342
    return-void

    #@1d
    .line 351
    :catchall_0
    move-exception v1

    #@1e
    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 351
    throw v1
.end method
