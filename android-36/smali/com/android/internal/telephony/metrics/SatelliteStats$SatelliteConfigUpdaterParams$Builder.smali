.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierConfigResult:I

.field private blacklist mConfigVersion:I

.field private blacklist mCount:I

.field private blacklist mOemConfigResult:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mCarrierConfigResult:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigVersion(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mConfigVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCount(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOemConfigResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mOemConfigResult:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 2757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2758
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mConfigVersion:I

    .line 2759
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mOemConfigResult:I

    .line 2760
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mCarrierConfigResult:I

    .line 2761
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mCount:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;
    .registers 4

    .line 2804
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setCarrierConfigResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;
    .registers 2

    .line 2786
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mCarrierConfigResult:I

    return-object p0
.end method

.method public blacklist setConfigVersion(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;
    .registers 2

    .line 2768
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mConfigVersion:I

    return-object p0
.end method

.method public blacklist setCount(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;
    .registers 2

    .line 2795
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mCount:I

    return-object p0
.end method

.method public blacklist setOemConfigResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;
    .registers 2

    .line 2777
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->mOemConfigResult:I

    return-object p0
.end method
