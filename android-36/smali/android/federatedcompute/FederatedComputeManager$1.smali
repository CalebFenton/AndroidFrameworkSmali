.class Landroid/federatedcompute/FederatedComputeManager$1;
.super Landroid/federatedcompute/aidl/IFederatedComputeCallback$Stub;
.source "FederatedComputeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/federatedcompute/FederatedComputeManager;->schedule(Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/federatedcompute/FederatedComputeManager;

.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/federatedcompute/FederatedComputeManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/federatedcompute/FederatedComputeManager;
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

    .line 88
    iput-object p1, p0, Landroid/federatedcompute/FederatedComputeManager$1;->this$0:Landroid/federatedcompute/FederatedComputeManager;

    iput-object p2, p0, Landroid/federatedcompute/FederatedComputeManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/federatedcompute/FederatedComputeManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/federatedcompute/aidl/IFederatedComputeCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "errorCode"    # I

    .line 104
    new-instance v0, Landroid/federatedcompute/FederatedComputeException;

    invoke-direct {v0, p1}, Landroid/federatedcompute/FederatedComputeException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 92
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 98
    invoke-static {}, Landroid/federatedcompute/FederatedComputeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 98
    const-string v2, ": schedule onFailure() called with errorCode %d"

    invoke-static {v0, v2, v1}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/federatedcompute/FederatedComputeManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/federatedcompute/FederatedComputeManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/federatedcompute/FederatedComputeManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager$1;->this$0:Landroid/federatedcompute/FederatedComputeManager;

    invoke-virtual {v0}, Landroid/federatedcompute/FederatedComputeManager;->unbindFromService()V

    .line 107
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 4

    .line 91
    invoke-static {}, Landroid/federatedcompute/FederatedComputeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, ": schedule onSuccess() called"

    invoke-static {v0, v1}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/federatedcompute/FederatedComputeManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/federatedcompute/FederatedComputeManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/federatedcompute/FederatedComputeManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager$1;->this$0:Landroid/federatedcompute/FederatedComputeManager;

    invoke-virtual {v0}, Landroid/federatedcompute/FederatedComputeManager;->unbindFromService()V

    .line 94
    return-void
.end method
