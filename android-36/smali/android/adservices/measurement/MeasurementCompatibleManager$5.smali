.class Landroid/adservices/measurement/MeasurementCompatibleManager$5;
.super Landroid/adservices/measurement/IMeasurementCallback$Stub;
.source "MeasurementCompatibleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/measurement/MeasurementCompatibleManager;->deleteRegistrations(Landroid/adservices/measurement/DeletionParam;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/measurement/MeasurementCompatibleManager;
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

    .line 544
    iput-object p2, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/measurement/IMeasurementCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;Landroid/adservices/measurement/MeasurementErrorResponse;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "failureParcel"    # Landroid/adservices/measurement/MeasurementErrorResponse;

    .line 554
    nop

    .line 555
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 554
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 547
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(Landroid/adservices/measurement/MeasurementErrorResponse;)V
    .registers 5
    .param p1, "failureParcel"    # Landroid/adservices/measurement/MeasurementErrorResponse;

    .line 552
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/measurement/MeasurementCompatibleManager$5$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/adservices/measurement/MeasurementErrorResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 557
    return-void
.end method

.method public blacklist onResult()V
    .registers 4

    .line 547
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 548
    return-void
.end method
