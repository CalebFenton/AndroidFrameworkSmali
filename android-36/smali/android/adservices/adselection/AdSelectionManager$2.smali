.class Landroid/adservices/adselection/AdSelectionManager$2;
.super Landroid/adservices/adselection/PersistAdSelectionResultCallback$Stub;
.source "AdSelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/adselection/AdSelectionManager;->persistAdSelectionResult(Landroid/adservices/adselection/PersistAdSelectionResultRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 345
    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionManager$2;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/adselection/PersistAdSelectionResultCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 368
    nop

    .line 369
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 368
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 370
    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/adservices/adselection/PersistAdSelectionResultResponse;)V
    .registers 5
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultParcel"    # Landroid/adservices/adselection/PersistAdSelectionResultResponse;

    .line 350
    new-instance v0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;-><init>()V

    .line 353
    invoke-virtual {p1}, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->getAdSelectionId()J

    move-result-wide v1

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->setAdSelectionId(J)Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->getAdRenderUri()Landroid/net/Uri;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->setRenderUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->getWinningSeller()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->setWinningSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {p1}, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->getComponentAdUris()Ljava/util/List;

    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->setComponentAdUris(Ljava/util/List;)Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->build()Landroid/adservices/adselection/AdSelectionOutcome;

    move-result-object v0

    .line 350
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 5
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 366
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/adselection/AdSelectionManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method public blacklist onSuccess(Landroid/adservices/adselection/PersistAdSelectionResultResponse;)V
    .registers 5
    .param p1, "resultParcel"    # Landroid/adservices/adselection/PersistAdSelectionResultResponse;

    .line 348
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/adselection/AdSelectionManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/adservices/adselection/PersistAdSelectionResultResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method
