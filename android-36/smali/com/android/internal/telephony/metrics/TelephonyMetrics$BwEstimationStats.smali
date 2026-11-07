.class Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;
.super Ljava/lang/Object;
.source "TelephonyMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/TelephonyMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BwEstimationStats"
.end annotation


# instance fields
.field final blacklist mBwAccKbps:[J

.field final blacklist mBwEstErrorAcc:[J

.field final blacklist mCount:[I

.field final blacklist mNrMode:I

.field final blacklist mRadioTechnology:I

.field final blacklist mStaticBwErrorAcc:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwriteBandwidthStats(Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->writeBandwidthStats()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(II)V
    .registers 5

    .line 3008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 3003
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mBwEstErrorAcc:[J

    .line 3004
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mStaticBwErrorAcc:[J

    .line 3005
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mBwAccKbps:[J

    .line 3006
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mCount:[I

    .line 3009
    iput p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mRadioTechnology:I

    .line 3010
    iput p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mNrMode:I

    return-void
.end method

.method private blacklist calculateAvg(JI)I
    .registers 6

    if-lez p3, :cond_6

    int-to-long v0, p3

    .line 3071
    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist printAvgValues([J[I)Ljava/lang/String;
    .registers 8

    .line 3033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x5

    if-ge v1, v2, :cond_28

    .line 3035
    aget-wide v2, p1, v1

    aget v4, p2, v1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->calculateAvg(JI)I

    move-result v2

    .line 3036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3038
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist printValues([I)Ljava/lang/String;
    .registers 5

    .line 3025
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_22

    .line 3027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3029
    :cond_22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist writeBandwidthStats()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;
    .registers 6

    .line 3042
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    .line 3043
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1b

    .line 3045
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->writeBandwidthStatsPerLevel(I)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 3047
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3050
    :cond_1b
    iget v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mRadioTechnology:I

    iput v3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->rat:I

    .line 3051
    new-array v2, v2, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    .line 3052
    iget p0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mNrMode:I

    iput p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->nrMode:I

    return-object v0
.end method

.method private blacklist writeBandwidthStatsPerLevel(I)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 6

    .line 3057
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mCount:[I

    aget v0, v0, p1

    if-lez v0, :cond_2e

    .line 3059
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;-><init>()V

    .line 3060
    iput p1, v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

    .line 3061
    iput v0, v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    .line 3062
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mBwAccKbps:[J

    aget-wide v2, v2, p1

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->calculateAvg(JI)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    .line 3063
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mStaticBwErrorAcc:[J

    aget-wide v2, v2, p1

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->calculateAvg(JI)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    .line 3064
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mBwEstErrorAcc:[J

    aget-wide v2, v2, p1

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->calculateAvg(JI)I

    move-result p0

    iput p0, v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    return-object v1

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 3015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3016
    iget v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mRadioTechnology:I

    iget v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mNrMode:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Count\n"

    .line 3017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mCount:[I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->printValues([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n AvgKbps\n"

    .line 3018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mBwAccKbps:[J

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mCount:[I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->printAvgValues([J[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n BwEst Error\n"

    .line 3019
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mBwEstErrorAcc:[J

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mCount:[I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->printAvgValues([J[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n StaticBw Error\n"

    .line 3020
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mStaticBwErrorAcc:[J

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->mCount:[I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics$BwEstimationStats;->printAvgValues([J[I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
