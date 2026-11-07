.class public Lcom/android/ims/rcs/uce/request/SubscribeRequest;
.super Lcom/android/ims/rcs/uce/request/CapabilityRequest;
.source "SubscribeRequest.java"


# static fields
.field public static final blacklist MAX_RETRY_COUNT:I = 0x1


# instance fields
.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mResponseCallback:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

.field private blacklist mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monCapabilitiesUpdate(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onCapabilitiesUpdate(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCommandError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onCommandError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Landroid/telephony/ims/SipDetails;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monResourceTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onResourceTerminated(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onTerminated(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "requestType"    # I
    .param p3, "taskMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "subscribeController"    # Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;
    .param p5, "requestResponse"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p6, "featureFlags"    # Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 94
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;-><init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V

    .line 54
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;-><init>(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mResponseCallback:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    .line 95
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    .line 96
    iput-object p6, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "requestType"    # I
    .param p3, "taskMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "subscribeController"    # Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;
    .param p5, "featureFlags"    # Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;-><init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 54
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;-><init>(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mResponseCallback:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    .line 85
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    .line 86
    iput-object p5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 87
    const-string v0, "SubscribeRequest created"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic blacklist lambda$onCapabilitiesUpdate$0(Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;
    .registers 2
    .param p0, "pidf"    # Ljava/lang/String;

    .line 206
    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->getRcsContactUceCapabilityWrapper(Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;

    move-result-object v0

    return-object v0
.end method

.method private blacklist onCapabilitiesUpdate(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "pidfXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mIsFinished:Z

    if-eqz v0, :cond_a

    .line 195
    const-string v0, "onCapabilitiesUpdate: request is already finished"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 196
    return-void

    .line 199
    :cond_a
    if-nez p1, :cond_13

    .line 200
    const-string v0, "onCapabilitiesUpdate: The parameter is null"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 201
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 205
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscribeRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest$$ExternalSyntheticLambda0;-><init>()V

    .line 206
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscribeRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest$$ExternalSyntheticLambda1;-><init>()V

    .line 207
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 208
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    .local v0, "capabilityList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "notReceivedCapabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 214
    const-string v2, "onCapabilitiesUpdate: The capabilities list is empty, Set to non-RCS user."

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 216
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNotReceiveCapabilityUpdatedContact()Ljava/util/List;

    move-result-object v2

    .line 217
    .local v2, "notReceiveCapUpdatedContactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/ims/rcs/uce/request/SubscribeRequest$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/request/SubscribeRequest$$ExternalSyntheticLambda2;-><init>()V

    .line 218
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda6;-><init>()V

    .line 219
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 220
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 223
    .end local v2    # "notReceiveCapUpdatedContactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_6a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "updateCapabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v3, "malformedListWithEntityURI":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_78
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;

    .line 226
    .local v5, "capability":Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;
    invoke-virtual {v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->isMalformed()Z

    move-result v6

    if-nez v6, :cond_92

    .line 227
    invoke-virtual {v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->toRcsContactUceCapability()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 229
    :cond_92
    const-string v6, "onCapabilitiesUpdate: malformed capability was found and not saved."

    invoke-virtual {p0, v6}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->getEntityUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v5    # "capability":Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;
    :goto_9e
    goto :goto_78

    .line 233
    :cond_9f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCapabilitiesUpdate: PIDF size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", not received capability size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 234
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", normal capability size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", malformed but entity uri is valid capability size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 237
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 239
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/RcsContactUceCapability;

    .line 240
    .local v5, "emptyCapability":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v5    # "emptyCapability":Landroid/telephony/ims/RcsContactUceCapability;
    goto :goto_e7

    .line 245
    :cond_f7
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 246
    invoke-interface {v4, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getCapabilitiesFromCache(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 247
    .local v4, "cachedCapabilityList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_101
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_117

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 248
    .local v6, "cacheEabCapability":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    invoke-virtual {v6}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContactCapabilities()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v7

    .line 249
    .local v7, "cachedCapability":Landroid/telephony/ims/RcsContactUceCapability;
    if-eqz v7, :cond_116

    .line 250
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v6    # "cacheEabCapability":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .end local v7    # "cachedCapability":Landroid/telephony/ims/RcsContactUceCapability;
    :cond_116
    goto :goto_101

    .line 255
    :cond_117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCapabilitiesUpdate: updatedCapability size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v5, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addUpdatedCapabilities(Ljava/util/List;)V

    .line 257
    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v6, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mCoordinatorId:J

    iget-wide v8, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mTaskId:J

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyCapabilitiesUpdated(JJ)V

    .line 258
    return-void
.end method

.method private blacklist onCommandError(I)V
    .registers 10
    .param p1, "cmdError"    # I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandError: error code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mIsFinished:Z

    if-eqz v0, :cond_20

    .line 133
    const-string v0, "onCommandError: request is already finished"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 134
    return-void

    .line 137
    :cond_20
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;->enableSipSubscribeRetry()Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x4

    if-ne p1, v0, :cond_66

    .line 139
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->isRetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 140
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRetryCount()I

    move-result v0

    .line 141
    .local v0, "retryCount":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_61

    .line 142
    new-instance v2, Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mSubId:I

    iget v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestType:I

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-object v6, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct/range {v2 .. v7}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;-><init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 144
    .local v2, "request":Lcom/android/ims/rcs/uce/request/CapabilityRequest;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getContactUri()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->setContactUri(Ljava/util/List;)V

    .line 145
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->setRetryCount(I)V

    .line 147
    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->setSkipGettingFromCache(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->sendSubscribeRetryRequest(Lcom/android/ims/rcs/uce/request/UceRequest;)V

    .line 150
    const-string v1, "onCommandError: Retry subscribe request"

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 151
    .end local v2    # "request":Lcom/android/ims/rcs/uce/request/CapabilityRequest;
    goto :goto_66

    .line 152
    :cond_61
    const-string v1, "onCommandError: Reached max retry"

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 156
    .end local v0    # "retryCount":I
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setCommandError(I)V

    .line 157
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mCoordinatorId:J

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mTaskId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyCommandError(JJ)V

    .line 158
    return-void
.end method

.method private blacklist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .registers 7
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkResponse: sip details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mIsFinished:Z

    if-eqz v0, :cond_24

    .line 165
    const-string v0, "onNetworkResponse: request is already finished"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 166
    return-void

    .line 168
    :cond_24
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setSipDetails(Landroid/telephony/ims/SipDetails;)V

    .line 169
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mCoordinatorId:J

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mTaskId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyNetworkResponse(JJ)V

    .line 170
    return-void
.end method

.method private blacklist onResourceTerminated(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "terminatedResource":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mIsFinished:Z

    if-eqz v0, :cond_a

    .line 175
    const-string v0, "onResourceTerminated: request is already finished"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 176
    return-void

    .line 179
    :cond_a
    if-nez p1, :cond_15

    .line 180
    const-string v0, "onResourceTerminated: the parameter is null"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 184
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResourceTerminated: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addTerminatedResource(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mCoordinatorId:J

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mTaskId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyResourceTerminated(JJ)V

    .line 190
    return-void
.end method

.method private blacklist onTerminated(Ljava/lang/String;J)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryAfterMillis"    # J

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTerminated: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mIsFinished:Z

    if-eqz v0, :cond_2a

    .line 264
    const-string v0, "onTerminated: This request is already finished"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 265
    return-void

    .line 267
    :cond_2a
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setTerminated(Ljava/lang/String;J)V

    .line 268
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mCoordinatorId:J

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mTaskId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyTerminated(JJ)V

    .line 269
    return-void
.end method


# virtual methods
.method public blacklist getResponseCallback()Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mResponseCallback:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    return-object v0
.end method

.method public blacklist onFinish()V
    .registers 2

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    .line 102
    invoke-super {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->onFinish()V

    .line 103
    const-string v0, "SubscribeRequest finish"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logd(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public blacklist requestCapabilities(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "requestCapUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    .line 109
    .local v0, "subscribeController":Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;
    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 110
    const-string v2, "requestCapabilities: request is finished"

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestInternalError(I)V

    .line 112
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mCoordinatorId:J

    iget-wide v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mTaskId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestError(JJ)V

    .line 113
    return-void

    .line 116
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCapabilities: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logi(Ljava/lang/String;)V

    .line 119
    :try_start_33
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mResponseCallback:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1, v2}, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;->requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->setupRequestTimeoutTimer()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3b} :catch_3c

    .line 126
    goto :goto_61

    .line 122
    :catch_3c
    move-exception v2

    .line 123
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCapabilities exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->logw(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v3, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestInternalError(I)V

    .line 125
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mCoordinatorId:J

    iget-wide v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->mTaskId:J

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestError(JJ)V

    .line 127
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_61
    return-void
.end method
