.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mCellularServiceState:I

.field private blacklist mCountOfTimerStarted:I

.field private blacklist mIsDisplaySosMessageSent:Z

.field private blacklist mIsImsRegistered:Z

.field private blacklist mIsMultiSim:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mIsSatelliteAllowedInCurrentLocation:Z

.field private blacklist mIsWifiConnected:Z

.field private blacklist mRecommendingHandoverType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCellularServiceState(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCellularServiceState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfTimerStarted(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCountOfTimerStarted:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDisplaySosMessageSent(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsDisplaySosMessageSent:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsImsRegistered(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsImsRegistered:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsMultiSim:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteAllowedInCurrentLocation(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsSatelliteAllowedInCurrentLocation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiConnected(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecommendingHandoverType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mRecommendingHandoverType:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1732
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsDisplaySosMessageSent:Z

    const/4 v1, -0x1

    .line 1733
    iput v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCountOfTimerStarted:I

    .line 1734
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsImsRegistered:Z

    .line 1735
    iput v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCellularServiceState:I

    .line 1736
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsMultiSim:Z

    .line 1737
    iput v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mRecommendingHandoverType:I

    .line 1738
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsSatelliteAllowedInCurrentLocation:Z

    .line 1739
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsWifiConnected:Z

    .line 1740
    iput v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCarrierId:I

    .line 1741
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsNtnOnlyCarrier:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;
    .registers 4

    .line 1840
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1822
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setCellularServiceState(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1776
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCellularServiceState:I

    return-object p0
.end method

.method public blacklist setCountOfTimerStarted(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1758
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mCountOfTimerStarted:I

    return-object p0
.end method

.method public blacklist setDisplaySosMessageSent(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1749
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsDisplaySosMessageSent:Z

    return-object p0
.end method

.method public blacklist setImsRegistered(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1767
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsImsRegistered:Z

    return-object p0
.end method

.method public blacklist setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1785
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsMultiSim:Z

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1831
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsNtnOnlyCarrier:Z

    return-object p0
.end method

.method public blacklist setIsSatelliteAllowedInCurrentLocation(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1804
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsSatelliteAllowedInCurrentLocation:Z

    return-object p0
.end method

.method public blacklist setIsWifiConnected(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1813
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mIsWifiConnected:Z

    return-object p0
.end method

.method public blacklist setRecommendingHandoverType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    .registers 2

    .line 1794
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->mRecommendingHandoverType:I

    return-object p0
.end method
