.class public Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
.super Ljava/lang/Object;
.source "FederatedComputeScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;
    }
.end annotation


# static fields
.field private static final blacklist FEDERATED_COMPUTE_SCHEDULE_TIMEOUT_SECONDS:I = 0x1e

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field private final blacklist mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

.field private final blacklist mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;IJI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smtranslateErrorCode(I)I
    .registers 1

    invoke-static {p0}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->translateErrorCode(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->TAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;)V
    .registers 3
    .param p1, "binder"    # Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    .param p2, "dataService"    # Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    .line 54
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 55
    return-void
.end method

.method private static blacklist convertSchedulingMode(Landroid/adservices/ondevicepersonalization/TrainingInterval;)I
    .registers 4
    .param p0, "interval"    # Landroid/adservices/ondevicepersonalization/TrainingInterval;

    .line 304
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/TrainingInterval;->getSchedulingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported scheduling mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/TrainingInterval;->getSchedulingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_24
    const/4 v0, 0x2

    return v0

    .line 306
    :pswitch_26
    const/4 v0, 0x1

    return v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_26
        :pswitch_24
    .end packed-switch
.end method

.method private static blacklist convertTrainingInterval(Landroid/adservices/ondevicepersonalization/TrainingInterval;)Landroid/federatedcompute/common/TrainingInterval;
    .registers 4
    .param p0, "interval"    # Landroid/adservices/ondevicepersonalization/TrainingInterval;

    .line 296
    new-instance v0, Landroid/federatedcompute/common/TrainingInterval$Builder;

    invoke-direct {v0}, Landroid/federatedcompute/common/TrainingInterval$Builder;-><init>()V

    .line 297
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/TrainingInterval;->getMinimumInterval()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/federatedcompute/common/TrainingInterval$Builder;->setMinimumIntervalMillis(J)Landroid/federatedcompute/common/TrainingInterval$Builder;

    move-result-object v0

    .line 298
    invoke-static {p0}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->convertSchedulingMode(Landroid/adservices/ondevicepersonalization/TrainingInterval;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/federatedcompute/common/TrainingInterval$Builder;->setSchedulingMode(I)Landroid/federatedcompute/common/TrainingInterval$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/federatedcompute/common/TrainingInterval$Builder;->build()Landroid/federatedcompute/common/TrainingInterval;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method static synthetic blacklist lambda$schedule$0(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "outcomeReceiver"    # Landroid/os/OutcomeReceiver;

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FederatedComputeScheduler not available for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 161
    return-void
.end method

.method static synthetic blacklist lambda$schedule$1(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 2
    .param p0, "outcomeReceiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 214
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method private blacklist logApiCallStats(IJI)V
    .registers 9
    .param p1, "apiName"    # I
    .param p2, "duration"    # J
    .param p4, "responseCode"    # I

    .line 318
    :try_start_0
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 321
    goto :goto_24

    .line 319
    :catch_6
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": failed to log metrics"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method private static blacklist translateErrorCode(I)I
    .registers 2
    .param p0, "i"    # I

    .line 226
    const/16 v0, 0x6e

    if-ne p0, v0, :cond_6

    .line 227
    const/4 v0, 0x7

    goto :goto_7

    .line 228
    :cond_6
    const/4 v0, 0x6

    .line 226
    :goto_7
    return v0
.end method


# virtual methods
.method public whitelist cancel(Landroid/adservices/ondevicepersonalization/FederatedComputeInput;)V
    .registers 12
    .param p1, "input"    # Landroid/adservices/ondevicepersonalization/FederatedComputeInput;

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    .local v0, "startTimeMillis":J
    const/16 v2, 0x64

    .line 244
    .local v2, "responseCode":I
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    const/16 v4, 0x15

    if-eqz v3, :cond_ae

    .line 252
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 253
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v5, 0x0

    filled-new-array {v5}, [I

    move-result-object v6

    .line 255
    .local v6, "err":[I
    :try_start_17
    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    .line 256
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->getPopulationName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$3;

    invoke-direct {v9, p0, v3, v6}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$3;-><init>(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;Ljava/util/concurrent/CountDownLatch;[I)V

    .line 255
    invoke-interface {v7, v8, v9}, Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;->cancel(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;)V

    .line 269
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 270
    const-wide/16 v8, 0x1e

    invoke-virtual {v3, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    .line 271
    .local v7, "countedDown":Z
    aget v8, v6, v5

    if-eqz v8, :cond_4e

    .line 272
    sget-object v8, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    const-string v9, "Internal failure occurred while cancelling job, error code %d"

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_42} :catch_84
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_42} :catch_84
    .catchall {:try_start_17 .. :try_end_42} :catchall_82

    .line 273
    const/16 v2, 0x64

    .line 287
    nop

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    .line 287
    invoke-direct {p0, v4, v8, v9, v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 276
    return-void

    .line 277
    :cond_4e
    if-nez v7, :cond_76

    .line 278
    :try_start_50
    sget-object v5, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : timed out waiting for cancel operation to complete."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_6a} :catch_84
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_6a} :catch_84
    .catchall {:try_start_50 .. :try_end_6a} :catchall_82

    .line 279
    const/16 v2, 0x64

    .line 287
    nop

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    .line 287
    invoke-direct {p0, v4, v8, v9, v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 280
    return-void

    .line 282
    :cond_76
    const/4 v2, 0x0

    .line 287
    .end local v7    # "countedDown":Z
    nop

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 287
    invoke-direct {p0, v4, v7, v8, v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 291
    nop

    .line 292
    return-void

    .line 287
    :catchall_82
    move-exception v5

    goto :goto_a5

    .line 283
    :catch_84
    move-exception v5

    .line 284
    .local v5, "e":Ljava/lang/Exception;
    :try_start_85
    sget-object v7, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Failed to cancel federated compute job"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "startTimeMillis":J
    .end local v2    # "responseCode":I
    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v6    # "err":[I
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
    .end local p1    # "input":Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
    throw v7
    :try_end_a5
    .catchall {:try_start_85 .. :try_end_a5} :catchall_82

    .line 289
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "startTimeMillis":J
    .restart local v2    # "responseCode":I
    .restart local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v6    # "err":[I
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
    .restart local p1    # "input":Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
    :goto_a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 287
    invoke-direct {p0, v4, v7, v8, v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 291
    throw v5

    .line 245
    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v6    # "err":[I
    :cond_ae
    nop

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 245
    invoke-direct {p0, v4, v5, v6, v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 249
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "FederatedComputeScheduler not available for this instance."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist schedule(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 14
    .param p1, "federatedComputeScheduleRequest"    # Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p3, "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    const/16 v1, 0x13

    if-nez v0, :cond_15

    .line 153
    const-wide/16 v2, 0x0

    const/16 v0, 0x64

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 157
    new-instance v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 165
    .local v4, "startTimeMillis":J
    new-instance v0, Landroid/federatedcompute/common/TrainingOptions$Builder;

    invoke-direct {v0}, Landroid/federatedcompute/common/TrainingOptions$Builder;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->getPopulationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/federatedcompute/common/TrainingOptions$Builder;->setPopulationName(Ljava/lang/String;)Landroid/federatedcompute/common/TrainingOptions$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->getParams()Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;->getTrainingInterval()Landroid/adservices/ondevicepersonalization/TrainingInterval;

    move-result-object v2

    .line 169
    invoke-static {v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->convertTrainingInterval(Landroid/adservices/ondevicepersonalization/TrainingInterval;)Landroid/federatedcompute/common/TrainingInterval;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v2}, Landroid/federatedcompute/common/TrainingOptions$Builder;->setTrainingInterval(Landroid/federatedcompute/common/TrainingInterval;)Landroid/federatedcompute/common/TrainingOptions$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/federatedcompute/common/TrainingOptions$Builder;->build()Landroid/federatedcompute/common/TrainingOptions;

    move-result-object v9

    .line 175
    .local v9, "trainingOptions":Landroid/federatedcompute/common/TrainingOptions;
    :try_start_3a
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    new-instance v2, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3e} :catch_4c

    move-object v3, p0

    move-object v8, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "federatedComputeScheduleRequest":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;Ljava/lang/Exception;>;"
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;Ljava/lang/Exception;>;"
    .local v8, "federatedComputeScheduleRequest":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    :try_start_42
    invoke-direct/range {v2 .. v8}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;-><init>(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;JLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;)V

    invoke-interface {v0, v9, v2}, Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;->schedule(Landroid/federatedcompute/common/TrainingOptions;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    .line 216
    goto :goto_7f

    .line 206
    :catch_49
    move-exception v0

    move-object p1, v0

    goto :goto_52

    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;Ljava/lang/Exception;>;"
    .end local v8    # "federatedComputeScheduleRequest":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    .restart local p1    # "federatedComputeScheduleRequest":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;Ljava/lang/Exception;>;"
    :catch_4c
    move-exception v0

    move-object v3, p0

    move-object v8, p1

    move-object v6, p2

    move-object v7, p3

    move-object p1, v0

    .line 207
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;Ljava/lang/Exception;>;"
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;Ljava/lang/Exception;>;"
    .restart local v8    # "federatedComputeScheduleRequest":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_52
    sget-object p2, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": Failed to schedule federated compute job"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    nop

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v4

    .line 208
    const/16 v0, 0x71

    invoke-direct {p0, v1, p2, p3, v0}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 212
    new-instance p2, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$$ExternalSyntheticLambda1;

    invoke-direct {p2, v7, p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {v6, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 217
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_7f
    return-void
.end method

.method public whitelist schedule(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;Landroid/adservices/ondevicepersonalization/FederatedComputeInput;)V
    .registers 15
    .param p1, "params"    # Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;
    .param p2, "input"    # Landroid/adservices/ondevicepersonalization/FederatedComputeInput;

    .line 70
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    const/16 v1, 0x13

    if-eqz v0, :cond_dc

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 79
    .local v2, "startTimeMillis":J
    new-instance v0, Landroid/federatedcompute/common/TrainingOptions$Builder;

    invoke-direct {v0}, Landroid/federatedcompute/common/TrainingOptions$Builder;-><init>()V

    .line 81
    invoke-virtual {p2}, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->getPopulationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/federatedcompute/common/TrainingOptions$Builder;->setPopulationName(Ljava/lang/String;)Landroid/federatedcompute/common/TrainingOptions$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;->getTrainingInterval()Landroid/adservices/ondevicepersonalization/TrainingInterval;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->convertTrainingInterval(Landroid/adservices/ondevicepersonalization/TrainingInterval;)Landroid/federatedcompute/common/TrainingInterval;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/federatedcompute/common/TrainingOptions$Builder;->setTrainingInterval(Landroid/federatedcompute/common/TrainingInterval;)Landroid/federatedcompute/common/TrainingOptions$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/federatedcompute/common/TrainingOptions$Builder;->build()Landroid/federatedcompute/common/TrainingOptions;

    move-result-object v0

    .line 85
    .local v0, "trainingOptions":Landroid/federatedcompute/common/TrainingOptions;
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 86
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v5, 0x0

    filled-new-array {v5}, [I

    move-result-object v6

    .line 87
    .local v6, "err":[I
    const/16 v7, 0x64

    .line 89
    .local v7, "responseCode":I
    :try_start_34
    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    new-instance v9, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$1;

    invoke-direct {v9, p0, v4, v6}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$1;-><init>(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;Ljava/util/concurrent/CountDownLatch;[I)V

    invoke-interface {v8, v0, v9}, Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;->schedule(Landroid/federatedcompute/common/TrainingOptions;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;)V

    .line 104
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    const-wide/16 v9, 0x1e

    invoke-virtual {v4, v9, v10, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    .line 107
    .local v8, "countedDown":Z
    aget v9, v6, v5

    if-eqz v9, :cond_7a

    .line 108
    sget-object v9, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : Internal failure occurred while scheduling job, error code %d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aget v11, v6, v5

    .line 110
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 108
    invoke-virtual {v9, v10, v11}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    aget v5, v6, v5
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_70} :catch_b0
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_70} :catch_b0
    .catchall {:try_start_34 .. :try_end_70} :catchall_ae

    .line 124
    .end local v7    # "responseCode":I
    .local v5, "responseCode":I
    nop

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 124
    invoke-direct {p0, v1, v9, v10, v5}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 112
    return-void

    .line 113
    .end local v5    # "responseCode":I
    .restart local v7    # "responseCode":I
    :cond_7a
    if-nez v8, :cond_a2

    .line 114
    :try_start_7c
    sget-object v5, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : timed out waiting for schedule operation to complete."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/String;)I
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_96} :catch_b0
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_96} :catch_b0
    .catchall {:try_start_7c .. :try_end_96} :catchall_ae

    .line 115
    const/16 v5, 0x70

    .line 124
    .end local v7    # "responseCode":I
    .restart local v5    # "responseCode":I
    nop

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 124
    invoke-direct {p0, v1, v9, v10, v5}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 116
    return-void

    .line 118
    .end local v5    # "responseCode":I
    .restart local v7    # "responseCode":I
    :cond_a2
    const/4 v5, 0x0

    .line 124
    .end local v7    # "responseCode":I
    .end local v8    # "countedDown":Z
    .restart local v5    # "responseCode":I
    nop

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 124
    invoke-direct {p0, v1, v7, v8, v5}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 128
    nop

    .line 129
    return-void

    .line 124
    .end local v5    # "responseCode":I
    .restart local v7    # "responseCode":I
    :catchall_ae
    move-exception v5

    goto :goto_d3

    .line 119
    :catch_b0
    move-exception v5

    .line 120
    .local v5, "e":Ljava/lang/Exception;
    const/16 v7, 0x71

    .line 121
    :try_start_b3
    sget-object v8, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": Failed to schedule federated compute job"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "trainingOptions":Landroid/federatedcompute/common/TrainingOptions;
    .end local v2    # "startTimeMillis":J
    .end local v4    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v6    # "err":[I
    .end local v7    # "responseCode":I
    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
    .end local p1    # "params":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;
    .end local p2    # "input":Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
    throw v8
    :try_end_d3
    .catchall {:try_start_b3 .. :try_end_d3} :catchall_ae

    .line 126
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "trainingOptions":Landroid/federatedcompute/common/TrainingOptions;
    .restart local v2    # "startTimeMillis":J
    .restart local v4    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v6    # "err":[I
    .restart local v7    # "responseCode":I
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
    .restart local p1    # "params":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;
    .restart local p2    # "input":Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
    :goto_d3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 124
    invoke-direct {p0, v1, v8, v9, v7}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 128
    throw v5

    .line 71
    .end local v0    # "trainingOptions":Landroid/federatedcompute/common/TrainingOptions;
    .end local v2    # "startTimeMillis":J
    .end local v4    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v6    # "err":[I
    .end local v7    # "responseCode":I
    :cond_dc
    const-wide/16 v2, 0x0

    const/16 v0, 0x64

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->logApiCallStats(IJI)V

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FederatedComputeScheduler not available for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
