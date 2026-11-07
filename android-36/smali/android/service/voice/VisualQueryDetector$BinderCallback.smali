.class Landroid/service/voice/VisualQueryDetector$BinderCallback;
.super Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;
.source "VisualQueryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$-tKnTMnRitnHJVJ1QejdBxaDso4(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onResultDetected$3(Landroid/service/voice/VisualQueryDetectedResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3QuqGV17w2RgKshMdm62fzH_WLU(Landroid/service/voice/VisualQueryDetector$BinderCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onQueryFinished$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6k6ze2sOAN54VLsAwhm69RcZ_RU(Landroid/service/voice/VisualQueryDetector$BinderCallback;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onQueryDetected$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Iq7gexv-dXivxwpxaX3cFpvo8qk(Landroid/service/voice/VisualQueryDetector$BinderCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onQueryRejected$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eEyHV_Ne6JQDd4oq3wVz4ow2NdQ(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onVisualQueryDetectionServiceFailure$8(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gVWbOD0t1iLAMa99yHeuwTE0hjY(Landroid/service/voice/VisualQueryDetector$BinderCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onQueryFinished$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hlsXz9KMwQgh5y7PwjvPL564omM(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onVisualQueryDetectionServiceFailure$9(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jp_Q1_Uw3RT7Gvw59X3-fgghAbs(Landroid/service/voice/VisualQueryDetector$BinderCallback;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onQueryDetected$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$l3gtrPvxjhRgS3abVqtz5UY2NTU(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onResultDetected$2(Landroid/service/voice/VisualQueryDetectedResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wVwStp8kfo1CfKoVOeyvo5yVRTY(Landroid/service/voice/VisualQueryDetector$BinderCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->lambda$onQueryRejected$6()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Ljava/lang/Object;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/voice/VisualQueryDetector$Callback;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 441
    invoke-direct {p0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;-><init>()V

    .line 442
    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 443
    iput-object p2, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    .line 444
    iput-object p3, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mLock:Ljava/lang/Object;

    .line 445
    return-void
.end method

.method private synthetic blacklist lambda$onQueryDetected$0(Ljava/lang/String;)V
    .registers 3
    .param p1, "partialQuery"    # Ljava/lang/String;

    .line 453
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onQueryDetected(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onQueryDetected$1(Ljava/lang/String;)V
    .registers 5
    .param p1, "partialQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    monitor-exit v0

    .line 455
    return-void

    .line 454
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private synthetic blacklist lambda$onQueryFinished$4()V
    .registers 2

    .line 474
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {v0}, Landroid/service/voice/VisualQueryDetector$Callback;->onQueryFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onQueryFinished$5()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda3;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 475
    monitor-exit v0

    .line 476
    return-void

    .line 475
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private synthetic blacklist lambda$onQueryRejected$6()V
    .registers 2

    .line 484
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {v0}, Landroid/service/voice/VisualQueryDetector$Callback;->onQueryRejected()V

    return-void
.end method

.method private synthetic blacklist lambda$onQueryRejected$7()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda8;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 485
    monitor-exit v0

    .line 486
    return-void

    .line 485
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private synthetic blacklist lambda$onResultDetected$2(Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 3
    .param p1, "partialResult"    # Landroid/service/voice/VisualQueryDetectedResult;

    .line 464
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onQueryDetected(Landroid/service/voice/VisualQueryDetectedResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResultDetected$3(Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 5
    .param p1, "partialResult"    # Landroid/service/voice/VisualQueryDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda7;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectedResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 465
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private synthetic blacklist lambda$onVisualQueryDetectionServiceFailure$8(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 4
    .param p1, "visualQueryDetectionServiceFailure"    # Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 496
    if-eqz p1, :cond_8

    .line 497
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    goto :goto_f

    .line 499
    :cond_8
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    const-string v1, "Error data is null"

    invoke-interface {v0, v1}, Landroid/service/voice/VisualQueryDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    .line 501
    :goto_f
    return-void
.end method

.method private synthetic blacklist lambda$onVisualQueryDetectionServiceFailure$9(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 4
    .param p1, "visualQueryDetectionServiceFailure"    # Landroid/service/voice/VisualQueryDetectionServiceFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onQueryDetected(Ljava/lang/String;)V
    .registers 4
    .param p1, "partialQuery"    # Ljava/lang/String;

    .line 450
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallback#onQueryDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda5;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 456
    return-void
.end method

.method public blacklist onQueryFinished()V
    .registers 3

    .line 471
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallback#onQueryFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 477
    return-void
.end method

.method public blacklist onQueryRejected()V
    .registers 3

    .line 481
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallback#onQueryRejected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda9;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 487
    return-void
.end method

.method public blacklist onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 4
    .param p1, "partialResult"    # Landroid/service/voice/VisualQueryDetectedResult;

    .line 461
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallback#onResultDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda4;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectedResult;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 467
    return-void
.end method

.method public blacklist onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 5
    .param p1, "visualQueryDetectionServiceFailure"    # Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 493
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinderCallback#onVisualQueryDetectionServiceFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 502
    return-void
.end method
