.class public Lcom/android/internal/telephony/metrics/SatelliteStats;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/metrics/SatelliteStats;


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;
    .registers 2

    .line 58
    sget-object v0, Lcom/android/internal/telephony/metrics/SatelliteStats;->sInstance:Lcom/android/internal/telephony/metrics/SatelliteStats;

    if-nez v0, :cond_1a

    .line 59
    sget-object v0, Lcom/android/internal/telephony/metrics/SatelliteStats;->TAG:Ljava/lang/String;

    const-string v1, "SatelliteStats created."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-class v0, Lcom/android/internal/telephony/metrics/SatelliteStats;

    monitor-enter v0

    .line 61
    :try_start_e
    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/metrics/SatelliteStats;->sInstance:Lcom/android/internal/telephony/metrics/SatelliteStats;

    .line 62
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v1

    .line 64
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/android/internal/telephony/metrics/SatelliteStats;->sInstance:Lcom/android/internal/telephony/metrics/SatelliteStats;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V
    .registers 4

    monitor-enter p0

    .line 3216
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;-><init>()V

    .line 3217
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->-$$Nest$fgetmConfigDataSource(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->configDataSource:I

    .line 3218
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->-$$Nest$fgetmCountOfEntitlementStatusQueryRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    .line 3219
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->-$$Nest$fgetmCountOfSatelliteConfigUpdateRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    .line 3220
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->-$$Nest$fgetmCountOfSatelliteNotificationDisplayed(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    .line 3221
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapMinSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    .line 3222
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapAvgSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    .line 3223
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapMaxSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    .line 3224
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    .line 3225
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isDeviceEntitled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    .line 3226
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    .line 3227
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCountOfSatelliteSessions()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    .line 3228
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isNbIotNtn()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    .line 3230
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addCarrierRoamingSatelliteControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    .line 3231
    monitor-exit p0

    return-void

    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1
.end method

.method public declared-synchronized blacklist onCarrierRoamingSatelliteSessionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)V
    .registers 5

    monitor-enter p0

    .line 3187
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;-><init>()V

    .line 3188
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    .line 3189
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getIsNtnRoamingInHomeCountry()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    .line 3190
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getTotalSatelliteModeTimeSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    .line 3191
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getNumberOfSatelliteConnections()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    .line 3192
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getAvgDurationOfSatelliteConnectionSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    .line 3193
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteConnectionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    .line 3194
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteConnectionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    .line 3195
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteConnectionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    .line 3196
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmRsrpAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    .line 3197
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmRsrpMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    .line 3198
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmRssnrAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    .line 3199
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmRssnrMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    .line 3200
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfIncomingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    .line 3201
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfOutgoingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    .line 3202
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfIncomingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    .line 3203
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfOutgoingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    .line 3204
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSupportedSatelliteServices(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    .line 3205
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmServiceDataPolicy(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    .line 3206
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteDataConsumedBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    .line 3207
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    .line 3208
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->isNbIotNtn()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    .line 3210
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addCarrierRoamingSatelliteSessionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;)V
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_8b

    .line 3211
    monitor-exit p0

    return-void

    :catchall_8b
    move-exception p1

    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteAccessControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;)V
    .registers 5

    monitor-enter p0

    .line 3270
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;-><init>()V

    .line 3271
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getAccessControlType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    .line 3272
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getLocationQueryTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    .line 3273
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getOnDeviceLookupTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    .line 3274
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getTotalCheckingTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    .line 3275
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getIsAllowed()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    .line 3276
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getIsEmergency()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    .line 3277
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    .line 3278
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getCountryCodes()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    .line 3279
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getConfigDataSource()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    .line 3280
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    .line 3281
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getTriggeringEvent()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    .line 3282
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    .line 3284
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteAccessControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    .line 3285
    monitor-exit p0

    return-void

    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteConfigUpdaterMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;)V
    .registers 4

    monitor-enter p0

    .line 3258
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;-><init>()V

    .line 3259
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->getConfigVersion()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    .line 3260
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->getOemConfigResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    .line 3261
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->getCarrierConfigResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    .line 3262
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->getCount()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    .line 3264
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteConfigUpdaterStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 3265
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V
    .registers 4

    monitor-enter p0

    .line 3031
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;-><init>()V

    .line 3033
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSatelliteServiceEnablementsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    .line 3035
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSatelliteServiceEnablementsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    .line 3036
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfOutgoingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    .line 3037
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfOutgoingDatagramFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    .line 3038
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    .line 3039
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    .line 3040
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeSosSmsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    .line 3041
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeSosSmsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    .line 3043
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeLocationSharingSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    .line 3045
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeLocationSharingFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    .line 3046
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfProvisionSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    .line 3047
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfProvisionFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    .line 3048
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDeprovisionSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    .line 3049
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDeprovisionFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    .line 3050
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getTotalServiceUptimeSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    .line 3051
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getTotalBatteryConsumptionPercent()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    .line 3052
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getTotalBatteryChargedTimeSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    .line 3054
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeSatelliteServiceEnablementsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    .line 3056
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeSatelliteServiceEnablementsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    .line 3058
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeOutgoingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    .line 3059
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeOutgoingDatagramFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    .line 3061
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeIncomingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    .line 3062
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeIncomingDatagramFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    .line 3063
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeKeepAliveSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    .line 3064
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeKeepAliveFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    .line 3065
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfAllowedSatelliteAccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    .line 3066
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDisallowedSatelliteAccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    .line 3067
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSatelliteAccessCheckFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    .line 3068
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->isProvisioned()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    .line 3069
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    .line 3071
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSatelliteAllowedStateChangedEvents()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    .line 3072
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSuccessfulLocationQueries()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    .line 3073
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfFailedLocationQueries()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    .line 3075
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfP2PSmsAvailableNotificationShown()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    .line 3077
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfP2PSmsAvailableNotificationRemoved()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    .line 3078
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->isNtnOnlyCarrier()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    .line 3079
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getVersionSatelliteAccessConfig()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    .line 3081
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramTypeSosSmsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    .line 3083
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramTypeSosSmsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    .line 3085
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfOutgoingDatagramTypeSmsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    .line 3086
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfOutgoingDatagramTypeSmsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    .line 3088
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramTypeSmsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    .line 3089
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramTypeSmsFail()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    .line 3091
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)V
    :try_end_10d
    .catchall {:try_start_1 .. :try_end_10d} :catchall_10f

    .line 3092
    monitor-exit p0

    return-void

    :catchall_10f
    move-exception p1

    :try_start_110
    monitor-exit p0
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteEntitlementMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;)V
    .registers 4

    monitor-enter p0

    .line 3243
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;-><init>()V

    .line 3244
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    .line 3245
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    .line 3246
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getEntitlementStatus()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    .line 3247
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getIsRetry()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    .line 3248
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    .line 3249
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getIsAllowedServiceEntitlement()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    .line 3250
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getEntitlementServiceType()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    .line 3251
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getEntitlementDataPolicy()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    .line 3253
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteEntitlementStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 3254
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteIncomingDatagramMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;)V
    .registers 5

    monitor-enter p0

    .line 3126
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;-><init>()V

    .line 3127
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    .line 3128
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getDatagramSizeBytes()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    .line 3129
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getDatagramTransferTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    .line 3130
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getIsDemoMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    .line 3131
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    .line 3132
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    .line 3134
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteIncomingDatagramStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 3135
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteOutgoingDatagramMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;)V
    .registers 5

    monitor-enter p0

    .line 3140
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;-><init>()V

    .line 3141
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getDatagramType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    .line 3142
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    .line 3143
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getDatagramSizeBytes()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    .line 3144
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getDatagramTransferTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    .line 3145
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getIsDemoMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    .line 3146
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    .line 3147
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    .line 3149
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteOutgoingDatagramStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 3150
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteProvisionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;)V
    .registers 4

    monitor-enter p0

    .line 3154
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;-><init>()V

    .line 3155
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->resultCode:I

    .line 3156
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getProvisioningTimeSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->provisioningTimeSec:I

    .line 3157
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getIsProvisionRequest()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isProvisionRequest:Z

    .line 3158
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getIsCanceled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isCanceled:Z

    .line 3159
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->carrierId:I

    .line 3160
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isNtnOnlyCarrier:Z

    .line 3162
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteProvisionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 3163
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteSessionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;)V
    .registers 5

    monitor-enter p0

    .line 3096
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;-><init>()V

    .line 3098
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getSatelliteServiceInitializationResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    .line 3099
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getSatelliteTechnology()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    const/4 v1, 0x1

    .line 3100
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    .line 3101
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getTerminationResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    .line 3102
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getInitializationProcessingTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    .line 3103
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getTerminationProcessingTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    .line 3104
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getSessionDuration()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    .line 3105
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfIncomingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    .line 3106
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfOutgoingDatagramFailed()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    .line 3107
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfIncomingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    .line 3108
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfOutgoingDatagramFailed()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    .line 3109
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getIsDemoMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    .line 3110
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getMaxNtnSignalStrengthLevel()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    .line 3111
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    .line 3113
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfSatelliteNotificationDisplayed()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    .line 3114
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfAutoExitDueToScreenOff()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    .line 3115
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfAutoExitDueToTnNetwork()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    .line 3116
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getIsEmergency()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    .line 3117
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->isNtnOnlyCarrier()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isNtnOnlyCarrier:Z

    .line 3118
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getMaxInactivityDurationSec()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    .line 3120
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteSessionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)V
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_82

    .line 3121
    monitor-exit p0

    return-void

    :catchall_82
    move-exception p1

    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p1
.end method

.method public declared-synchronized blacklist onSatelliteSosMessageRecommender(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;)V
    .registers 4

    monitor-enter p0

    .line 3168
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;-><init>()V

    .line 3169
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isDisplaySosMessageSent()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    .line 3170
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->getCountOfTimerStarted()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    .line 3171
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isImsRegistered()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    .line 3172
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->getCellularServiceState()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    .line 3173
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    .line 3174
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->getRecommendingHandoverType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    .line 3175
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isSatelliteAllowedInCurrentLocation()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    .line 3176
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isWifiConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    .line 3177
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    .line 3178
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    const/4 p1, 0x1

    .line 3179
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    .line 3181
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteSosMessageRecommenderStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    .line 3182
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public declared-synchronized blacklist resetCarrierRoamingSatelliteControllerStats()V
    .registers 2

    monitor-enter p0

    .line 3237
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;

    move-result-object v0

    .line 3238
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->resetSessionGapLists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 3239
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method
