.class Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;
.super Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;
.source "OnDeviceIntelligenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->updateProcessingState(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbackExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$statusReceiver:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;
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

    .line 302
    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;->val$statusReceiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$2(Landroid/os/OutcomeReceiver;ILjava/lang/String;)V
    .registers 4
    .param p0, "statusReceiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 314
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    invoke-direct {v0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$3(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;)V
    .registers 5
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "statusReceiver"    # Landroid/os/OutcomeReceiver;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/os/PersistableBundle;)V
    .registers 2
    .param p0, "statusReceiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 307
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$1(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "statusReceiver"    # Landroid/os/OutcomeReceiver;
    .param p2, "result"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method


# virtual methods
.method public blacklist onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;->val$statusReceiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 317
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 305
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;->val$statusReceiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/os/PersistableBundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 309
    return-void
.end method
