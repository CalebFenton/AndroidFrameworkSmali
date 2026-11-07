.class Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;
.super Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.source "SoftwareHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/SoftwareHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationStateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$1ICSCkpWgKLjkYxB4G7FDQWfdX0(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onUnknownFailure$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3zepdbCSJl0i1qtanWlLOCx020c(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onStatusReported$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BaUOsNzbqRXnAYLD0RGrW_fkHrQ(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onProcessRestarted$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$G-LB7jxnsqCbMm-VIP0xmD6Y7E0(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onHotwordDetectionServiceFailure$0(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IDrp1i8zZBogIwejMzsnoKQUyDY(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onUnknownFailure$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WVJZClChZrTA6J9fvR2MISlgkM4(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onHotwordDetectionServiceFailure$1(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gMjig6sCTNdyRC07dYFDtuOWzys(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onProcessRestarted$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lcRlcwqcxGhA8Mw_DIfaYd1BE7Q(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onStatusReported$4(I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/voice/HotwordDetector$Callback;

    .line 211
    invoke-direct {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;-><init>()V

    .line 212
    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 213
    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 214
    return-void
.end method

.method private synthetic blacklist lambda$onHotwordDetectionServiceFailure$0(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 253
    if-eqz p1, :cond_8

    .line 254
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/HotwordDetector$Callback;->onFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    goto :goto_f

    .line 256
    :cond_8
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    const-string v1, "Error data is null"

    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    .line 258
    :goto_f
    return-void
.end method

.method private synthetic blacklist lambda$onHotwordDetectionServiceFailure$1(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda4;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessRestarted$6()V
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {v0}, Landroid/service/voice/HotwordDetector$Callback;->onHotwordDetectionServiceRestarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessRestarted$7()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStatusReported$4(I)V
    .registers 3
    .param p1, "status"    # I

    .line 304
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/HotwordDetector$Callback;->onHotwordDetectionServiceInitialized(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStatusReported$5(I)V
    .registers 4
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnknownFailure$2(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, p1

    goto :goto_c

    :cond_a
    const-string v1, "Error data is null"

    .line 281
    :goto_c
    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private synthetic blacklist lambda$onUnknownFailure$3(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Ljava/lang/String;)V

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

    .line 238
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

    .line 251
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 259
    return-void
.end method

.method public blacklist onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 3
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "result"    # Landroid/service/voice/HotwordDetectedResult;

    .line 223
    return-void
.end method

.method public blacklist onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 2
    .param p1, "result"    # Landroid/service/voice/HotwordDetectedResult;

    .line 230
    return-void
.end method

.method public blacklist onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hotword cannot access files from the disk."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onProcessRestarted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onProcessRestarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda7;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 312
    return-void
.end method

.method public blacklist onRecognitionPaused()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    return-void
.end method

.method public blacklist onRecognitionResumed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
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

    .line 245
    return-void
.end method

.method public blacklist onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .registers 5
    .param p1, "onSoundTriggerFailure"    # Landroid/service/voice/SoundTriggerFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected STFailure in software detector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public blacklist onStatusReported(I)V
    .registers 5
    .param p1, "status"    # I

    .line 302
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 303
    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda5;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 305
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

    .line 279
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 280
    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda3;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 284
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

    .line 266
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method
