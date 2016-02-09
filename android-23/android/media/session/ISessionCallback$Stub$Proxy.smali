.class Landroid/media/session/ISessionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback$Stub;
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
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 252
    iput-object p1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 250
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 260
    const-string/jumbo v0, "android.media.session.ISessionCallback"

    #@3
    return-object v0
.end method

.method public onAdjustVolume(I)V
    .locals 5
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 523
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 525
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x11

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 519
    return-void

    #@1a
    .line 527
    :catchall_0
    move-exception v1

    #@1b
    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 527
    throw v1
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 266
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 268
    if-eqz p2, :cond_0

    #@f
    .line 269
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 270
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 275
    :goto_0
    if-eqz p3, :cond_1

    #@19
    .line 276
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 277
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p3, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 282
    :goto_1
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v2, 0x1

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x1

    #@26
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 262
    return-void

    #@2d
    .line 273
    :cond_0
    const/4 v1, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 284
    :catchall_0
    move-exception v1

    #@33
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 284
    throw v1

    #@37
    .line 280
    :cond_1
    const/4 v1, 0x0

    #@38
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 502
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 504
    if-eqz p2, :cond_0

    #@f
    .line 505
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 506
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 511
    :goto_0
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x10

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 498
    return-void

    #@24
    .line 509
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
    .line 513
    :catchall_0
    move-exception v1

    #@2a
    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 513
    throw v1
.end method

.method public onFastForward()V
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
    .line 450
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 451
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 446
    return-void

    #@17
    .line 453
    :catchall_0
    move-exception v1

    #@18
    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 453
    throw v1
.end method

.method public onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p2, "sequenceNumber"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;
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
    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 293
    if-eqz p1, :cond_0

    #@c
    .line 294
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 295
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 300
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 301
    if-eqz p3, :cond_1

    #@19
    .line 302
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 303
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p3, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 308
    :goto_1
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v2, 0x2

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x1

    #@26
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 288
    return-void

    #@2d
    .line 298
    :cond_0
    const/4 v1, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 310
    :catchall_0
    move-exception v1

    #@33
    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 310
    throw v1

    #@37
    .line 306
    :cond_1
    const/4 v1, 0x0

    #@38
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1
.end method

.method public onNext()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 428
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 429
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xa

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 424
    return-void

    #@17
    .line 431
    :catchall_0
    move-exception v1

    #@18
    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 431
    throw v1
.end method

.method public onPause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 406
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 407
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x8

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 402
    return-void

    #@17
    .line 409
    :catchall_0
    move-exception v1

    #@18
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 409
    throw v1
.end method

.method public onPlay()V
    .locals 5
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
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 321
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x3

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 316
    return-void

    #@16
    .line 323
    :catchall_0
    move-exception v1

    #@17
    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 323
    throw v1
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
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
    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 333
    if-eqz p2, :cond_0

    #@f
    .line 334
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 335
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 340
    :goto_0
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 327
    return-void

    #@23
    .line 338
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
    .line 342
    :catchall_0
    move-exception v1

    #@29
    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 342
    throw v1
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 350
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 352
    if-eqz p2, :cond_0

    #@f
    .line 353
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 354
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 359
    :goto_0
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x5

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 346
    return-void

    #@23
    .line 357
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
    .line 361
    :catchall_0
    move-exception v1

    #@29
    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 361
    throw v1
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
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
    .line 369
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 370
    if-eqz p1, :cond_0

    #@c
    .line 371
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 372
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 377
    :goto_0
    if-eqz p2, :cond_1

    #@16
    .line 378
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 379
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 384
    :goto_1
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 365
    return-void

    #@2a
    .line 375
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
    .line 386
    :catchall_0
    move-exception v1

    #@30
    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 386
    throw v1

    #@34
    .line 382
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

.method public onPrevious()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 440
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xb

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 435
    return-void

    #@17
    .line 442
    :catchall_0
    move-exception v1

    #@18
    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 442
    throw v1
.end method

.method public onRate(Landroid/media/Rating;)V
    .locals 5
    .param p1, "rating"    # Landroid/media/Rating;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 484
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 485
    if-eqz p1, :cond_0

    #@c
    .line 486
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 487
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/media/Rating;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 492
    :goto_0
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0xf

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 480
    return-void

    #@21
    .line 490
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
    .line 494
    :catchall_0
    move-exception v1

    #@27
    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 494
    throw v1
.end method

.method public onRewind()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 461
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 462
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xd

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 457
    return-void

    #@17
    .line 464
    :catchall_0
    move-exception v1

    #@18
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 464
    throw v1
.end method

.method public onSeekTo(J)V
    .locals 5
    .param p1, "pos"    # J
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
    .line 472
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 473
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 474
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xe

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 468
    return-void

    #@1a
    .line 476
    :catchall_0
    move-exception v1

    #@1b
    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 476
    throw v1
.end method

.method public onSetVolumeTo(I)V
    .locals 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 535
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 537
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x12

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 531
    return-void

    #@1a
    .line 539
    :catchall_0
    move-exception v1

    #@1b
    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 539
    throw v1
.end method

.method public onSkipToTrack(J)V
    .locals 5
    .param p1, "id"    # J
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
    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 395
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 396
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 390
    return-void

    #@19
    .line 398
    :catchall_0
    move-exception v1

    #@1a
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 398
    throw v1
.end method

.method public onStop()V
    .locals 5
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
    .line 417
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 418
    iget-object v1, p0, Landroid/media/session/ISessionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x9

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 413
    return-void

    #@17
    .line 420
    :catchall_0
    move-exception v1

    #@18
    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 420
    throw v1
.end method
