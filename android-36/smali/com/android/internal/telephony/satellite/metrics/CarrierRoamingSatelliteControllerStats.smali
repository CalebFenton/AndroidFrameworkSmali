.class public Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;
.super Ljava/lang/Object;
.source "CarrierRoamingSatelliteControllerStats.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CarrierRoamingSatelliteControllerStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;


# instance fields
.field private blacklist mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

.field private blacklist mSessionEndTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSessionStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionStartTimeMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionEndTimeMap:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->resetSessionGapLists()V

    return-void
.end method

.method private blacklist getAvg(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 211
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_c

    .line 215
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private blacklist getNumberOfSatelliteSessions(I)I
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionStartTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionEndTimeMap:Ljava/util/Map;

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 181
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static blacklist getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;

    if-nez v0, :cond_10

    .line 64
    const-string v0, "Create new CarrierRoamingSatelliteControllerStats."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->logd(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;

    .line 67
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;

    return-object v0
.end method

.method private blacklist getSatelliteSessionGapList(II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 187
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionStartTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 192
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionEndTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_30
    if-ge v1, p2, :cond_61

    add-int/lit8 v2, v1, -0x1

    .line 195
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_5e

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_5e

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    .line 198
    div-long/2addr v4, v2

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_61
    return-object p1
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 237
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected blacklist getCarrierIdFromSubscription(I)I
    .registers 2

    .line 231
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 232
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method protected blacklist getElapsedRealtime()J
    .registers 3

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isMultiSim()Z
    .registers 2

    .line 225
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object p0

    array-length p0, p0

    if-le p0, v0, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onSessionEnd(I)V
    .registers 7

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionEndTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getElapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionEndTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getNumberOfSatelliteSessions(I)I

    move-result v0

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getSatelliteSessionGapList(II)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 159
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4a

    :cond_48
    const/4 v1, 0x0

    move v2, v1

    .line 163
    :goto_4a
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v4, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    invoke-direct {v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;-><init>()V

    .line 165
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setSatelliteSessionGapMinSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v1

    .line 166
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getAvg(Ljava/util/List;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setSatelliteSessionGapAvgSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setSatelliteSessionGapMaxSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getCarrierIdFromSubscription(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->isMultiSim()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 170
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNbIotNtn(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    move-result-object p0

    .line 163
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V

    return-void
.end method

.method public blacklist onSessionStart(I)V
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionStartTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getElapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionStartTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;-><init>()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getCarrierIdFromSubscription(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->increaseCountOfSatelliteSessions()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    move-result-object p0

    .line 140
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V

    return-void
.end method

.method public blacklist reportCarrierId(I)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;-><init>()V

    .line 117
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->isMultiSim()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    move-result-object p0

    .line 115
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V

    return-void
.end method

.method public blacklist reportConfigDataSource(II)V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;-><init>()V

    .line 75
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setConfigDataSource(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p2

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getCarrierIdFromSubscription(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p2

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->isMultiSim()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 78
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNbIotNtn(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V

    return-void
.end method

.method public blacklist reportCountOfEntitlementStatusQueryRequest(I)V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;-><init>()V

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCountOfEntitlementStatusQueryRequest(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getCarrierIdFromSubscription(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->isMultiSim()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 89
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNbIotNtn(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V

    return-void
.end method

.method public blacklist reportCountOfSatelliteConfigUpdateRequest()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;-><init>()V

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCountOfSatelliteConfigUpdateRequest(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->isMultiSim()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V

    return-void
.end method

.method public blacklist reportCountOfSatelliteNotificationDisplayed(I)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;-><init>()V

    const/4 v2, 0x1

    .line 106
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCountOfSatelliteNotificationDisplayed(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getCarrierIdFromSubscription(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->isMultiSim()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 109
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNbIotNtn(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V

    return-void
.end method

.method public blacklist reportIsDeviceEntitled(IZ)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;-><init>()V

    .line 126
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsDeviceEntitled(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p2

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getCarrierIdFromSubscription(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p2

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->isMultiSim()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 129
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNbIotNtn(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    move-result-object p0

    .line 124
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V

    return-void
.end method

.method public blacklist resetSessionGapLists()V
    .registers 2

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionStartTimeMap:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->mSessionEndTimeMap:Ljava/util/Map;

    return-void
.end method
