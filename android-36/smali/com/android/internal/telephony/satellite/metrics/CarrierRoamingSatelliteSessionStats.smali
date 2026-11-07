.class public Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;
.super Ljava/lang/Object;
.source "CarrierRoamingSatelliteSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CarrierRoamingSatelliteSessionStats"

.field private static final blacklist sCarrierRoamingSatelliteSessionStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCountOfIncomingMms:I

.field private blacklist mCountOfIncomingSms:I

.field private blacklist mCountOfOutgoingMms:I

.field private blacklist mCountOfOutgoingSms:I

.field private blacklist mDataUsageOnSessionStartBytes:J

.field private blacklist mIncomingMessageId:J

.field private blacklist mIsNtnRoamingInHomeCountry:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRsrpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRssnrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

.field private blacklist mSatelliteConnectionTimesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteDataConsumedBytes:J

.field private blacklist mServiceDataPolicy:I

.field private blacklist mSessionStartTimeSec:I

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private blacklist mSupportedSatelliteServices:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->sCarrierRoamingSatelliteSessionStats:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    .line 73
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create new CarrierRoamingSatelliteSessionStats. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->initializeParams()V

    .line 78
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

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

    .line 342
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 347
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

    .line 351
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private blacklist getAvgDurationOfSatelliteConnection()I
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 311
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$$ExternalSyntheticLambda0;-><init>()V

    .line 312
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$$ExternalSyntheticLambda1;-><init>()V

    .line 313
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    .line 314
    invoke-interface {p0}, Ljava/util/stream/LongStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    goto :goto_39

    :cond_37
    const-wide/16 v0, 0x0

    :goto_39
    double-to-int p0, v0

    return p0
.end method

.method private blacklist getCellSignalStrengthLte(Lcom/android/internal/telephony/Phone;)Landroid/telephony/CellSignalStrengthLte;
    .registers 3

    .line 291
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    .line 292
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    .line 293
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrength;

    .line 294
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v0, :cond_c

    .line 295
    check-cast p1, Landroid/telephony/CellSignalStrengthLte;

    return-object p1

    .line 299
    :cond_1f
    new-instance p0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    return-object p0
.end method

.method private blacklist getDataUsage()J
    .registers 10

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    .line 119
    :cond_7
    const-class v3, Landroid/app/usage/NetworkStatsManager;

    .line 120
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/usage/NetworkStatsManager;

    if-eqz v3, :cond_5a

    .line 123
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 125
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscriber id for data consumed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 128
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5a

    .line 129
    invoke-static {v5}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 131
    invoke-virtual {v0, v4}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 132
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_5a
    return-wide v1
.end method

.method private blacklist getElapsedRealtime()J
    .registers 3

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getElapsedRealtimeInSec()I
    .registers 5

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;
    .registers 3

    .line 83
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->sCarrierRoamingSatelliteSessionStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 84
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    .line 85
    new-instance v1, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_1c

    .line 88
    :cond_14
    :goto_14
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    monitor-exit v0

    return-object p0

    .line 89
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_12

    throw p0
.end method

