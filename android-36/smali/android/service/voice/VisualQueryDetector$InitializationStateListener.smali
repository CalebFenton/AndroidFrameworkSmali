.class Landroid/service/voice/VisualQueryDetector$InitializationStateListener;
.super Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.source "VisualQueryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationStateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$-3N5C9rvlU46hVbtHvv1Ecug7b8(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onProcessRestarted$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$-RUgUS0HD6bCER8kDNRkQk0NvM8(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onStatusReported$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FnaZMcGagFqMZtTlVIHmTfT7RQg(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onVisualQueryDetectionServiceFailure$5(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HkW_IKfbITPRlnv_UUqrrAGmvs4(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onOpenFile$8(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XszvDLE90dl1R8Fu5qOSAFHy884(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onUnknownFailure$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y9ACnBPocODuXjAOq8zsN55qfsQ(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onVisualQueryDetectionServiceFailure$4(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d6apbN1023kOf6qiPqeLLyupg5w(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onProcessRestarted$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ooFNlm9IlA9mEwzVVKYmcp3KG3g(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onOpenFile$9(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$prTQ1TeT0T-47CkokmDICumWzhE(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onUnknownFailure$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xLC2WetRsOlTPz0E9T8PQ3kFXpA(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onStatusReported$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Landroid/content/Context;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/voice/VisualQueryDetector$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .line 513
    invoke-direct {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;-><init>()V

    .line 514
    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 515
    iput-object p2, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    .line 516
    iput-object p3, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mContext:Landroid/content/Context;

    .line 517
    return-void
.end method

.method private synthetic blacklist lambda$onOpenFile$8(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 621
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOpenFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "under internal app storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 623
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .line 625
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v2, 0x10000000

    :try_start_30
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 626
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Successfully opened a file with ParcelFileDescriptor."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_3e} :catch_45
    .catchall {:try_start_30 .. :try_end_3e} :catchall_43

    .line 630
    nop

    :goto_3f
    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 631
    goto :goto_51

    .line 630
    :catchall_43
    move-exception v2

    goto :goto_52

    .line 627
    :catch_45
    move-exception v2

    .line 628
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_46
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot open file. No ParcelFileDescriptor returned."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    .line 630
    nop

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3f

    .line 632
    :goto_51
    return-void

    .line 630
    :goto_52
    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 631
    throw v2
.end method

.method private synthetic blacklist lambda$onOpenFile$9(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessRestarted$2()V
    .registers 2

    .line 578
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {v0}, Landroid/service/voice/VisualQueryDetector$Callback;->onVisualQueryDetectionServiceRestarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessRestarted$3()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStatusReported$0(I)V
    .registers 3
    .param p1, "status"    # I

    .line 569
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onVisualQueryDetectionServiceInitialized(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStatusReported$1(I)V
    .registers 4
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnknownFailure$6(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 613
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, p1

    goto :goto_c

    :cond_a
    const-string v1, "Error data is null"

    .line 613
    :goto_c
    invoke-interface {v0, v1}, Landroid/service/voice/VisualQueryDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private synthetic blacklist lambda$onUnknownFailure$7(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda3;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onVisualQueryDetectionServiceFailure$4(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 4
    .param p1, "visualQueryDetectionServiceFailure"    # Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 596
    if-eqz p1, :cond_8

    .line 597
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    goto :goto_f

    .line 599
    :cond_8
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    const-string v1, "Error data is null"

    invoke-interface {v0, v1}, Landroid/service/voice/VisualQueryDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    .line 601
    :goto_f
    return-void
.end method

.method private synthetic blacklist lambda$onVisualQueryDetectionServiceFailure$5(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 4
    .param p1, "visualQueryDetectionServiceFailure"    # Landroid/service/voice/VisualQueryDetectionServiceFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda5;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 2
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    return-void
.end method

.method public blacklist onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 5
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHotwordDetectionServiceFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method public blacklist onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 3
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "result"    # Landroid/service/voice/HotwordDetectedResult;

    .line 526
    return-void
.end method

.method public blacklist onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 2
    .param p1, "result"    # Landroid/service/voice/HotwordDetectedResult;

    .line 533
    return-void
.end method

.method public blacklist onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinderCallback#onOpenFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda8;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 633
    return-void
.end method

.method public blacklist onProcessRestarted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onProcessRestarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda9;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 579
    return-void
.end method

.method public blacklist onRecognitionPaused()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    return-void
.end method

.method public blacklist onRecognitionResumed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    return-void
.end method

.method public blacklist onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .registers 5
    .param p1, "soundTriggerFailure"    # Landroid/service/voice/SoundTriggerFailure;

    .line 606
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected STFailure in VisualQueryDetector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method public blacklist onStatusReported(I)V
    .registers 5
    .param p1, "status"    # I

    .line 566
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStatusReported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda7;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 571
    return-void
.end method

.method public blacklist onUnknownFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnknownFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda4;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 616
    return-void
.end method

.method public blacklist onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 5
    .param p1, "visualQueryDetectionServiceFailure"    # Landroid/service/voice/VisualQueryDetectionServiceFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisualQueryDetectionServiceFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 602
    return-void
.end method
