.class Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;
.super Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback$Stub;
.source "OnDevicePersonalizationSystemEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->notifyMeasurementEvent(Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

.field final synthetic blacklist val$startTimeMillis:J


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;J)V
    .registers 7
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iput-wide p5, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Landroid/os/OutcomeReceiver;I)V
    .registers 5
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "errorCode"    # I

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 125
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(ILandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 20
    .param p1, "errorCode"    # I
    .param p2, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 141
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 143
    .local v2, "token":J
    :try_start_6
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v5, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1$$ExternalSyntheticLambda0;

    move/from16 v6, p1

    invoke-direct {v5, v4, v6}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_40

    .line 146
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    iget-object v6, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    sub-long v10, v4, v8

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    sub-long v12, v4, v8

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v8

    sub-long v14, v4, v8

    .line 147
    const-string v8, ""

    const/16 v9, 0x16

    move/from16 v16, p1

    invoke-static/range {v6 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 156
    nop

    .line 157
    return-void

    .line 146
    :catchall_40
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    iget-object v6, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    sub-long v10, v4, v8

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    sub-long v12, v4, v8

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v8

    sub-long v14, v4, v8

    .line 147
    const-string v8, ""

    const/16 v9, 0x16

    move/from16 v16, p1

    invoke-static/range {v6 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 156
    throw v0
.end method

.method public blacklist onSuccess(Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 19
    .param p1, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 123
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 125
    .local v2, "token":J
    :try_start_6
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v5, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_3e

    .line 127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    iget-object v6, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    sub-long v10, v4, v8

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    sub-long v12, v4, v8

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v8

    sub-long v14, v4, v8

    .line 128
    const-string v8, ""

    const/16 v9, 0x16

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 137
    nop

    .line 138
    return-void

    .line 127
    :catchall_3e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

    iget-object v5, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    sub-long v8, v6, v8

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v6

    iget-wide v10, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;->val$startTimeMillis:J

    sub-long v10, v6, v10

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v12

    sub-long v12, v6, v12

    .line 128
    const-string v6, ""

    const/16 v7, 0x16

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 137
    throw v0
.end method
