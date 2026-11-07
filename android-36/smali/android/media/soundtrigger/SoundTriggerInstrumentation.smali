.class public final Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;,
        Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;,
        Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;,
        Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;,
        Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;,
        Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;
    }
.end annotation


# instance fields
.field private final blacklist mClientCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

.field private blacklist mClientToken:Landroid/os/IBinder;

.field private final blacklist mGlobalCallbackExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mModelSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRecognitionSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Lcom/android/internal/app/ISoundTriggerService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mClientCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientToken(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mClientToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mGlobalCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mModelSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mRecognitionSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClientToken(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mClientToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 2

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/ISoundTriggerService;Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;)V
    .registers 6
    .param p1, "service"    # Lcom/android/internal/app/ISoundTriggerService;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mLock:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mModelSessionMap:Ljava/util/Map;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mRecognitionSessionMap:Ljava/util/Map;

    .line 67
    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mClientToken:Landroid/os/IBinder;

    .line 567
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mClientCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    .line 568
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mGlobalCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 569
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mService:Lcom/android/internal/app/ISoundTriggerService;

    .line 571
    :try_start_2f
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;

    invoke-direct {v1, p0, v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V

    invoke-interface {p1, v1}, Lcom/android/internal/app/ISoundTriggerService;->attachInjection(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_38

    .line 574
    goto :goto_3c

    .line 572
    :catch_38
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 575
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method


# virtual methods
.method public blacklist setInPhoneCallState(Z)V
    .registers 4
    .param p1, "isInPhoneCall"    # Z

    .line 673
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mService:Lcom/android/internal/app/ISoundTriggerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/ISoundTriggerService;->setInPhoneCallState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 676
    nop

    .line 677
    return-void

    .line 674
    :catch_7
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setResourceContention(Z)V
    .registers 7
    .param p1, "isResourceContended"    # Z

    .line 633
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    if-eqz v1, :cond_2b

    .line 637
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 638
    .local v1, "current":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_33

    .line 640
    .local v2, "signal":Ljava/util/concurrent/CountDownLatch;
    :try_start_f
    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;

    invoke-direct {v3, p0, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, p1, v3}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->setResourceContention(ZLandroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_25
    .catchall {:try_start_f .. :try_end_17} :catchall_33

    .line 648
    nop

    .line 653
    :try_start_18
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1e
    .catchall {:try_start_18 .. :try_end_1b} :catchall_33

    .line 656
    nop

    .line 657
    .end local v1    # "current":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .end local v2    # "signal":Ljava/util/concurrent/CountDownLatch;
    :try_start_1c
    monitor-exit v0

    .line 658
    return-void

    .line 654
    .restart local v1    # "current":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .restart local v2    # "signal":Ljava/util/concurrent/CountDownLatch;
    :catch_1e
    move-exception v3

    .line 655
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .end local p1    # "isResourceContended":Z
    throw v4

    .line 646
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .restart local p1    # "isResourceContended":Z
    :catch_25
    move-exception v3

    .line 647
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .end local p1    # "isResourceContended":Z
    throw v4

    .line 635
    .end local v1    # "current":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .end local v2    # "signal":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .restart local p1    # "isResourceContended":Z
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Injection interface not set up"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .end local p1    # "isResourceContended":Z
    throw v1

    .line 657
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .restart local p1    # "isResourceContended":Z
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist triggerOnResourcesAvailable()V
    .registers 4

    .line 607
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_3
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz v1, :cond_15

    .line 613
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->triggerOnResourcesAvailable()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_f
    .catchall {:try_start_7 .. :try_end_c} :catchall_1d

    .line 616
    nop

    .line 617
    :try_start_d
    monitor-exit v0

    .line 618
    return-void

    .line 614
    :catch_f
    move-exception v1

    .line 615
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    throw v2

    .line 609
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to trigger HAL resources available before registration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    throw v1

    .line 617
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist triggerRestart()V
    .registers 4

    .line 586
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_3
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz v1, :cond_15

    .line 592
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->mInjectGlobalEvent:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->triggerRestart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_f
    .catchall {:try_start_7 .. :try_end_c} :catchall_1d

    .line 595
    nop

    .line 596
    :try_start_d
    monitor-exit v0

    .line 597
    return-void

    .line 593
    :catch_f
    move-exception v1

    .line 594
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    throw v2

    .line 588
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to trigger HAL restart before registration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    throw v1

    .line 596
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw v1
.end method
