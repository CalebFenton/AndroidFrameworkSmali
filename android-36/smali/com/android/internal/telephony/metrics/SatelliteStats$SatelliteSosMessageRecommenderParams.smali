.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteSosMessageRecommenderParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mCellularServiceState:I

.field private final blacklist mCountOfTimerStarted:I

.field private final blacklist mIsDisplaySosMessageSent:Z

.field private final blacklist mIsImsRegistered:Z

.field private final blacklist mIsMultiSim:Z

.field private final blacklist mIsNtnOnlyCarrier:Z

.field private final blacklist mIsSatelliteAllowedInCurrentLocation:Z

.field private final blacklist mIsWifiConnected:Z

.field private final blacklist mRecommendingHandoverType:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)V
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

    .line 1674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1675
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsDisplaySosMessageSent(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsDisplaySosMessageSent:Z

    .line 1676
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmCountOfTimerStarted(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCountOfTimerStarted:I

    .line 1677
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsImsRegistered(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsImsRegistered:Z

    .line 1678
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmCellularServiceState(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCellularServiceState:I

    .line 1679
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsMultiSim:Z

    .line 1680
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmRecommendingHandoverType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mRecommendingHandoverType:I

    .line 1681
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsSatelliteAllowedInCurrentLocation(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsSatelliteAllowedInCurrentLocation:Z

    .line 1683
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsWifiConnected(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsWifiConnected:Z

    .line 1684
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCarrierId:I

    .line 1685
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierId()I
    .registers 1

    .line 1721
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getCellularServiceState()I
    .registers 1

    .line 1701
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCellularServiceState:I

    return p0
.end method

.method public blacklist getCountOfTimerStarted()I
    .registers 1

    .line 1693
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCountOfTimerStarted:I

    return p0
.end method

.method public blacklist getRecommendingHandoverType()I
    .registers 1

    .line 1709
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mRecommendingHandoverType:I

    return p0
.end method

.method public blacklist isDisplaySosMessageSent()Z
    .registers 1

    .line 1689
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsDisplaySosMessageSent:Z

    return p0
.end method

.method public blacklist isImsRegistered()Z
    .registers 1

    .line 1697
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsImsRegistered:Z

    return p0
.end method

.method public blacklist isMultiSim()Z
    .registers 1

    .line 1705
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsMultiSim:Z

    return p0
.end method

.method public blacklist isNtnOnlyCarrier()Z
    .registers 1

    .line 1725
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method public blacklist isSatelliteAllowedInCurrentLocation()Z
    .registers 1

    .line 1713
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsSatelliteAllowedInCurrentLocation:Z

    return p0
.end method

.method public blacklist isWifiConnected()Z
    .registers 1

    .line 1717
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsWifiConnected:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SosMessageRecommenderParams(isDisplaySosMessageSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsDisplaySosMessageSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", countOfTimerStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCountOfTimerStarted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isImsRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cellularServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCellularServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsMultiSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recommendingHandoverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mRecommendingHandoverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSatelliteAllowedInCurrentLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsSatelliteAllowedInCurrentLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWifiConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNtnOnlyCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsNtnOnlyCarrier:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
