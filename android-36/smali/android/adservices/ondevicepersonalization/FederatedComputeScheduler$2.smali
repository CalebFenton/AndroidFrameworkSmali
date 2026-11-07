.class Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;
.super Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback$Stub;
.source "FederatedComputeScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->schedule(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$federatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

.field final synthetic blacklist val$outcomeReceiver:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$startTimeMillis:J


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;JLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;)V
    .registers 7
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
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

    .line 177
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->this$0:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;

    iput-wide p2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$startTimeMillis:J

    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$outcomeReceiver:Landroid/os/OutcomeReceiver;

    iput-object p6, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$federatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;I)V
    .registers 4
    .param p0, "outcomeReceiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "errorCode"    # I

    .line 200
    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;

    .line 202
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->-$$Nest$smtranslateErrorCode(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;-><init>(I)V

    .line 200
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 203
    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;)V
    .registers 3
    .param p0, "outcomeReceiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "federatedComputeScheduleRequest"    # Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    .line 186
    new-instance v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;

    invoke-direct {v0, p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;-><init>(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 189
    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .line 194
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->this$0:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$startTimeMillis:J

    sub-long/2addr v1, v3

    .line 194
    const/16 v3, 0x13

    invoke-static {v0, v3, v1, v2, p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;IJI)V

    .line 198
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$outcomeReceiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 6

    .line 180
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->this$0:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$startTimeMillis:J

    sub-long/2addr v1, v3

    .line 180
    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;IJI)V

    .line 184
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$outcomeReceiver:Landroid/os/OutcomeReceiver;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2;->val$federatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    new-instance v3, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method
