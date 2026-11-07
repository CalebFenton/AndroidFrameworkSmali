.class public Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarrierRoamingSatelliteSessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAvgDurationOfSatelliteConnectionSec:I

.field private final blacklist mCarrierId:I

.field private final blacklist mCountOfIncomingMms:I

.field private final blacklist mCountOfIncomingSms:I

.field private final blacklist mCountOfOutgoingMms:I

.field private final blacklist mCountOfOutgoingSms:I

.field private final blacklist mIsMultiSim:Z

.field private final blacklist mIsNbIotNtn:Z

.field private final blacklist mIsNtnRoamingInHomeCountry:Z

.field private final blacklist mNumberOfSatelliteConnections:I

.field private final blacklist mRsrpAvg:I

.field private final blacklist mRsrpMedian:I

.field private final blacklist mRssnrAvg:I

.field private final blacklist mRssnrMedian:I

.field private final blacklist mSatelliteConnectionGapAvgSec:I

.field private final blacklist mSatelliteConnectionGapMaxSec:I

.field private final blacklist mSatelliteConnectionGapMinSec:I

.field private final blacklist mSatelliteDataConsumedBytes:J

.field private final blacklist mServiceDataPolicy:I

.field private final blacklist mSupportedSatelliteServices:[I

.field private final blacklist mTotalSatelliteModeTimeSec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingMms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingSms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingMms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingSms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRsrpAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpAvg:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRsrpMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpMedian:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssnrAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrAvg:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssnrMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrMedian:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapAvgSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMaxSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMinSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteDataConsumedBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteDataConsumedBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceDataPolicy(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mServiceDataPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedSatelliteServices(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSupportedSatelliteServices:[I

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)V
    .registers 5
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

    .line 1891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1892
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCarrierId:I

    .line 1893
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmIsNtnRoamingInHomeCountry(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNtnRoamingInHomeCountry:Z

    .line 1894
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmTotalSatelliteModeTimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mTotalSatelliteModeTimeSec:I

    .line 1895
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmNumberOfSatelliteConnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mNumberOfSatelliteConnections:I

    .line 1896
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmAvgDurationOfSatelliteConnectionSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAvgDurationOfSatelliteConnectionSec:I

    .line 1898
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteConnectionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMinSec:I

    .line 1899
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteConnectionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapAvgSec:I

    .line 1900
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteConnectionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMaxSec:I

    .line 1901
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmRsrpAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpAvg:I

    .line 1902
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmRsrpMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpMedian:I

    .line 1903
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmRssnrAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrAvg:I

    .line 1904
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmRssnrMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrMedian:I

    .line 1905
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfIncomingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingSms:I

    .line 1906
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfOutgoingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingSms:I

    .line 1907
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfIncomingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingMms:I

    .line 1908
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfOutgoingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingMms:I

    .line 1909
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSupportedSatelliteServices(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSupportedSatelliteServices:[I

    .line 1910
    iget p1, p2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mServiceDataPolicy:I

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mServiceDataPolicy:I

    .line 1911
    iget-wide v0, p2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteDataConsumedBytes:J

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteDataConsumedBytes:J

    .line 1913
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsMultiSim:Z

    .line 1914
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmIsNbIotNtn(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNbIotNtn:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAvgDurationOfSatelliteConnectionSec()I
    .registers 1

    .line 1934
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAvgDurationOfSatelliteConnectionSec:I

    return p0
.end method

.method public blacklist getCarrierId()I
    .registers 1

    .line 1918
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getCountOfIncomingMms()I
    .registers 1

    .line 1974
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingMms:I

    return p0
.end method

.method public blacklist getCountOfIncomingSms()I
    .registers 1

    .line 1966
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingSms:I

    return p0
.end method

.method public blacklist getCountOfOutgoingMms()I
    .registers 1

    .line 1978
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingMms:I

    return p0
.end method

.method public blacklist getCountOfOutgoingSms()I
    .registers 1

    .line 1970
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingSms:I

    return p0
.end method

.method public blacklist getIsNtnRoamingInHomeCountry()Z
    .registers 1

    .line 1922
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNtnRoamingInHomeCountry:Z

    return p0
.end method

.method public blacklist getNumberOfSatelliteConnections()I
    .registers 1

    .line 1930
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mNumberOfSatelliteConnections:I

    return p0
.end method

.method public blacklist getRsrpAvg()I
    .registers 1

    .line 1950
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpAvg:I

    return p0
.end method

.method public blacklist getRsrpMedian()I
    .registers 1

    .line 1954
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpMedian:I

    return p0
.end method

.method public blacklist getRssnrAvg()I
    .registers 1

    .line 1958
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrAvg:I

    return p0
.end method

.method public blacklist getRssnrMedian()I
    .registers 1

    .line 1962
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrMedian:I

    return p0
.end method

.method public blacklist getSatelliteConnectionGapAvgSec()I
    .registers 1

    .line 1942
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapAvgSec:I

    return p0
.end method

.method public blacklist getSatelliteConnectionGapMaxSec()I
    .registers 1

    .line 1946
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMaxSec:I

    return p0
.end method

.method public blacklist getSatelliteConnectionGapMinSec()I
    .registers 1

    .line 1938
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMinSec:I

    return p0
.end method

.method public blacklist getSatelliteDataConsumedBytes()J
    .registers 3

    .line 1990
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteDataConsumedBytes:J

    return-wide v0
.end method

.method public blacklist getServiceDataPolicy()I
    .registers 1

    .line 1986
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mServiceDataPolicy:I

    return p0
.end method

.method public blacklist getSupportedSatelliteServices()[I
    .registers 1

    .line 1982
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSupportedSatelliteServices:[I

    return-object p0
.end method

.method public blacklist getTotalSatelliteModeTimeSec()I
    .registers 1

    .line 1926
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mTotalSatelliteModeTimeSec:I

    return p0
.end method

.method public blacklist isMultiSim()Z
    .registers 1

    .line 1994
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsMultiSim:Z

    return p0
.end method

.method public blacklist isNbIotNtn()Z
    .registers 1

    .line 1998
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNbIotNtn:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierRoamingSatelliteSessionParams(carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNtnRoamingInHomeCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNtnRoamingInHomeCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", totalSatelliteModeTimeSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mTotalSatelliteModeTimeSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfSatelliteConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mNumberOfSatelliteConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avgDurationOfSatelliteConnectionSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAvgDurationOfSatelliteConnectionSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteConnectionGapMinSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMinSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteConnectionGapAvgSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapAvgSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteConnectionGapMaxSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMaxSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrpAvg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpAvg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrpMedian="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpMedian:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssnrAvg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrAvg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssnrMedian="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrMedian:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingSms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfOutgoingSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingSms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingMms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingMms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfOutgoingMms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingMms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedSatelliteServices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSupportedSatelliteServices:[I

    .line 2253
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceDataPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mServiceDataPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SatelliteDataConsumedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteDataConsumedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsMultiSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNbIotNtn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNbIotNtn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
