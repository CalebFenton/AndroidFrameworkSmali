.class Landroid/health/connect/HealthConnectManager$3;
.super Landroid/health/connect/aidl/IAggregateRecordsResponseCallback$Stub;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/HealthConnectManager;->aggregateGroupByDuration(Landroid/health/connect/AggregateRecordsRequest;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/health/connect/HealthConnectManager;

.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/health/connect/HealthConnectManager;
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

    .line 682
    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$3;->this$0:Landroid/health/connect/HealthConnectManager;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/health/connect/HealthConnectManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/health/connect/aidl/IAggregateRecordsResponseCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;Ljava/util/List;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Ljava/util/List;

    .line 695
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 5
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 700
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$3;->this$0:Landroid/health/connect/HealthConnectManager;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, p1, v2}, Landroid/health/connect/HealthConnectManager;->-$$Nest$mreturnError(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 701
    return-void
.end method

.method public blacklist onResult(Landroid/health/connect/aidl/AggregateDataResponseParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/health/connect/aidl/AggregateDataResponseParcel;

    .line 685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;>;"
    invoke-virtual {p1}, Landroid/health/connect/aidl/AggregateDataResponseParcel;->getAggregateDataResponseGroupedByDuration()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;

    .line 691
    .local v2, "aggregateRecordsGroupedByDurationResponse":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<*>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v2    # "aggregateRecordsGroupedByDurationResponse":Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;, "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<*>;"
    goto :goto_10

    .line 695
    :cond_20
    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/health/connect/HealthConnectManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Landroid/health/connect/HealthConnectManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method
