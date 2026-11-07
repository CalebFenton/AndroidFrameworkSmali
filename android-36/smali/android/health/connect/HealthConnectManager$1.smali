.class Landroid/health/connect/HealthConnectManager$1;
.super Landroid/health/connect/aidl/IInsertRecordsResponseCallback$Stub;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/HealthConnectManager;->insertRecords(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/health/connect/HealthConnectManager;

.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$recordInternals:Ljava/util/List;


# direct methods
.method public static synthetic blacklist $r8$lambda$8L3UEOQowjFiFp2gV1otqNZN1nI(Landroid/health/connect/HealthConnectManager$1;Landroid/os/OutcomeReceiver;Ljava/util/List;Landroid/health/connect/aidl/InsertRecordsResponseParcel;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/HealthConnectManager$1;->lambda$onResult$0(Landroid/os/OutcomeReceiver;Ljava/util/List;Landroid/health/connect/aidl/InsertRecordsResponseParcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Ljava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Landroid/health/connect/HealthConnectManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 564
    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$1;->this$0:Landroid/health/connect/HealthConnectManager;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/health/connect/HealthConnectManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    iput-object p4, p0, Landroid/health/connect/HealthConnectManager$1;->val$recordInternals:Ljava/util/List;

    invoke-direct {p0}, Landroid/health/connect/aidl/IInsertRecordsResponseCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;Ljava/util/List;Landroid/health/connect/aidl/InsertRecordsResponseParcel;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "recordInternals"    # Ljava/util/List;
    .param p3, "parcel"    # Landroid/health/connect/aidl/InsertRecordsResponseParcel;

    .line 570
    new-instance v0, Landroid/health/connect/InsertRecordsResponse;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$1;->this$0:Landroid/health/connect/HealthConnectManager;

    .line 574
    invoke-virtual {p3}, Landroid/health/connect/aidl/InsertRecordsResponseParcel;->getUids()Ljava/util/List;

    move-result-object v2

    .line 572
    invoke-static {v1, p2, v2}, Landroid/health/connect/HealthConnectManager;->-$$Nest$mtoExternalRecordsWithUuids(Landroid/health/connect/HealthConnectManager;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/InsertRecordsResponse;-><init>(Ljava/util/List;)V

    .line 570
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 5
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 579
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$1;->this$0:Landroid/health/connect/HealthConnectManager;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, p1, v2}, Landroid/health/connect/HealthConnectManager;->-$$Nest$mreturnError(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 580
    return-void
.end method

.method public blacklist onResult(Landroid/health/connect/aidl/InsertRecordsResponseParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/health/connect/aidl/InsertRecordsResponseParcel;

    .line 567
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 568
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$1;->val$recordInternals:Ljava/util/List;

    new-instance v3, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/HealthConnectManager$1;Landroid/os/OutcomeReceiver;Ljava/util/List;Landroid/health/connect/aidl/InsertRecordsResponseParcel;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method
