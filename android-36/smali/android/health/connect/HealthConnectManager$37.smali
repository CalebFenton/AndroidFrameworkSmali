.class Landroid/health/connect/HealthConnectManager$37;
.super Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback$Stub;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/HealthConnectManager;->getMedicalDataSources(Landroid/health/connect/GetMedicalDataSourcesRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 2757
    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$37;->this$0:Landroid/health/connect/HealthConnectManager;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$37;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/health/connect/HealthConnectManager$37;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 5
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 2765
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$37;->this$0:Landroid/health/connect/HealthConnectManager;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$37;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$37;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, p1, v2}, Landroid/health/connect/HealthConnectManager;->-$$Nest$mreturnError(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 2766
    return-void
.end method

.method public blacklist onResult(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalDataSource;",
            ">;)V"
        }
    .end annotation

    .line 2760
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/MedicalDataSource;>;"
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$37;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$37;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v0, p1, v1}, Landroid/health/connect/HealthConnectManager;->-$$Nest$smreturnResult(Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/OutcomeReceiver;)V

    .line 2761
    return-void
.end method
