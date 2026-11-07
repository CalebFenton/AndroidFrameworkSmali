.class Landroid/adservices/common/AdServicesCommonManager$2;
.super Landroid/adservices/common/IEnableAdServicesCallback$Stub;
.source "AdServicesCommonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/common/AdServicesCommonManager;->enableAdServices(Landroid/adservices/common/AdServicesStates;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 390
    iput-object p2, p0, Landroid/adservices/common/AdServicesCommonManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/common/AdServicesCommonManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/common/IEnableAdServicesCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "statusCode"    # I

    .line 414
    nop

    .line 415
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    .line 414
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/adservices/common/EnableAdServicesResponse;Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "response"    # Landroid/adservices/common/EnableAdServicesResponse;
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;

    .line 395
    invoke-virtual {p0}, Landroid/adservices/common/EnableAdServicesResponse;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 396
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 397
    return-void

    .line 400
    :cond_f
    invoke-virtual {p0}, Landroid/adservices/common/EnableAdServicesResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 401
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_2a

    .line 403
    :cond_1e
    nop

    .line 405
    invoke-virtual {p0}, Landroid/adservices/common/EnableAdServicesResponse;->getStatusCode()I

    move-result v0

    .line 404
    invoke-static {v0}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    .line 403
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 407
    :goto_2a
    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "statusCode"    # I

    .line 412
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method public blacklist onResult(Landroid/adservices/common/EnableAdServicesResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/adservices/common/EnableAdServicesResponse;

    .line 393
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Landroid/adservices/common/AdServicesCommonManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/common/EnableAdServicesResponse;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method
