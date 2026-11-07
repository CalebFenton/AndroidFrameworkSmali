.class public final Landroid/os/ProfilingManager;
.super Ljava/lang/Object;
.source "ProfilingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;,
        Landroid/os/ProfilingManager$ProfilingType;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist KEY_BUFFER_FILL_POLICY:Ljava/lang/String; = "KEY_BUFFER_FILL_POLICY"

.field public static final blacklist KEY_DURATION_MS:Ljava/lang/String; = "KEY_DURATION_MS"

.field public static final blacklist KEY_FREQUENCY_HZ:Ljava/lang/String; = "KEY_FREQUENCY_HZ"

.field public static final blacklist KEY_SAMPLING_INTERVAL_BYTES:Ljava/lang/String; = "KEY_SAMPLING_INTERVAL_BYTES"

.field public static final blacklist KEY_SIZE_KB:Ljava/lang/String; = "KEY_SIZE_KB"

.field public static final blacklist KEY_TRACK_JAVA_ALLOCATIONS:Ljava/lang/String; = "KEY_TRACK_JAVA_ALLOCATIONS"

.field public static final whitelist PROFILING_TYPE_HEAP_PROFILE:I = 0x2

.field public static final whitelist PROFILING_TYPE_JAVA_HEAP_DUMP:I = 0x1

.field public static final whitelist PROFILING_TYPE_STACK_SAMPLING:I = 0x3

.field public static final whitelist PROFILING_TYPE_SYSTEM_TRACE:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist VALUE_BUFFER_FILL_POLICY_DISCARD:I = 0x1

.field public static final blacklist VALUE_BUFFER_FILL_POLICY_RING_BUFFER:I = 0x2


# instance fields
.field public final blacklist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field public blacklist mProfilingService:Landroid/os/IProfilingService;