.method private blacklist getMedian(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 355
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 358
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1a

    .line 360
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 363
    :cond_1a
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 364
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_3d

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, p0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 365
    :cond_3d
    div-int/lit8 p0, p0, 0x2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist getNumberOfSatelliteConnections()I
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private blacklist getSatelliteConnectionGapList(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_f

    .line 321
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 324
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 325
    :goto_15
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .line 327
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    .line 328
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    .line 329
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    .line 331
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_59

    .line 332
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_59

    .line 333
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_5c
    return-object p1
.end method

.method private blacklist initializeParams()V
    .registers 4

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCarrierId:I

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 276
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    .line 277
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    .line 278
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    .line 279
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    const-wide/16 v1, 0x0

    .line 280
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIncomingMessageId:J

    .line 282
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRsrpList:Ljava/util/List;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRssnrList:Ljava/util/List;

    .line 287
    const-string v0, "initializeParams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isNtnConnected()Z
    .registers 1

    .line 377
    iget p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 454
    sget-object p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 458
    sget-object p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist reportMetrics(I)V
    .registers 10

    .line 228
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    const/4 v1, 0x0

    if-lez v0, :cond_d

    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtimeInSec()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    sub-int/2addr v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    .line 230
    :goto_e
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getNumberOfSatelliteConnections()I

    move-result v2

    .line 232
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getSatelliteConnectionGapList(I)Ljava/util/List;

    move-result-object v3

    .line 236
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 237
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 238
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_33

    :cond_31
    move v4, v1

    move v5, v4

    .line 240
    :goto_33
    iget-object v6, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v6

    array-length v6, v6

    if-le v6, v7, :cond_3e

    move v1, v7

    .line 242
    :cond_3e
    new-instance v6, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    invoke-direct {v6}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;-><init>()V

    iget v7, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCarrierId:I

    .line 244
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 245
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setIsNtnRoamingInHomeCountry(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v6

    .line 246
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setTotalSatelliteModeTimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setNumberOfSatelliteConnections(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 249
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getAvgDurationOfSatelliteConnection()I

    move-result v2

    .line 248
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setAvgDurationOfSatelliteConnectionSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteConnectionGapMinSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 251
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getAvg(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteConnectionGapAvgSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteConnectionGapMaxSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRsrpList:Ljava/util/List;

    .line 253
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getAvg(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setRsrpAvg(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRsrpList:Ljava/util/List;

    .line 254
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getMedian(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setRsrpMedian(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRssnrList:Ljava/util/List;

    .line 255
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getAvg(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setRssnrAvg(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRssnrList:Ljava/util/List;

    .line 256
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getMedian(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setRssnrMedian(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    .line 257
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfIncomingSms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    .line 258
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfOutgoingSms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    .line 259
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfIncomingMms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    .line 260
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfOutgoingMms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSupportedSatelliteServices:[I

    .line 261
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSupportedSatelliteServices([I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mServiceDataPolicy:I

    .line 262
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setServiceDataPolicy(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    .line 263
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteDataConsumedBytes(J)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 265
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNbIotNtn(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;

    move-result-object p1

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteSessionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported satellite services: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSupportedSatelliteServices:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportMetrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->initializeParams()V

    return-void
.end method

.method private blacklist updateNtnRoamingInHomeCountry(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 381
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 382
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_10

    .line 384
    const-string p1, "ServiceState is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    .line 390
    :cond_10
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 391
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 392
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 396
    :cond_31
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 397
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_3f

    .line 399
    const-string p1, "SubscriptionInfoInternal is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    .line 402
    :cond_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getMcc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    if-eqz v1, :cond_67

    .line 405
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_67

    const/4 v2, 0x0

    .line 407
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 409
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    goto :goto_67

    .line 413
    :cond_65
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 416
    :cond_67
    :goto_67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNtnRoamingInHomeCountry: mIsNtnRoamingInHomeCountry="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectionEnd()V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    if-eqz v0, :cond_16

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->setEndTime(J)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    return-void

    .line 167
    :cond_16
    const-string v0, "onConnectionEnd: mSatelliteConnectionTimes is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onConnectionStart(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 109
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->updateNtnRoamingInHomeCountry(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist onIncomingSms(I)V
    .registers 4

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->isNtnConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 194
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingSms: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onMms(ZJ)V
    .registers 6

    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->isNtnConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_30

    .line 213
    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIncomingMessageId:J

    .line 214
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMms: messageId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", countOfIncomingMms="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    .line 217
    :cond_30
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIncomingMessageId:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_40

    .line 218
    const-string p1, "onMms: NotifyResponse ignore it."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 219
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIncomingMessageId:J

    return-void

    .line 222
    :cond_40
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMms: countOfOutgoingMms="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onOutgoingSms(I)V
    .registers 4

    .line 200
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->isNtnConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 203
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutgoingSms: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onSessionEnd(I)V
    .registers 9

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->onConnectionEnd()V

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getDataUsage()J

    move-result-wide v0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update data consumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2a

    .line 146
    iget-wide v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_2a

    sub-long/2addr v0, v4

    .line 148
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    .line 151
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "satellite data consumed at session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->reportMetrics(I)V

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 154
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSupportedSatelliteServices:[I

    .line 155
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mServiceDataPolicy:I

    .line 156
    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    .line 157
    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    return-void
.end method

.method public blacklist onSessionStart(ILcom/android/internal/telephony/Phone;[II)V
    .registers 5

    .line 95
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mContext:Landroid/content/Context;

    .line 97
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCarrierId:I

    .line 98
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSupportedSatelliteServices:[I

    .line 99
    iput p4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mServiceDataPolicy:I

    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtimeInSec()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 102
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->onConnectionStart(Lcom/android/internal/telephony/Phone;)V

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getDataUsage()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "current data consumed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onSignalStrength(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 173
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getCellSignalStrengthLte(Lcom/android/internal/telephony/Phone;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result p1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_17

    .line 177
    const-string p1, "onSignalStrength: rsrp unavailable"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    :cond_17
    if-ne p1, v1, :cond_1f

    .line 181
    const-string p1, "onSignalStrength: rssnr unavailable"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    .line 184
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRsrpList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRssnrList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrength : rsrp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rssnr="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method
