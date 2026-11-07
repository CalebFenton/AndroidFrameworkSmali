.class public Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;
.super Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
.source "OptionsRequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;,
        Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;
    }
.end annotation


# static fields
.field private static final blacklist sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

.field private static final blacklist sNetworkRespCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

.field private static final blacklist sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

.field private static final blacklist sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

.field private static final blacklist sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;


# instance fields
.field private blacklist mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetCapabilitiesCallback(Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    .line 86
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    .line 94
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sNetworkRespCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    .line 105
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    .line 109
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 6
    .param p1, "subId"    # I
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "instance"    # Lcom/android/ims/rcs/uce/UceStatsWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;",
            "Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;",
            "Lcom/android/ims/rcs/uce/UceStatsWriter;",
            ")V"
        }
    .end annotation

    .line 120
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 121
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 122
    const-string v0, "OptionsRequestCoordinator: created"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V

    return-void
.end method

.method private blacklist checkAndFinishRequestCoordinator()V
    .registers 8

    .line 341
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 344
    monitor-exit v0

    return-void

    .line 349
    :cond_d
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    .line 350
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda5;-><init>()V

    .line 351
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$$ExternalSyntheticLambda6;-><init>()V

    .line 352
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 356
    .local v1, "optRequestResult":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 357
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 358
    .local v2, "result":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 359
    .local v3, "errorCode":I
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getRetryMillis()Ljava/util/Optional;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 360
    .local v4, "retryAfter":J
    invoke-direct {p0, v3, v4, v5}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->triggerErrorCallback(IJ)V

    .line 361
    .end local v2    # "result":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .end local v3    # "errorCode":I
    .end local v4    # "retryAfter":J
    goto :goto_67

    .line 362
    :cond_64
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->triggerCompletedCallback()V

    .line 366
    :goto_67
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mCoordinatorId:J

    invoke-interface {v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestCoordinatorFinished(J)V

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndFinishRequestCoordinator(OptionsRequest) done, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mCoordinatorId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 369
    .end local v1    # "optRequestResult":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;>;"
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private blacklist handleCachedCapabilityUpdated(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/OptionsRequest;

    .line 248
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 249
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 250
    .local v1, "taskId":Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCachedContactCapability()Ljava/util/List;

    move-result-object v2

    .line 251
    .local v2, "cachedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCachedCapabilityUpdated: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CapRequestResp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 253
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 254
    return-void

    .line 258
    :cond_37
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 259
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeCachedContactCapabilities()V

    .line 260
    return-void
.end method

.method private blacklist handleCommandError(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/OptionsRequest;

    .line 197
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 198
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCommandError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->onFinish()V

    .line 203
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCommandError()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 204
    .local v6, "commandErrorCode":I
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mSubId:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v7}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 209
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 210
    .local v1, "taskId":Ljava/lang/Long;
    sget-object v2, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 211
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 212
    return-void
.end method

.method private blacklist handleNetworkResponse(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/OptionsRequest;

    .line 219
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 220
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 223
    .local v7, "responseCode":I
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mSubId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v7}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 227
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getUpdatedContactCapability()Ljava/util/List;

    move-result-object v1

    .line 228
    .local v1, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 230
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v2, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 231
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 232
    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeUpdatedCapabilities(Ljava/util/List;)V

    .line 236
    :cond_50
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->onFinish()V

    .line 239
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 240
    .local v2, "taskId":Ljava/lang/Long;
    sget-object v3, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sNetworkRespCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    .line 241
    .local v3, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 242
    return-void
.end method

.method private blacklist handleNoNeedRequestFromNetwork(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/OptionsRequest;

    .line 267
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 268
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNoNeedRequestFromNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->onFinish()V

    .line 274
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getTaskId()J

    move-result-wide v1

    .line 275
    .local v1, "taskId":J
    sget-object v3, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    invoke-interface {v3, v1, v2, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    .line 277
    .local v3, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 278
    return-void
.end method

.method private blacklist handleRequestError(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/OptionsRequest;

    .line 180
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 181
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->onFinish()V

    .line 187
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 188
    .local v1, "taskId":Ljava/lang/Long;
    sget-object v2, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 189
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 190
    return-void
.end method

.method private blacklist handleRequestTimeout(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/OptionsRequest;

    .line 285
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 286
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->onFinish()V

    .line 292
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getTaskId()J

    move-result-wide v1

    .line 293
    .local v1, "taskId":J
    sget-object v3, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;

    invoke-interface {v3, v1, v2, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    .line 295
    .local v3, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 296
    return-void
.end method

.method static synthetic blacklist lambda$checkAndFinishRequestCoordinator$5(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)Z
    .registers 2
    .param p0, "result"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 351
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->isRequestSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$checkAndFinishRequestCoordinator$6(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)J
    .registers 4
    .param p0, "result"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 353
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getRetryMillis()Ljava/util/Optional;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$static$0(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 7
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 80
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRequestInternalError()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, "errorCode":I
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v1

    .line 82
    .local v1, "retryAfter":J
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    return-object v3
.end method

.method static synthetic blacklist lambda$static$1(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 8
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 87
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCommandError()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    .local v0, "cmdError":I
    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCapabilityErrorFromCommandError(I)I

    move-result v1

    .line 89
    .local v1, "errorCode":I
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v2

    .line 90
    .local v2, "retryAfter":J
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    return-object v4
.end method

.method static synthetic blacklist lambda$static$2(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 7
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 95
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNetworkResponseOK()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 96
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v0

    return-object v0

    .line 98
    :cond_b
    invoke-static {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCapabilityErrorFromSipCode(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)I

    move-result v0

    .line 99
    .local v0, "errorCode":I
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v1

    .line 100
    .local v1, "retryAfter":J
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    return-object v3
.end method

.method static synthetic blacklist lambda$static$3(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 4
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 106
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$4(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 6
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 110
    const/16 v0, 0x9

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 126
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 127
    return-void
.end method

.method private blacklist triggerCapabilitiesReceivedCallback(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 303
    .local p1, "capList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    const-string v0, "triggerCapabilitiesCallback: done"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerCapabilitiesCallback: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onCapabilitiesReceived(Ljava/util/List;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_24
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    goto :goto_3b

    .line 308
    :catchall_22
    move-exception v1

    goto :goto_40

    .line 305
    :catch_24
    move-exception v1

    .line 306
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerCapabilitiesCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_22

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3b
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 309
    nop

    .line 310
    return-void

    .line 308
    :goto_40
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 309
    throw v1
.end method

.method private blacklist triggerCompletedCallback()V
    .registers 5

    .line 317
    const-string v0, "triggerCompletedCallback: done"

    :try_start_2
    const-string v1, "triggerCompletedCallback"

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onComplete(Landroid/telephony/ims/SipDetails;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_13
    .catchall {:try_start_2 .. :try_end_d} :catchall_11

    .line 322
    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 323
    goto :goto_2b

    .line 322
    :catchall_11
    move-exception v1

    goto :goto_2c

    .line 319
    :catch_13
    move-exception v1

    .line 320
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerCompletedCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_11

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_d

    .line 324
    :goto_2b
    return-void

    .line 322
    :goto_2c
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 323
    throw v1
.end method

.method private blacklist triggerErrorCallback(IJ)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMillis"    # J

    .line 331
    const-string v0, "triggerErrorCallback: done"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerErrorCallback: errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJLandroid/telephony/ims/SipDetails;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_28} :catch_2b
    .catchall {:try_start_2 .. :try_end_28} :catchall_29

    goto :goto_42

    .line 336
    :catchall_29
    move-exception v1

    goto :goto_47

    .line 333
    :catch_2b
    move-exception v1

    .line 334
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerErrorCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_29

    .line 336
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_42
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 337
    nop

    .line 338
    return-void

    .line 336
    :goto_47
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 337
    throw v1
.end method


# virtual methods
.method public blacklist getActivatedRequest()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFinishedRequest()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onFinish()V
    .registers 2

    .line 131
    const-string v0, "OptionsRequestCoordinator: onFinish"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 133
    invoke-super {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onFinish()V

    .line 134
    return-void
.end method

.method public blacklist onRequestUpdated(JI)V
    .registers 8
    .param p1, "taskId"    # J
    .param p3, "event"    # I

    .line 138
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    .line 139
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/request/OptionsRequest;

    .line 140
    .local v0, "request":Lcom/android/ims/rcs/uce/request/OptionsRequest;
    if-nez v0, :cond_28

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated: Cannot find OptionsRequest taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logw(Ljava/lang/String;)V

    .line 142
    return-void

    .line 145
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated(OptionsRequest): taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    .line 146
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 148
    packed-switch p3, :pswitch_data_8a

    .line 168
    :pswitch_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated(OptionsRequest): invalid event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->logw(Ljava/lang/String;)V

    goto :goto_86

    .line 165
    :pswitch_6e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->handleRequestTimeout(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V

    .line 166
    goto :goto_86

    .line 162
    :pswitch_72
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->handleNoNeedRequestFromNetwork(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V

    .line 163
    goto :goto_86

    .line 159
    :pswitch_76
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->handleCachedCapabilityUpdated(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V

    .line 160
    goto :goto_86

    .line 156
    :pswitch_7a
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->handleNetworkResponse(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V

    .line 157
    goto :goto_86

    .line 153
    :pswitch_7e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->handleCommandError(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V

    .line 154
    goto :goto_86

    .line 150
    :pswitch_82
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->handleRequestError(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V

    .line 151
    nop

    .line 173
    :goto_86
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->checkAndFinishRequestCoordinator()V

    .line 174
    return-void

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_57
        :pswitch_57
        :pswitch_76
        :pswitch_57
        :pswitch_72
        :pswitch_57
        :pswitch_6e
    .end packed-switch
.end method
