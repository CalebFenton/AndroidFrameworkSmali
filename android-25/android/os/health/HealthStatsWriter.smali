.class public Landroid/os/health/HealthStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsWriter.java"


# instance fields
.field private final mConstants:Landroid/os/health/HealthKeys$Constants;

.field private final mMeasurementFields:[Z

.field private final mMeasurementValues:[J

.field private final mMeasurementsValues:[Landroid/util/ArrayMap;
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

.field private final mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimerCounts:[I

.field private final mTimerFields:[Z

.field private final mTimerTimes:[J

.field private final mTimersValues:[Landroid/util/ArrayMap;
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
.method public constructor <init>(Landroid/os/health/HealthKeys$Constants;)V
    .locals 6
    .param p1, "constants"    # Landroid/os/health/HealthKeys$Constants;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@5
    .line 66
    const/4 v5, 0x0

    #@6
    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    #@9
    move-result v3

    #@a
    .line 67
    .local v3, "timerCount":I
    new-array v5, v3, [Z

    #@c
    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    #@e
    .line 68
    new-array v5, v3, [I

    #@10
    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    #@12
    .line 69
    new-array v5, v3, [J

    #@14
    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    #@16
    .line 72
    const/4 v5, 0x1

    #@17
    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    #@1a
    move-result v0

    #@1b
    .line 73
    .local v0, "measurementCount":I
    new-array v5, v0, [Z

    #@1d
    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    #@1f
    .line 74
    new-array v5, v0, [J

    #@21
    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    #@23
    .line 77
    const/4 v5, 0x2

    #@24
    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    #@27
    move-result v2

    #@28
    .line 78
    .local v2, "statsCount":I
    new-array v5, v2, [Landroid/util/ArrayMap;

    #@2a
    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    #@2c
    .line 81
    const/4 v5, 0x3

    #@2d
    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    #@30
    move-result v4

    #@31
    .line 82
    .local v4, "timersCount":I
    new-array v5, v4, [Landroid/util/ArrayMap;

    #@33
    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    #@35
    .line 85
    const/4 v5, 0x4

    #@36
    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    #@39
    move-result v1

    #@3a
    .line 86
    .local v1, "measurementsCount":I
    new-array v5, v1, [Landroid/util/ArrayMap;

    #@3c
    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@3e
    .line 62
    return-void
.end method

.method private static countBooleanArray([Z)I
    .locals 4
    .param p0, "fields"    # [Z

    #@0
    .prologue
    .line 225
    const/4 v1, 0x0

    #@1
    .line 226
    .local v1, "count":I
    array-length v0, p0

    #@2
    .line 227
    .local v0, "N":I
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@5
    .line 228
    aget-boolean v3, p0, v2

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 229
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 227
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_0

    #@e
    .line 232
    :cond_1
    return v1
.end method

.method private static countObjectArray([Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 239
    .local p0, "fields":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@1
    .line 240
    .local v1, "count":I
    array-length v0, p0

    #@2
    .line 241
    .local v0, "N":I
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@5
    .line 242
    aget-object v3, p0, v2

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 243
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 241
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_0

    #@e
    .line 246
    :cond_1
    return v1
.end method

.method private static writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 3
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    .line 255
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 256
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 257
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 258
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/os/health/HealthStatsWriter;

    #@19
    invoke-virtual {v2, p0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    #@1c
    .line 256
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 253
    :cond_0
    return-void
.end method

.method private static writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 279
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    .line 280
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 281
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 282
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 283
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/Long;

    #@19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@1c
    move-result-wide v2

    #@1d
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@20
    .line 281
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 278
    :cond_0
    return-void
.end method

.method private static writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 267
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    .line 268
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 269
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 270
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 271
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/os/Parcelable;

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-interface {v2, p0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 269
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public addMeasurement(IJ)V
    .locals 4
    .param p1, "measurementId"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 104
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    #@6
    move-result v0

    #@7
    .line 106
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    #@9
    aput-boolean v2, v1, v0

    #@b
    .line 107
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    #@d
    aput-wide p2, v1, v0

    #@f
    .line 103
    return-void
.end method

.method public addMeasurements(ILjava/lang/String;J)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    #@0
    .prologue
    .line 146
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@2
    const/4 v3, 0x4

    #@3
    invoke-virtual {v2, v3, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    #@6
    move-result v0

    #@7
    .line 148
    .local v0, "index":I
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@9
    aget-object v1, v2, v0

    #@b
    .line 149
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v1, :cond_0

    #@d
    .line 150
    new-instance v1, Landroid/util/ArrayMap;

    #@f
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    #@10
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    #@13
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@15
    aput-object v1, v2, v0

    #@17
    .line 152
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 145
    return-void
.end method

.method public addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/health/HealthStatsWriter;

    #@0
    .prologue
    .line 118
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@2
    const/4 v3, 0x2

    #@3
    invoke-virtual {v2, v3, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    #@6
    move-result v0

    #@7
    .line 120
    .local v0, "index":I
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    #@9
    aget-object v1, v2, v0

    #@b
    .line 121
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    if-nez v1, :cond_0

    #@d
    .line 122
    new-instance v1, Landroid/util/ArrayMap;

    #@f
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    const/4 v2, 0x1

    #@10
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    #@13
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    #@15
    aput-object v1, v2, v0

    #@17
    .line 124
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 117
    return-void
.end method

.method public addTimer(IIJ)V
    .locals 3
    .param p1, "timerId"    # I
    .param p2, "count"    # I
    .param p3, "time"    # J

    #@0
    .prologue
    .line 93
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    #@6
    move-result v0

    #@7
    .line 95
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    #@9
    const/4 v2, 0x1

    #@a
    aput-boolean v2, v1, v0

    #@c
    .line 96
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    #@e
    aput p2, v1, v0

    #@10
    .line 97
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    #@12
    aput-wide p3, v1, v0

    #@14
    .line 92
    return-void
.end method

.method public addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/health/TimerStat;

    #@0
    .prologue
    .line 133
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@2
    const/4 v3, 0x3

    #@3
    invoke-virtual {v2, v3, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    #@6
    move-result v0

    #@7
    .line 135
    .local v0, "index":I
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    #@9
    aget-object v1, v2, v0

    #@b
    .line 136
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/TimerStat;>;"
    if-nez v1, :cond_0

    #@d
    .line 137
    new-instance v1, Landroid/util/ArrayMap;

    #@f
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/TimerStat;>;"
    const/4 v2, 0x1

    #@10
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    #@13
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    #@15
    aput-object v1, v2, v0

    #@17
    .line 139
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/TimerStat;>;"
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 132
    return-void
.end method

.method public flattenToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 167
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@2
    invoke-virtual {v2}, Landroid/os/health/HealthKeys$Constants;->getDataType()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 170
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    #@b
    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    #@e
    move-result v2

    #@f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 171
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    #@18
    move-result-object v1

    #@19
    .line 172
    .local v1, "keys":[I
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@1b
    if-ge v0, v2, :cond_1

    #@1d
    .line 173
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    #@1f
    aget-boolean v2, v2, v0

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 174
    aget v2, v1, v0

    #@25
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 175
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    #@2a
    aget v2, v2, v0

    #@2c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 176
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    #@31
    aget-wide v2, v2, v0

    #@33
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@36
    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 181
    :cond_1
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    #@3b
    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    #@3e
    move-result v2

    #@3f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 182
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@44
    const/4 v3, 0x1

    #@45
    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    #@48
    move-result-object v1

    #@49
    .line 183
    const/4 v0, 0x0

    #@4a
    :goto_1
    array-length v2, v1

    #@4b
    if-ge v0, v2, :cond_3

    #@4d
    .line 184
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    #@4f
    aget-boolean v2, v2, v0

    #@51
    if-eqz v2, :cond_2

    #@53
    .line 185
    aget v2, v1, v0

    #@55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 186
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    #@5a
    aget-wide v2, v2, v0

    #@5c
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@5f
    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@61
    goto :goto_1

    #@62
    .line 191
    :cond_3
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    #@64
    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    #@67
    move-result v2

    #@68
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 192
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@6d
    const/4 v3, 0x2

    #@6e
    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    #@71
    move-result-object v1

    #@72
    .line 193
    const/4 v0, 0x0

    #@73
    :goto_2
    array-length v2, v1

    #@74
    if-ge v0, v2, :cond_5

    #@76
    .line 194
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    #@78
    aget-object v2, v2, v0

    #@7a
    if-eqz v2, :cond_4

    #@7c
    .line 195
    aget v2, v1, v0

    #@7e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@81
    .line 196
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    #@83
    aget-object v2, v2, v0

    #@85
    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    #@88
    .line 193
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@8a
    goto :goto_2

    #@8b
    .line 201
    :cond_5
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    #@8d
    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    #@90
    move-result v2

    #@91
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    .line 202
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@96
    const/4 v3, 0x3

    #@97
    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    #@9a
    move-result-object v1

    #@9b
    .line 203
    const/4 v0, 0x0

    #@9c
    :goto_3
    array-length v2, v1

    #@9d
    if-ge v0, v2, :cond_7

    #@9f
    .line 204
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    #@a1
    aget-object v2, v2, v0

    #@a3
    if-eqz v2, :cond_6

    #@a5
    .line 205
    aget v2, v1, v0

    #@a7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 206
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    #@ac
    aget-object v2, v2, v0

    #@ae
    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    #@b1
    .line 203
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@b3
    goto :goto_3

    #@b4
    .line 211
    :cond_7
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@b6
    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    #@b9
    move-result v2

    #@ba
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@bd
    .line 212
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    #@bf
    const/4 v3, 0x4

    #@c0
    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    #@c3
    move-result-object v1

    #@c4
    .line 213
    const/4 v0, 0x0

    #@c5
    :goto_4
    array-length v2, v1

    #@c6
    if-ge v0, v2, :cond_9

    #@c8
    .line 214
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@ca
    aget-object v2, v2, v0

    #@cc
    if-eqz v2, :cond_8

    #@ce
    .line 215
    aget v2, v1, v0

    #@d0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@d3
    .line 216
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    #@d5
    aget-object v2, v2, v0

    #@d7
    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    #@da
    .line 213
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@dc
    goto :goto_4

    #@dd
    .line 163
    :cond_9
    return-void
.end method
