.class public Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfigDataSource:I

.field private blacklist mCountOfEntitlementStatusQueryRequest:I

.field private blacklist mCountOfSatelliteConfigUpdateRequest:I

.field private blacklist mCountOfSatelliteNotificationDisplayed:I

.field private blacklist mCountOfSatelliteSessions:I

.field private blacklist mIsDeviceEntitled:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsMultiSim:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsNbIotNtn:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteSessionGapAvgSec:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteSessionGapMaxSec:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteSessionGapMinSec:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCarrierId:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigDataSource(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mConfigDataSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfEntitlementStatusQueryRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfEntitlementStatusQueryRequest:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteConfigUpdateRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteConfigUpdateRequest:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteNotificationDisplayed(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteNotificationDisplayed:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteSessions(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteSessions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDeviceEntitled(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsDeviceEntitled:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsMultiSim:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNbIotNtn(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsNbIotNtn:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSessionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapAvgSec:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSessionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapMaxSec:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSessionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapMinSec:Ljava/util/Optional;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 2376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2377
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mConfigDataSource:I

    .line 2378
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfEntitlementStatusQueryRequest:I

    .line 2379
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteConfigUpdateRequest:I

    .line 2380
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteNotificationDisplayed:I

    .line 2381
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapMinSec:Ljava/util/Optional;

    .line 2382
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapAvgSec:Ljava/util/Optional;

    .line 2383
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapMaxSec:Ljava/util/Optional;

    .line 2384
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCarrierId:Ljava/util/Optional;

    .line 2385
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsDeviceEntitled:Ljava/util/Optional;

    .line 2386
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsMultiSim:Ljava/util/Optional;

    .line 2387
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteSessions:I

    .line 2388
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsNbIotNtn:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;
    .registers 4

    .line 2494
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist increaseCountOfSatelliteSessions()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2479
    iget v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteSessions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteSessions:I

    return-object p0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCarrierId:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setConfigDataSource(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2395
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mConfigDataSource:I

    return-object p0
.end method

.method public blacklist setCountOfEntitlementStatusQueryRequest(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2405
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfEntitlementStatusQueryRequest:I

    return-object p0
.end method

.method public blacklist setCountOfSatelliteConfigUpdateRequest(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2415
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteConfigUpdateRequest:I

    return-object p0
.end method

.method public blacklist setCountOfSatelliteNotificationDisplayed(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2425
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mCountOfSatelliteNotificationDisplayed:I

    return-object p0
.end method

.method public blacklist setIsDeviceEntitled(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2464
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsDeviceEntitled:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2470
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsMultiSim:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2485
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mIsNbIotNtn:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setSatelliteSessionGapAvgSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapAvgSec:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setSatelliteSessionGapMaxSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapMaxSec:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setSatelliteSessionGapMinSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    .registers 2

    .line 2434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->mSatelliteSessionGapMinSec:Ljava/util/Optional;

    return-object p0
.end method
