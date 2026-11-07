.class Landroid/health/connect/HealthConnectManager$26;
.super Landroid/health/connect/aidl/IReadRecordsResponseCallback$Stub;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/HealthConnectManager;->getReadCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IReadRecordsResponseCallback$Stub;
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

    .line 1971
    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$26;->this$0:Landroid/health/connect/HealthConnectManager;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$26;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/health/connect/HealthConnectManager$26;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/health/connect/aidl/IReadRecordsResponseCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;Ljava/util/List;Landroid/health/connect/aidl/ReadRecordsResponseParcel;)V
    .registers 6
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "externalRecords"    # Ljava/util/List;
    .param p2, "parcel"    # Landroid/health/connect/aidl/ReadRecordsResponseParcel;

    .line 1982
    new-instance v0, Landroid/health/connect/ReadRecordsResponse;

    .line 1984
    invoke-virtual {p2}, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->getPageToken()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Landroid/health/connect/ReadRecordsResponse;-><init>(Ljava/util/List;J)V

    .line 1982
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 5
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 1999
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$26;->this$0:Landroid/health/connect/HealthConnectManager;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$26;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$26;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, p1, v2}, Landroid/health/connect/HealthConnectManager;->-$$Nest$mreturnError(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 2000
    return-void
.end method

.method public blacklist onResult(Landroid/health/connect/aidl/ReadRecordsResponseParcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/health/connect/aidl/ReadRecordsResponseParcel;

    .line 1974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1976
    :try_start_3
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$26;->this$0:Landroid/health/connect/HealthConnectManager;

    invoke-static {v0}, Landroid/health/connect/HealthConnectManager;->-$$Nest$fgetmInternalExternalRecordConverter(Landroid/health/connect/HealthConnectManager;)Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    move-result-object v0

    .line 1979
    invoke-virtual {p1}, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->getRecordsParcel()Landroid/health/connect/aidl/RecordsParcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/aidl/RecordsParcel;->getRecords()Ljava/util/List;

    move-result-object v1

    .line 1978
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->getExternalRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1980
    .local v0, "externalRecords":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$26;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$26;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/health/connect/HealthConnectManager$26$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0, p1}, Landroid/health/connect/HealthConnectManager$26$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/List;Landroid/health/connect/aidl/ReadRecordsResponseParcel;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_21} :catch_22

    .line 1994
    .end local v0    # "externalRecords":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_3b

    .line 1985
    :catch_22
    move-exception v0

    .line 1986
    .local v0, "castException":Ljava/lang/ClassCastException;
    new-instance v1, Landroid/health/connect/HealthConnectException;

    .line 1989
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Landroid/health/connect/HealthConnectException;-><init>(ILjava/lang/String;)V

    .line 1990
    .local v1, "healthConnectException":Landroid/health/connect/HealthConnectException;
    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$26;->this$0:Landroid/health/connect/HealthConnectManager;

    iget-object v3, p0, Landroid/health/connect/HealthConnectManager$26;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    invoke-direct {v4, v1}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;-><init>(Landroid/health/connect/HealthConnectException;)V

    iget-object v5, p0, Landroid/health/connect/HealthConnectManager$26;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v2, v3, v4, v5}, Landroid/health/connect/HealthConnectManager;->-$$Nest$mreturnError(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 1995
    .end local v0    # "castException":Ljava/lang/ClassCastException;
    .end local v1    # "healthConnectException":Landroid/health/connect/HealthConnectException;
    :goto_3b
    return-void
.end method
