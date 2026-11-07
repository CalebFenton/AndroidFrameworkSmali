.class Landroid/adservices/common/AdServicesCommonManager$6;
.super Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;
.source "AdServicesCommonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/common/AdServicesCommonManager;->getAdservicesCommonStates(Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/common/AdServicesCommonManager;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
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

    .line 731
    iput-object p2, p0, Landroid/adservices/common/AdServicesCommonManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/common/AdServicesCommonManager$6;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/adservices/common/AdServicesOutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/adservices/common/AdServicesOutcomeReceiver;
    .param p1, "statusCode"    # I

    .line 744
    nop

    .line 745
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    .line 744
    invoke-interface {p0, v0}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/adservices/common/AdServicesCommonStatesResponse;)V
    .registers 2
    .param p0, "callback"    # Landroid/adservices/common/AdServicesOutcomeReceiver;
    .param p1, "result"    # Landroid/adservices/common/AdServicesCommonStatesResponse;

    .line 736
    invoke-interface {p0, p1}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 737
    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "statusCode"    # I

    .line 742
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$6;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$6$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/common/AdServicesCommonManager$6$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/common/AdServicesOutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 746
    return-void
.end method

.method public blacklist onResult(Landroid/adservices/common/AdServicesCommonStatesResponse;)V
    .registers 5
    .param p1, "result"    # Landroid/adservices/common/AdServicesCommonStatesResponse;

    .line 734
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$6;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/common/AdServicesCommonManager$6$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/adservices/common/AdServicesCommonStatesResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method
