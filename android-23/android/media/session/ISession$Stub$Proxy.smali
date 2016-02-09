.class Landroid/media/session/ISession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISession.java"

# interfaces
.implements Landroid/media/session/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISession$Stub;
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
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 247
    iput-object p1, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 245
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public destroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 371
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 374
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x7

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 368
    return-void

    #@1f
    .line 377
    :catchall_0
    move-exception v2

    #@20
    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 377
    throw v2
.end method

.method public getController()Landroid/media/session/ISessionController;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 285
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 286
    iget-object v3, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 291
    .local v2, "_result":Landroid/media/session/ISessionController;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 294
    return-object v2

    #@27
    .line 290
    .end local v2    # "_result":Landroid/media/session/ISessionController;
    :catchall_0
    move-exception v3

    #@28
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 290
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 255
    const-string/jumbo v0, "android.media.session.ISession"

    #@3
    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 264
    if-eqz p2, :cond_0

    #@13
    .line 265
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 266
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 271
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 257
    return-void

    #@2c
    .line 269
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
    .line 274
    :catchall_0
    move-exception v2

    #@32
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 274
    throw v2
.end method

.method public setActive(Z)V
    .locals 5
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.session.ISession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 317
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 318
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x4

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 311
    return-void

    #@26
    .line 321
    :catchall_0
    move-exception v2

    #@27
    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 321
    throw v2
.end method

.method public setCurrentVolume(I)V
    .locals 5
    .param p1, "currentVolume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 550
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x10

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 543
    return-void

    #@23
    .line 553
    :catchall_0
    move-exception v2

    #@24
    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 553
    throw v2
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;
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
    .line 473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 474
    if-eqz p1, :cond_0

    #@10
    .line 475
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 476
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 481
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xc

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 468
    return-void

    #@2a
    .line 479
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
    .line 484
    :catchall_0
    move-exception v2

    #@30
    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 484
    throw v2
.end method

.method public setFlags(I)V
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 303
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 296
    return-void

    #@22
    .line 306
    :catchall_0
    move-exception v2

    #@23
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 306
    throw v2
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 350
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 353
    if-eqz p1, :cond_0

    #@10
    .line 354
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 355
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 360
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x6

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 347
    return-void

    #@29
    .line 358
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
    .line 363
    :catchall_0
    move-exception v2

    #@2f
    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 363
    throw v2
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "mbr"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 332
    if-eqz p1, :cond_0

    #@10
    .line 333
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 334
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 339
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 326
    return-void

    #@29
    .line 337
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
    .line 342
    :catchall_0
    move-exception v2

    #@2f
    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 342
    throw v2
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 5
    .param p1, "metadata"    # Landroid/media/MediaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 389
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 390
    if-eqz p1, :cond_0

    #@10
    .line 391
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 392
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 397
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x8

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 384
    return-void

    #@2a
    .line 395
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
    .line 400
    :catchall_0
    move-exception v2

    #@30
    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 400
    throw v2
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 5
    .param p1, "state"    # Landroid/media/session/PlaybackState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 411
    if-eqz p1, :cond_0

    #@10
    .line 412
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 413
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/media/session/PlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 418
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x9

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 405
    return-void

    #@2a
    .line 416
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
    .line 421
    :catchall_0
    move-exception v2

    #@30
    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 421
    throw v2
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 512
    if-eqz p1, :cond_0

    #@10
    .line 513
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 514
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 519
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xe

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 506
    return-void

    #@2a
    .line 517
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
    .line 522
    :catchall_0
    move-exception v2

    #@30
    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 522
    throw v2
.end method

.method public setPlaybackToRemote(II)V
    .locals 5
    .param p1, "control"    # I
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 534
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 535
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xf

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 527
    return-void

    #@26
    .line 538
    :catchall_0
    move-exception v2

    #@27
    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 538
    throw v2
.end method

.method public setQueue(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;
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
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 432
    if-eqz p1, :cond_0

    #@10
    .line 433
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 434
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 439
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xa

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 426
    return-void

    #@2a
    .line 437
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
    .line 442
    :catchall_0
    move-exception v2

    #@30
    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 442
    throw v2
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 453
    if-eqz p1, :cond_0

    #@10
    .line 454
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 455
    const/4 v2, 0x0

    #@15
    invoke-static {p1, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@18
    .line 460
    :goto_0
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xb

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 447
    return-void

    #@2a
    .line 458
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
    .line 463
    :catchall_0
    move-exception v2

    #@30
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 463
    throw v2
.end method

.method public setRatingType(I)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.session.ISession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 496
    iget-object v2, p0, Landroid/media/session/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xd

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 489
    return-void

    #@23
    .line 499
    :catchall_0
    move-exception v2

    #@24
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 499
    throw v2
.end method
