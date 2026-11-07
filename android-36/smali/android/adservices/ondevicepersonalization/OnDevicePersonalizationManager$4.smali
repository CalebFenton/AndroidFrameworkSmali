.class Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;
.super Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback$Stub;
.source "OnDevicePersonalizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->queryFeatureAvailability(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

.field final synthetic blacklist val$startTimeMillis:J


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;J)V
    .registers 7
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;
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

    .line 669
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$receiver:Landroid/os/OutcomeReceiver;

    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iput-wide p5, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$startTimeMillis:J

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # I

    .line 676
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 677
    return-void
.end method


# virtual methods
.method public blacklist onResult(ILandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 20
    .param p1, "result"    # I
    .param p2, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 672
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 674
    .local v2, "token":J
    :try_start_6
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v5, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4$$ExternalSyntheticLambda0;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_40

    move/from16 v6, p1

    :try_start_e
    invoke-direct {v5, v4, v6}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_3e

    .line 679
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$startTimeMillis:J

    sub-long v10, v4, v8

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$startTimeMillis:J

    sub-long v12, v4, v8

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v8

    sub-long v14, v4, v8

    .line 680
    const-string v8, ""

    const/16 v9, 0x18

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 690
    nop

    .line 691
    return-void

    .line 679
    :catchall_3e
    move-exception v0

    goto :goto_43

    :catchall_40
    move-exception v0

    move/from16 v6, p1

    :goto_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$startTimeMillis:J

    sub-long v10, v4, v8

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$4;->val$startTimeMillis:J

    sub-long v12, v4, v8

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v8

    sub-long v14, v4, v8

    .line 680
    const-string v8, ""

    const/16 v9, 0x18

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 690
    throw v0
.end method
