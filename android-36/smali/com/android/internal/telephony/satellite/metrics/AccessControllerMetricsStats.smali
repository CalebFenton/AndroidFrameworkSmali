.class public Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
.super Ljava/lang/Object;
.source "AccessControllerMetricsStats.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AccessControllerMetricsStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;


# instance fields
.field private blacklist mAccessControlType:I

.field private blacklist mCarrierId:I

.field private blacklist mConfigDataSource:I

.field private blacklist mCountryCodes:[Ljava/lang/String;

.field private blacklist mIsAllowed:Ljava/lang/Boolean;

.field private blacklist mIsEmergency:Ljava/lang/Boolean;

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mLocationQueryTimeMillis:J

.field private blacklist mOnDeviceLookupTimeMillis:J

.field private blacklist mResultCode:I

.field private blacklist mTotalCheckingTimeMillis:J

.field private blacklist mTriggeringEvent:I


# direct methods
.method public static synthetic blacklist $r8$lambda$ZOSMDr9wdK0qNsR5jwvgIkakRAo(I)[Ljava/lang/String;
    .registers 1

    .line 159
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->initializeAccessControllerMetricsParam()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;

    if-nez v0, :cond_10

    .line 65
    const-string v0, "create new AccessControllerMetricsStats."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->loge(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;

    .line 68
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;

    return-object v0
.end method

.method private blacklist initializeAccessControllerMetricsParam()V
    .registers 4

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mAccessControlType:I

    const-wide/16 v1, 0x0

    .line 72
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mLocationQueryTimeMillis:J

    .line 73
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mOnDeviceLookupTimeMillis:J

    .line 74
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mTotalCheckingTimeMillis:J

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsAllowed:Ljava/lang/Boolean;

    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsEmergency:Ljava/lang/Boolean;

    .line 77
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mResultCode:I

    .line 78
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mCountryCodes:[Ljava/lang/String;

    .line 79
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mConfigDataSource:I

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mCarrierId:I

    .line 81
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mTriggeringEvent:I

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 230
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 233
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist getCurrentTime()J
    .registers 3

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist reportAccessControllerMetrics()V
    .registers 4

    .line 206
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mAccessControlType:I

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setAccessControlType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mLocationQueryTimeMillis:J

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setLocationQueryTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mOnDeviceLookupTimeMillis:J

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setOnDeviceLookupTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mTotalCheckingTimeMillis:J

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setTotalCheckingTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsAllowed:Ljava/lang/Boolean;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setIsAllowed(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsEmergency:Ljava/lang/Boolean;

    .line 213
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mResultCode:I

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mCountryCodes:[Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setCountryCodes([Ljava/lang/String;)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mConfigDataSource:I

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setConfigDatasource(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mCarrierId:I

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mTriggeringEvent:I

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setTriggeringEvent(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsNtnOnlyCarrier:Z

    .line 219
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportAccessControllerMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteAccessControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;)V

    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->initializeAccessControllerMetricsParam()V

    return-void
.end method

.method public blacklist setAccessControlType(I)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3

    .line 90
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mAccessControlType:I

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAccessControlType: access control type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mAccessControlType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3

    .line 179
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mCarrierId:I

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCarrierId: Carrier ID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mCarrierId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setConfigDataSource(I)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3

    .line 170
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mConfigDataSource:I

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setConfigDataSource: config data source = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mConfigDataSource:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setCountryCodes(Ljava/util/List;)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mCountryCodes:[Ljava/lang/String;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCountryCodes: country code is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mCountryCodes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setIsAllowed(Z)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3

    .line 130
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsAllowed:Ljava/lang/Boolean;

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsAllowed: allowed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsAllowed:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setIsEmergency(Z)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3

    .line 140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsEmergency:Ljava/lang/Boolean;

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsEmergency: emergency ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsEmergency:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3

    .line 199
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsNtnOnlyCarrier:Z

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsNtnOnlyCarrier: isNtnOnlyCarrier = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mIsNtnOnlyCarrier:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setLocationQueryTime(J)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_b

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->getCurrentTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    :cond_b
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mLocationQueryTimeMillis:J

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setLocationQueryTimeMillis: location query time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mLocationQueryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setOnDeviceLookupTime(J)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_b

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->getCurrentTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    :cond_b
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mOnDeviceLookupTimeMillis:J

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setLocationQueryTime: on device lookup time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mOnDeviceLookupTimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setResult(I)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3

    .line 150
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mResultCode:I

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setResult: result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mResultCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setTotalCheckingTime(J)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_b

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->getCurrentTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    :cond_b
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mTotalCheckingTimeMillis:J

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setTotalCheckingTime: location query time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mTotalCheckingTimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setTriggeringEvent(I)Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;
    .registers 3

    .line 189
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mTriggeringEvent:I

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTriggeringEvent: triggering event = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->mTriggeringEvent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/AccessControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method
