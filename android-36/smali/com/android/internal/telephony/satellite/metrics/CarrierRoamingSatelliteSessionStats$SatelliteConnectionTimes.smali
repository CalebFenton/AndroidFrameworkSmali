.class Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;
.super Ljava/lang/Object;
.source "CarrierRoamingSatelliteSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SatelliteConnectionTimes"
.end annotation


# instance fields
.field private blacklist mEndTime:J

.field private final blacklist mStartTime:J


# direct methods
.method constructor blacklist <init>(J)V
    .registers 3

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mStartTime:J

    const-wide/16 p1, 0x0

    .line 426
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mEndTime:J

    return-void
.end method


# virtual methods
.method public blacklist getDuration()J
    .registers 5

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 443
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mEndTime:J

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getEndTime()J
    .registers 3

    .line 438
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 434
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mStartTime:J

    return-wide v0
.end method

.method public blacklist isValid()Z
    .registers 5

    .line 449
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mEndTime:J

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mStartTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_10

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setEndTime(J)V
    .registers 3

    .line 430
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->mEndTime:J

    return-void
.end method
