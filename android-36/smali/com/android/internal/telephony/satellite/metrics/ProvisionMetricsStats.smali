.class public Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;
.super Ljava/lang/Object;
.source "ProvisionMetricsStats.java"


# static fields
.field public static final blacklist INVALID_TIME:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ProvisionMetricsStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mIsCanceled:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mIsProvisionRequest:Z

.field private blacklist mProvisioningStartTimeSec:I

.field private blacklist mResultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->initializeProvisionParams()V

    return-void
.end method

.method public static blacklist getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;

    if-nez v0, :cond_10

    .line 57
    const-string v0, "Create new ProvisionMetricsStats."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->logd(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;

    .line 60
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;

    return-object v0
.end method

.method private blacklist initializeProvisionParams()V
    .registers 3

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mResultCode:I

    .line 117
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mProvisioningStartTimeSec:I

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsProvisionRequest:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsCanceled:Z

    .line 120
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mCarrierId:I

    .line 121
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 125
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist reportProvisionMetrics()V
    .registers 6

    .line 100
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mResultCode:I

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->setResultCode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;

    move-result-object v0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mProvisioningStartTimeSec:I

    sub-int/2addr v1, v2

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->setProvisioningTimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsProvisionRequest:Z

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->setIsProvisionRequest(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsCanceled:Z

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->setIsCanceled(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mCarrierId:I

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsNtnOnlyCarrier:Z

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteProvisionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportProvisionMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->logd(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->initializeProvisionParams()V

    return-void
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;
    .registers 2

    .line 88
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setIsCanceled(Z)Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsCanceled:Z

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;
    .registers 2

    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsNtnOnlyCarrier:Z

    return-object p0
.end method

.method public blacklist setIsProvisionRequest(Z)Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;
    .registers 2

    .line 76
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mIsProvisionRequest:Z

    return-object p0
.end method

.method public blacklist setProvisioningStartTime()V
    .registers 5

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mProvisioningStartTimeSec:I

    return-void
.end method

.method public blacklist setResultCode(I)Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ProvisionMetricsStats;->mResultCode:I

    return-object p0
.end method
