.class public Lcom/android/internal/telephony/data/QosCallbackTracker;
.super Landroid/os/Handler;
.source "QosCallbackTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;
    }
.end annotation


# instance fields
.field private final blacklist mCallbacksToFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

.field private final blacklist mPhoneId:I

.field private final blacklist mQosBearerSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;


# direct methods
.method public static synthetic blacklist $r8$lambda$7Z7YkE_yVkiBWlnwHgq2iYh-M-s(Lcom/android/internal/telephony/data/QosCallbackTracker;ILcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->lambda$addFilter$0(ILcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E20ir9bA773jKaK8xWxxwJtVPEc(Lcom/android/internal/telephony/data/QosCallbackTracker;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->lambda$updateSessions$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GyeeVFNaMhC6OP-W7Lpzj6LjRnI(Lcom/android/internal/telephony/data/QosCallbackTracker;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->lambda$removeFilter$1(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent;Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mQosBearerSessions:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mCallbacksToFilter:Ljava/util/Map;

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 114
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mPhoneId:I

    .line 115
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QOSCT-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mLogTag:Ljava/lang/String;

    .line 118
    new-instance p2, Lcom/android/internal/telephony/data/QosCallbackTracker$1;

    new-instance v0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/QosCallbackTracker;)V

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/data/QosCallbackTracker$1;-><init>(Lcom/android/internal/telephony/data/QosCallbackTracker;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->registerCallback(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V

    return-void
.end method

.method private blacklist doFiltersMatch(Landroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z
    .registers 3

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getMatchingQosBearerFilter(Landroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist doesLocalConnectionInfoExist(Landroid/telephony/data/QosBearerSession;)Z
    .registers 3

    .line 497
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQosBearerFilterList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/QosBearerFilter;

    .line 498
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 499
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 500
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter$PortRange;->isValid()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist doesRemoteConnectionInfoExist(Landroid/telephony/data/QosBearerSession;)Z
    .registers 3

    .line 508
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQosBearerFilterList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/QosBearerFilter;

    .line 509
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemoteAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 510
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 511
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter$PortRange;->isValid()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getFilterByPrecedence(Landroid/telephony/data/QosBearerFilter;Landroid/telephony/data/QosBearerFilter;)Landroid/telephony/data/QosBearerFilter;
    .registers 4

    if-eqz p1, :cond_e

    .line 365
    invoke-virtual {p2}, Landroid/telephony/data/QosBearerFilter;->getPrecedence()I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getPrecedence()I

    move-result v0

    if-ge p0, v0, :cond_d

    goto :goto_e

    :cond_d
    return-object p1

    :cond_e
    :goto_e
    return-object p2
.end method

.method private blacklist getMatchingQosBearerFilter(Landroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Landroid/telephony/data/QosBearerFilter;
    .registers 10

    .line 374
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQosBearerFilterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/QosBearerFilter;

    .line 377
    invoke-virtual {v1}, Landroid/telephony/data/QosBearerFilter;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2a

    .line 378
    invoke-virtual {v1}, Landroid/telephony/data/QosBearerFilter;->getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object v2

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    move v2, v3

    goto :goto_34

    .line 379
    :cond_2a
    :goto_2a
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->matchesByLocalAddress(Landroid/telephony/data/QosBearerFilter;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z

    move-result v2

    if-nez v2, :cond_32

    move v2, v4

    goto :goto_34

    :cond_32
    move v2, v3

    move v3, v4

    .line 385
    :goto_34
    invoke-virtual {v1}, Landroid/telephony/data/QosBearerFilter;->getRemoteAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 386
    invoke-virtual {v1}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 387
    :cond_44
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->matchesByRemoteAddress(Landroid/telephony/data/QosBearerFilter;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z

    move-result v5

    if-nez v5, :cond_4c

    move v2, v4

    goto :goto_4d

    :cond_4c
    move v3, v4

    .line 394
    :cond_4d
    :goto_4d
    invoke-virtual {v1}, Landroid/telephony/data/QosBearerFilter;->getProtocol()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5c

    .line 395
    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/data/QosCallbackTracker;->matchesByProtocol(Landroid/telephony/data/QosBearerFilter;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;Z)Z

    move-result v5

    if-nez v5, :cond_5b

    goto :goto_5d

    :cond_5b
    move v3, v4

    :cond_5c
    move v4, v2

    :goto_5d
    if-nez v4, :cond_9

    if-eqz v3, :cond_9

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getFilterByPrecedence(Landroid/telephony/data/QosBearerFilter;Landroid/telephony/data/QosBearerFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v0

    goto :goto_9

    :cond_66
    return-object v0
.end method

.method private blacklist getQCIFromSessionInfo(Landroid/telephony/data/QosBearerSession;)I
    .registers 2

    .line 477
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object p0

    instance-of p0, p0, Landroid/telephony/data/EpsQos;

    if-eqz p0, :cond_13

    .line 478
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/EpsQos;

    invoke-virtual {p0}, Landroid/telephony/data/EpsQos;->getQci()I

    move-result p0

    return p0

    .line 479
    :cond_13
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object p0

    instance-of p0, p0, Landroid/telephony/data/NrQos;

    if-eqz p0, :cond_26

    .line 480
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/NrQos;

    invoke-virtual {p0}, Landroid/telephony/data/NrQos;->get5Qi()I

    move-result p0

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getRatInfoFromSessionInfo(Landroid/telephony/data/QosBearerSession;)I
    .registers 2

    .line 487
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object p0

    instance-of p0, p0, Landroid/telephony/data/EpsQos;

    if-eqz p0, :cond_b

    const/16 p0, 0xd

    return p0

    .line 489
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object p0

    instance-of p0, p0, Landroid/telephony/data/NrQos;

    if-eqz p0, :cond_16

    const/16 p0, 0x14

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$addFilter$0(ILcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V
    .registers 6

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFilter: callbackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/QosCallbackTracker;->log(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mCallbacksToFilter:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mQosBearerSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/QosBearerSession;

    .line 164
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->doFiltersMatch(Landroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 165
    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->sendSessionAvailable(ILandroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V

    .line 167
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->notifyMetricDedicatedBearerListenerAdded(ILandroid/telephony/data/QosBearerSession;)V

    goto :goto_27

    :cond_40
    return-void
.end method

.method private synthetic blacklist lambda$removeFilter$1(I)V
    .registers 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFilter: callbackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/QosCallbackTracker;->log(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mCallbacksToFilter:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->notifyMetricDedicatedBearerListenerRemoved(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSessions$2(Ljava/util/List;)V
    .registers 18

    move-object/from16 v0, p0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSessions: sessions size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->log(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 199
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 200
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_d4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/data/QosBearerSession;

    .line 201
    invoke-virtual {v7}, Landroid/telephony/data/QosBearerSession;->getQosBearerSessionId()I

    move-result v9

    .line 202
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v10, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mQosBearerSessions:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/data/QosBearerSession;

    .line 205
    iget-object v11, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mCallbacksToFilter:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5c
    :goto_5c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 206
    iget-object v14, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mCallbacksToFilter:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;

    .line 208
    invoke-direct {v0, v7, v12}, Lcom/android/internal/telephony/data/QosCallbackTracker;->doFiltersMatch(Landroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z

    move-result v14

    if-eqz v10, :cond_82

    .line 210
    invoke-direct {v0, v10, v12}, Lcom/android/internal/telephony/data/QosCallbackTracker;->doFiltersMatch(Landroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z

    move-result v15

    if-eqz v15, :cond_82

    move v15, v8

    goto :goto_83

    :cond_82
    const/4 v15, 0x0

    :goto_83
    if-nez v15, :cond_8b

    if-eqz v14, :cond_8b

    .line 214
    invoke-direct {v0, v13, v7, v12}, Lcom/android/internal/telephony/data/QosCallbackTracker;->sendSessionAvailable(ILandroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V

    move v6, v8

    :cond_8b
    if-eqz v15, :cond_a2

    if-eqz v14, :cond_a2

    .line 222
    invoke-virtual {v7}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v15

    invoke-virtual {v10}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/telephony/data/Qos;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 223
    invoke-direct {v0, v13, v7, v12}, Lcom/android/internal/telephony/data/QosCallbackTracker;->sendSessionAvailable(ILandroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V

    const/4 v5, 0x2

    move v6, v5

    .line 229
    :cond_a2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    if-eqz v14, :cond_5c

    .line 231
    invoke-direct {v0, v7, v6, v8}, Lcom/android/internal/telephony/data/QosCallbackTracker;->notifyMetricDedicatedBearerEvent(Landroid/telephony/data/QosBearerSession;IZ)V

    .line 232
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 237
    :cond_b9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    const/4 v5, 0x0

    .line 240
    invoke-direct {v0, v7, v8, v5}, Lcom/android/internal/telephony/data/QosCallbackTracker;->notifyMetricDedicatedBearerEvent(Landroid/telephony/data/QosBearerSession;IZ)V

    .line 241
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v6, v8

    .line 243
    :cond_cf
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    .line 246
    :cond_d4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 250
    iget-object v5, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mQosBearerSessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_156

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/data/QosBearerSession;

    .line 251
    invoke-virtual {v6}, Landroid/telephony/data/QosBearerSession;->getQosBearerSessionId()I

    move-result v7

    .line 252
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_154

    .line 253
    iget-object v9, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mCallbacksToFilter:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10a
    :goto_10a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x3

    if-eqz v10, :cond_137

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 254
    iget-object v13, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mCallbacksToFilter:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;

    .line 257
    invoke-direct {v0, v6, v10}, Lcom/android/internal/telephony/data/QosCallbackTracker;->doFiltersMatch(Landroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z

    move-result v10

    if-eqz v10, :cond_10a

    .line 258
    invoke-direct {v0, v12, v6}, Lcom/android/internal/telephony/data/QosCallbackTracker;->sendSessionLost(ILandroid/telephony/data/QosBearerSession;)V

    .line 259
    invoke-direct {v0, v6, v11, v8}, Lcom/android/internal/telephony/data/QosCallbackTracker;->notifyMetricDedicatedBearerEvent(Landroid/telephony/data/QosBearerSession;IZ)V

    .line 260
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10a

    .line 263
    :cond_137
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_154

    const/4 v9, 0x0

    .line 265
    invoke-direct {v0, v6, v11, v9}, Lcom/android/internal/telephony/data/QosCallbackTracker;->notifyMetricDedicatedBearerEvent(Landroid/telephony/data/QosBearerSession;IZ)V

    .line 266
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    :cond_154
    const/4 v9, 0x0

    goto :goto_e6

    :cond_156
    const/4 v9, 0x0

    .line 272
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v9

    :goto_15c
    if-ge v5, v2, :cond_174

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Landroid/telephony/data/QosBearerSession;

    .line 273
    iget-object v6, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mQosBearerSessions:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/telephony/data/QosBearerSession;->getQosBearerSessionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15c

    .line 277
    :cond_174
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v9

    :goto_179
    if-ge v5, v1, :cond_18c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 278
    iget-object v3, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mQosBearerSessions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_179

    :cond_18c
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 534
    iget-object p0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist matchesByLocalAddress(Landroid/telephony/data/QosBearerFilter;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z
    .registers 6

    .line 292
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    const/16 p0, 0x14

    const v1, 0xffff

    goto :goto_27

    .line 295
    :cond_d
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/QosBearerFilter$PortRange;->isValid()Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 296
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/QosBearerFilter$PortRange;->getStart()I

    move-result p0

    .line 297
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/QosBearerFilter$PortRange;->getEnd()I

    move-result v1

    .line 301
    :goto_27
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 p1, 0x4

    .line 304
    :try_start_32
    new-array p1, p1, [B

    fill-array-data p1, :array_60

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_32 .. :try_end_3b} :catch_40

    .line 308
    invoke-interface {p2, p1, p0, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;->matchesLocalAddress(Ljava/net/InetAddress;II)Z

    move-result p0

    return p0

    :catch_40
    return v0

    .line 310
    :cond_41
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getLocalAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkAddress;

    .line 311
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {p2, p1, p0, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;->matchesLocalAddress(Ljava/net/InetAddress;II)Z

    move-result p0

    return p0

    :cond_5e
    return v0

    nop

    :array_60
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private blacklist matchesByProtocol(Landroid/telephony/data/QosBearerFilter;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;Z)Z
    .registers 4

    .line 350
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getProtocol()I

    move-result p0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_d

    const/16 p1, 0x11

    if-ne p0, p1, :cond_c

    goto :goto_d

    :cond_c
    return p3

    .line 353
    :cond_d
    :goto_d
    invoke-interface {p2, p0}, Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;->matchesProtocol(I)Z

    move-result p0

    return p0
.end method

.method private blacklist matchesByRemoteAddress(Landroid/telephony/data/QosBearerFilter;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Z
    .registers 6

    .line 322
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    const/16 p0, 0x14

    const v1, 0xffff

    goto :goto_27

    .line 325
    :cond_d
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/QosBearerFilter$PortRange;->isValid()Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 326
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/QosBearerFilter$PortRange;->getStart()I

    move-result p0

    .line 327
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/QosBearerFilter$PortRange;->getEnd()I

    move-result v1

    .line 331
    :goto_27
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemoteAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 p1, 0x4

    .line 334
    :try_start_32
    new-array p1, p1, [B

    fill-array-data p1, :array_60

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_32 .. :try_end_3b} :catch_40

    .line 338
    invoke-interface {p2, p1, p0, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;->matchesRemoteAddress(Ljava/net/InetAddress;II)Z

    move-result p0

    return p0

    :catch_40
    return v0

    .line 340
    :cond_41
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerFilter;->getRemoteAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 341
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {p2, v0, p0, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;->matchesRemoteAddress(Ljava/net/InetAddress;II)Z

    move-result v0

    goto :goto_49

    :cond_5e
    return v0

    nop

    :array_60
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private blacklist notifyMetricDedicatedBearerEvent(Landroid/telephony/data/QosBearerSession;IZ)V
    .registers 12

    .line 520
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getRatInfoFromSessionInfo(Landroid/telephony/data/QosBearerSession;)I

    move-result v2

    .line 521
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getQCIFromSessionInfo(Landroid/telephony/data/QosBearerSession;)I

    move-result v3

    .line 522
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->doesLocalConnectionInfoExist(Landroid/telephony/data/QosBearerSession;)Z

    move-result v5

    .line 523
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->doesRemoteConnectionInfoExist(Landroid/telephony/data/QosBearerSession;)Z

    move-result v6

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v1, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mPhoneId:I

    move v4, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/metrics/RcsStats;->onImsDedicatedBearerEvent(IIIIZZZ)V

    return-void
.end method

.method private blacklist notifyMetricDedicatedBearerListenerAdded(ILandroid/telephony/data/QosBearerSession;)V
    .registers 5

    .line 460
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getRatInfoFromSessionInfo(Landroid/telephony/data/QosBearerSession;)I

    move-result v0

    .line 461
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getQCIFromSessionInfo(Landroid/telephony/data/QosBearerSession;)I

    move-result p2

    .line 463
    iget-object v1, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget p0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mPhoneId:I

    invoke-virtual {v1, p1, p0, v0, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->onImsDedicatedBearerListenerAdded(IIII)V

    return-void
.end method

.method private blacklist notifyMetricDedicatedBearerListenerBearerUpdateSession(ILandroid/telephony/data/QosBearerSession;)V
    .registers 9

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v2, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mPhoneId:I

    .line 469
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getRatInfoFromSessionInfo(Landroid/telephony/data/QosBearerSession;)I

    move-result v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getQCIFromSessionInfo(Landroid/telephony/data/QosBearerSession;)I

    move-result v4

    const/4 v5, 0x1

    move v1, p1

    .line 468
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats;->onImsDedicatedBearerListenerUpdateSession(IIIIZ)V

    return-void
.end method

.method private blacklist notifyMetricDedicatedBearerListenerRemoved(I)V
    .registers 2

    .line 473
    iget-object p0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onImsDedicatedBearerListenerRemoved(I)V

    return-void
.end method

.method private blacklist sendSessionAvailable(ILandroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 411
    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/data/QosCallbackTracker;->getMatchingQosBearerFilter(Landroid/telephony/data/QosBearerSession;Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v3

    .line 412
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_42

    .line 413
    invoke-virtual {v3}, Landroid/telephony/data/QosBearerFilter;->getRemoteAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    .line 414
    invoke-virtual {v3}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 415
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 416
    invoke-virtual {v3}, Landroid/telephony/data/QosBearerFilter;->getRemoteAddresses()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 417
    invoke-virtual {v3}, Landroid/telephony/data/QosBearerFilter;->getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/QosBearerFilter$PortRange;->getStart()I

    move-result v3

    invoke-direct {v4, v5, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 415
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_42
    invoke-virtual {v2}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v3

    instance-of v3, v3, Landroid/telephony/data/EpsQos;

    if-eqz v3, :cond_87

    .line 421
    invoke-virtual {v2}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/EpsQos;

    .line 422
    new-instance v4, Landroid/telephony/data/EpsBearerQosSessionAttributes;

    .line 423
    invoke-virtual {v3}, Landroid/telephony/data/EpsQos;->getQci()I

    move-result v5

    .line 424
    invoke-virtual {v3}, Landroid/telephony/data/EpsQos;->getUplinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/data/Qos$QosBandwidth;->getMaxBitrateKbps()I

    move-result v6

    int-to-long v6, v6

    .line 425
    invoke-virtual {v3}, Landroid/telephony/data/EpsQos;->getDownlinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/data/Qos$QosBandwidth;->getMaxBitrateKbps()I

    move-result v8

    int-to-long v8, v8

    .line 426
    invoke-virtual {v3}, Landroid/telephony/data/EpsQos;->getDownlinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/data/Qos$QosBandwidth;->getGuaranteedBitrateKbps()I

    move-result v10

    int-to-long v10, v10

    .line 427
    invoke-virtual {v3}, Landroid/telephony/data/EpsQos;->getUplinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/Qos$QosBandwidth;->getGuaranteedBitrateKbps()I

    move-result v3

    int-to-long v12, v3

    invoke-direct/range {v4 .. v14}, Landroid/telephony/data/EpsBearerQosSessionAttributes;-><init>(IJJJJLjava/util/List;)V

    .line 429
    iget-object v3, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 430
    invoke-virtual {v2}, Landroid/telephony/data/QosBearerSession;->getQosBearerSessionId()I

    move-result v5

    .line 429
    invoke-virtual {v3, v1, v5, v4}, Landroid/net/NetworkAgent;->sendQosSessionAvailable(IILandroid/net/QosSessionAttributes;)V

    goto :goto_d3

    .line 432
    :cond_87
    invoke-virtual {v2}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/NrQos;

    .line 433
    new-instance v4, Landroid/telephony/data/NrQosSessionAttributes;

    .line 434
    invoke-virtual {v3}, Landroid/telephony/data/NrQos;->get5Qi()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/data/NrQos;->getQfi()I

    move-result v6

    .line 435
    invoke-virtual {v3}, Landroid/telephony/data/NrQos;->getUplinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/data/Qos$QosBandwidth;->getMaxBitrateKbps()I

    move-result v7

    int-to-long v7, v7

    .line 436
    invoke-virtual {v3}, Landroid/telephony/data/NrQos;->getDownlinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/data/Qos$QosBandwidth;->getMaxBitrateKbps()I

    move-result v9

    int-to-long v9, v9

    .line 437
    invoke-virtual {v3}, Landroid/telephony/data/NrQos;->getDownlinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/data/Qos$QosBandwidth;->getGuaranteedBitrateKbps()I

    move-result v11

    int-to-long v11, v11

    .line 438
    invoke-virtual {v3}, Landroid/telephony/data/NrQos;->getUplinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/data/Qos$QosBandwidth;->getGuaranteedBitrateKbps()I

    move-result v13

    move-object/from16 p3, v3

    int-to-long v2, v13

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/data/NrQos;->getAveragingWindow()I

    move-result v13

    move-wide v15, v2

    int-to-long v2, v13

    move-object/from16 v17, v14

    move-wide v13, v15

    move-wide v15, v2

    invoke-direct/range {v4 .. v17}, Landroid/telephony/data/NrQosSessionAttributes;-><init>(IIJJJJJLjava/util/List;)V

    .line 440
    iget-object v2, v0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/QosBearerSession;->getQosBearerSessionId()I

    move-result v3

    .line 440
    invoke-virtual {v2, v1, v3, v4}, Landroid/net/NetworkAgent;->sendQosSessionAvailable(IILandroid/net/QosSessionAttributes;)V

    .line 445
    :goto_d3
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->notifyMetricDedicatedBearerListenerBearerUpdateSession(ILandroid/telephony/data/QosBearerSession;)V

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSessionAvailable, callbackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendSessionLost(ILandroid/telephony/data/QosBearerSession;)V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {p2}, Landroid/telephony/data/QosBearerSession;->getQosBearerSessionId()I

    move-result v1

    .line 452
    invoke-virtual {p2}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object p2

    instance-of p2, p2, Landroid/telephony/data/EpsQos;

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x2

    .line 451
    :goto_11
    invoke-virtual {v0, p1, v1, p2}, Landroid/net/NetworkAgent;->sendQosSessionLost(III)V

    .line 454
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendSessionLost, callbackId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addFilter(ILcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V
    .registers 4

    .line 157
    new-instance v0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/QosCallbackTracker;ILcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist removeFilter(I)V
    .registers 3

    .line 179
    new-instance v0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/QosCallbackTracker;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSessions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)V"
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/QosCallbackTracker;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