# direct methods
.method public static synthetic blacklist $r8$lambda$pBKPoNznrCqOVDGCuJtfgD762VI(Landroid/os/ProfilingManager;Landroid/os/IProfilingService;Ljava/util/UUID;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/ProfilingManager;->lambda$requestProfiling$2(Landroid/os/IProfilingService;Ljava/util/UUID;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/os/ProfilingManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/os/ProfilingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/os/ProfilingManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    const-class v0, Landroid/os/ProfilingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ProfilingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    .line 220
    iput-object p1, p0, Landroid/os/ProfilingManager;->mContext:Landroid/content/Context;

    .line 221
    return-void
.end method

.method static synthetic blacklist lambda$registerForAllProfilingResults$4(Ljava/util/function/Consumer;)V
    .registers 7
    .param p0, "listener"    # Ljava/util/function/Consumer;

    .line 378
    new-instance v0, Landroid/os/ProfilingResult;

    .line 381
    invoke-static {}, Landroid/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result v1

    .line 382
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Binder exception processing request"

    invoke-direct/range {v0 .. v5}, Landroid/os/ProfilingResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestProfiling$0(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 8
    .param p0, "listener"    # Ljava/util/function/Consumer;
    .param p1, "tag"    # Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/os/ProfilingResult;

    .line 308
    invoke-static {}, Landroid/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result v1

    .line 309
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v4, "ProfilingService is not available"

    move-object v3, p1

    .end local p1    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/os/ProfilingResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestProfiling$1(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 8
    .param p0, "listener"    # Ljava/util/function/Consumer;
    .param p1, "tag"    # Ljava/lang/String;

    .line 316
    new-instance v0, Landroid/os/ProfilingResult;

    .line 319
    invoke-static {}, Landroid/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result v1

    .line 320
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v4, "Failed to resolve package name"

    move-object v3, p1

    .end local p1    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/os/ProfilingResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestProfiling$2(Landroid/os/IProfilingService;Ljava/util/UUID;)V
    .registers 8
    .param p1, "service"    # Landroid/os/IProfilingService;
    .param p2, "key"    # Ljava/util/UUID;

    .line 333
    iget-object v0, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_3
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    .line 336
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    .line 335
    invoke-interface {p1, v1, v2, v3, v4}, Landroid/os/IProfilingService;->requestCancel(JJ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_11
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    .line 339
    goto :goto_12

    .line 340
    :catchall_f
    move-exception v1

    goto :goto_14

    .line 337
    :catch_11
    move-exception v1

    .line 340
    :goto_12
    :try_start_12
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    throw v1
.end method

.method static synthetic blacklist lambda$requestProfiling$3(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 8
    .param p0, "listener"    # Ljava/util/function/Consumer;
    .param p1, "tag"    # Ljava/lang/String;

    .line 346
    new-instance v0, Landroid/os/ProfilingResult;

    .line 349
    invoke-static {}, Landroid/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result v1

    .line 350
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v4, "Binder exception processing request"

    move-object v3, p1

    .end local p1    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/os/ProfilingResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist toValueParcelList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ProfilingTrigger;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/ProfilingTriggerValueParcel;",
            ">;"
        }
    .end annotation

    .line 505
    .local p1, "triggerList":Ljava/util/List;, "Ljava/util/List<Landroid/os/ProfilingTrigger;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v0, "triggerValueParcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/ProfilingTriggerValueParcel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 509
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ProfilingTrigger;

    invoke-virtual {v2}, Landroid/os/ProfilingTrigger;->toValueParcel()Landroid/os/ProfilingTriggerValueParcel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 512
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public whitelist addProfilingTriggers(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ProfilingTrigger;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p1, "triggers":Ljava/util/List;, "Ljava/util/List<Landroid/os/ProfilingTrigger;>;"
    iget-object v0, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 477
    monitor-exit v0

    return-void

    .line 480
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/ProfilingManager;->getOrCreateIProfilingServiceLocked(Z)Landroid/os/IProfilingService;

    move-result-object v1

    .line 481
    .local v1, "service":Landroid/os/IProfilingService;
    if-nez v1, :cond_14

    .line 484
    monitor-exit v0

    return-void

    .line 487
    :cond_14
    iget-object v2, p0, Landroid/os/ProfilingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_1e

    .line 490
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_31

    return-void

    .line 494
    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Landroid/os/ProfilingManager;->toValueParcelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/os/IProfilingService;->addProfilingTriggers(Ljava/util/List;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_28
    .catchall {:try_start_1e .. :try_end_25} :catchall_31

    .line 498
    nop

    .line 499
    .end local v1    # "service":Landroid/os/IProfilingService;
    .end local v2    # "packageName":Ljava/lang/String;
    :try_start_26
    monitor-exit v0

    .line 500
    return-void

    .line 495
    .restart local v1    # "service":Landroid/os/IProfilingService;
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_28
    move-exception v3

    .line 497
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to add profiling triggers."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/ProfilingManager;
    .end local p1    # "triggers":Ljava/util/List;, "Ljava/util/List<Landroid/os/ProfilingTrigger;>;"
    throw v4

    .line 499
    .end local v1    # "service":Landroid/os/IProfilingService;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/ProfilingManager;
    .restart local p1    # "triggers":Ljava/util/List;, "Ljava/util/List<Landroid/os/ProfilingTrigger;>;"
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist clearProfilingTriggers()V
    .registers 7

    .line 552
    iget-object v0, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Landroid/os/ProfilingManager;->getOrCreateIProfilingServiceLocked(Z)Landroid/os/IProfilingService;

    move-result-object v1

    .line 554
    .local v1, "service":Landroid/os/IProfilingService;
    if-nez v1, :cond_c

    .line 559
    monitor-exit v0

    return-void

    .line 562
    :cond_c
    iget-object v2, p0, Landroid/os/ProfilingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_16

    .line 565
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_25

    return-void

    .line 569
    :cond_16
    :try_start_16
    invoke-interface {v1, v2}, Landroid/os/IProfilingService;->clearProfilingTriggers(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    .line 573
    nop

    .line 574
    .end local v1    # "service":Landroid/os/IProfilingService;
    .end local v2    # "packageName":Ljava/lang/String;
    :try_start_1a
    monitor-exit v0

    .line 575
    return-void

    .line 570
    .restart local v1    # "service":Landroid/os/IProfilingService;
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_1c
    move-exception v3

    .line 572
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to clear profiling triggers."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/ProfilingManager;
    throw v4

    .line 574
    .end local v1    # "service":Landroid/os/IProfilingService;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/ProfilingManager;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist getOrCreateIProfilingServiceLocked(Z)Landroid/os/IProfilingService;
    .registers 5
    .param p1, "isGeneralListener"    # Z

    .line 585
    iget-object v0, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    if-eqz v0, :cond_7

    .line 586
    iget-object v0, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    return-object v0

    .line 589
    :cond_7
    nop

    .line 590
    invoke-static {}, Landroid/os/ProfilingFrameworkInitializer;->getProfilingServiceManager()Landroid/os/ProfilingServiceManager;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Landroid/os/ProfilingServiceManager;->getProfilingServiceRegisterer()Landroid/os/ProfilingServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ProfilingServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 589
    invoke-static {v0}, Landroid/os/IProfilingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProfilingService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    .line 592
    iget-object v0, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    if-nez v0, :cond_21

    .line 594
    iget-object v0, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    return-object v0

    .line 597
    :cond_21
    :try_start_21
    iget-object v0, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    new-instance v1, Landroid/os/ProfilingManager$1;

    invoke-direct {v1, p0}, Landroid/os/ProfilingManager$1;-><init>(Landroid/os/ProfilingManager;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IProfilingService;->registerResultsCallback(ZLandroid/os/IProfilingResultCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_2f

    .line 783
    nop

    .line 784
    iget-object v0, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    return-object v0

    .line 779
    :catch_2f
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to register profiling result callback. All Profiling requests will fail."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist registerForAllProfilingResults(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ProfilingResult;>;"
    iget-object v0, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    iget-object v1, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 375
    .local v1, "shouldNotifyService":Z
    :goto_b
    invoke-virtual {p0, v2}, Landroid/os/ProfilingManager;->getOrCreateIProfilingServiceLocked(Z)Landroid/os/IProfilingService;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 378
    new-instance v2, Landroid/os/ProfilingManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Landroid/os/ProfilingManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 383
    monitor-exit v0

    return-void

    .line 385
    :cond_1b
    iget-object v2, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/util/UUID;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_38

    .line 387
    if-eqz v1, :cond_36

    .line 391
    :try_start_28
    iget-object v2, p0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    invoke-interface {v2}, Landroid/os/IProfilingService;->generalListenerAdded()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_38

    .line 397
    goto :goto_36

    .line 392
    :catch_2e
    move-exception v2

    .line 395
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2f
    sget-object v3, Landroid/os/ProfilingManager;->TAG:Ljava/lang/String;

    const-string v4, "Exception notifying service of general callback, queued callbacks will not occur."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v1    # "shouldNotifyService":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_36
    :goto_36
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public whitelist removeProfilingTriggersByType([I)V
    .registers 8
    .param p1, "triggers"    # [I

    .line 518
    iget-object v0, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    array-length v1, p1

    if-nez v1, :cond_8

    .line 522
    monitor-exit v0

    return-void

    .line 525
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/ProfilingManager;->getOrCreateIProfilingServiceLocked(Z)Landroid/os/IProfilingService;

    move-result-object v1

    .line 526
    .local v1, "service":Landroid/os/IProfilingService;
    if-nez v1, :cond_11

    .line 531
    monitor-exit v0

    return-void

    .line 534
    :cond_11
    iget-object v2, p0, Landroid/os/ProfilingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_1b

    .line 537
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2a

    return-void

    .line 541
    :cond_1b
    :try_start_1b
    invoke-interface {v1, p1, v2}, Landroid/os/IProfilingService;->removeProfilingTriggers([ILjava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2a

    .line 545
    nop

    .line 546
    .end local v1    # "service":Landroid/os/IProfilingService;
    .end local v2    # "packageName":Ljava/lang/String;
    :try_start_1f
    monitor-exit v0

    .line 547
    return-void

    .line 542
    .restart local v1    # "service":Landroid/os/IProfilingService;
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_21
    move-exception v3

    .line 544
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to remove profiling triggers."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/ProfilingManager;
    .end local p1    # "triggers":[I
    throw v4

    .line 546
    .end local v1    # "service":Landroid/os/IProfilingService;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/ProfilingManager;
    .restart local p1    # "triggers":[I
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist requestProfiling(ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 21
    .param p1, "profilingType"    # I
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p6, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ProfilingResult;>;"
    move-object/from16 v3, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    iget-object v12, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 291
    :try_start_b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    move-object v13, v0

    .line 293
    .local v13, "key":Ljava/util/UUID;
    if-eqz v10, :cond_1f

    if-eqz v11, :cond_1f

    .line 295
    iget-object v0, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;

    invoke-direct {v1, v10, v11, v13}, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 296
    :cond_1f
    iget-object v0, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 303
    :goto_27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/ProfilingManager;->getOrCreateIProfilingServiceLocked(Z)Landroid/os/IProfilingService;

    move-result-object v0

    .line 304
    .local v0, "service":Landroid/os/IProfilingService;
    if-nez v0, :cond_38

    .line 305
    new-instance v1, Landroid/os/ProfilingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v11, v3}, Landroid/os/ProfilingManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_36} :catch_70
    .catchall {:try_start_b .. :try_end_36} :catchall_6e

    .line 311
    :try_start_36
    monitor-exit v12
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_6e

    return-void

    .line 314
    :cond_38
    :try_start_38
    iget-object v1, p0, Landroid/os/ProfilingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_4a

    .line 316
    new-instance v1, Landroid/os/ProfilingManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v11, v3}, Landroid/os/ProfilingManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_48} :catch_70
    .catchall {:try_start_38 .. :try_end_48} :catchall_6e

    .line 322
    :try_start_48
    monitor-exit v12
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_6e

    return-void

    .line 327
    :cond_4a
    nop

    .line 328
    :try_start_4b
    invoke-virtual {v13}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v13}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    .line 327
    move v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v0 .. v8}, Landroid/os/IProfilingService;->requestProfiling(ILandroid/os/Bundle;Ljava/lang/String;JJLjava/lang/String;)V

    .line 330
    if-eqz v9, :cond_63

    .line 331
    new-instance v1, Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, v13}, Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/ProfilingManager;Landroid/os/IProfilingService;Ljava/util/UUID;)V

    invoke-virtual {v9, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_63} :catch_70
    .catchall {:try_start_4b .. :try_end_63} :catchall_6e

    .line 352
    .end local v0    # "service":Landroid/os/IProfilingService;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v13    # "key":Ljava/util/UUID;
    :cond_63
    nop

    .line 353
    :try_start_64
    monitor-exit v12
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_6e

    .line 354
    return-void

    .line 298
    .restart local v13    # "key":Ljava/util/UUID;
    :cond_66
    :try_start_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No listeners have been registered. Request has been discarded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/ProfilingManager;
    .end local p1    # "profilingType":I
    .end local p2    # "parameters":Landroid/os/Bundle;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ProfilingResult;>;"
    throw v0
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6e} :catch_70
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6e

    .line 353
    .end local v13    # "key":Ljava/util/UUID;
    .restart local p0    # "this":Landroid/os/ProfilingManager;
    .restart local p1    # "profilingType":I
    .restart local p2    # "parameters":Landroid/os/Bundle;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ProfilingResult;>;"
    :catchall_6e
    move-exception v0

    goto :goto_81

    .line 344
    :catch_70
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_71
    new-instance v1, Landroid/os/ProfilingManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v11, v3}, Landroid/os/ProfilingManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 351
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to request profiling."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/ProfilingManager;
    .end local p1    # "profilingType":I
    .end local p2    # "parameters":Landroid/os/Bundle;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ProfilingResult;>;"
    throw v1

    .line 353
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/ProfilingManager;
    .restart local p1    # "profilingType":I
    .restart local p2    # "parameters":Landroid/os/Bundle;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ProfilingResult;>;"
    :goto_81
    monitor-exit v12
    :try_end_82
    .catchall {:try_start_71 .. :try_end_82} :catchall_6e

    throw v0
.end method

.method public whitelist unregisterForAllProfilingResults(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ProfilingResult;>;"
    iget-object v0, p0, Landroid/os/ProfilingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    iget-object v1, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 415
    monitor-exit v0

    return-void

    .line 418
    :cond_d
    if-nez p1, :cond_36

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v1, "listenersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 422
    iget-object v3, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;

    .line 425
    .local v3, "wrapper":Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;
    iget-object v4, v3, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mKey:Ljava/util/UUID;

    if-nez v4, :cond_2c

    .line 426
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v3    # "wrapper":Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 429
    .end local v2    # "i":I
    :cond_2f
    iget-object v2, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 430
    nop

    .end local v1    # "listenersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;>;"
    goto :goto_59

    .line 432
    :cond_36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    iget-object v2, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 433
    iget-object v2, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;

    .line 434
    .local v2, "wrapper":Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;
    iget-object v3, v2, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 435
    iget-object v3, p0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 436
    monitor-exit v0

    return-void

    .line 432
    .end local v2    # "wrapper":Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 440
    .end local v1    # "i":I
    :cond_59
    :goto_59
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method
