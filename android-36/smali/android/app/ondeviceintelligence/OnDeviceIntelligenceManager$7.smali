.class Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;
.super Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;
.source "OnDeviceIntelligenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbackExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$streamingProcessingCallback:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;


# direct methods
.method constructor blacklist <init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 446
    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$streamingProcessingCallback:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDataAugmentRequest$6(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "contentCallback"    # Landroid/os/RemoteCallback;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 485
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataAugmentRequest$7(Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "contentCallback"    # Landroid/os/RemoteCallback;
    .param p2, "contentResponse"    # Landroid/os/Bundle;

    .line 481
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AugmentRequestContentBundleKey"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 484
    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method

.method static synthetic blacklist lambda$onDataAugmentRequest$8(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p0, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .param p1, "content"    # Landroid/os/Bundle;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "contentCallback"    # Landroid/os/RemoteCallback;

    .line 479
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;)V

    invoke-interface {p0, p1, v0}, Landroid/app/ondeviceintelligence/StreamingProcessingCallback;->onDataAugmentRequest(Landroid/os/Bundle;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataAugmentRequest$9(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .param p2, "content"    # Landroid/os/Bundle;
    .param p3, "contentCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p0, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda9;-><init>(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$4(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5
    .param p0, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 468
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;-><init>(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Landroid/app/ondeviceintelligence/StreamingProcessingCallback;->onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$5(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorParams"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 467
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;-><init>(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method static synthetic blacklist lambda$onNewContent$0(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 451
    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/StreamingProcessingCallback;->onPartialResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onNewContent$1(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 450
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda5;-><init>(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$2(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 459
    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/StreamingProcessingCallback;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$3(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "streamingProcessingCallback"    # Landroid/app/ondeviceintelligence/StreamingProcessingCallback;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda3;-><init>(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method


# virtual methods
.method public blacklist onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "content"    # Landroid/os/Bundle;
    .param p2, "contentCallback"    # Landroid/os/RemoteCallback;

    .line 478
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$streamingProcessingCallback:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 487
    return-void
.end method

.method public blacklist onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 466
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$streamingProcessingCallback:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda8;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "errorCode":I
    .end local p2    # "errorMessage":Ljava/lang/String;
    .end local p3    # "errorParams":Landroid/os/PersistableBundle;
    .local v3, "errorCode":I
    .local v4, "errorMessage":Ljava/lang/String;
    .local v5, "errorParams":Landroid/os/PersistableBundle;
    invoke-direct/range {v0 .. v5}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 472
    return-void
.end method

.method public blacklist onNewContent(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;

    .line 449
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$streamingProcessingCallback:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 453
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;

    .line 457
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->val$streamingProcessingCallback:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v1, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 461
    return-void
.end method
