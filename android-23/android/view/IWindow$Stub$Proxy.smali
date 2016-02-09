.class Landroid/view/IWindow$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow$Stub;
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
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 261
    iput-object p1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 259
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 418
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 420
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 414
    return-void

    #@19
    .line 422
    :catchall_0
    move-exception v1

    #@1a
    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 422
    throw v1
.end method

.method public dispatchAppVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 378
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindow"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 379
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 380
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x4

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 374
    return-void

    #@1c
    .line 379
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 382
    :catchall_0
    move-exception v1

    #@1f
    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 382
    throw v1
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/DragEvent;
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
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 476
    if-eqz p1, :cond_0

    #@c
    .line 477
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 478
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/DragEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 483
    :goto_0
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0xa

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 471
    return-void

    #@21
    .line 481
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
    .line 485
    :catchall_0
    move-exception v1

    #@27
    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 485
    throw v1
.end method

.method public dispatchGetNewSurface()V
    .locals 5
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
    .line 390
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 391
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x5

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 386
    return-void

    #@16
    .line 393
    :catchall_0
    move-exception v1

    #@17
    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 393
    throw v1
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 5
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 496
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 499
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 500
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 501
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/16 v2, 0xb

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 492
    return-void

    #@23
    .line 503
    :catchall_0
    move-exception v1

    #@24
    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 503
    throw v1
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindow"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 452
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 453
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 454
    if-eqz p5, :cond_0

    #@1a
    .line 455
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 456
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 461
    :goto_0
    if-eqz p6, :cond_1

    #@24
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 462
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/16 v2, 0x9

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x1

    #@2d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 445
    return-void

    #@34
    .line 459
    :cond_0
    const/4 v3, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 464
    :catchall_0
    move-exception v1

    #@3a
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 464
    throw v1

    #@3e
    :cond_1
    move v1, v2

    #@3f
    .line 461
    goto :goto_1
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 433
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindow"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@e
    .line 435
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@11
    .line 436
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 437
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    #@17
    .line 438
    if-eqz p5, :cond_0

    #@19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 439
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1e
    const/16 v2, 0x8

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 429
    return-void

    #@29
    .line 438
    :cond_0
    const/4 v1, 0x0

    #@2a
    goto :goto_0

    #@2b
    .line 441
    :catchall_0
    move-exception v1

    #@2c
    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 441
    throw v1
.end method

.method public dispatchWindowShown()V
    .locals 5
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
    .line 547
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 548
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 543
    return-void

    #@17
    .line 550
    :catchall_0
    move-exception v1

    #@18
    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 550
    throw v1
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "descriptor"    # Landroid/os/ParcelFileDescriptor;
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
    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 287
    if-eqz p3, :cond_0

    #@12
    .line 288
    const/4 v1, 0x1

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 289
    const/4 v1, 0x0

    #@17
    invoke-virtual {p3, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 294
    :goto_0
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x1

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 280
    return-void

    #@26
    .line 292
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
    .line 296
    :catchall_0
    move-exception v1

    #@2c
    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 296
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 269
    const-string/jumbo v0, "android.view.IWindow"

    #@3
    return-object v0
.end method

.method public moved(II)V
    .locals 5
    .param p1, "newX"    # I
    .param p2, "newY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 365
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 368
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x3

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 361
    return-void

    #@1c
    .line 370
    :catchall_0
    move-exception v1

    #@1d
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 370
    throw v1
.end method

.method public onAnimationStarted(I)V
    .locals 5
    .param p1, "remainingFrameCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 518
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 520
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xc

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 514
    return-void

    #@1a
    .line 522
    :catchall_0
    move-exception v1

    #@1b
    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 522
    throw v1
.end method

.method public onAnimationStopped()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 533
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 534
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 529
    return-void

    #@17
    .line 536
    :catchall_0
    move-exception v1

    #@18
    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 536
    throw v1
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindow"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 305
    if-eqz p1, :cond_0

    #@e
    .line 306
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 307
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 312
    :goto_0
    if-eqz p2, :cond_1

    #@18
    .line 313
    const/4 v3, 0x1

    #@19
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 314
    const/4 v3, 0x0

    #@1d
    invoke-virtual {p2, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    .line 319
    :goto_1
    if-eqz p3, :cond_2

    #@22
    .line 320
    const/4 v3, 0x1

    #@23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 321
    const/4 v3, 0x0

    #@27
    invoke-virtual {p3, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 326
    :goto_2
    if-eqz p4, :cond_3

    #@2c
    .line 327
    const/4 v3, 0x1

    #@2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 328
    const/4 v3, 0x0

    #@31
    invoke-virtual {p4, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@34
    .line 333
    :goto_3
    if-eqz p5, :cond_4

    #@36
    .line 334
    const/4 v3, 0x1

    #@37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 335
    const/4 v3, 0x0

    #@3b
    invoke-virtual {p5, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@3e
    .line 340
    :goto_4
    if-eqz p6, :cond_5

    #@40
    .line 341
    const/4 v3, 0x1

    #@41
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 342
    const/4 v3, 0x0

    #@45
    invoke-virtual {p6, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@48
    .line 347
    :goto_5
    if-eqz p7, :cond_6

    #@4a
    :goto_6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 348
    if-eqz p8, :cond_7

    #@4f
    .line 349
    const/4 v1, 0x1

    #@50
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 350
    const/4 v1, 0x0

    #@54
    invoke-virtual {p8, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@57
    .line 355
    :goto_7
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@59
    const/4 v2, 0x2

    #@5a
    const/4 v3, 0x0

    #@5b
    const/4 v4, 0x1

    #@5c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@62
    .line 300
    return-void

    #@63
    .line 310
    :cond_0
    const/4 v3, 0x0

    #@64
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    goto :goto_0

    #@68
    .line 357
    :catchall_0
    move-exception v1

    #@69
    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@6c
    .line 357
    throw v1

    #@6d
    .line 317
    :cond_1
    const/4 v3, 0x0

    #@6e
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    goto :goto_1

    #@72
    .line 324
    :cond_2
    const/4 v3, 0x0

    #@73
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@76
    goto :goto_2

    #@77
    .line 331
    :cond_3
    const/4 v3, 0x0

    #@78
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    goto :goto_3

    #@7c
    .line 338
    :cond_4
    const/4 v3, 0x0

    #@7d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    goto :goto_4

    #@81
    .line 345
    :cond_5
    const/4 v3, 0x0

    #@82
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@85
    goto :goto_5

    #@86
    :cond_6
    move v1, v2

    #@87
    .line 347
    goto :goto_6

    #@88
    .line 353
    :cond_7
    const/4 v1, 0x0

    #@89
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8c
    goto :goto_7
.end method

.method public windowFocusChanged(ZZ)V
    .locals 5
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 405
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindow"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 406
    if-eqz p1, :cond_0

    #@e
    move v3, v1

    #@f
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 407
    if-eqz p2, :cond_1

    #@14
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 408
    iget-object v1, p0, Landroid/view/IWindow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x6

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 401
    return-void

    #@23
    :cond_0
    move v3, v2

    #@24
    .line 406
    goto :goto_0

    #@25
    :cond_1
    move v1, v2

    #@26
    .line 407
    goto :goto_1

    #@27
    .line 410
    :catchall_0
    move-exception v1

    #@28
    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 410
    throw v1
.end method
