.class public Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognitionSession"
.end annotation


# instance fields
.field private final blacklist mAudioSession:I

.field private final blacklist mDroppedConsumerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

.field private blacklist mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

.field private final blacklist mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private blacklist mRecognitionExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->wrap(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .param p2, "audioSession"    # I
    .param p3, "recognitionConfig"    # Landroid/media/soundtrigger/RecognitionConfig;
    .param p4, "injectRecognitionEvent"    # Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 421
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    .line 444
    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    .line 422
    iput p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mAudioSession:I

    .line 423
    invoke-static {p3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 424
    iput-object p4, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    .line 425
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$setRecognitionCallback$0(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 2
    .param p0, "droppedConsumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 398
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wrap$1(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 431
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist wrap(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;",
            ">;)V"
        }
    .end annotation

    .line 428
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;>;"
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 429
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    if-eqz v1, :cond_18

    .line 430
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 431
    .local v1, "callback":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 432
    .end local v1    # "callback":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;
    goto :goto_1d

    .line 433
    :cond_18
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_1d
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public blacklist clearRecognitionCallback()V
    .registers 3

    .line 413
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 414
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 415
    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getAudioSession()I
    .registers 2

    .line 325
    iget v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mAudioSession:I

    return v0
.end method

.method public blacklist getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    return-object v0
.end method

.method public blacklist setRecognitionCallback(Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 393
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_d
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    if-nez v1, :cond_31

    .line 397
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    .line 398
    .local v2, "droppedConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;>;"
    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 399
    .end local v2    # "droppedConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;>;"
    goto :goto_17

    .line 400
    :cond_2c
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 402
    :cond_31
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 403
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_37

    throw v1
.end method

.method public blacklist triggerAbortRecognition()V
    .registers 4

    .line 374
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 375
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_24

    .line 377
    :try_start_16
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->triggerAbortRecognition()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1e
    .catchall {:try_start_16 .. :try_end_1b} :catchall_24

    .line 380
    nop

    .line 381
    :try_start_1c
    monitor-exit v0

    .line 382
    return-void

    .line 378
    :catch_1e
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    throw v2

    .line 381
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist triggerRecognitionEvent([BLjava/util/List;)V
    .registers 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p2, "phraseExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    const/4 v0, 0x0

    .line 348
    .local v0, "converted":[Landroid/media/soundtrigger/PhraseRecognitionExtra;
    if-eqz p2, :cond_24

    .line 349
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 352
    .local v3, "phraseExtra":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v5

    aput-object v5, v0, v1

    .line 353
    .end local v3    # "phraseExtra":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    move v1, v4

    goto :goto_e

    .line 355
    .end local v4    # "i":I
    :cond_24
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 356
    :try_start_2b
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v3}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_48

    .line 358
    :try_start_3a
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v2, p1, v0}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->triggerRecognitionEvent([B[Landroid/media/soundtrigger/PhraseRecognitionExtra;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_42
    .catchall {:try_start_3a .. :try_end_3f} :catchall_48

    .line 361
    nop

    .line 362
    :try_start_40
    monitor-exit v1

    .line 363
    return-void

    .line 359
    :catch_42
    move-exception v2

    .line 360
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "converted":[Landroid/media/soundtrigger/PhraseRecognitionExtra;
    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    .end local p1    # "data":[B
    .end local p2    # "phraseExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    throw v3

    .line 362
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "converted":[Landroid/media/soundtrigger/PhraseRecognitionExtra;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
    .restart local p1    # "data":[B
    .restart local p2    # "phraseExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_48

    throw v2
.end method
