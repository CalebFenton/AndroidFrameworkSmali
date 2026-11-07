.class public Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarrierRoamingSatelliteControllerStatsParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;
    }
.end annotation


# static fields
.field private static blacklist sCarrierId:I

.field private static blacklist sIsDeviceEntitled:Z

.field private static blacklist sIsMultiSim:Z

.field private static blacklist sIsNbIotNtn:Z

.field private static blacklist sSatelliteSessionGapAvgSec:I

.field private static blacklist sSatelliteSessionGapMaxSec:I

.field private static blacklist sSatelliteSessionGapMinSec:I


# instance fields
.field private final blacklist mConfigDataSource:I

.field private final blacklist mCountOfEntitlementStatusQueryRequest:I

.field private final blacklist mCountOfSatelliteConfigUpdateRequest:I

.field private final blacklist mCountOfSatelliteNotificationDisplayed:I

.field private final blacklist mCountOfSatelliteSessions:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigDataSource(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mConfigDataSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfEntitlementStatusQueryRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfEntitlementStatusQueryRequest:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteConfigUpdateRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteConfigUpdateRequest:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteNotificationDisplayed(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteNotificationDisplayed:I

    return p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2282
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmConfigDataSource(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mConfigDataSource:I

    .line 2283
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmCountOfEntitlementStatusQueryRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfEntitlementStatusQueryRequest:I

    .line 2285
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmCountOfSatelliteConfigUpdateRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteConfigUpdateRequest:I

    .line 2287
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmCountOfSatelliteNotificationDisplayed(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteNotificationDisplayed:I

    .line 2291
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmSatelliteSessionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 2292
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmSatelliteSessionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMinSec:I

    .line 2294
    :cond_35
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmSatelliteSessionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 2295
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmSatelliteSessionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapAvgSec:I

    .line 2297
    :cond_4f
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmSatelliteSessionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 2298
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmSatelliteSessionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMaxSec:I

    .line 2302
    :cond_69
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 2303
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sCarrierId:I

    .line 2307
    :cond_83
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmIsDeviceEntitled(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 2308
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmIsDeviceEntitled(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsDeviceEntitled:Z

    .line 2312
    :cond_9d
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 2313
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsMultiSim:Z

    .line 2316
    :cond_b7
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmCountOfSatelliteSessions(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteSessions:I

    .line 2319
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmIsNbIotNtn(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_d7

    .line 2320
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;->-$$Nest$fgetmIsNbIotNtn(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsNbIotNtn:Z

    :cond_d7
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_75

    .line 2502
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_75

    .line 2503
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;

    .line 2505
    iget v2, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mConfigDataSource:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getConfigDataSource()I

    move-result v3

    if-ne v2, v3, :cond_75

    iget v2, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfEntitlementStatusQueryRequest:I

    .line 2507
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCountOfEntitlementStatusQueryRequest()I

    move-result v3

    if-ne v2, v3, :cond_75

    iget v2, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteConfigUpdateRequest:I

    .line 2509
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCountOfSatelliteConfigUpdateRequest()I

    move-result v3

    if-ne v2, v3, :cond_75

    iget v2, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteNotificationDisplayed:I

    .line 2511
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCountOfSatelliteNotificationDisplayed()I

    move-result v3

    if-ne v2, v3, :cond_75

    sget v2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMinSec:I

    .line 2512
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapMinSec()I

    move-result v3

    if-ne v2, v3, :cond_75

    sget v2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapAvgSec:I

    .line 2513
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapAvgSec()I

    move-result v3

    if-ne v2, v3, :cond_75

    sget v2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMaxSec:I

    .line 2514
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapMaxSec()I

    move-result v3

    if-ne v2, v3, :cond_75

    sget v2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sCarrierId:I

    .line 2515
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCarrierId()I

    move-result v3

    if-ne v2, v3, :cond_75

    sget-boolean v2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsDeviceEntitled:Z

    .line 2516
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isDeviceEntitled()Z

    move-result v3

    if-ne v2, v3, :cond_75

    sget-boolean v2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsMultiSim:Z

    .line 2517
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isMultiSim()Z

    move-result v3

    if-ne v2, v3, :cond_75

    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteSessions:I

    .line 2518
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCountOfSatelliteSessions()I

    move-result v2

    if-ne p0, v2, :cond_75

    sget-boolean p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsNbIotNtn:Z

    .line 2519
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isNbIotNtn()Z

    move-result p1

    if-ne p0, p1, :cond_75

    return v0

    :cond_75
    :goto_75
    return v1
.end method

.method public blacklist getCarrierId()I
    .registers 1

    .line 2353
    sget p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sCarrierId:I

    return p0
.end method

.method public blacklist getConfigDataSource()I
    .registers 1

    .line 2325
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mConfigDataSource:I

    return p0
.end method

.method public blacklist getCountOfEntitlementStatusQueryRequest()I
    .registers 1

    .line 2329
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfEntitlementStatusQueryRequest:I

    return p0
.end method

.method public blacklist getCountOfSatelliteConfigUpdateRequest()I
    .registers 1

    .line 2333
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteConfigUpdateRequest:I

    return p0
.end method

.method public blacklist getCountOfSatelliteNotificationDisplayed()I
    .registers 1

    .line 2337
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteNotificationDisplayed:I

    return p0
.end method

.method public blacklist getCountOfSatelliteSessions()I
    .registers 1

    .line 2365
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteSessions:I

    return p0
.end method

.method public blacklist getSatelliteSessionGapAvgSec()I
    .registers 1

    .line 2345
    sget p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapAvgSec:I

    return p0
.end method

.method public blacklist getSatelliteSessionGapMaxSec()I
    .registers 1

    .line 2349
    sget p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMaxSec:I

    return p0
.end method

.method public blacklist getSatelliteSessionGapMinSec()I
    .registers 1

    .line 2341
    sget p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMinSec:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 14

    .line 2524
    iget v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mConfigDataSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfEntitlementStatusQueryRequest:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteConfigUpdateRequest:I

    .line 2525
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteNotificationDisplayed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMinSec:I

    .line 2526
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapAvgSec:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMaxSec:I

    .line 2527
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sCarrierId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-boolean v0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsDeviceEntitled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-boolean v0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsMultiSim:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteSessions:I

    .line 2528
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-boolean p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsNbIotNtn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    .line 2524
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isDeviceEntitled()Z
    .registers 1

    .line 2357
    sget-boolean p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsDeviceEntitled:Z

    return p0
.end method

.method public blacklist isMultiSim()Z
    .registers 1

    .line 2361
    sget-boolean p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsMultiSim:Z

    return p0
.end method

.method public blacklist isNbIotNtn()Z
    .registers 1

    .line 2369
    sget-boolean p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsNbIotNtn:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierRoamingSatelliteControllerStatsParams(configDataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mConfigDataSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfEntitlementStatusQueryRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfEntitlementStatusQueryRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfSatelliteConfigUpdateRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteConfigUpdateRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfSatelliteNotificationDisplayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteNotificationDisplayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteSessionGapMinSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMinSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteSessionGapAvgSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapAvgSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteSessionGapMaxSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sSatelliteSessionGapMaxSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDeviceEntitled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsDeviceEntitled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsMultiSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", countOfSatelliteSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->mCountOfSatelliteSessions:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isNbIotNtn="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->sIsNbIotNtn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
