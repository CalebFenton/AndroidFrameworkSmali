.class Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;
.super Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;
.source "OnDevicePersonalizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->executeInIsolatedService(Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$request:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

.field final synthetic blacklist val$startTimeMillis:J


# direct methods
.method public static synthetic blacklist $r8$lambda$lOUPjUB6DMkBsRHu6wpsjmb2jKQ(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;Landroid/os/OutcomeReceiver;II[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->lambda$onError$1(Landroid/os/OutcomeReceiver;II[B)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;Ljava/util/concurrent/Executor;Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;J)V
    .registers 8
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .line 371
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$request:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$receiver:Landroid/os/OutcomeReceiver;

    iput-object p5, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iput-wide p6, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(Landroid/os/OutcomeReceiver;II[B)V
    .registers 7
    .param p1, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p2, "errorCode"    # I
    .param p3, "isolatedServiceErrorCode"    # I
    .param p4, "serializedExceptionInfo"    # [B

    .line 436
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    invoke-static {v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$fgetmContext(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;)Landroid/content/Context;

    move-result-object v0

    .line 439
    const/4 v1, 0x0

    invoke-static {p2, p3, p4, v0, v1}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smcreateException(II[BLandroid/content/Context;Z)Ljava/lang/Exception;

    move-result-object v0

    .line 436
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 445
    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p0, "callbackResult"    # Landroid/os/Bundle;
    .param p1, "request"    # Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;
    .param p2, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "surfacePackageToken":Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    if-eqz p0, :cond_17

    .line 382
    :try_start_3
    const-string v1, "android.ondevicepersonalization.extra.surface_package_token_string"

    .line 383
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "tokenString":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 387
    invoke-virtual {v1}, Ljava/lang/String;->isBlank()Z

    move-result v2

    if-nez v2, :cond_17

    .line 388
    new-instance v2, Landroid/adservices/ondevicepersonalization/SurfacePackageToken;

    invoke-direct {v2, v1}, Landroid/adservices/ondevicepersonalization/SurfacePackageToken;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 393
    .end local v1    # "tokenString":Ljava/lang/String;
    :cond_17
    const/4 v1, -0x1

    .line 394
    .local v1, "intValue":I
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getOutputSpec()Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->getOutputType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 398
    const-string v2, "android.ondevicepersonalization.extra.output_best_value"

    .line 399
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 404
    :cond_2a
    new-instance v2, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;

    invoke-direct {v2, v0, v1}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;-><init>(Landroid/adservices/ondevicepersonalization/SurfacePackageToken;I)V

    invoke-interface {p2, v2}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_33

    .line 409
    .end local v0    # "surfacePackageToken":Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    .end local v1    # "intValue":I
    goto :goto_37

    .line 407
    :catch_33
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method


# virtual methods
.method public blacklist onError(II[BLandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 24
    .param p1, "errorCode"    # I
    .param p2, "isolatedServiceErrorCode"    # I
    .param p3, "serializedExceptionInfo"    # [B
    .param p4, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 432
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 434
    .local v6, "token":J
    :try_start_6
    iget-object v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda0;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;Landroid/os/OutcomeReceiver;II[B)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_49

    .line 447
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    iget-object v9, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$request:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    .line 450
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    sub-long v12, v2, v4

    .line 453
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    sub-long v14, v2, v4

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 456
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 448
    const/4 v11, 0x1

    move/from16 v18, p1

    invoke-static/range {v9 .. v18}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 458
    nop

    .line 459
    return-void

    .line 447
    :catchall_49
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    iget-object v9, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iget-object v2, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$request:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    .line 450
    invoke-virtual {v2}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    sub-long v12, v2, v4

    .line 453
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    sub-long v14, v2, v4

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 456
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 448
    const/4 v11, 0x1

    move/from16 v18, p1

    invoke-static/range {v9 .. v18}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 458
    throw v0
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 21
    .param p1, "callbackResult"    # Landroid/os/Bundle;
    .param p2, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 375
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 377
    .local v2, "token":J
    :try_start_6
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$request:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    iget-object v5, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v6, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_49

    move-object/from16 v7, p1

    :try_start_10
    invoke-direct {v6, v7, v4, v5}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_47

    .line 412
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    iget-object v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$request:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    .line 415
    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v10, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    sub-long v11, v4, v10

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v13, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    sub-long v13, v4, v13

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v15

    sub-long v15, v4, v15

    .line 413
    const/4 v10, 0x1

    const/16 v17, 0x0

    invoke-static/range {v8 .. v17}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 423
    nop

    .line 424
    return-void

    .line 412
    :catchall_47
    move-exception v0

    goto :goto_4c

    :catchall_49
    move-exception v0

    move-object/from16 v7, p1

    :goto_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    iget-object v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$request:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    .line 415
    invoke-virtual {v4}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v10, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    sub-long v11, v4, v10

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v13, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$2;->val$startTimeMillis:J

    sub-long v13, v4, v13

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v15

    sub-long v15, v4, v15

    .line 413
    const/4 v10, 0x1

    const/16 v17, 0x0

    invoke-static/range {v8 .. v17}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 423
    throw v0
.end method
