.class public Landroid/os/health/HealthStats;
.super Ljava/lang/Object;
.source "HealthStats.java"


# instance fields
.field private greylist-max-o mDataType:Ljava/lang/String;

.field private greylist-max-o mMeasurementKeys:[I

.field private greylist-max-o mMeasurementValues:[J

.field private greylist-max-o mMeasurementsKeys:[I

.field private greylist-max-o mMeasurementsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStatsKeys:[I

.field private greylist-max-o mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTimerCounts:[I

.field private greylist-max-o mTimerKeys:[I

.field private greylist-max-o mTimerTimes:[J

.field private greylist-max-o mTimersKeys:[I

.field private greylist-max-o mTimersValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "count":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    .line 141
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_37

    .line 143
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 144
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 145
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 149
    .end local v1    # "i":I
    :cond_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    .line 151
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    .line 152
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_44
    if-ge v1, v0, :cond_59

    .line 153
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 154
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 158
    .end local v1    # "i":I
    :cond_59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    .line 160
    new-array v1, v0, [Landroid/util/ArrayMap;

    iput-object v1, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    .line 161
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_66
    if-ge v1, v0, :cond_7b

    .line 162
    iget-object v2, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 163
    iget-object v2, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/health/HealthStats;->createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 167
    .end local v1    # "i":I
    :cond_7b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    .line 169
    new-array v1, v0, [Landroid/util/ArrayMap;

    iput-object v1, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    .line 170
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_88
    if-ge v1, v0, :cond_9f

    .line 171
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 172
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    sget-object v3, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3}, Landroid/os/health/HealthStats;->createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 176
    .end local v1    # "i":I
    :cond_9f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    .line 178
    new-array v1, v0, [Landroid/util/ArrayMap;

    iput-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 179
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_ac
    if-ge v1, v0, :cond_c1

    .line 180
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 181
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/health/HealthStats;->createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .line 183
    .end local v1    # "i":I
    :cond_c1
    return-void
.end method

.method private static greylist-max-o createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    .local v0, "count":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 455
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStats;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1b

    .line 456
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/health/HealthStats;

    invoke-direct {v4, p0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 458
    .end local v2    # "i":I
    :cond_1b
    return-object v1
.end method

.method private static greylist-max-o createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 7
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    .local v0, "count":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 481
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1e

    .line 482
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 484
    .end local v2    # "i":I
    :cond_1e
    return-object v1
.end method

.method private static greylist-max-o createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .registers 7
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 467
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 468
    .local v0, "count":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 469
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1c

    .line 470
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 472
    .end local v2    # "i":I
    :cond_1c
    return-object v1
.end method

.method private static greylist-max-o getIndex([II)I
    .registers 3
    .param p0, "keys"    # [I
    .param p1, "key"    # I

    .line 446
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist getDataType()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMeasurement(I)J
    .registers 6
    .param p1, "key"    # I

    .line 287
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 288
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 292
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    aget-wide v1, v1, v0

    return-wide v1

    .line 289
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad measurement key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getMeasurementKeyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 312
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getMeasurementKeyCount()I
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getMeasurements(I)Ljava/util/Map;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 414
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 418
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1

    .line 415
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad measurements key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getMeasurementsKeyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 439
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getMeasurementsKeyCount()I
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getStats(I)Ljava/util/Map;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 330
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 334
    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1

    .line 331
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad stats key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getStatsKeyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 354
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getStatsKeyCount()I
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getTimer(I)Landroid/os/health/TimerStat;
    .registers 7
    .param p1, "key"    # I

    .line 215
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 216
    .local v0, "index":I
    if-ltz v0, :cond_16

    .line 220
    new-instance v1, Landroid/os/health/TimerStat;

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    aget-wide v3, v3, v0

    invoke-direct {v1, v2, v3, v4}, Landroid/os/health/TimerStat;-><init>(IJ)V

    return-object v1

    .line 217
    :cond_16
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTimerCount(I)I
    .registers 6
    .param p1, "key"    # I

    .line 230
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 231
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 235
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    aget v1, v1, v0

    return v1

    .line 232
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTimerKeyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 270
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getTimerKeyCount()I
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getTimerTime(I)J
    .registers 6
    .param p1, "key"    # I

    .line 245
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 246
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 250
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    aget-wide v1, v1, v0

    return-wide v1

    .line 247
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTimers(I)Ljava/util/Map;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 372
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 376
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1

    .line 373
    :cond_d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad timers key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTimersKeyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 396
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getTimersKeyCount()I
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist hasMeasurement(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 277
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist hasMeasurements(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 403
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist hasStats(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 319
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist hasTimer(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 202
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist hasTimers(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 361
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-static {v0, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
