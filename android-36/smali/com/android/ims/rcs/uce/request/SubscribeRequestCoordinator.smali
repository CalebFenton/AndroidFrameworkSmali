.class public Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;
.super Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
.source "SubscribeRequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;,
        Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    }
.end annotation


# static fields
.field private static final blacklist sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sNetworkRespErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sNetworkRespSuccessfulCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sTerminatedCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;


# instance fields
.field private volatile blacklist mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method public static synthetic blacklist $r8$lambda$PGCbIUZAMCKOBClNhMGRuR0Qnl4(Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->lambda$handleNetworkResponse$7(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCapabilitiesCallback(Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 104
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 113
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNetworkRespErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 130
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNetworkRespSuccessfulCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 137
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sTerminatedCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 160
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 164
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

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

    .line 175
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 176
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 177
    const-string v0, "SubscribeRequestCoordinator: created"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V

    return-void
.end method

.method private blacklist checkAndFinishRequestCoordinator()V
    .registers 10

    .line 536
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 539
    monitor-exit v0

    return-void

    .line 544
    :cond_d
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    .line 545
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda10;-><init>()V

    .line 546
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda11;-><init>()V

    .line 547
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 550
    .local v1, "optRequestResult":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;>;"
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda12;-><init>()V

    .line 551
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 552
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 554
    .local v2, "optDebugInfoResult":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;>;"
    const/4 v3, 0x0

    .line 555
    .local v3, "details":Landroid/telephony/ims/SipDetails;
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 556
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 557
    .local v4, "result":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {v4}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getSipDetails()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/SipDetails;

    move-object v3, v5

    .line 560
    .end local v4    # "result":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    :cond_5d
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 561
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 562
    .restart local v4    # "result":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {v4}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 563
    .local v5, "errorCode":I
    invoke-virtual {v4}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getRetryMillis()Ljava/util/Optional;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 564
    .local v6, "retryAfter":J
    invoke-direct {p0, v5, v6, v7, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerErrorCallback(IJLandroid/telephony/ims/SipDetails;)V

    .line 565
    .end local v4    # "result":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .end local v5    # "errorCode":I
    .end local v6    # "retryAfter":J
    goto :goto_97

    .line 566
    :cond_94
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCompletedCallback(Landroid/telephony/ims/SipDetails;)V

    .line 570
    :goto_97
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCoordinatorId:J

    invoke-interface {v4, v5, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestCoordinatorFinished(J)V

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndFinishRequestCoordinator(SubscribeRequest) done, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCoordinatorId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 573
    .end local v1    # "optRequestResult":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;>;"
    .end local v2    # "optDebugInfoResult":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;>;"
    .end local v3    # "details":Landroid/telephony/ims/SipDetails;
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_b8
    move-exception v1

    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_3 .. :try_end_ba} :catchall_b8

    throw v1
.end method

.method private blacklist getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation

    .line 366
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v1, "notFoundFromCacheList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 371
    invoke-interface {v2, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 373
    .local v2, "eabResultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    new-instance v3, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 385
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilitiesFromCacheIncludingExpired: requesting uris size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", capabilities not found from cache size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 390
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 391
    return-object v0
.end method

.method private blacklist handleCachedCapabilityUpdated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 447
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 448
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 449
    .local v1, "taskId":Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCachedContactCapability()Ljava/util/List;

    move-result-object v2

    .line 450
    .local v2, "cachedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCachedCapabilityUpdated: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 452
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 453
    return-void

    .line 457
    :cond_3b
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 458
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeCachedContactCapabilities()V

    .line 459
    return-void
.end method

.method private blacklist handleCapabilitiesUpdated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 9
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 399
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 400
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 401
    .local v1, "taskId":Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getUpdatedContactCapability()Ljava/util/List;

    move-result-object v2

    .line 402
    .local v2, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCapabilitiesUpdated: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 404
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 405
    return-void

    .line 408
    :cond_3b
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setPresenceNotifyEvent(IJLjava/util/List;)V

    .line 410
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v3, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 414
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 415
    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeUpdatedCapabilities(Ljava/util/List;)V

    .line 416
    return-void
.end method

.method private blacklist handleCommandError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 262
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 263
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

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 268
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

    .line 269
    .local v6, "commandErrorCode":I
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 273
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 274
    .local v1, "taskId":Ljava/lang/Long;
    sget-object v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 276
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 277
    return-void
.end method

.method private blacklist handleNetworkResponse(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 284
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 285
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

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 288
    .local v1, "respCode":I
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setSubscribeResponse(IJI)V

    .line 291
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getResponseSipCode()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;-><init>(Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 299
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNetworkResponseOK()Z

    move-result v2

    if-nez v2, :cond_7b

    .line 302
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleNetworkResponseFailed(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 305
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getUpdatedContactCapability()Ljava/util/List;

    move-result-object v3

    .line 306
    .local v3, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 307
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNotFound()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 308
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v4, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 310
    :cond_67
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 311
    invoke-virtual {v0, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeUpdatedCapabilities(Ljava/util/List;)V

    .line 315
    :cond_6d
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 318
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 320
    .end local v2    # "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .end local v3    # "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :cond_7b
    return-void
.end method

.method private blacklist handleNetworkResponseFailed(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 11
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 323
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v0

    .line 324
    .local v0, "taskId":J
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v2

    .line 325
    .local v2, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNotReceiveCapabilityUpdatedContact()Ljava/util/List;

    move-result-object v3

    .line 326
    .local v3, "requestUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v4, 0x0

    .line 328
    .local v4, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNotFound()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 333
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 335
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 336
    .local v5, "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-virtual {v2, v5}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addUpdatedCapabilities(Ljava/util/List;)V

    .line 339
    sget-object v6, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNetworkRespSuccessfulCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v6, v0, v1, v2, v7}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    .line 341
    .end local v5    # "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    goto :goto_5f

    .line 344
    :cond_36
    nop

    .line 345
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 346
    .local v5, "capabilitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-virtual {v2, v5}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addUpdatedCapabilities(Ljava/util/List;)V

    .line 349
    iget-object v6, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 350
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getResponseSipCode()Ljava/util/Optional;

    move-result-object v7

    .line 351
    const/16 v8, 0x198

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 350
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 349
    invoke-interface {v6, v3, v7}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->addToThrottlingList(Ljava/util/List;I)V

    .line 353
    sget-object v6, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNetworkRespErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v6, v0, v1, v2, v7}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    .line 356
    .end local v5    # "capabilitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :goto_5f
    return-object v4
.end method

.method private blacklist handleNoNeedRequestFromNetwork(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 485
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 486
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

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 492
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    .line 493
    .local v1, "taskId":J
    sget-object v3, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v3, v1, v2, v0, v4}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    .line 495
    .local v3, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 496
    return-void
.end method

.method private blacklist handleRequestError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 244
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 245
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

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 251
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 252
    .local v1, "taskId":Ljava/lang/Long;
    sget-object v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 254
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 255
    return-void
.end method

.method private blacklist handleRequestTimeout(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 502
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 503
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNotReceiveCapabilityUpdatedContact()Ljava/util/List;

    move-result-object v1

    .line 504
    .local v1, "requestUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRequestTimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRequestTimeout: not received updated uri size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    const/16 v3, 0x198

    invoke-interface {v2, v1, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->addToThrottlingList(Ljava/util/List;I)V

    .line 512
    nop

    .line 513
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 514
    .local v2, "capabilitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addUpdatedCapabilities(Ljava/util/List;)V

    .line 517
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getUpdatedContactCapability()Ljava/util/List;

    move-result-object v3

    .line 518
    .local v3, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_57

    .line 519
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 520
    invoke-virtual {v0, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeUpdatedCapabilities(Ljava/util/List;)V

    .line 524
    :cond_57
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v4

    .line 525
    .local v4, "taskId":J
    sget-object v6, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v6, v4, v5, v0, v7}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v6

    .line 529
    .local v6, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 532
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 533
    return-void
.end method

.method private blacklist handleResourceTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 9
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 423
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 424
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 425
    .local v1, "taskId":Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getTerminatedResources()Ljava/util/List;

    move-result-object v2

    .line 426
    .local v2, "terminatedResources":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResourceTerminated: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 428
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 429
    return-void

    .line 432
    :cond_3b
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setPresenceNotifyEvent(IJLjava/util/List;)V

    .line 435
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v3, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 439
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 440
    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeTerminatedResources(Ljava/util/List;)V

    .line 441
    return-void
.end method

.method private blacklist handleTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 9
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 466
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 467
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTerminated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 473
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 474
    .local v1, "taskId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getTerminatedReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setSubscribeTerminated(IJLjava/lang/String;)V

    .line 475
    sget-object v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sTerminatedCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 477
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 478
    return-void
.end method

.method static synthetic blacklist lambda$checkAndFinishRequestCoordinator$10(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)Z
    .registers 2
    .param p0, "result"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 546
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->isRequestSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$checkAndFinishRequestCoordinator$11(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)J
    .registers 4
    .param p0, "result"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 548
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

.method static synthetic blacklist lambda$checkAndFinishRequestCoordinator$12(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)Z
    .registers 2
    .param p0, "result"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 551
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getSipDetails()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$getCapabilitiesFromCacheIncludingExpired$9(Ljava/util/List;Ljava/util/List;Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;)V
    .registers 5
    .param p0, "resultList"    # Ljava/util/List;
    .param p1, "notFoundFromCacheList"    # Ljava/util/List;
    .param p2, "eabResult"    # Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 374
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 375
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    goto :goto_1b

    .line 380
    :cond_e
    nop

    .line 381
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContact()Landroid/net/Uri;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getNotFoundContactCapabilities(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 377
    :cond_1b
    :goto_1b
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContactCapabilities()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :goto_22
    return-void
.end method

.method private synthetic blacklist lambda$handleNetworkResponse$7(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p2, "sipCode"    # Ljava/lang/Integer;

    .line 292
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getResponseReason()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->refreshDeviceState(ILjava/lang/String;)V

    .line 294
    return-void
.end method

.method static synthetic blacklist lambda$handleNetworkResponseFailed$8(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 334
    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getNotFoundContactCapabilities(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 8
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 98
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

.method static synthetic blacklist lambda$static$1(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 9
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 106
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

    .line 107
    .local v0, "cmdError":I
    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCapabilityErrorFromCommandError(I)I

    move-result v1

    .line 108
    .local v1, "errorCode":I
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v2

    .line 109
    .local v2, "retryAfter":J
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    return-object v4
.end method

.method static synthetic blacklist lambda$static$2(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 12
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 115
    invoke-interface {p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 116
    .local v0, "deviceState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getSipDetails()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telephony/ims/SipDetails;

    .line 117
    .local v7, "details":Landroid/telephony/ims/SipDetails;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 118
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 119
    .local v4, "errorCode":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryAfterMillis()J

    move-result-wide v5

    .line 120
    .local v5, "retryAfter":J
    move-wide v2, p0

    .end local p0    # "taskId":J
    .local v2, "taskId":J
    invoke-static/range {v2 .. v7}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJLandroid/telephony/ims/SipDetails;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object p0

    return-object p0

    .line 122
    .end local v2    # "taskId":J
    .end local v4    # "errorCode":I
    .end local v5    # "retryAfter":J
    .restart local p0    # "taskId":J
    :cond_33
    move-wide v2, p0

    .end local p0    # "taskId":J
    .restart local v2    # "taskId":J
    invoke-static {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCapabilityErrorFromSipCode(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)I

    move-result v4

    .line 123
    .restart local v4    # "errorCode":I
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v5

    .line 124
    .restart local v5    # "retryAfter":J
    invoke-static/range {v2 .. v7}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJLandroid/telephony/ims/SipDetails;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$static$3(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 6
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 132
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getSipDetails()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/SipDetails;

    .line 133
    .local v0, "detail":Landroid/telephony/ims/SipDetails;
    invoke-static {p0, p1, v0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(JLandroid/telephony/ims/SipDetails;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$static$4(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 12
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 140
    nop

    .line 141
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getTerminatedReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v1

    .line 142
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->haveAllRequestCapsUpdatedBeenReceived()Z

    move-result v3

    .line 140
    invoke-static {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->getAnalysisResult(Ljava/lang/String;JZ)Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    move-result-object v0

    .line 143
    .local v0, "terminatedResult":Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getSipDetails()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telephony/ims/SipDetails;

    .line 144
    .local v7, "details":Landroid/telephony/ims/SipDetails;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 146
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    .local v1, "errorCode":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->getRetryAfterMillis()J

    move-result-wide v2

    .line 148
    .local v2, "terminatedRetry":J
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    return-object v4

    .line 149
    .end local v1    # "errorCode":I
    .end local v2    # "terminatedRetry":J
    :cond_3e
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNetworkResponseOK()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4f

    goto :goto_54

    .line 155
    :cond_4f
    invoke-static {p0, p1, v7}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(JLandroid/telephony/ims/SipDetails;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v1

    return-object v1

    .line 151
    :cond_54
    :goto_54
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v5

    .line 152
    .local v5, "retryAfterMillis":J
    invoke-static {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCapabilityErrorFromSipCode(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)I

    move-result v4

    .line 153
    .local v4, "errorCode":I
    move-wide v2, p0

    .end local p0    # "taskId":J
    .local v2, "taskId":J
    invoke-static/range {v2 .. v7}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJLandroid/telephony/ims/SipDetails;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$static$5(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 5
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 161
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$6(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 7
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 165
    const/16 v0, 0x9

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 181
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 182
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

    .line 581
    .local p1, "capList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    const-string v0, "triggerCapabilitiesCallback: done"

    :try_start_2
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    if-eqz v1, :cond_25

    .line 582
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

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onCapabilitiesReceived(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_25} :catch_2b
    .catchall {:try_start_2 .. :try_end_25} :catchall_29

    .line 588
    :cond_25
    :goto_25
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 589
    goto :goto_43

    .line 588
    :catchall_29
    move-exception v1

    goto :goto_44

    .line 585
    :catch_2b
    move-exception v1

    .line 586
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerCapabilitiesCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_29

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 590
    :goto_43
    return-void

    .line 588
    :goto_44
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 589
    throw v1
.end method

.method private blacklist triggerCompletedCallback(Landroid/telephony/ims/SipDetails;)V
    .registers 6
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 597
    const-string v0, "triggerCompletedCallback: done"

    :try_start_2
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    if-eqz v1, :cond_10

    .line 598
    const-string v1, "triggerCompletedCallback"

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onComplete(Landroid/telephony/ims/SipDetails;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_16
    .catchall {:try_start_2 .. :try_end_10} :catchall_14

    .line 604
    :cond_10
    :goto_10
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 605
    goto :goto_2e

    .line 604
    :catchall_14
    move-exception v1

    goto :goto_2f

    .line 601
    :catch_16
    move-exception v1

    .line 602
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerCompletedCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_14

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_10

    .line 606
    :goto_2e
    return-void

    .line 604
    :goto_2f
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 605
    throw v1
.end method

.method private blacklist triggerErrorCallback(IJLandroid/telephony/ims/SipDetails;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMillis"    # J
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 614
    const-string v0, "triggerErrorCallback: done"

    :try_start_2
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    if-eqz v1, :cond_2b

    .line 615
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

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJLandroid/telephony/ims/SipDetails;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2b} :catch_31
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2f

    .line 622
    :cond_2b
    :goto_2b
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 623
    goto :goto_49

    .line 622
    :catchall_2f
    move-exception v1

    goto :goto_4a

    .line 619
    :catch_31
    move-exception v1

    .line 620
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerErrorCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_2f

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2b

    .line 624
    :goto_49
    return-void

    .line 622
    :goto_4a
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 623
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

    .line 628
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

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

    .line 633
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onFinish()V
    .registers 2

    .line 186
    const-string v0, "SubscribeRequestCoordinator: onFinish"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 188
    invoke-super {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onFinish()V

    .line 189
    return-void
.end method

.method public blacklist onRequestUpdated(JI)V
    .registers 8
    .param p1, "taskId"    # J
    .param p3, "event"    # I

    .line 193
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    .line 194
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 195
    .local v0, "request":Lcom/android/ims/rcs/uce/request/SubscribeRequest;
    if-nez v0, :cond_28

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated: Cannot find SubscribeRequest taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V

    .line 197
    return-void

    .line 200
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated(SubscribeRequest): taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    .line 201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 203
    packed-switch p3, :pswitch_data_96

    .line 232
    :pswitch_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated(SubscribeRequest): invalid event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V

    goto :goto_92

    .line 229
    :pswitch_6e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleRequestTimeout(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 230
    goto :goto_92

    .line 226
    :pswitch_72
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleNoNeedRequestFromNetwork(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 227
    goto :goto_92

    .line 223
    :pswitch_76
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 224
    goto :goto_92

    .line 220
    :pswitch_7a
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleCachedCapabilityUpdated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 221
    goto :goto_92

    .line 217
    :pswitch_7e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleResourceTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 218
    goto :goto_92

    .line 214
    :pswitch_82
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleCapabilitiesUpdated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 215
    goto :goto_92

    .line 211
    :pswitch_86
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleNetworkResponse(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 212
    goto :goto_92

    .line 208
    :pswitch_8a
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleCommandError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 209
    goto :goto_92

    .line 205
    :pswitch_8e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleRequestError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 206
    nop

    .line 237
    :goto_92
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->checkAndFinishRequestCoordinator()V

    .line 238
    return-void

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_57
        :pswitch_6e
    .end packed-switch
.end method
