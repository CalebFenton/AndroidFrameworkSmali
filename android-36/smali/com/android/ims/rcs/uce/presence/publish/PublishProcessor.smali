.class public Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;
.super Ljava/lang/Object;
.source "PublishProcessor.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist RESPONSE_CALLBACK_WAITING_TIME:J = 0xea60L


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

.field private volatile blacklist mIsDestroyed:Z

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private final blacklist mPendingRequestLock:Ljava/lang/Object;

.field private blacklist mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

.field private final blacklist mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

.field private volatile blacklist mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

.field private final blacklist mSubId:I

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method public static synthetic blacklist $r8$lambda$COw_WGcEz7ZzZNX4A27y2l_OwS0(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;Landroid/telephony/ims/RcsContactUceCapability;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->lambda$doPublishInternal$0(Landroid/telephony/ims/RcsContactUceCapability;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ltFNqLCN9BPg_g4Gy-MdxW9s-gk(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->lambda$updatePublishStateFromResponse$1(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PublishProcessor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "capabilityInfo"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p4, "publishCtrlCallback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    .line 78
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    .line 79
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 81
    iput-object p4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 82
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-direct {v0, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    .line 83
    invoke-static {}, Lcom/android/ims/rcs/uce/UceStatsWriter;->getInstance()Lcom/android/ims/rcs/uce/UceStatsWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "capabilityInfo"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p4, "publishCtrlCallback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .param p5, "instance"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    .line 89
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    .line 90
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 92
    iput-object p4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 93
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-direct {v0, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    .line 94
    iput-object p5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 95
    return-void
.end method

.method private blacklist checkRequestRespValid(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)Z
    .registers 9
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 325
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 326
    const-string v1, "checkRequestRespValid: request response is null"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 327
    return v0

    .line 330
    :cond_9
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isPublishingNow()Z

    move-result v1

    if-nez v1, :cond_17

    .line 331
    const-string v1, "checkRequestRespValid: the request is finished"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 332
    return v0

    .line 337
    :cond_17
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->getCurrentTaskId()J

    move-result-wide v1

    .line 338
    .local v1, "taskId":J
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getTaskId()J

    move-result-wide v3

    .line 339
    .local v3, "responseTaskId":J
    cmp-long v5, v1, v3

    if-eqz v5, :cond_46

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkRequestRespValid: invalid taskId! current taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", response callback taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 342
    return v0

    .line 345
    :cond_46
    iget-boolean v5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    if-eqz v5, :cond_61

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkRequestRespValid: is already destroyed! taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 347
    return v0

    .line 349
    :cond_61
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist clearPendingRequest()V
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->clearPendingRequest()V

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist doPublishInternal(I)Z
    .registers 7
    .param p1, "triggerType"    # I

    .line 146
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 148
    :cond_6
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPublishInternal: trigger type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->isRequestAllowed(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 153
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "doPublishInternal: The request is not allowed."

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 154
    return v1

    .line 159
    :cond_40
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4c

    .line 160
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .local v0, "deviceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    goto :goto_54

    .line 163
    .end local v0    # "deviceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    :cond_4c
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getChangedPresenceCapability(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .line 165
    .restart local v0    # "deviceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    :goto_54
    if-nez v0, :cond_5c

    .line 166
    const-string v2, "doPublishInternal: device capability hasn\'t changed or is null"

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 167
    return v1

    .line 171
    :cond_5c
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->convertToPidf(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "pidfXml":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 173
    const-string v3, "doPublishInternal: pidfXml is empty"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 174
    return v1

    .line 179
    :cond_6c
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 180
    .local v3, "featureManager":Lcom/android/ims/RcsFeatureManager;
    if-nez v3, :cond_79

    .line 181
    const-string v4, "doPublishInternal: RCS is not connected."

    invoke-direct {p0, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setPendingRequest(I)V

    .line 183
    return v1

    .line 186
    :cond_79
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;Landroid/telephony/ims/RcsContactUceCapability;)V

    invoke-virtual {v3, v1}, Lcom/android/ims/RcsFeatureManager;->getImsRegistrationTech(Ljava/util/function/Consumer;)V

    .line 194
    invoke-direct {p0, v3, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->publishCapabilities(Lcom/android/ims/RcsFeatureManager;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    return-object v0
.end method

.method private blacklist handleRequestRespWithRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 4
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 358
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->increaseRetryCount()V

    .line 361
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->setPresencePublishResult(Z)V

    .line 363
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->clearPendingRequest()V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 367
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->requestPublishFromInternal(I)V

    .line 368
    return-void
.end method

.method private blacklist handleRequestRespWithoutRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 2
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 375
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->updatePublishStateFromResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 379
    return-void
.end method

.method private blacklist isRequestAllowed(I)Z
    .registers 4
    .param p1, "triggerType"    # I

    .line 203
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 204
    const-string v0, "isPublishAllowed: This instance is already destroyed"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 205
    return v1

    .line 210
    :cond_b
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->isEabProvisioned()Z

    move-result v0

    if-nez v0, :cond_17

    .line 211
    const-string v0, "isPublishAllowed: NOT provisioned"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 212
    return v1

    .line 217
    :cond_17
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v0

    if-nez v0, :cond_25

    .line 218
    const-string v0, "isPublishAllowed: IMS is not registered"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 219
    return v1

    .line 224
    :cond_25
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isPublishAllowedAtThisTime()Z

    move-result v0

    if-nez v0, :cond_38

    .line 225
    const-string v0, "isPublishAllowed: Current time is not allowed, resend this request"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->requestPublishFromInternal(I)V

    .line 227
    return v1

    .line 229
    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$doPublishInternal$0(Landroid/telephony/ims/RcsContactUceCapability;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "deviceCapability"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "tech"    # Ljava/lang/Integer;

    .line 187
    if-nez p2, :cond_4

    .line 188
    const/4 v0, -0x1

    goto :goto_8

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, "registrationTech":I
    :goto_8
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    .line 190
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v3

    .line 189
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setImsRegistrationServiceDescStats(ILjava/util/List;I)V

    .line 191
    return-void
.end method

.method private synthetic blacklist lambda$updatePublishStateFromResponse$1(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    .param p2, "sipCode"    # Ljava/lang/Integer;

    .line 404
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseReason()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->refreshDeviceState(ILjava/lang/String;)V

    .line 406
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 536
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 540
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 544
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void
.end method

.method private blacklist publishCapabilities(Lcom/android/ims/RcsFeatureManager;Ljava/lang/String;)Z
    .registers 9
    .param p1, "featureManager"    # Lcom/android/ims/RcsFeatureManager;
    .param p2, "pidfXml"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    .line 238
    .local v0, "requestResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->clearPendingRequest()V

    .line 241
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->generatePublishTaskId()J

    move-result-wide v1

    .line 242
    .local v1, "taskId":J
    new-instance v3, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-direct {v3, v4, v1, v2, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;JLjava/lang/String;)V

    move-object v0, v3

    .line 244
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "publish capabilities: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishCapabilities: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseCallback()Landroid/telephony/ims/aidl/IPublishResponseCallback;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/android/ims/RcsFeatureManager;->requestPublication(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    .line 251
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    const-wide/32 v4, 0xea60

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->setupRequestCanceledTimer(JJ)V

    .line 254
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->notifyPendingPublishRequest()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_54} :catch_56

    .line 255
    const/4 v3, 0x1

    return v3

    .line 256
    .end local v1    # "taskId":J
    :catch_56
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publish capability exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishCapabilities: exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 262
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 7
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 425
    const-wide/16 v0, -0x1

    .line 426
    .local v0, "taskId":J
    if-eqz p1, :cond_b

    .line 427
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->onDestroy()V

    .line 428
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getTaskId()J

    move-result-wide v0

    .line 430
    :cond_b
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPublishingFlag(Z)V

    .line 431
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->clearRequestCanceledTimer()V

    .line 433
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set request ended: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequestEnded: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method private blacklist updatePublishStateFromResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 9
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 383
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseTimestamp()Ljava/time/Instant;

    move-result-object v0

    .line 386
    .local v0, "responseTime":Ljava/time/Instant;
    const/4 v1, 0x0

    .line 387
    .local v1, "publishSuccess":Z
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->isRequestSuccess()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 388
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v2, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setLastPublishedTime(Ljava/time/Instant;)V

    .line 389
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->resetRetryCount()V

    .line 390
    const/4 v1, 0x1

    .line 393
    :cond_16
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->setPresencePublishResult(Z)V

    .line 396
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getPublishState()I

    move-result v2

    .line 397
    .local v2, "publishState":I
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getPidfXml()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "pidfXml":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getSipDetails()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/SipDetails;

    .line 399
    .local v4, "details":Landroid/telephony/ims/SipDetails;
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v5, v2, v0, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->updatePublishRequestResult(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 403
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseSipCode()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 407
    return-void
.end method


# virtual methods
.method public blacklist cancelPublishRequest(J)V
    .registers 6
    .param p1, "taskId"    # J

    .line 414
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel publish request: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelPublishRequest: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 418
    return-void
.end method

.method public blacklist checkAndSendPendingRequest()V
    .registers 5

    .line 450
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 452
    :cond_9
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->hasPendingRequest()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 454
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->getPendingRequestTriggerType()Ljava/util/Optional;

    move-result-object v1

    .line 455
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 456
    .local v1, "type":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndSendPendingRequest: send pending request, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->clearPendingRequest()V

    .line 460
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->requestPublishFromInternal(I)V

    .line 462
    .end local v1    # "type":I
    :cond_46
    monitor-exit v0

    .line 463
    return-void

    .line 462
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public blacklist doPublish(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 134
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPublishingFlag(Z)V

    .line 135
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->doPublishInternal(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 137
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPublishingFlag(Z)V

    .line 139
    :cond_12
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 555
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 556
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublishProcessor[subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 559
    const-string v1, "ProcessorState: isPublishing="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isPublishingNow()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 561
    const-string v1, ", hasReachedMaxRetries="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isReachMaximumRetries()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 563
    const-string v1, ", delayTimeToAllowPublish="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->getPublishingDelayTime()Ljava/util/Optional;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 566
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 568
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 569
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 570
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 573
    return-void
.end method

.method public blacklist getPublishingDelayTime()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->getPublishingDelayTime()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isEabProvisioned()Z
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/util/UceUtils;->isEabProvisioned(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public blacklist isPublishingNow()Z
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isPublishingNow()Z

    move-result v0

    return v0
.end method

.method public blacklist onCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 9
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 271
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkRequestRespValid(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 272
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "Command error callback is invalid"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 273
    const-string v0, "onCommandError: request response is invalid"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 276
    return-void

    .line 279
    :cond_19
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive command error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 283
    .local v5, "cmdError":I
    const/4 v0, 0x0

    .line 284
    .local v0, "successful":Z
    const/16 v1, 0xa

    if-ne v5, v1, :cond_6a

    .line 285
    const/4 v0, 0x1

    move v4, v0

    goto :goto_6b

    .line 284
    :cond_6a
    move v4, v0

    .line 287
    .end local v0    # "successful":Z
    .local v4, "successful":Z
    :goto_6b
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 289
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->needRetry()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isReachMaximumRetries()Z

    move-result v0

    if-nez v0, :cond_86

    .line 290
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->handleRequestRespWithRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    goto :goto_89

    .line 292
    :cond_86
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->handleRequestRespWithoutRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 294
    :goto_89
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    .line 127
    return-void
.end method

.method public blacklist onNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 9
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 301
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkRequestRespValid(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 302
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "Network response callback is invalid"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 303
    const-string v0, "onNetworkResponse: request response is invalid"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 306
    return-void

    .line 309
    :cond_19
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive network response code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 313
    .local v6, "responseCode":I
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 316
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->needRetry()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isReachMaximumRetries()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 317
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->handleRequestRespWithRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    goto :goto_81

    .line 319
    :cond_7e
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->handleRequestRespWithoutRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 321
    :goto_81
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .registers 4
    .param p1, "featureManager"    # Lcom/android/ims/RcsFeatureManager;

    .line 101
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "onRcsConnected"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 105
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 106
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "onRcsDisconnected"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 115
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->onRcsDisconnected()V

    .line 117
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->resetPresenceCapability()V

    .line 118
    return-void
.end method

.method public blacklist publishUpdated(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 2
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 519
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->updatePublishStateFromResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 520
    if-eqz p1, :cond_8

    .line 521
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->onDestroy()V

    .line 523
    :cond_8
    return-void
.end method

.method public blacklist resetState()V
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->resetState()V

    .line 512
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->resetPresenceCapability()V

    .line 513
    return-void
.end method

.method public blacklist setPendingRequest(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 441
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPendingRequest(I)V

    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist setProcessorState(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;)V
    .registers 2
    .param p1, "processorState"    # Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    .line 527
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    .line 528
    return-void
.end method

.method public blacklist updatePublishThrottle(I)V
    .registers 3
    .param p1, "publishThrottle"    # I

    .line 496
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->updatePublishThrottle(I)V

    .line 497
    return-void
.end method

.method public blacklist updatePublishingAllowedTime(I)V
    .registers 3
    .param p1, "triggerType"    # I

    .line 481
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->updatePublishingAllowedTime(I)V

    .line 482
    return-void
.end method
