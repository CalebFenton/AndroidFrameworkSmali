.class Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;
.super Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;
.source "SoftwareHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/SoftwareHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$AJA3xIPrgB4reirhOmkjNazcpE4(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->lambda$onRejected$5(Landroid/service/voice/HotwordRejectedResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$F5DId-mgkirB7jJ7KX4Y0AW_uY8(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->lambda$onDetected$0(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ShWJPMFu8KNsFsiprU_LKF4zwEw(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->lambda$onHotwordDetectionServiceFailure$2(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ehYBhXv77ERNS7k2cdpJnN0wGFs(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->lambda$onHotwordDetectionServiceFailure$3(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hpgjg7zyFlXLkmeuFVA4aGeD0n0(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->lambda$onRejected$4(Landroid/service/voice/HotwordRejectedResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m3rP2pfUW85fdfFXd-4GzueHlZw(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->lambda$onDetected$1(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/voice/HotwordDetector$Callback;

    .line 162
    invoke-direct {p0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;-><init>()V

    .line 163
    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 164
    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 165
    return-void
.end method

.method private synthetic blacklist lambda$onDetected$0(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 6
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;

    .line 174
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>()V

    .line 175
    invoke-virtual {v1, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setAudioStream(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1, p3}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object v1

    .line 174
    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    .line 179
    return-void
.end method

.method private synthetic blacklist lambda$onDetected$1(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 6
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda4;-><init>(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHotwordDetectionServiceFailure$2(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 189
    if-eqz p1, :cond_8

    .line 190
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/HotwordDetector$Callback;->onFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    goto :goto_f

    .line 192
    :cond_8
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    const-string v1, "Error data is null"

    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    .line 194
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

    .line 188
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda3;-><init>(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRejected$4(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 4
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 200
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 201
    if-eqz p1, :cond_6

    move-object v1, p1

    goto :goto_f

    :cond_6
    new-instance v1, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v1}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object v1

    .line 200
    :goto_f
    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 202
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

    .line 199
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "audioStream"    # Landroid/os/ParcelFileDescriptor;

    .line 173
    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda5;-><init>(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/HotwordDetectedResult;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 180
    return-void
.end method

.method public blacklist onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 5
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 186
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinderCallback#onHotwordDetectionServiceFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 195
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 3
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 199
    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 203
    return-void
.end method
