.class Landroid/app/UiModeManager$Globals;
.super Landroid/app/IUiModeManagerCallback$Stub;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private blacklist mContrast:F

.field private final blacklist mContrastChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/UiModeManager$ContrastChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mForceInvertState:I

.field private final blacklist mForceInvertStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/UiModeManager$ForceInvertStateChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGlobalsLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/app/IUiModeManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;
    .registers 1

    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->addContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->addForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;)F
    .registers 1

    invoke-direct {p0}, Landroid/app/UiModeManager$Globals;->getContrast()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetForceInvertState(Landroid/app/UiModeManager$Globals;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/UiModeManager$Globals;->getForceInvertState()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals;->removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals;->removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/IUiModeManager;)V
    .registers 5
    .param p1, "service"    # Landroid/app/IUiModeManager;

    .line 466
    invoke-direct {p0}, Landroid/app/IUiModeManagerCallback$Stub;-><init>()V

    .line 450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    .line 460
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    .line 463
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    .line 467
    iput-object p1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    .line 469
    :try_start_20
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v0, p0}, Landroid/app/IUiModeManager;->addCallback(Landroid/app/IUiModeManagerCallback;)V

    .line 470
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getContrast()F

    move-result v0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    .line 471
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getForceInvertState()I

    move-result v0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_35} :catch_36

    .line 474
    goto :goto_3e

    .line 472
    :catch_36
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UiModeManager"

    const-string v2, "Setup failed: UiModeManagerService is dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method private blacklist addContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/UiModeManager$ContrastChangeListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 527
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist addForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/UiModeManager$ForceInvertStateChangeListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 486
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    monitor-exit v0

    .line 489
    return-void

    .line 488
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist getContrast()F
    .registers 3

    .line 521
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_3
    iget v1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    monitor-exit v0

    return v1

    .line 523
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private blacklist getForceInvertState()I
    .registers 3

    .line 479
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_3
    iget v1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    monitor-exit v0

    return v1

    .line 481
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$2(Landroid/app/UiModeManager$ContrastChangeListener;F)V
    .registers 2
    .param p0, "listener"    # Landroid/app/UiModeManager$ContrastChangeListener;
    .param p1, "contrast"    # F

    .line 545
    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ContrastChangeListener;->onContrastChanged(F)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$3(FLandroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "contrast"    # F
    .param p1, "listener"    # Landroid/app/UiModeManager$ContrastChangeListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 544
    new-instance v0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;-><init>(Landroid/app/UiModeManager$ContrastChangeListener;F)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyForceInvertStateChanged$0(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/app/UiModeManager$ForceInvertStateChangeListener;
    .param p1, "forceInvertState"    # I

    .line 513
    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ForceInvertStateChangeListener;->onForceInvertStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyForceInvertStateChanged$1(ILandroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p0, "forceInvertState"    # I
    .param p1, "listener"    # Landroid/app/UiModeManager$ForceInvertStateChangeListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 513
    .local v0, "token":J
    :try_start_4
    new-instance v2, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p0}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda2;-><init>(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    nop

    .line 517
    return-void

    .line 515
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    throw v2
.end method

.method private blacklist removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/UiModeManager$ContrastChangeListener;

    .line 533
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    monitor-exit v0

    .line 536
    return-void

    .line 535
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    .line 492
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    monitor-exit v0

    .line 495
    return-void

    .line 494
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public blacklist notifyContrastChanged(F)V
    .registers 7
    .param p1, "contrast"    # F

    .line 540
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_3
    iget v1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v1, v1, v3

    if-gez v1, :cond_16

    monitor-exit v0

    return-void

    .line 543
    :cond_16
    iput p1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    .line 544
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist notifyForceInvertStateChanged(I)V
    .registers 5
    .param p1, "forceInvertState"    # I

    .line 499
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 500
    .local v0, "listeners":Ljava/util/Map;, "Ljava/util/Map<Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;>;"
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_8
    iget v2, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    if-ne v2, p1, :cond_e

    .line 503
    monitor-exit v1

    return-void

    .line 506
    :cond_e
    iput p1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    .line 507
    iget-object v2, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 508
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1f

    .line 510
    new-instance v1, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 518
    return-void

    .line 508
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method
