.class Landroid/health/connect/HealthConnectManager$15;
.super Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/HealthConnectManager;->updateRecords(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 1288
    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$15;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/health/connect/HealthConnectManager$15;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1292
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 4
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 1297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1298
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$15;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-virtual {p1}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->getHealthConnectException()Landroid/health/connect/HealthConnectException;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 1299
    return-void
.end method

.method public blacklist onResult()V
    .registers 4

    .line 1291
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1292
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$15;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$15;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/health/connect/HealthConnectManager$15$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/health/connect/HealthConnectManager$15$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1293
    return-void
.end method
