.class public final Landroid/os/BatteryUsageStatsQuery;
.super Ljava/lang/Object;
.source "BatteryUsageStatsQuery.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStatsQuery$Builder;,
        Landroid/os/BatteryUsageStatsQuery$BatteryUsageStatsFlags;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT:Landroid/os/BatteryUsageStatsQuery;

.field private static final blacklist DEFAULT_MAX_STATS_AGE_MS:J = 0x493e0L

.field private static final blacklist DEFAULT_PREFERRED_HISTORY_DURATION_MS:J

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_ACCUMULATED:I = 0x80

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_HISTORY:I = 0x2

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_POWER_STATE:I = 0x40

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_PROCESS_STATE_DATA:I = 0x8

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_SCREEN_STATE:I = 0x20

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_VIRTUAL_UIDS:I = 0x10

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_POWER_PROFILE_MODEL:I = 0x1


# instance fields
.field private final blacklist mAggregatedFromTimestamp:J

.field private final blacklist mAggregatedToTimestamp:J

.field private final blacklist mFlags:I

.field private final blacklist mMaxStatsAgeMs:J

.field private final blacklist mMinConsumedPowerThreshold:D

.field private blacklist mMonotonicEndTime:J

.field private blacklist mMonotonicStartTime:J

.field private final blacklist mPowerComponents:[I

.field private final blacklist mPreferredHistoryDurationMs:J

.field private final blacklist mUserIds:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_PREFERRED_HISTORY_DURATION_MS()J
    .registers 2

    sget-wide v0, Landroid/os/BatteryUsageStatsQuery;->DEFAULT_PREFERRED_HISTORY_DURATION_MS:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 40
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryUsageStatsQuery;->DEFAULT:Landroid/os/BatteryUsageStatsQuery;

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/BatteryUsageStatsQuery;->DEFAULT_PREFERRED_HISTORY_DURATION_MS:J

    .line 262
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$1;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$1;-><init>()V

    sput-object v0, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryUsageStatsQuery$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmFlags(Landroid/os/BatteryUsageStatsQuery$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    .line 98
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    goto :goto_1f

    .line 99
    :cond_18
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    :goto_1f
    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    .line 100
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmMaxStatsAgeMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    .line 101
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmMinConsumedPowerThreshold(Landroid/os/BatteryUsageStatsQuery$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMinConsumedPowerThreshold:D

    .line 102
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmAggregateFromTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedFromTimestamp:J

    .line 103
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmAggregateToTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedToTimestamp:J

    .line 104
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmMonotonicStartTime(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicStartTime:J

    .line 105
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmMonotonicEndTime(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicEndTime:J

    .line 106
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmPowerComponents(Landroid/os/BatteryUsageStatsQuery$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    .line 107
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmPreferredHistoryDurationMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPreferredHistoryDurationMs:J

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/os/BatteryUsageStatsQuery-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/BatteryUsageStatsQuery$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicStartTime:J

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicEndTime:J

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    .line 232
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMinConsumedPowerThreshold:D

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedFromTimestamp:J

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedToTimestamp:J

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPreferredHistoryDurationMs:J

    .line 239
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BatteryUsageStatsQuery-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAggregatedFromTimestamp()J
    .registers 3

    .line 192
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedFromTimestamp:J

    return-wide v0
.end method

.method public blacklist getAggregatedToTimestamp()J
    .registers 3

    .line 201
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedToTimestamp:J

    return-wide v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    return v0
.end method

.method public blacklist getMaxStatsAge()J
    .registers 3

    .line 160
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    return-wide v0
.end method

.method public blacklist getMinConsumedPowerThreshold()D
    .registers 3

    .line 168
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMinConsumedPowerThreshold:D

    return-wide v0
.end method

.method public blacklist getMonotonicEndTime()J
    .registers 3

    .line 184
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicEndTime:J

    return-wide v0
.end method

.method public blacklist getMonotonicStartTime()J
    .registers 3

    .line 176
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicStartTime:J

    return-wide v0
.end method

.method public blacklist getPowerComponents()[I
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    return-object v0
.end method

.method public blacklist getPreferredHistoryDurationMs()J
    .registers 3

    .line 208
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPreferredHistoryDurationMs:J

    return-wide v0
.end method

.method public blacklist getUserIds()[I
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    return-object v0
.end method

.method public blacklist isPowerStateDataNeeded()Z
    .registers 2

    .line 143
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isProcessStateDataNeeded()Z
    .registers 2

    .line 135
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isScreenStateDataNeeded()Z
    .registers 2

    .line 139
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist shouldForceUsePowerProfileModel()Z
    .registers 3

    .line 131
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryUsageStatsQuery{mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    .line 215
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxStatsAgeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAggregatedFromTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedFromTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAggregatedToTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedToTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonotonicStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonotonicEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinConsumedPowerThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStatsQuery;->mMinConsumedPowerThreshold:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPowerComponents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    .line 222
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxHistoryDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStatsQuery;->mPreferredHistoryDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 243
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMonotonicEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 248
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMinConsumedPowerThreshold:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 250
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedFromTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mAggregatedToTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 253
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPreferredHistoryDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 254
    return-void
.end method
