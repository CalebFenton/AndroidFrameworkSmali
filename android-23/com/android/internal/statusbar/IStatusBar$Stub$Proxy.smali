.class Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar$Stub;
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
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 254
    iput-object p1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 252
    return-void
.end method


# virtual methods
.method public animateCollapsePanels()V
    .locals 5
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 335
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x6

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 330
    return-void

    #@16
    .line 337
    :catchall_0
    move-exception v1

    #@17
    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 337
    throw v1
.end method

.method public animateExpandNotificationsPanel()V
    .locals 5
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 313
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x4

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 308
    return-void

    #@16
    .line 315
    :catchall_0
    move-exception v1

    #@17
    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 315
    throw v1
.end method

.method public animateExpandSettingsPanel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 323
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 324
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 319
    return-void

    #@16
    .line 326
    :catchall_0
    move-exception v1

    #@17
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 326
    throw v1
.end method

.method public appTransitionCancelled()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 522
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x15

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 517
    return-void

    #@17
    .line 524
    :catchall_0
    move-exception v1

    #@18
    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 524
    throw v1
.end method

.method public appTransitionPending()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 507
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 508
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x14

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 503
    return-void

    #@17
    .line 510
    :catchall_0
    move-exception v1

    #@18
    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 510
    throw v1
.end method

.method public appTransitionStarting(JJ)V
    .locals 5
    .param p1, "statusBarAnimationsStartTime"    # J
    .param p3, "statusBarAnimationsDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 540
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 541
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 542
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    .line 543
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x16

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 536
    return-void

    #@1d
    .line 545
    :catchall_0
    move-exception v1

    #@1e
    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 545
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public buzzBeepBlinked()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 398
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 399
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 394
    return-void

    #@17
    .line 401
    :catchall_0
    move-exception v1

    #@18
    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 401
    throw v1
.end method

.method public cancelPreloadRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 481
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 482
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x12

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 477
    return-void

    #@17
    .line 484
    :catchall_0
    move-exception v1

    #@18
    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 484
    throw v1
.end method

.method public disable(II)V
    .locals 5
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 301
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 302
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 295
    return-void

    #@1c
    .line 304
    :catchall_0
    move-exception v1

    #@1d
    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 304
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 262
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBar"

    #@3
    return-object v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
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
    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBar"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 447
    if-eqz p1, :cond_0

    #@e
    move v3, v1

    #@f
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 448
    if-eqz p2, :cond_1

    #@14
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 449
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0xf

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 442
    return-void

    #@24
    :cond_0
    move v3, v2

    #@25
    .line 447
    goto :goto_0

    #@26
    :cond_1
    move v1, v2

    #@27
    .line 448
    goto :goto_1

    #@28
    .line 451
    :catchall_0
    move-exception v1

    #@29
    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 451
    throw v1
.end method

.method public notificationLightOff()V
    .locals 5
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
    .line 409
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 410
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 405
    return-void

    #@17
    .line 412
    :catchall_0
    move-exception v1

    #@18
    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 412
    throw v1
.end method

.method public notificationLightPulse(III)V
    .locals 5
    .param p1, "argb"    # I
    .param p2, "millisOn"    # I
    .param p3, "millisOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 420
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 422
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 423
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 424
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0xd

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 416
    return-void

    #@20
    .line 426
    :catchall_0
    move-exception v1

    #@21
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 426
    throw v1
.end method

.method public preloadRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 470
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 471
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x11

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 466
    return-void

    #@17
    .line 473
    :catchall_0
    move-exception v1

    #@18
    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 473
    throw v1
.end method

.method public removeIcon(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 289
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 283
    return-void

    #@19
    .line 291
    :catchall_0
    move-exception v1

    #@1a
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 291
    throw v1
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

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
    invoke-virtual {p2, v0, v1}, Lcom/android/internal/statusbar/StatusBarIcon;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 277
    :goto_0
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x1

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 264
    return-void

    #@23
    .line 275
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
    .line 279
    :catchall_0
    move-exception v1

    #@29
    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 279
    throw v1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 370
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBar"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 373
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 374
    if-eqz p4, :cond_0

    #@16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 375
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/16 v2, 0x9

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 366
    return-void

    #@26
    .line 374
    :cond_0
    const/4 v1, 0x0

    #@27
    goto :goto_0

    #@28
    .line 377
    :catchall_0
    move-exception v1

    #@29
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 377
    throw v1
.end method

.method public setSystemUiVisibility(II)V
    .locals 5
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 345
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 347
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 348
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 341
    return-void

    #@1c
    .line 350
    :catchall_0
    move-exception v1

    #@1d
    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 350
    throw v1
.end method

.method public setWindowState(II)V
    .locals 5
    .param p1, "window"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 387
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 388
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 381
    return-void

    #@1d
    .line 390
    :catchall_0
    move-exception v1

    #@1e
    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 390
    throw v1
.end method

.method public showAssistDisclosure()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 553
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 554
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x17

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 549
    return-void

    #@17
    .line 556
    :catchall_0
    move-exception v1

    #@18
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 556
    throw v1
.end method

.method public showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 434
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBar"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 435
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 436
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 430
    return-void

    #@1d
    .line 435
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0

    #@1f
    .line 438
    :catchall_0
    move-exception v1

    #@20
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 438
    throw v1
.end method

.method public showScreenPinningRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 493
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x13

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 488
    return-void

    #@17
    .line 495
    :catchall_0
    move-exception v1

    #@18
    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 495
    throw v1
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 564
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 565
    if-eqz p1, :cond_0

    #@c
    .line 566
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 567
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 572
    :goto_0
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x18

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 560
    return-void

    #@21
    .line 570
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
    .line 574
    :catchall_0
    move-exception v1

    #@27
    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 574
    throw v1
.end method

.method public toggleRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 460
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x10

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 455
    return-void

    #@17
    .line 462
    :catchall_0
    move-exception v1

    #@18
    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 462
    throw v1
.end method

.method public topAppWindowChanged(Z)V
    .locals 5
    .param p1, "menuVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 358
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBar"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 359
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 360
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 354
    return-void

    #@1d
    .line 359
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0

    #@1f
    .line 362
    :catchall_0
    move-exception v1

    #@20
    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 362
    throw v1
.end method
