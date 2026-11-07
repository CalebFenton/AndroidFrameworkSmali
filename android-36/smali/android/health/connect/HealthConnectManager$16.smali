.class Landroid/health/connect/HealthConnectManager$16;
.super Landroid/health/connect/aidl/IApplicationInfoResponseCallback$Stub;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/HealthConnectManager;->getContributorApplicationsInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 1329
    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$16;->this$0:Landroid/health/connect/HealthConnectManager;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$16;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/health/connect/HealthConnectManager$16;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/health/connect/aidl/IApplicationInfoResponseCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;Landroid/health/connect/aidl/ApplicationInfoResponseParcel;)V
    .registers 4
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "parcel"    # Landroid/health/connect/aidl/ApplicationInfoResponseParcel;

    .line 1335
    new-instance v0, Landroid/health/connect/ApplicationInfoResponse;

    .line 1337
    invoke-virtual {p1}, Landroid/health/connect/aidl/ApplicationInfoResponseParcel;->getAppInfoList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/ApplicationInfoResponse;-><init>(Ljava/util/List;)V

    .line 1335
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 5
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 1342
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$16;->this$0:Landroid/health/connect/HealthConnectManager;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$16;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$16;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, p1, v2}, Landroid/health/connect/HealthConnectManager;->-$$Nest$mreturnError(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 1343
    return-void
.end method

.method public blacklist onResult(Landroid/health/connect/aidl/ApplicationInfoResponseParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/health/connect/aidl/ApplicationInfoResponseParcel;

    .line 1332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1333
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$16;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$16;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/health/connect/HealthConnectManager$16$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/health/connect/HealthConnectManager$16$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/health/connect/aidl/ApplicationInfoResponseParcel;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1338
    return-void
.end method
