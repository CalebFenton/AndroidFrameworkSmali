.class Landroid/adservices/adselection/AdSelectionManager$4;
.super Landroid/adservices/adselection/AdSelectionCallback$Stub;
.source "AdSelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/adselection/AdSelectionManager;->selectAds(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 566
    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionManager$4;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/adselection/AdSelectionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 591
    nop

    .line 592
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 591
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 593
    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/adservices/adselection/AdSelectionResponse;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p0, "resultParcel"    # Landroid/adservices/adselection/AdSelectionResponse;
    .param p1, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 571
    if-nez p0, :cond_8

    .line 572
    sget-object v0, Landroid/adservices/adselection/AdSelectionOutcome;->NO_OUTCOME:Landroid/adservices/adselection/AdSelectionOutcome;

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_2c

    .line 574
    :cond_8
    new-instance v0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;-><init>()V

    .line 577
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionResponse;->getAdSelectionId()J

    move-result-wide v1

    .line 576
    invoke-virtual {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->setAdSelectionId(J)Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionResponse;->getRenderUri()Landroid/net/Uri;

    move-result-object v1

    .line 578
    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->setRenderUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionResponse;->getWinningSeller()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->setWinningSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionOutcome$Builder;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->build()Landroid/adservices/adselection/AdSelectionOutcome;

    move-result-object v0

    .line 574
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 584
    :goto_2c
    return-void
.end method


# virtual methods
.method public blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 5
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 589
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$4;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/adselection/AdSelectionManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 594
    return-void
.end method

.method public blacklist onSuccess(Landroid/adservices/adselection/AdSelectionResponse;)V
    .registers 5
    .param p1, "resultParcel"    # Landroid/adservices/adselection/AdSelectionResponse;

    .line 569
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$4;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1}, Landroid/adservices/adselection/AdSelectionManager$4$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/adselection/AdSelectionResponse;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method
