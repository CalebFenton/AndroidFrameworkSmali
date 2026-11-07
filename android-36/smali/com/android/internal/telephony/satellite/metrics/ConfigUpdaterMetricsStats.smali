.class public Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;
.super Ljava/lang/Object;
.source "ConfigUpdaterMetricsStats.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ConfigUpdaterMetricsStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;


# instance fields
.field private blacklist mCarrierConfigResult:I

.field private blacklist mConfigVersion:I

.field private blacklist mOemConfigResult:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->initializeConfigUpdaterParams()V

    return-void
.end method

.method public static blacklist getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;
    .registers 1

    .line 45
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    if-nez v0, :cond_10

    .line 46
    const-string v0, "Create new ConfigUpdaterMetricsStats."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->logd(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    .line 49
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    return-object v0
.end method

.method private blacklist initializeConfigUpdaterParams()V
    .registers 2

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mConfigVersion:I

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mOemConfigResult:I

    .line 118
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mCarrierConfigResult:I

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 122
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist reportConfigUpdaterMetrics()V
    .registers 4

    .line 99
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mConfigVersion:I

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->setConfigVersion(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mOemConfigResult:I

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->setOemConfigResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mCarrierConfigResult:I

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->setCarrierConfigResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->setCount(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteConfigUpdaterMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportConfigUpdaterMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->logd(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->reportCountOfSatelliteConfigUpdateRequest()V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->initializeConfigUpdaterParams()V

    return-void
.end method


# virtual methods
.method public blacklist reportCarrierConfigError(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mCarrierConfigResult:I

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportConfigUpdaterMetrics()V

    return-void
.end method

.method public blacklist reportConfigUpdateSuccess()V
    .registers 2

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mOemConfigResult:I

    .line 92
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mCarrierConfigResult:I

    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportConfigUpdaterMetrics()V

    return-void
.end method

.method public blacklist reportOemAndCarrierConfigError(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mOemConfigResult:I

    .line 85
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mCarrierConfigResult:I

    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportConfigUpdaterMetrics()V

    return-void
.end method

.method public blacklist reportOemConfigError(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mOemConfigResult:I

    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportConfigUpdaterMetrics()V

    return-void
.end method

.method public blacklist setCarrierConfigResult(I)Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;
    .registers 2

    .line 66
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mCarrierConfigResult:I

    return-object p0
.end method

.method public blacklist setConfigVersion(I)Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;
    .registers 2

    .line 54
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mConfigVersion:I

    return-object p0
.end method

.method public blacklist setOemConfigResult(I)Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;
    .registers 2

    .line 60
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->mOemConfigResult:I

    return-object p0
.end method
