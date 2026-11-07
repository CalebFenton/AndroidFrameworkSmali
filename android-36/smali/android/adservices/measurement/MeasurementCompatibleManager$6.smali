.class Landroid/adservices/measurement/MeasurementCompatibleManager$6;
.super Landroid/adservices/measurement/IMeasurementApiStatusCallback$Stub;
.source "MeasurementCompatibleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/measurement/MeasurementCompatibleManager;->getMeasurementApiStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 629
    iput-object p2, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$6;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/measurement/IMeasurementApiStatusCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # I

    .line 632
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .registers 5
    .param p1, "result"    # I

    .line 632
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$6;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/measurement/MeasurementCompatibleManager$6$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 633
    return-void
.end method
