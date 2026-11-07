.class Landroid/health/connect/HealthConnectManager$2;
.super Landroid/health/connect/aidl/IAggregateRecordsResponseCallback$Stub;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/HealthConnectManager;->aggregate(Landroid/health/connect/AggregateRecordsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 613
    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$2;->this$0:Landroid/health/connect/HealthConnectManager;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/health/connect/HealthConnectManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/health/connect/aidl/IAggregateRecordsResponseCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;Landroid/health/connect/aidl/AggregateDataResponseParcel;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "parcel"    # Landroid/health/connect/aidl/AggregateDataResponseParcel;

    .line 620
    nop

    .line 622
    invoke-virtual {p1}, Landroid/health/connect/aidl/AggregateDataResponseParcel;->getAggregateDataResponse()Landroid/health/connect/AggregateRecordsResponse;

    move-result-object v0

    .line 620
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 5
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 632
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$2;->this$0:Landroid/health/connect/HealthConnectManager;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, p1, v2}, Landroid/health/connect/HealthConnectManager;->-$$Nest$mreturnError(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 633
    return-void
.end method

.method public blacklist onResult(Landroid/health/connect/aidl/AggregateDataResponseParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/health/connect/aidl/AggregateDataResponseParcel;

    .line 616
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 618
    :try_start_3
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/health/connect/HealthConnectManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/health/connect/HealthConnectManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/health/connect/aidl/AggregateDataResponseParcel;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 627
    goto :goto_1c

    .line 623
    :catch_10
    move-exception v0

    .line 624
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/health/connect/HealthConnectException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/health/connect/HealthConnectException;-><init>(I)V

    invoke-interface {v1, v2}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 628
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method
