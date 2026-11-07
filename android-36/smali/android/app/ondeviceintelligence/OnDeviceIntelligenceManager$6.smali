.class Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;
.super Landroid/app/ondeviceintelligence/IResponseCallback$Stub;
.source "OnDeviceIntelligenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbackExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$processingCallback:Landroid/app/ondeviceintelligence/ProcessingCallback;


# direct methods
.method constructor blacklist <init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;)V
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

    .line 376
    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->val$processingCallback:Landroid/app/ondeviceintelligence/ProcessingCallback;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IResponseCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDataAugmentRequest$4(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "contentCallback"    # Landroid/os/RemoteCallback;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 400
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataAugmentRequest$5(Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "contentCallback"    # Landroid/os/RemoteCallback;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 399
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AugmentRequestContentBundleKey"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, v0}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda6;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method static synthetic blacklist lambda$onDataAugmentRequest$6(Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p0, "processingCallback"    # Landroid/app/ondeviceintelligence/ProcessingCallback;
    .param p1, "request"    # Landroid/os/Bundle;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "contentCallback"    # Landroid/os/RemoteCallback;

    .line 397
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;)V

    invoke-interface {p0, p1, v0}, Landroid/app/ondeviceintelligence/ProcessingCallback;->onDataAugmentRequest(Landroid/os/Bundle;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataAugmentRequest$7(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "processingCallback"    # Landroid/app/ondeviceintelligence/ProcessingCallback;
    .param p2, "request"    # Landroid/os/Bundle;
    .param p3, "contentCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p0, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda4;-><init>(Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$2(Landroid/app/ondeviceintelligence/ProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5
    .param p0, "processingCallback"    # Landroid/app/ondeviceintelligence/ProcessingCallback;
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 388
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;-><init>(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Landroid/app/ondeviceintelligence/ProcessingCallback;->onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$3(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "processingCallback"    # Landroid/app/ondeviceintelligence/ProcessingCallback;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorParams"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 387
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda3;-><init>(Landroid/app/ondeviceintelligence/ProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "processingCallback"    # Landroid/app/ondeviceintelligence/ProcessingCallback;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 380
    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/ProcessingCallback;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$1(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "processingCallback"    # Landroid/app/ondeviceintelligence/ProcessingCallback;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda0;-><init>(Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method


# virtual methods
.method public blacklist onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "request"    # Landroid/os/Bundle;
    .param p2, "contentCallback"    # Landroid/os/RemoteCallback;

    .line 396
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->val$processingCallback:Landroid/app/ondeviceintelligence/ProcessingCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 402
    return-void
.end method

.method public blacklist onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 387
    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->val$processingCallback:Landroid/app/ondeviceintelligence/ProcessingCallback;

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda1;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "errorCode":I
    .end local p2    # "errorMessage":Ljava/lang/String;
    .end local p3    # "errorParams":Landroid/os/PersistableBundle;
    .local v3, "errorCode":I
    .local v4, "errorMessage":Ljava/lang/String;
    .local v5, "errorParams":Landroid/os/PersistableBundle;
    invoke-direct/range {v0 .. v5}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 391
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;

    .line 379
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->val$processingCallback:Landroid/app/ondeviceintelligence/ProcessingCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, v1, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 382
    return-void
.end method
