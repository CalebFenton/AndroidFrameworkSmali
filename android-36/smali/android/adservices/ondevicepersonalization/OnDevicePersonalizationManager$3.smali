.class Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;
.super Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback$Stub;
.source "OnDevicePersonalizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->requestSurfacePackage(Landroid/adservices/ondevicepersonalization/SurfacePackageToken;Landroid/os/IBinder;IIILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

.field final synthetic blacklist val$startTimeMillis:J


# direct methods
.method public static synthetic blacklist $r8$lambda$gDiQEWW0XyN17cJid5YJZF2Jl6E(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;Landroid/os/OutcomeReceiver;II[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->lambda$onError$1(Landroid/os/OutcomeReceiver;II[B)V

    return-void
.end method

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

    .line 553
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$receiver:Landroid/os/OutcomeReceiver;

    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iput-wide p5, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$startTimeMillis:J

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(Landroid/os/OutcomeReceiver;II[B)V
    .registers 6
    .param p1, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p2, "errorCode"    # I
    .param p3, "isolatedServiceErrorCode"    # I
    .param p4, "serializedExceptionInfo"    # [B

    .line 588
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    invoke-static {v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$fgetmContext(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;)Landroid/content/Context;

    move-result-object v0

    .line 589
    invoke-static {p2, p3, p4, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smcreateException(II[BLandroid/content/Context;)Ljava/lang/Exception;

    move-result-object v0

    .line 588
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 562
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 563
    return-void
.end method


# virtual methods
.method public blacklist onError(II[BLandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 24
    .param p1, "errorCode"    # I
    .param p2, "isolatedServiceErrorCode"    # I
    .param p3, "serializedExceptionInfo"    # [B
    .param p4, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 584
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 586
    .local v6, "token":J
    :try_start_6
    iget-object v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3$$ExternalSyntheticLambda1;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;Landroid/os/OutcomeReceiver;II[B)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_3b

    .line 595
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    iget-object v9, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 600
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$startTimeMillis:J

    sub-long v12, v2, v4

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 603
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 596
    const-string v10, ""

    const/4 v11, 0x2

    const-wide/16 v14, 0x0

    move/from16 v18, p1

    invoke-static/range {v9 .. v18}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 605
    nop

    .line 606
    return-void

    .line 595
    :catchall_3b
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    iget-object v9, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 600
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$startTimeMillis:J

    sub-long v12, v2, v4

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 603
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 596
    const-string v10, ""

    const/4 v11, 0x2

    const-wide/16 v14, 0x0

    move/from16 v18, p1

    invoke-static/range {v9 .. v18}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 605
    throw v0
.end method

.method public blacklist onSuccess(Landroid/view/SurfaceControlViewHost$SurfacePackage;Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 20
    .param p1, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 558
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 560
    .local v2, "token":J
    :try_start_6
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v5, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3$$ExternalSyntheticLambda0;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_39

    move-object/from16 v6, p1

    :try_start_e
    invoke-direct {v5, v4, v6}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_37

    .line 565
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$startTimeMillis:J

    sub-long v10, v4, v8

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v8

    sub-long v14, v4, v8

    .line 566
    const-string v8, ""

    const/4 v9, 0x2

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 575
    nop

    .line 576
    return-void

    .line 565
    :catchall_37
    move-exception v0

    goto :goto_3c

    :catchall_39
    move-exception v0

    move-object/from16 v6, p1

    :goto_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$service:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$3;->val$startTimeMillis:J

    sub-long v10, v4, v8

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v8

    sub-long v14, v4, v8

    .line 566
    const-string v8, ""

    const/4 v9, 0x2

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 575
    throw v0
.end method
