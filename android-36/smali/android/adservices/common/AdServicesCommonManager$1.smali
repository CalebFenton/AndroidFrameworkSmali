.class Landroid/adservices/common/AdServicesCommonManager$1;
.super Landroid/adservices/common/IAdServicesCommonCallback$Stub;
.source "AdServicesCommonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/common/AdServicesCommonManager;->isAdServicesEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/common/AdServicesCommonManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/common/AdServicesCommonManager;
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

    .line 274
    iput-object p2, p0, Landroid/adservices/common/AdServicesCommonManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/common/AdServicesCommonManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/common/IAdServicesCommonCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "statusCode"    # I

    .line 287
    nop

    .line 288
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    .line 287
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;Landroid/adservices/common/IsAdServicesEnabledResult;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Landroid/adservices/common/IsAdServicesEnabledResult;

    .line 279
    invoke-virtual {p1}, Landroid/adservices/common/IsAdServicesEnabledResult;->getAdServicesEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 280
    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "statusCode"    # I

    .line 285
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/common/AdServicesCommonManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public blacklist onResult(Landroid/adservices/common/IsAdServicesEnabledResult;)V
    .registers 5
    .param p1, "result"    # Landroid/adservices/common/IsAdServicesEnabledResult;

    .line 277
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/common/AdServicesCommonManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/adservices/common/IsAdServicesEnabledResult;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method
