.class public Landroid/os/health/HealthStats;
.super Ljava/lang/Object;
.source "HealthStats.java"


# instance fields
.field private mDataType:Ljava/lang/String;

.field private mMeasurementKeys:[I

.field private mMeasurementValues:[J

.field private mMeasurementsKeys:[I

.field private mMeasurementsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsKeys:[I

.field private mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerCounts:[I

.field private mTimerKeys:[I

.field private mTimerTimes:[J

.field private mTimersKeys:[I

.field private mTimersValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    const-string/jumbo v1, "unsupported"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@9
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    .line 137
    .local v0, "count":I
    new-array v2, v0, [I

    #@f
    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    #@11
    .line 138
    new-array v2, v0, [I

    #@13
    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    #@15
    .line 139
    new-array v2, v0, [J

    #@17
    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    #@19
    .line 140
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1c
    .line 141
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    #@1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    aput v3, v2, v1

    #@24
    .line 142
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    #@26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v3

    #@2a
    aput v3, v2, v1

    #@2c
    .line 143
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    #@2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@31
    move-result-wide v4

    #@32
    aput-wide v4, v2, v1

    #@34
    .line 140
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_0

    #@37
    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    .line 148
    new-array v2, v0, [I

    #@3d
    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    #@3f
    .line 149
    new-array v2, v0, [J

    #@41
    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    #@43
    .line 150
    const/4 v1, 0x0

    #@44
    :goto_1
    if-ge v1, v0, :cond_1

    #@46
    .line 151
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    #@48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v3

    #@4c
    aput v3, v2, v1

    #@4e
    .line 152
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    #@50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@53
    move-result-wide v4

    #@54
    aput-wide v4, v2, v1

    #@56
    .line 150
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_1

    #@59
    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v0

    #@5d
    .line 157
    new-array v2, v0, [I

    #@5f
    iput-object v2, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    #@61
    .line 158
    new-array v2, v0, [Landroid/util/ArrayMap;

    #@63
    iput-object v2, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    #@65
    .line 159
    const/4 v1, 0x0

    #@66
    :goto_2
    if-ge v1, v0, :cond_2

    #@68
    .line 160
    iget-object v2, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    #@6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v3

    #@6e
    aput v3, v2, v1

    #@70
    .line 161
    iget-object v2, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    #@72
    invoke-static {p1}, Landroid/os/health/HealthStats;->createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    #@75
    move-result-object v3

    #@76
    aput-object v3, v2, v1

    #@78
    .line 159
    add-int/lit8 v1, v1, 0x1

    #@7a
    goto :goto_2

    #@7b
    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v0

    #@7f
    .line 166
    new-array v2, v0, [I

    #@81
    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    #@83
    .line 167
    new-array v2, v0, [Landroid/util/ArrayMap;

    #@85
    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    #@87
    .line 168
    const/4 v1, 0x0

    #@88
    :goto_3
    if-ge v1, v0, :cond_3

    #@8a
    .line 169
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    #@8c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v3

    #@90
    aput v3, v2, v1

    #@92
    .line 170
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    #@94
    sget-object v3, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@96
    invoke-static {p1, v3}, Landroid/os/health/HealthStats;->createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    #@99
    move-result-object v3

    #@9a
    aput-object v3, v2, v1

    #@9c
    .line 168
    add-int/lit8 v1, v1, 0x1

    #@9e
    goto :goto_3

    #@9f
    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a2
    move-result v0

    #@a3
    .line 175
    new-array v2, v0, [I

    #@a5
    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    #@a7
    .line 176
    new-array v2, v0, [Landroid/util/ArrayMap;

    #@a9
    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@ab
    .line 177
    const/4 v1, 0x0

    #@ac
    :goto_4
    if-ge v1, v0, :cond_4

    #@ae
    .line 178
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    #@b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v3

    #@b4
    aput v3, v2, v1

    #@b6
    .line 179
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@b8
    invoke-static {p1}, Landroid/os/health/HealthStats;->createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    #@bb
    move-result-object v3

    #@bc
    aput-object v3, v2, v1

    #@be
    .line 177
    add-int/lit8 v1, v1, 0x1

    #@c0
    goto :goto_4

    #@c1
    .line 129
    :cond_4
    return-void
.end method

.method private static createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 452
    .local v0, "count":I
    new-instance v2, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    #@9
    .line 453
    .local v2, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStats;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 454
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    new-instance v4, Landroid/os/health/HealthStats;

    #@12
    invoke-direct {v4, p0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    #@15
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 453
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 456
    :cond_0
    return-object v2
.end method

.method private static createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 478
    .local v0, "count":I
    new-instance v2, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    #@9
    .line 479
    .local v2, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 480
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@13
    move-result-wide v4

    #@14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 479
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 482
    :cond_0
    return-object v2
.end method

.method private static createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 465
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 466
    .local v0, "count":I
    new-instance v2, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    #@9
    .line 467
    .local v2, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 468
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/os/Parcelable;

    #@16
    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 467
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 470
    :cond_0
    return-object v2
.end method

.method private static getIndex([II)I
    .locals 1
    .param p0, "keys"    # [I
    .param p1, "key"    # I

    #@0
    .prologue
    .line 444
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    #@3
    move-result v0

    #@4
    return v0
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMeasurement(I)J
    .locals 4
    .param p1, "key"    # I

    #@0
    .prologue
    .line 285
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    #@2
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@5
    move-result v0

    #@6
    .line 286
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 287
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Bad measurement key dataType="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 288
    const-string/jumbo v3, " key="

    #@1f
    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 290
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    #@31
    aget-wide v2, v1, v0

    #@33
    return-wide v2
.end method

.method public getMeasurementKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getMeasurementKeyCount()I
    .locals 1

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getMeasurements(I)Ljava/util/Map;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 411
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    #@2
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@5
    move-result v0

    #@6
    .line 412
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 413
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Bad measurements key dataType="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 414
    const-string/jumbo v3, " key="

    #@1f
    .line 413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 416
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@31
    aget-object v1, v1, v0

    #@33
    return-object v1
.end method

.method public getMeasurementsKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getMeasurementsKeyCount()I
    .locals 1

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getStats(I)Ljava/util/Map;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    #@2
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@5
    move-result v0

    #@6
    .line 328
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 329
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Bad stats key dataType="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 330
    const-string/jumbo v3, " key="

    #@1f
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 332
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    #@31
    aget-object v1, v1, v0

    #@33
    return-object v1
.end method

.method public getStatsKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getStatsKeyCount()I
    .locals 1

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getTimer(I)Landroid/os/health/TimerStat;
    .locals 6
    .param p1, "key"    # I

    #@0
    .prologue
    .line 213
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    #@2
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@5
    move-result v0

    #@6
    .line 214
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 215
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Bad timer key dataType="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 216
    const-string/jumbo v3, " key="

    #@1f
    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 218
    :cond_0
    new-instance v1, Landroid/os/health/TimerStat;

    #@31
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    #@33
    aget v2, v2, v0

    #@35
    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    #@37
    aget-wide v4, v3, v0

    #@39
    invoke-direct {v1, v2, v4, v5}, Landroid/os/health/TimerStat;-><init>(IJ)V

    #@3c
    return-object v1
.end method

.method public getTimerCount(I)I
    .locals 4
    .param p1, "key"    # I

    #@0
    .prologue
    .line 228
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    #@2
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@5
    move-result v0

    #@6
    .line 229
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 230
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Bad timer key dataType="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 231
    const-string/jumbo v3, " key="

    #@1f
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 233
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    #@31
    aget v1, v1, v0

    #@33
    return v1
.end method

.method public getTimerKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getTimerKeyCount()I
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getTimerTime(I)J
    .locals 4
    .param p1, "key"    # I

    #@0
    .prologue
    .line 243
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    #@2
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@5
    move-result v0

    #@6
    .line 244
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 245
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Bad timer key dataType="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 246
    const-string/jumbo v3, " key="

    #@1f
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 248
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    #@31
    aget-wide v2, v1, v0

    #@33
    return-wide v2
.end method

.method public getTimers(I)Ljava/util/Map;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 369
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    #@2
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@5
    move-result v0

    #@6
    .line 370
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 371
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Bad timers key dataType="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 372
    const-string/jumbo v3, " key="

    #@1f
    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 374
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    #@31
    aget-object v1, v1, v0

    #@33
    return-object v1
.end method

.method public getTimersKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getTimersKeyCount()I
    .locals 1

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public hasMeasurement(I)Z
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 275
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    #@3
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public hasMeasurements(I)Z
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 401
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    #@3
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public hasStats(I)Z
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 317
    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    #@3
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public hasTimer(I)Z
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 200
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    #@3
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public hasTimers(I)Z
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 359
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    #@3
    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method
