.class Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Injection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;


# direct methods
.method public static synthetic blacklist $r8$lambda$7STV3bXHIsskGrX19VACLab-Ttg(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onSoundModelLoaded$0(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Gw5EcuilN3PqbTOHh0erJFnGHu0(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onPreempted$9()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SieEElEbNaKIlttFoufGjPLGYLM(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onClientAttached$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cOHOauLGDYdOQP_pbhcbWLpYzE4(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onRestarted$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ltfV1qBXSRSLuMu_jTKHgFOL6KU(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onFrameworkDetached$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$we6V-mcFo76WJ8aHSQjhHpZMuNs(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onClientDetached$8()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 453
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)V

    return-void
.end method

.method private synthetic blacklist lambda$onClientAttached$7()V
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onClientAttached()V

    return-void
.end method

.method private synthetic blacklist lambda$onClientDetached$8()V
    .registers 2

    .line 548
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onClientDetached()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameworkDetached$6()V
    .registers 2

    .line 530
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onFrameworkDetached()V

    return-void
.end method

.method static synthetic blacklist lambda$onParamSet$4(IILandroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 3
    .param p0, "modelParam"    # I
    .param p1, "value"    # I
    .param p2, "cb"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 511
    invoke-interface {p2, p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;->onParamSet(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreempted$9()V
    .registers 2

    .line 555
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onPreempted()V

    return-void
.end method

.method static synthetic blacklist lambda$onRecognitionStarted$2(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 2
    .param p0, "recogSession"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    .param p1, "cb"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 491
    invoke-interface {p1, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;->onRecognitionStarted(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRecognitionStopped$3(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 1
    .param p0, "cb"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 502
    invoke-interface {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;->onRecognitionStopped()V

    return-void
.end method

.method private synthetic blacklist lambda$onRestarted$5()V
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onRestarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onSoundModelLoaded$0(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V
    .registers 3
    .param p1, "modelSession"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    .line 468
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onModelLoaded(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSoundModelUnloaded$1(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 1
    .param p0, "cb"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 477
    invoke-interface {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;->onModelUnloaded()V

    return-void
.end method


# virtual methods
.method public blacklist onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 536
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 537
    :try_start_7
    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_19

    monitor-exit v0

    return-void

    .line 538
    :cond_19
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fputmClientToken(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/os/IBinder;)V

    .line 539
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda4;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 540
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public blacklist onClientDetached(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 545
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 546
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientToken(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_11

    monitor-exit v0

    return-void

    .line 547
    :cond_11
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fputmClientToken(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/os/IBinder;)V

    .line 548
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda3;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 549
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 5
    .param p1, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 528
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 529
    :try_start_7
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_19

    monitor-exit v0

    return-void

    .line 530
    :cond_19
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda9;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 531
    monitor-exit v0

    .line 532
    return-void

    .line 531
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 7
    .param p1, "modelParam"    # I
    .param p2, "value"    # I
    .param p3, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    .line 508
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 509
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p3}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    .line 510
    .local v1, "clientModelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    if-nez v1, :cond_1b

    monitor-exit v0

    return-void

    .line 511
    :cond_1b
    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, p2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-static {v1, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->-$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;Ljava/util/function/Consumer;)V

    .line 512
    .end local v1    # "clientModelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    monitor-exit v0

    .line 513
    return-void

    .line 512
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist onPreempted()V
    .registers 3

    .line 555
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda2;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 557
    return-void
.end method

.method public blacklist onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 13
    .param p1, "audioSessionHandle"    # I
    .param p2, "config"    # Landroid/media/soundtrigger/RecognitionConfig;
    .param p3, "recognitionInjection"    # Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .param p4, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    .line 484
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 485
    :try_start_7
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p4}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_42

    .line 486
    .local v0, "clientModelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    if-nez v0, :cond_20

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    return-void

    .line 492
    .end local v0    # "clientModelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    :catchall_1b
    move-exception v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    goto :goto_46

    .line 487
    .restart local v0    # "clientModelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    :cond_20
    :try_start_20
    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_42

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "audioSessionHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    .end local p3    # "recognitionInjection":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .local v4, "audioSessionHandle":I
    .local v5, "config":Landroid/media/soundtrigger/RecognitionConfig;
    .local v6, "recognitionInjection":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    :try_start_28
    invoke-direct/range {v2 .. v7}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V

    .line 489
    .local v2, "recogSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v6}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance p1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda0;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;)V

    invoke-static {v0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->-$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;Ljava/util/function/Consumer;)V

    .line 492
    .end local v0    # "clientModelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    .end local v2    # "recogSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    monitor-exit v1

    .line 493
    return-void

    .line 492
    .end local v4    # "audioSessionHandle":I
    .end local v5    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    .end local v6    # "recognitionInjection":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .restart local p1    # "audioSessionHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    .restart local p3    # "recognitionInjection":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    :catchall_42
    move-exception v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "audioSessionHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    .end local p3    # "recognitionInjection":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .restart local v4    # "audioSessionHandle":I
    .restart local v5    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    .restart local v6    # "recognitionInjection":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_48

    throw v0

    :catchall_48
    move-exception v0

    goto :goto_46
.end method

.method public blacklist onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .registers 5
    .param p1, "recognitionSession"    # Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    .line 497
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 498
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    .line 499
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;

    .line 500
    .local v1, "clientRecognitionSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    if-nez v1, :cond_1b

    monitor-exit v0

    return-void

    .line 501
    :cond_1b
    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->-$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Ljava/util/function/Consumer;)V

    .line 503
    .end local v1    # "clientRecognitionSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 5
    .param p1, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 518
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 519
    :try_start_7
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_19

    monitor-exit v0

    return-void

    .line 520
    :cond_19
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 521
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 522
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda5;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 523
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public blacklist onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 13
    .param p1, "model"    # Landroid/media/soundtrigger/SoundModel;
    .param p2, "phrases"    # [Landroid/media/soundtrigger/Phrase;
    .param p3, "modelInjection"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .param p4, "globalSession"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 464
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 465
    :try_start_7
    invoke-interface {p4}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_46

    if-eq v0, v2, :cond_1e

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    return-void

    .line 469
    :catchall_19
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    goto :goto_4a

    .line 466
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_46

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    .end local p2    # "phrases":[Landroid/media/soundtrigger/Phrase;
    .end local p3    # "modelInjection":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .local v4, "model":Landroid/media/soundtrigger/SoundModel;
    .local v5, "phrases":[Landroid/media/soundtrigger/Phrase;
    .local v6, "modelInjection":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    :try_start_26
    invoke-direct/range {v2 .. v7}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V

    .line 467
    .local v2, "modelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v6}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 469
    .end local v2    # "modelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    monitor-exit v1

    .line 470
    return-void

    .line 469
    .end local v4    # "model":Landroid/media/soundtrigger/SoundModel;
    .end local v5    # "phrases":[Landroid/media/soundtrigger/Phrase;
    .end local v6    # "modelInjection":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .restart local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    .restart local p2    # "phrases":[Landroid/media/soundtrigger/Phrase;
    .restart local p3    # "modelInjection":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    :catchall_46
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    .end local p2    # "phrases":[Landroid/media/soundtrigger/Phrase;
    .end local p3    # "modelInjection":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .restart local v4    # "model":Landroid/media/soundtrigger/SoundModel;
    .restart local v5    # "phrases":[Landroid/media/soundtrigger/Phrase;
    .restart local v6    # "modelInjection":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_4c

    throw v0

    :catchall_4c
    move-exception v0

    goto :goto_4a
.end method

.method public blacklist onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 5
    .param p1, "modelSession"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    .line 474
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 475
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    .line 476
    .local v1, "clientModelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    if-nez v1, :cond_1b

    monitor-exit v0

    return-void

    .line 477
    :cond_1b
    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->-$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;Ljava/util/function/Consumer;)V

    .line 478
    .end local v1    # "clientModelSession":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4
    .param p1, "globalInjection"    # Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 456
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 457
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fputmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
