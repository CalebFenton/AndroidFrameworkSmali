.class Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;
.super Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;
.source "OnDevicePersonalizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->execute(Landroid/content/ComponentName;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

.field final synthetic blacklist val$service:Landroid/content/ComponentName;

.field final synthetic blacklist val$startTimeMillis:J


# direct methods
.method public static synthetic blacklist $r8$lambda$8p_CgdVa94wQ9UFc-HX59mj_bBY(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;Landroid/os/OutcomeReceiver;II[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->lambda$onError$1(Landroid/os/OutcomeReceiver;II[B)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Landroid/content/ComponentName;J)V
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

    .line 235
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iput-object p5, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$service:Landroid/content/ComponentName;

    iput-wide p6, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(Landroid/os/OutcomeReceiver;II[B)V
    .registers 6
    .param p1, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p2, "errorCode"    # I
    .param p3, "isolatedServiceErrorCode"    # I
    .param p4, "serializedExceptionInfo"    # [B

    .line 289
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->this$0:Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;

    invoke-static {v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$fgetmContext(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;)Landroid/content/Context;

    move-result-object v0

    .line 290
    invoke-static {p2, p3, p4, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smcreateException(II[BLandroid/content/Context;)Ljava/lang/Exception;

    move-result-object v0

    .line 289
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/Bundle;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p0, "callbackResult"    # Landroid/os/Bundle;
    .param p1, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "surfacePackageToken":Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    if-eqz p0, :cond_17

    .line 246
    :try_start_3
    const-string v1, "android.ondevicepersonalization.extra.surface_package_token_string"

    .line 247
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "tokenString":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 251
    invoke-virtual {v1}, Ljava/lang/String;->isBlank()Z

    move-result v2

    if-nez v2, :cond_17

    .line 252
    new-instance v2, Landroid/adservices/ondevicepersonalization/SurfacePackageToken;

    invoke-direct {v2, v1}, Landroid/adservices/ondevicepersonalization/SurfacePackageToken;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 257
    .end local v1    # "tokenString":Ljava/lang/String;
    :cond_17
    new-instance v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;-><init>(Landroid/adservices/ondevicepersonalization/SurfacePackageToken;[B)V

    invoke-interface {p1, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_21

    .line 262
    .end local v0    # "surfacePackageToken":Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    goto :goto_25

    .line 260
    :catch_21
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method


# virtual methods
.method public blacklist onError(II[BLandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 24
    .param p1, "errorCode"    # I
    .param p2, "isolatedServiceErrorCode"    # I
    .param p3, "serializedExceptionInfo"    # [B
    .param p4, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 285
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 287
    .local v6, "token":J
    :try_start_6
    iget-object v8, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1$$ExternalSyntheticLambda0;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;Landroid/os/OutcomeReceiver;II[B)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_45

    .line 295
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    iget-object v9, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$service:Landroid/content/ComponentName;

    .line 298
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    sub-long v12, v2, v4

    .line 301
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    sub-long v14, v2, v4

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 304
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 296
    const/4 v11, 0x1

    move/from16 v18, p1

    invoke-static/range {v9 .. v18}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 306
    nop

    .line 307
    return-void

    .line 295
    :catchall_45
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    iget-object v9, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iget-object v2, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$service:Landroid/content/ComponentName;

    .line 298
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    sub-long v12, v2, v4

    .line 301
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    sub-long v14, v2, v4

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 304
    invoke-virtual/range {p4 .. p4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 296
    const/4 v11, 0x1

    move/from16 v18, p1

    invoke-static/range {v9 .. v18}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 306
    throw v0
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 20
    .param p1, "callbackResult"    # Landroid/os/Bundle;
    .param p2, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 239
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 241
    .local v2, "token":J
    :try_start_6
    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v5, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1$$ExternalSyntheticLambda1;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_43

    move-object/from16 v6, p1

    :try_start_e
    invoke-direct {v5, v6, v4}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_41

    .line 265
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iget-object v0, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$service:Landroid/content/ComponentName;

    .line 268
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v9, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    sub-long v10, v4, v9

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v12, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    sub-long v12, v4, v12

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v14

    sub-long v14, v4, v14

    .line 266
    const/4 v9, 0x1

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 276
    nop

    .line 277
    return-void

    .line 265
    :catchall_41
    move-exception v0

    goto :goto_46

    :catchall_43
    move-exception v0

    move-object/from16 v6, p1

    :goto_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    iget-object v7, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$odpService:Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    iget-object v4, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$service:Landroid/content/ComponentName;

    .line 268
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v9, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    sub-long v10, v4, v9

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getServiceEntryTimeMillis()J

    move-result-wide v4

    iget-wide v12, v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$1;->val$startTimeMillis:J

    sub-long v12, v4, v12

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->getCallbackInvokeTimeMillis()J

    move-result-wide v14

    sub-long v14, v4, v14

    .line 266
    const/4 v9, 0x1

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;->-$$Nest$smlogApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 276
    throw v0
.end method
