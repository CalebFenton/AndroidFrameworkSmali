.class Landroid/view/SurfaceView$SurfaceControlViewHostParent;
.super Landroid/view/ISurfaceControlViewHostParent$Stub;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceControlViewHostParent"
.end annotation


# instance fields
.field private blacklist mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 332
    invoke-direct {p0}, Landroid/view/ISurfaceControlViewHostParent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceView-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$forwardBackKeyToParent$1(Landroid/view/SurfaceView;Landroid/view/KeyEvent;)V
    .registers 9
    .param p0, "sv"    # Landroid/view/SurfaceView;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 404
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    goto :goto_63

    .line 407
    :cond_e
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 408
    .local v0, "vri":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_15

    .line 409
    return-void

    .line 411
    :cond_15
    iget-object v1, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 412
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    if-nez v1, :cond_22

    .line 413
    return-void

    .line 416
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 417
    .local v2, "timeDiff":J
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    const-string v5, "SurfaceView"

    if-lez v4, :cond_50

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore the input event that exceed the tolerance time, exceed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 422
    :cond_50
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v4

    if-nez v4, :cond_5c

    .line 423
    const-string v4, "Received invalid input event"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 426
    :cond_5c
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 428
    return-void

    .line 405
    .end local v0    # "vri":Landroid/view/ViewRootImpl;
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "timeDiff":J
    :cond_63
    :goto_63
    return-void
.end method

.method static synthetic blacklist lambda$updateParams$0(Landroid/view/SurfaceView;)V
    .registers 2
    .param p0, "sv"    # Landroid/view/SurfaceView;

    .line 386
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 387
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 389
    :cond_9
    return-void
.end method


# virtual methods
.method blacklist attach(Landroid/view/SurfaceView;)V
    .registers 5
    .param p1, "sv"    # Landroid/view/SurfaceView;

    .line 345
    monitor-enter p0

    .line 347
    :try_start_1
    iget-object v0, p1, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ISurfaceControlViewHost;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V

    .line 348
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 352
    goto :goto_17

    .line 353
    :catchall_d
    move-exception v0

    goto :goto_19

    .line 349
    :catch_f
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string v1, "SurfaceView"

    const-string v2, "Failed to attach parent interface to SCVH. Likely SCVH is alraedy dead."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    monitor-exit p0

    .line 354
    return-void

    .line 353
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_d

    throw v0
.end method

.method blacklist detach()V
    .registers 5

    .line 357
    monitor-enter p0

    .line 358
    :try_start_1
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_7

    .line 359
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    return-void

    .line 362
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ISurfaceControlViewHost;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14
    .catchall {:try_start_8 .. :try_end_13} :catchall_20

    .line 366
    goto :goto_1c

    .line 363
    :catch_14
    move-exception v1

    .line 364
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "SurfaceView"

    const-string v3, "Failed to remove parent interface from SCVH. Likely SCVH is already dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1c
    iput-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 368
    monitor-exit p0

    .line 369
    return-void

    .line 368
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 396
    monitor-enter p0

    .line 397
    :try_start_1
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 398
    .local v0, "sv":Landroid/view/SurfaceView;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    .line 399
    if-nez v0, :cond_7

    .line 400
    return-void

    .line 403
    :cond_7
    new-instance v1, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/view/KeyEvent;)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 429
    return-void

    .line 398
    .end local v0    # "sv":Landroid/view/SurfaceView;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public blacklist updateParams([Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "childAttrs"    # [Landroid/view/WindowManager$LayoutParams;

    .line 374
    monitor-enter p0

    .line 375
    :try_start_1
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 376
    .local v0, "sv":Landroid/view/SurfaceView;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_28

    .line 377
    if-nez v0, :cond_7

    .line 378
    return-void

    .line 381
    :cond_7
    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 382
    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 384
    invoke-virtual {v0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 385
    new-instance v1, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 391
    :cond_27
    return-void

    .line 376
    .end local v0    # "sv":Landroid/view/SurfaceView;
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
