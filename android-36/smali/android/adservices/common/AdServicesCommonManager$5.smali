.class Landroid/adservices/common/AdServicesCommonManager$5;
.super Landroid/adservices/common/IUpdateAdIdCallback$Stub;
.source "AdServicesCommonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/common/AdServicesCommonManager;->updateAdId(Landroid/adservices/common/UpdateAdIdRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 666
    iput-object p2, p0, Landroid/adservices/common/AdServicesCommonManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/common/AdServicesCommonManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/common/IUpdateAdIdCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "statusCode"    # I

    .line 676
    nop

    .line 677
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    .line 676
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 669
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "statusCode"    # I

    .line 674
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/common/AdServicesCommonManager$5$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 678
    return-void
.end method

.method public blacklist onResult(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 669
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/adservices/common/AdServicesCommonManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 670
    return-void
.end method
