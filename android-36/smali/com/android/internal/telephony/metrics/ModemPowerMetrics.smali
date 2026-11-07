.class public Lcom/android/internal/telephony/metrics/ModemPowerMetrics;
.super Ljava/lang/Object;
.source "ModemPowerMetrics.java"


# static fields
.field private static final blacklist DATA_CONNECTION_EMERGENCY_SERVICE:I

.field private static final blacklist DATA_CONNECTION_OTHER:I

.field private static final blacklist NUM_DATA_CONNECTION_TYPES:I


# instance fields
.field private blacklist mBatteryStatsManager:Landroid/os/BatteryStatsManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    add-int/lit8 v1, v0, 0x2

    .line 39
    sput v1, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->DATA_CONNECTION_OTHER:I

    add-int/lit8 v0, v0, 0x3

    .line 40
    sput v0, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->NUM_DATA_CONNECTION_TYPES:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/BatteryStatsManager;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    return-void
.end method

.method private blacklist getStats()Landroid/os/connectivity/CellularBatteryStats;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_6
    invoke-virtual {p0}, Landroid/os/BatteryStatsManager;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 12

    .line 54
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    .line 55
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->getStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p0

    if-eqz p0, :cond_f3

    .line 57
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getLoggingDurationMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    .line 58
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getEnergyConsumedMaMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    .line 60
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getNumPacketsTx()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    .line 61
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getKernelActiveTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v1}, Landroid/os/connectivity/CellularBatteryStats;->getTimeInRxSignalStrengthLevelMicros(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-ltz v2, :cond_37

    .line 66
    iput-wide v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    .line 69
    :cond_37
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getSleepTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    .line 70
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getIdleTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    .line 71
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getRxTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 74
    :goto_4f
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v6

    if-ge v5, v6, :cond_67

    .line 75
    invoke-virtual {p0, v5}, Landroid/os/connectivity/CellularBatteryStats;->getTxTimeMillis(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-ltz v6, :cond_64

    .line 77
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 80
    :cond_67
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/android/internal/telephony/metrics/ModemPowerMetrics$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    .line 82
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getNumBytesTx()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    .line 83
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getNumPacketsRx()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    .line 84
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getNumBytesRx()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 86
    :goto_92
    sget v6, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v5, v6, :cond_a8

    .line 87
    invoke-virtual {p0, v5}, Landroid/os/connectivity/CellularBatteryStats;->getTimeInRatMicros(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-ltz v6, :cond_a5

    .line 89
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a5
    add-int/lit8 v5, v5, 0x1

    goto :goto_92

    .line 92
    :cond_a8
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/android/internal/telephony/metrics/ModemPowerMetrics$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :goto_c0
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    if-ge v1, v5, :cond_d8

    .line 96
    invoke-virtual {p0, v1}, Landroid/os/connectivity/CellularBatteryStats;->getTimeInRxSignalStrengthLevelMicros(I)J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-ltz v9, :cond_d5

    .line 98
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d5
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    .line 101
    :cond_d8
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/metrics/ModemPowerMetrics$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 104
    invoke-virtual {p0}, Landroid/os/connectivity/CellularBatteryStats;->getMonitoredRailChargeConsumedMaMillis()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    :cond_f3
    return-object v0
.end method
