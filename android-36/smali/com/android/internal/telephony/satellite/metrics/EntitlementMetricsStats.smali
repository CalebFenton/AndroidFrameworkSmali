.class public Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;
.super Ljava/lang/Object;
.source "EntitlementMetricsStats.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "EntitlementMetricsStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;


# instance fields
.field private blacklist mEntitlementDataPolicy:I

.field private blacklist mEntitlementServiceType:[I

.field private blacklist mEntitlementStatus:I

.field private blacklist mIsAllowedServiceEntitlement:Z

.field private blacklist mIsRetry:Z

.field private blacklist mResult:I

.field private blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getCarrierId(I)I
    .registers 2

    .line 107
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 108
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;

    if-nez v0, :cond_10

    .line 53
    const-string v0, "Create new EntitlementMetricsStats."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->logd(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;

    .line 56
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;

    return-object v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 113
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist reportEntitlementMetrics()V
    .registers 4

    .line 87
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mSubId:I

    .line 89
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->getCarrierId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mResult:I

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->setResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementStatus:I

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->setEntitlementStatus(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mIsRetry:Z

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->setIsRetry(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->setCount(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mIsAllowedServiceEntitlement:Z

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->setIsAllowedServiceEntitlement(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementServiceType:[I

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->setEntitlementServiceType([I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementDataPolicy:I

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->setEntitlementDataPolicy(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteEntitlementMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEntitlementMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->logd(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mSubId:I

    .line 102
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->reportCountOfEntitlementStatusQueryRequest(I)V

    return-void
.end method


# virtual methods
.method public blacklist reportError(IIZ)V
    .registers 4

    .line 75
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mSubId:I

    .line 76
    iput p2, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mResult:I

    .line 77
    iput-boolean p3, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mIsRetry:Z

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementStatus:I

    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mIsAllowedServiceEntitlement:Z

    .line 80
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementServiceType:[I

    .line 81
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementDataPolicy:I

    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->reportEntitlementMetrics()V

    return-void
.end method

.method public blacklist reportSuccess(IIZZ[II)V
    .registers 7

    .line 63
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mSubId:I

    const/16 p1, 0xc8

    .line 64
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mResult:I

    .line 65
    iput p2, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementStatus:I

    .line 66
    iput-boolean p3, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mIsRetry:Z

    .line 67
    iput-boolean p4, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mIsAllowedServiceEntitlement:Z

    .line 68
    iput-object p5, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementServiceType:[I

    .line 69
    iput p6, p0, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->mEntitlementDataPolicy:I

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/EntitlementMetricsStats;->reportEntitlementMetrics()V

    return-void
.end method
