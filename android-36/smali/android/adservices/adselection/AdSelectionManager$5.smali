.class Landroid/adservices/adselection/AdSelectionManager$5;
.super Landroid/adservices/adselection/ReportImpressionCallback$Stub;
.source "AdSelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/adselection/AdSelectionManager;->reportImpression(Landroid/adservices/adselection/ReportImpressionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/adselection/AdSelectionManager;
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

    .line 706
    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionManager$5;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/adselection/ReportImpressionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 716
    nop

    .line 717
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 716
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 718
    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 709
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 5
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 714
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$5;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/adselection/AdSelectionManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 719
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 4

    .line 709
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$5;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/adservices/adselection/AdSelectionManager$5$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 710
    return-void
.end method
