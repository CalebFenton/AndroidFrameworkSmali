.class Landroid/federatedcompute/FederatedComputeManager$2;
.super Landroid/federatedcompute/aidl/IFederatedComputeCallback$Stub;
.source "FederatedComputeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/federatedcompute/FederatedComputeManager;->cancel(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 136
    iput-object p1, p0, Landroid/federatedcompute/FederatedComputeManager$2;->this$0:Landroid/federatedcompute/FederatedComputeManager;

    iput-object p2, p0, Landroid/federatedcompute/FederatedComputeManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/federatedcompute/FederatedComputeManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/federatedcompute/aidl/IFederatedComputeCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "errorCode"    # I

    .line 152
    new-instance v0, Landroid/federatedcompute/FederatedComputeException;

    invoke-direct {v0, p1}, Landroid/federatedcompute/FederatedComputeException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 140
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 146
    invoke-static {}, Landroid/federatedcompute/FederatedComputeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 146
    const-string v2, ": cancel onFailure() called with errorCode %d"

    invoke-static {v0, v2, v1}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/federatedcompute/FederatedComputeManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/federatedcompute/FederatedComputeManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/federatedcompute/FederatedComputeManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 154
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager$2;->this$0:Landroid/federatedcompute/FederatedComputeManager;

    invoke-virtual {v0}, Landroid/federatedcompute/FederatedComputeManager;->unbindFromService()V

    .line 155
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 4

    .line 139
    invoke-static {}, Landroid/federatedcompute/FederatedComputeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, ": cancel onSuccess() called"

    invoke-static {v0, v1}, Lcom/android/federatedcompute/internal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/federatedcompute/FederatedComputeManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/federatedcompute/FederatedComputeManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/federatedcompute/FederatedComputeManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Landroid/federatedcompute/FederatedComputeManager$2;->this$0:Landroid/federatedcompute/FederatedComputeManager;

    invoke-virtual {v0}, Landroid/federatedcompute/FederatedComputeManager;->unbindFromService()V

    .line 142
    return-void
.end method
