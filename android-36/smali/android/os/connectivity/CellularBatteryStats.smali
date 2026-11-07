.class public final Landroid/os/connectivity/CellularBatteryStats;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/CellularBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnergyConsumedMaMs:J

.field private final blacklist mIdleTimeMs:J

.field private final blacklist mKernelActiveTimeMs:J

.field private final blacklist mLoggingDurationMs:J

.field private final blacklist mMonitoredRailChargeConsumedMaMs:J

.field private final blacklist mNumBytesRx:J

.field private final blacklist mNumBytesTx:J

.field private final blacklist mNumPacketsRx:J

.field private final blacklist mNumPacketsTx:J

.field private final blacklist mRxTimeMs:J

.field private final blacklist mSleepTimeMs:J

.field private final blacklist mTimeInRatMs:[J

.field private final blacklist mTimeInRxSignalStrengthLevelMs:[J

.field private final blacklist mTxTimeMs:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/os/connectivity/CellularBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/CellularBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/CellularBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJJ[J[J[JJ)V
    .registers 42
    .param p1, "loggingDurationMs"    # J
    .param p3, "kernelActiveTimeMs"    # J
    .param p5, "numPacketsTx"    # J
    .param p7, "numBytesTx"    # J
    .param p9, "numPacketsRx"    # J
    .param p11, "numBytesRx"    # J
    .param p13, "sleepTimeMs"    # J
    .param p15, "idleTimeMs"    # J
    .param p17, "rxTimeMs"    # J
    .param p19, "energyConsumedMaMs"    # J
    .param p21, "timeInRatMs"    # [J
    .param p22, "timeInRxSignalStrengthLevelMs"    # [J
    .param p23, "txTimeMs"    # [J
    .param p24, "monitoredRailChargeConsumedMaMs"    # J

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    move-object/from16 v3, p23

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 102
    move-wide/from16 v4, p1

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    .line 103
    move-wide/from16 v6, p3

    iput-wide v6, v0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    .line 104
    move-wide/from16 v8, p5

    iput-wide v8, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    .line 105
    move-wide/from16 v10, p7

    iput-wide v10, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    .line 106
    move-wide/from16 v12, p9

    iput-wide v12, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    .line 107
    move-wide/from16 v14, p11

    iput-wide v14, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    .line 108
    move-wide/from16 v4, p13

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    .line 109
    move-wide/from16 v4, p15

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    .line 110
    move-wide/from16 v4, p17

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    .line 111
    move-wide/from16 v4, p19

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    .line 112
    array-length v4, v1

    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 112
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    .line 115
    array-length v4, v2

    .line 118
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    .line 117
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 115
    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    .line 119
    array-length v4, v3

    .line 121
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 119
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    .line 122
    move-wide/from16 v4, p24

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    .line 123
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p1, Landroid/os/connectivity/CellularBatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 146
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 147
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/os/connectivity/CellularBatteryStats;

    .line 148
    .local v2, "otherStats":Landroid/os/connectivity/CellularBatteryStats;
    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    .line 158
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    .line 159
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    .line 161
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_85

    move v1, v0

    goto :goto_86

    :cond_85
    nop

    .line 148
    :goto_86
    return v1
.end method

.method public whitelist getEnergyConsumedMaMillis()J
    .registers 3

    .line 271
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public whitelist getIdleTimeMillis()J
    .registers 3

    .line 251
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    return-wide v0
.end method

.method public whitelist getKernelActiveTimeMillis()J
    .registers 3

    .line 191
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    return-wide v0
.end method

.method public whitelist getLoggingDurationMillis()J
    .registers 3

    .line 181
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public whitelist getMonitoredRailChargeConsumedMaMillis()J
    .registers 3

    .line 344
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    return-wide v0
.end method

.method public whitelist getNumBytesRx()J
    .registers 3

    .line 231
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public whitelist getNumBytesTx()J
    .registers 3

    .line 211
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsRx()J
    .registers 3

    .line 221
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsTx()J
    .registers 3

    .line 201
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public whitelist getRxTimeMillis()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .registers 3

    .line 241
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    return-wide v0
.end method

.method public whitelist getTimeInRatMicros(I)J
    .registers 4
    .param p1, "networkType"    # I

    .line 284
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    array-length v0, v0

    if-lt p1, v0, :cond_8

    .line 285
    const-wide/16 v0, -0x1

    return-wide v0

    .line 288
    :cond_8
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getTimeInRxSignalStrengthLevelMicros(I)J
    .registers 4
    .param p1, "signalStrengthBin"    # I

    .line 304
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    array-length v0, v0

    if-lt p1, v0, :cond_8

    .line 305
    const-wide/16 v0, -0x1

    return-wide v0

    .line 307
    :cond_8
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getTxTimeMillis(I)J
    .registers 4
    .param p1, "level"    # I

    .line 331
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    array-length v0, v0

    if-lt p1, v0, :cond_8

    .line 332
    const-wide/16 v0, -0x1

    return-wide v0

    .line 335
    :cond_8
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 18

    .line 168
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    .line 169
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    .line 170
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    .line 171
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    .line 172
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 168
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 138
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 139
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 140
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    return-void
.end method
