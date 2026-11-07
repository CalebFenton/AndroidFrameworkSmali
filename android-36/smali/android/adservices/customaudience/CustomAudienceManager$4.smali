.class Landroid/adservices/customaudience/CustomAudienceManager$4;
.super Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback$Stub;
.source "CustomAudienceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/customaudience/CustomAudienceManager;->scheduleCustomAudienceUpdate(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/adservices/common/AdServicesOutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/customaudience/CustomAudienceManager;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/customaudience/CustomAudienceManager;
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

    .line 511
    iput-object p2, p0, Landroid/adservices/customaudience/CustomAudienceManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/customaudience/CustomAudienceManager$4;->val$receiver:Landroid/adservices/common/AdServicesOutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 3
    .param p0, "receiver"    # Landroid/adservices/common/AdServicesOutcomeReceiver;
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 521
    nop

    .line 522
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 521
    invoke-interface {p0, v0}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 2
    .param p0, "receiver"    # Landroid/adservices/common/AdServicesOutcomeReceiver;

    .line 514
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 5
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 519
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudienceManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudienceManager$4;->val$receiver:Landroid/adservices/common/AdServicesOutcomeReceiver;

    new-instance v2, Landroid/adservices/customaudience/CustomAudienceManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/customaudience/CustomAudienceManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 524
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 4

    .line 514
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudienceManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudienceManager$4;->val$receiver:Landroid/adservices/common/AdServicesOutcomeReceiver;

    new-instance v2, Landroid/adservices/customaudience/CustomAudienceManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/adservices/customaudience/CustomAudienceManager$4$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method
