.class public Landroid/os/health/HealthStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsWriter.java"


# instance fields
.field private final greylist-max-o mConstants:Landroid/os/health/HealthKeys$Constants;

.field private final greylist-max-o mMeasurementFields:[Z

.field private final greylist-max-o mMeasurementValues:[J

.field private final greylist-max-o mMeasurementsValues:[Landroid/util/ArrayMap;
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

.field private final greylist-max-o mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTimerCounts:[I

.field private final greylist-max-o mTimerFields:[Z

.field private final greylist-max-o mTimerTimes:[J

.field private final greylist-max-o mTimersValues:[Landroid/util/ArrayMap;
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
.method public constructor blacklist <init>(Landroid/os/health/HealthKeys$Constants;)V
    .registers 8
    .param p1, "constants"    # Landroid/os/health/HealthKeys$Constants;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v0

    .line 69
    .local v0, "timerCount":I
    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    .line 70
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    .line 71
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v1

    .line 75
    .local v1, "measurementCount":I
    new-array v2, v1, [Z

    iput-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    .line 76
    new-array v2, v1, [J

    iput-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    .line 79
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v2

    .line 80
    .local v2, "statsCount":I
    new-array v3, v2, [Landroid/util/ArrayMap;

    iput-object v3, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    .line 83
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v3

    .line 84
    .local v3, "timersCount":I
    new-array v4, v3, [Landroid/util/ArrayMap;

    iput-object v4, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    .line 87
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v4

    .line 88
    .local v4, "measurementsCount":I
    new-array v5, v4, [Landroid/util/ArrayMap;

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 89
    return-void
.end method

.method private static greylist-max-o countBooleanArray([Z)I
    .registers 5
    .param p0, "fields"    # [Z

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "count":I
    array-length v1, p0

    .line 229
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_e

    .line 230
    aget-boolean v3, p0, v2

    if-eqz v3, :cond_b

    .line 231
    add-int/lit8 v0, v0, 0x1

    .line 229
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 234
    .end local v2    # "i":I
    :cond_e
    return v0
.end method

.method private static greylist-max-o countObjectArray([Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 241
    .local p0, "fields":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 242
    .local v0, "count":I
    array-length v1, p0

    .line 243
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_e

    .line 244
    aget-object v3, p0, v2

    if-eqz v3, :cond_b

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 248
    .end local v2    # "i":I
    :cond_e
    return v0
.end method

.method private static greylist-max-o writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .registers 5
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 257
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1f

    .line 259
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/health/HealthStatsWriter;

    invoke-virtual {v2, p0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 262
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method private static greylist-max-o writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .registers 6
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 282
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_23

    .line 284
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 287
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private static greylist-max-o writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .registers 6
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 269
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 270
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_20

    .line 272
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 275
    .end local v1    # "i":I
    :cond_20
    return-void
.end method


# virtual methods
.method public blacklist addMeasurement(IJ)V
    .registers 7
    .param p1, "measurementId"    # I
    .param p2, "value"    # J

    .line 106
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 108
    .local v0, "index":I
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    aput-boolean v1, v2, v0

    .line 109
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    aput-wide p2, v1, v0

    .line 110
    return-void
.end method

.method public blacklist addMeasurements(ILjava/lang/String;J)V
    .registers 10
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 148
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 150
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    .line 151
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v1, :cond_18

    .line 152
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    aput-object v3, v2, v0

    move-object v1, v3

    .line 154
    :cond_18
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public blacklist addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V
    .registers 9
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/health/HealthStatsWriter;

    .line 120
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 122
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    .line 123
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    if-nez v1, :cond_18

    .line 124
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    aput-object v3, v2, v0

    move-object v1, v3

    .line 126
    :cond_18
    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public blacklist addTimer(IIJ)V
    .registers 8
    .param p1, "timerId"    # I
    .param p2, "count"    # I
    .param p3, "time"    # J

    .line 95
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 97
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 98
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    aput p2, v1, v0

    .line 99
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    aput-wide p3, v1, v0

    .line 100
    return-void
.end method

.method public blacklist addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V
    .registers 9
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/health/TimerStat;

    .line 135
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 137
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    .line 138
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/TimerStat;>;"
    if-nez v1, :cond_18

    .line 139
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    aput-object v3, v2, v0

    move-object v1, v3

    .line 141
    :cond_18
    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public blacklist flattenToParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;

    .line 169
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    invoke-virtual {v0}, Landroid/os/health/HealthKeys$Constants;->getDataType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    invoke-static {v0}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    .line 174
    .local v0, "keys":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 175
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_36

    .line 176
    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 183
    .end local v1    # "i":I
    :cond_39
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    invoke-static {v1}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    .line 185
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4a
    array-length v2, v0

    if-ge v1, v2, :cond_62

    .line 186
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_5f

    .line 187
    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 193
    .end local v1    # "i":I
    :cond_62
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    invoke-static {v1}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_73
    array-length v2, v0

    if-ge v1, v2, :cond_8b

    .line 196
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_88

    .line 197
    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 195
    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 203
    .end local v1    # "i":I
    :cond_8b
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    invoke-static {v1}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    .line 205
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9c
    array-length v2, v0

    if-ge v1, v2, :cond_b4

    .line 206
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_b1

    .line 207
    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 205
    :cond_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 213
    .end local v1    # "i":I
    :cond_b4
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    invoke-static {v1}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c5
    array-length v2, v0

    if-ge v1, v2, :cond_dd

    .line 216
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_da

    .line 217
    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 215
    :cond_da
    add-int/lit8 v1, v1, 0x1

    goto :goto_c5

    .line 221
    .end local v1    # "i":I
    :cond_dd
    return-void
.end method
