.class Landroid/service/voice/AbstractDetector$BinderCallback;
.super Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;
.source "AbstractDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AbstractDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$4Bfkl16qtKcZu9smuOCiwDIV_tI(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AbstractDetector$BinderCallback;->lambda$onRejected$4(Landroid/service/voice/HotwordRejectedResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DpIWl4bb86GiOqlQdzgE2FksEPE(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AbstractDetector$BinderCallback;->lambda$onRejected$5(Landroid/service/voice/HotwordRejectedResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Eh1J-MLwTahxkA5r92hjPn7gGZQ(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AbstractDetector$BinderCallback;->lambda$onHotwordDetectionServiceFailure$3(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QSywqsp8hSEAmFBtmC5_EWc4uCY(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AbstractDetector$BinderCallback;->lambda$onHotwordDetectionServiceFailure$2(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V9bNfA-pwWXOcDT9OisfbCQZMGA(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/AbstractDetector$BinderCallback;->lambda$onDetected$0(Landroid/media/AudioFormat;Landroid/service/voice/HotwordDetectedResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bSd6CUNA6yb68-7ASDuLahV_rgU(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/AbstractDetector$BinderCallback;->lambda$onDetected$1(Landroid/media/AudioFormat;Landroid/service/voice/HotwordDetectedResult;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/voice/HotwordDetector$Callback;

    .line 225
    invoke-direct {p0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;-><init>()V

    .line 226
    iput-object p2, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 227
    iput-object p1, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 228
    return-void
.end method

.method private synthetic blacklist lambda$onDetected$0(Landroid/media/AudioFormat;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 5
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;

    .line 237
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>()V

    .line 238
    invoke-virtual {v1, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v1

    .line 239
    invoke-virtual {v1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object v1

    .line 237
    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    .line 241
    return-void
.end method

.method private synthetic blacklist lambda$onDetected$1(Landroid/media/AudioFormat;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 5
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda3;-><init>(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/service/voice/HotwordDetectedResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHotwordDetectionServiceFailure$2(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 251
    if-eqz p1, :cond_8

    .line 252
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/HotwordDetector$Callback;->onFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    goto :goto_f

    .line 254
    :cond_8
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    const-string v1, "Error data is null"

    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    .line 256
    :goto_f
    return-void
.end method

.method private synthetic blacklist lambda$onHotwordDetectionServiceFailure$3(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda5;-><init>(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRejected$4(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 4
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 262
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 263
    if-eqz p1, :cond_6

    move-object v1, p1

    goto :goto_f

    :cond_6
    new-instance v1, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v1}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object v1

    .line 262
    :goto_f
    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 264
    return-void
.end method

.method private synthetic blacklist lambda$onRejected$5(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 4
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "audioStreamIgnored"    # Landroid/os/ParcelFileDescriptor;

    .line 236
    new-instance v0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/service/voice/HotwordDetectedResult;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 242
    return-void
.end method

.method public blacklist onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 5
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 248
    invoke-static {}, Landroid/service/voice/AbstractDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinderCallback#onHotwordDetectionServiceFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda4;-><init>(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 257
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 3
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 261
    new-instance v0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 265
    return-void
.end method
