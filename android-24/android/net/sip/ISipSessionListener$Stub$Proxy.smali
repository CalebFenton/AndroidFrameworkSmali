.class Landroid/net/sip/ISipSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipSessionListener.java"

# interfaces
.implements Landroid/net/sip/ISipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSessionListener$Stub;
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
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 201
    iput-object p1, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 199
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 209
    const-string/jumbo v0, "android.net.sip.ISipSessionListener"

    #@3
    return-object v0
.end method

.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 334
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 335
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x6

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 328
    return-void

    #@29
    .line 338
    :catchall_0
    move-exception v2

    #@2a
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 338
    throw v2
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 403
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 405
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 406
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x9

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 397
    return-void

    #@30
    .line 409
    :catchall_0
    move-exception v2

    #@31
    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 409
    throw v2
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 313
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 314
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 315
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 308
    return-void

    #@29
    .line 318
    :catchall_0
    move-exception v2

    #@2a
    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 318
    throw v2
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 293
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 294
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 295
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x4

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 287
    return-void

    #@2c
    .line 298
    :catchall_0
    move-exception v2

    #@2d
    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 298
    throw v2
.end method

.method public onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "newSession"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 355
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 357
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x7

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 349
    return-void

    #@2c
    .line 360
    :catchall_0
    move-exception v2

    #@2d
    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 360
    throw v2
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 222
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 223
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 216
    return-void

    #@29
    .line 226
    :catchall_0
    move-exception v2

    #@2a
    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 226
    throw v2
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 379
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 380
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 381
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 382
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x8

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 373
    return-void

    #@30
    .line 385
    :catchall_0
    move-exception v2

    #@31
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 385
    throw v2
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 425
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 426
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xa

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 419
    return-void

    #@2a
    .line 429
    :catchall_0
    move-exception v2

    #@2b
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 429
    throw v2
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 446
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 447
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 448
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xb

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 440
    return-void

    #@2d
    .line 451
    :catchall_0
    move-exception v2

    #@2e
    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 451
    throw v2
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 468
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 469
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 470
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 471
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 472
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0xc

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 463
    return-void

    #@30
    .line 475
    :catchall_0
    move-exception v2

    #@31
    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 475
    throw v2
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 491
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 492
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xd

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 485
    return-void

    #@2a
    .line 495
    :catchall_0
    move-exception v2

    #@2b
    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 495
    throw v2
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 243
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 244
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 245
    if-eqz p2, :cond_1

    #@1a
    .line 246
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 247
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/net/sip/SipProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 252
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 253
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x2

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 238
    return-void

    #@36
    .line 250
    :cond_1
    const/4 v2, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 256
    :catchall_0
    move-exception v2

    #@3c
    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 256
    throw v2
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 272
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 273
    iget-object v2, p0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 266
    return-void

    #@29
    .line 276
    :catchall_0
    move-exception v2

    #@2a
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 276
    throw v2
.end method
