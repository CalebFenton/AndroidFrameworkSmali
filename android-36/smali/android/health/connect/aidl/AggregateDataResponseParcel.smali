.class public Landroid/health/connect/aidl/AggregateDataResponseParcel;
.super Ljava/lang/Object;
.source "AggregateDataResponseParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/AggregateDataResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAggregateRecordsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/AggregateRecordsResponse<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mDuration:Ljava/time/Duration;

.field private blacklist mPeriod:Ljava/time/Period;

.field private blacklist mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/health/connect/aidl/AggregateDataResponseParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/AggregateDataResponseParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_60

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .local v2, "mapSize":I
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 83
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/health/connect/AggregateResult<*>;>;"
    const/4 v4, 0x0

    .local v4, "mapI":I
    :goto_1b
    if-ge v4, v2, :cond_53

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 85
    .local v5, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 86
    .local v6, "hasValue":Z
    if-eqz v6, :cond_48

    .line 87
    nop

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 89
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getInstance()Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    move-result-object v8

    .line 90
    invoke-virtual {v8, v5, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->getAggregateResultFor(ILandroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object v8

    .line 91
    invoke-direct {p0, p1}, Landroid/health/connect/aidl/AggregateDataResponseParcel;->parseZoneOffset(Landroid/os/Parcel;)Ljava/time/ZoneOffset;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/health/connect/AggregateResult;->setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/AggregateResult;

    move-result-object v8

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/health/connect/AggregateResult;->setDataOrigins(Ljava/util/List;)Landroid/health/connect/AggregateResult;

    move-result-object v8

    .line 87
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 94
    :cond_48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v5    # "id":I
    .end local v6    # "hasValue":Z
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 98
    .end local v4    # "mapI":I
    :cond_53
    iget-object v4, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    new-instance v5, Landroid/health/connect/AggregateRecordsResponse;

    invoke-direct {v5, v3}, Landroid/health/connect/AggregateRecordsResponse;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v2    # "mapSize":I
    .end local v3    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/health/connect/AggregateResult<*>;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 101
    .end local v1    # "i":I
    :cond_60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, "periodDays":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_75

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, "periodMonths":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .local v3, "periodYears":I
    invoke-static {v3, v2, v1}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v4

    iput-object v4, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    .line 108
    .end local v2    # "periodMonths":I
    .end local v3    # "periodYears":I
    :cond_75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 109
    .local v2, "duration":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_85

    .line 110
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v6

    iput-object v6, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    .line 113
    :cond_85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 114
    .local v6, "isLocaltimeFilter":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 115
    .local v7, "startTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 116
    .local v9, "endTime":J
    cmp-long v11, v7, v4

    if-eqz v11, :cond_da

    cmp-long v4, v9, v4

    if-eqz v4, :cond_da

    .line 117
    if-eqz v6, :cond_bf

    .line 118
    new-instance v4, Landroid/health/connect/LocalTimeRangeFilter$Builder;

    invoke-direct {v4}, Landroid/health/connect/LocalTimeRangeFilter$Builder;-><init>()V

    .line 121
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Landroid/health/connect/TimeRangeFilterHelper;->getLocalTimeFromMillis(Ljava/lang/Long;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Landroid/health/connect/LocalTimeRangeFilter$Builder;->setStartTime(Ljava/time/LocalDateTime;)Landroid/health/connect/LocalTimeRangeFilter$Builder;

    move-result-object v4

    .line 122
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Landroid/health/connect/TimeRangeFilterHelper;->getLocalTimeFromMillis(Ljava/lang/Long;)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/health/connect/LocalTimeRangeFilter$Builder;->setEndTime(Ljava/time/LocalDateTime;)Landroid/health/connect/LocalTimeRangeFilter$Builder;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Landroid/health/connect/LocalTimeRangeFilter$Builder;->build()Landroid/health/connect/LocalTimeRangeFilter;

    move-result-object v4

    iput-object v4, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    goto :goto_da

    .line 125
    :cond_bf
    new-instance v4, Landroid/health/connect/TimeInstantRangeFilter$Builder;

    invoke-direct {v4}, Landroid/health/connect/TimeInstantRangeFilter$Builder;-><init>()V

    .line 127
    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/health/connect/TimeInstantRangeFilter$Builder;->setStartTime(Ljava/time/Instant;)Landroid/health/connect/TimeInstantRangeFilter$Builder;

    move-result-object v4

    .line 128
    invoke-static {v9, v10}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/health/connect/TimeInstantRangeFilter$Builder;->setEndTime(Ljava/time/Instant;)Landroid/health/connect/TimeInstantRangeFilter$Builder;

    move-result-object v4

    .line 129
    invoke-virtual {v4}, Landroid/health/connect/TimeInstantRangeFilter$Builder;->build()Landroid/health/connect/TimeInstantRangeFilter;

    move-result-object v4

    iput-object v4, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 132
    :cond_da
    :goto_da
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/AggregateRecordsResponse<",
            "*>;>;)V"
        }
    .end annotation

    .line 70
    .local p1, "aggregateRecordsResponse":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/AggregateRecordsResponse<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    .line 72
    return-void
.end method

.method private blacklist getAggregateDataResponseForInstantTimeGroupedByDuration(Ljava/time/Instant;Ljava/time/Instant;)Ljava/util/List;
    .registers 11
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            ")",
            "Ljava/util/List<",
            "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<",
            "*>;>;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<*>;>;"
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 216
    .local v1, "offsetDuration":Ljava/time/Duration;
    iget-object v2, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/AggregateRecordsResponse;

    .line 217
    .local v3, "response":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<*>;"
    invoke-virtual {p1, v1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v4

    .line 218
    .local v4, "buckedStartTime":Ljava/time/Instant;
    iget-object v5, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    invoke-virtual {v4, v5}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v5

    .line 219
    .local v5, "buckedEndTime":Ljava/time/Instant;
    invoke-virtual {v5, p2}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 220
    move-object v5, p2

    .line 223
    :cond_2a
    new-instance v6, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;

    .line 225
    invoke-virtual {v3}, Landroid/health/connect/AggregateRecordsResponse;->getAggregateResults()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v6, v4, v5, v7}, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;-><init>(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/Map;)V

    .line 223
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v6, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    invoke-virtual {v1, v6}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v1

    .line 228
    .end local v3    # "response":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<*>;"
    .end local v4    # "buckedStartTime":Ljava/time/Instant;
    .end local v5    # "buckedEndTime":Ljava/time/Instant;
    goto :goto_d

    .line 230
    :cond_3d
    return-object v0
.end method

.method private blacklist getAggregateDataResponseForLocalTimeGroupedByDuration(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Ljava/util/List;
    .registers 13
    .param p1, "startTime"    # Ljava/time/LocalDateTime;
    .param p2, "endTime"    # Ljava/time/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            "Ljava/time/LocalDateTime;",
            ")",
            "Ljava/util/List<",
            "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<",
            "*>;>;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<*>;>;"
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 192
    .local v1, "bucketStartTimeOffset":Ljava/time/Duration;
    iget-object v2, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/AggregateRecordsResponse;

    .line 193
    .local v3, "response":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<*>;"
    invoke-virtual {v3}, Landroid/health/connect/AggregateRecordsResponse;->getFirstZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    .line 194
    .local v4, "zoneOffset":Ljava/time/ZoneOffset;
    invoke-static {p2, v4}, Landroid/health/connect/TimeRangeFilterHelper;->getInstantFromLocalTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v5

    .line 195
    .local v5, "endTimeInstant":Ljava/time/Instant;
    nop

    .line 196
    invoke-static {p1, v4}, Landroid/health/connect/TimeRangeFilterHelper;->getInstantFromLocalTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v6

    .line 197
    .local v6, "bucketStartTime":Ljava/time/Instant;
    iget-object v7, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    invoke-virtual {v6, v7}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v7

    .line 198
    .local v7, "bucketEndTime":Ljava/time/Instant;
    invoke-virtual {v7, v5}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 199
    move-object v7, v5

    .line 202
    :cond_37
    new-instance v8, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;

    .line 204
    invoke-virtual {v3}, Landroid/health/connect/AggregateRecordsResponse;->getAggregateResults()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v6, v7, v9}, Landroid/health/connect/AggregateRecordsGroupedByDurationResponse;-><init>(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/Map;)V

    .line 202
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v8, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    invoke-virtual {v1, v8}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v1

    .line 206
    .end local v3    # "response":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<*>;"
    .end local v4    # "zoneOffset":Ljava/time/ZoneOffset;
    .end local v5    # "endTimeInstant":Ljava/time/Instant;
    .end local v6    # "bucketStartTime":Ljava/time/Instant;
    .end local v7    # "bucketEndTime":Ljava/time/Instant;
    goto :goto_d

    .line 208
    :cond_4a
    return-object v0
.end method

.method private blacklist getDurationDelta(Ljava/time/Duration;)J
    .registers 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 358
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getDurationInstant(J)Ljava/time/Instant;
    .registers 4
    .param p1, "duration"    # J

    .line 354
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPeriodDeltaInDays(Ljava/time/Period;)J
    .registers 4
    .param p1, "period"    # Ljava/time/Period;

    .line 350
    invoke-virtual {p1}, Ljava/time/Period;->getDays()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private blacklist getPeriodEndLocalDateTime(Landroid/health/connect/TimeRangeFilter;)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;

    .line 336
    instance-of v0, p1, Landroid/health/connect/TimeInstantRangeFilter;

    if-eqz v0, :cond_14

    .line 337
    move-object v0, p1

    check-cast v0, Landroid/health/connect/TimeInstantRangeFilter;

    .line 338
    invoke-virtual {v0}, Landroid/health/connect/TimeInstantRangeFilter;->getEndTime()Ljava/time/Instant;

    move-result-object v0

    .line 339
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 340
    :cond_14
    instance-of v0, p1, Landroid/health/connect/LocalTimeRangeFilter;

    if-eqz v0, :cond_20

    .line 341
    move-object v0, p1

    check-cast v0, Landroid/health/connect/LocalTimeRangeFilter;

    invoke-virtual {v0}, Landroid/health/connect/LocalTimeRangeFilter;->getEndTime()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 343
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time filter object. Object should be either TimeInstantRangeFilter or LocalTimeRangeFilter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$writeToParcel$0(Landroid/os/Parcel;Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V
    .registers 9
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "val"    # Landroid/health/connect/AggregateResult;

    .line 277
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    if-eqz p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    if-eqz p2, :cond_4e

    .line 281
    invoke-virtual {p2, p0}, Landroid/health/connect/AggregateResult;->putToParcel(Landroid/os/Parcel;)V

    .line 282
    invoke-virtual {p2}, Landroid/health/connect/AggregateResult;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 283
    .local v0, "zoneOffset":Ljava/time/ZoneOffset;
    if-eqz v0, :cond_26

    .line 284
    invoke-virtual {p2}, Landroid/health/connect/AggregateResult;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 286
    :cond_26
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    :goto_2a
    invoke-virtual {p2}, Landroid/health/connect/AggregateResult;->getDataOrigins()Ljava/util/Set;

    move-result-object v1

    .line 289
    .local v1, "dataOrigins":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/DataOrigin;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/health/connect/datatypes/DataOrigin;

    .line 291
    .local v4, "dataOrigin":Landroid/health/connect/datatypes/DataOrigin;
    invoke-virtual {v4}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v4    # "dataOrigin":Landroid/health/connect/datatypes/DataOrigin;
    goto :goto_37

    .line 293
    :cond_4b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 295
    .end local v0    # "zoneOffset":Ljava/time/ZoneOffset;
    .end local v1    # "dataOrigins":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/DataOrigin;>;"
    .end local v2    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4e
    return-void
.end method

.method private blacklist parseZoneOffset(Landroid/os/Parcel;)Ljava/time/ZoneOffset;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    .local v0, "zoneOffsetInSecs":I
    const/4 v1, 0x0

    .line 327
    .local v1, "zoneOffset":Ljava/time/ZoneOffset;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    .line 328
    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 331
    :cond_c
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAggregateDataResponse()Landroid/health/connect/AggregateRecordsResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/health/connect/AggregateRecordsResponse<",
            "*>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/AggregateRecordsResponse;

    return-object v0
.end method

.method public blacklist getAggregateDataResponseGroupedByDuration()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<",
            "*>;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 169
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 172
    :cond_12
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    instance-of v1, v0, Landroid/health/connect/LocalTimeRangeFilter;

    if-eqz v1, :cond_28

    check-cast v0, Landroid/health/connect/LocalTimeRangeFilter;

    .line 173
    .local v0, "timeFilter":Landroid/health/connect/LocalTimeRangeFilter;
    nop

    .line 174
    invoke-virtual {v0}, Landroid/health/connect/LocalTimeRangeFilter;->getStartTime()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/LocalTimeRangeFilter;->getEndTime()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 173
    invoke-direct {p0, v1, v2}, Landroid/health/connect/aidl/AggregateDataResponseParcel;->getAggregateDataResponseForLocalTimeGroupedByDuration(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 177
    .end local v0    # "timeFilter":Landroid/health/connect/LocalTimeRangeFilter;
    :cond_28
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    instance-of v1, v0, Landroid/health/connect/TimeInstantRangeFilter;

    if-eqz v1, :cond_3e

    check-cast v0, Landroid/health/connect/TimeInstantRangeFilter;

    .line 178
    .local v0, "timeFilter":Landroid/health/connect/TimeInstantRangeFilter;
    nop

    .line 179
    invoke-virtual {v0}, Landroid/health/connect/TimeInstantRangeFilter;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/TimeInstantRangeFilter;->getEndTime()Ljava/time/Instant;

    move-result-object v2

    .line 178
    invoke-direct {p0, v1, v2}, Landroid/health/connect/aidl/AggregateDataResponseParcel;->getAggregateDataResponseForInstantTimeGroupedByDuration(Ljava/time/Instant;Ljava/time/Instant;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 182
    .end local v0    # "timeFilter":Landroid/health/connect/TimeInstantRangeFilter;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time filter object. Object should be either TimeInstantRangeFilter or LocalTimeRangeFilter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAggregateDataResponseGroupedByPeriod()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<",
            "*>;>;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "aggregateRecordsGroupedByPeriodResponses":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<*>;>;"
    iget-object v1, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    check-cast v1, Landroid/health/connect/LocalTimeRangeFilter;

    invoke-virtual {v1}, Landroid/health/connect/LocalTimeRangeFilter;->getStartTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 245
    .local v1, "groupBoundary":Ljava/time/LocalDateTime;
    iget-object v2, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/AggregateRecordsResponse;

    .line 246
    .local v3, "aggregateRecordsResponse":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<*>;"
    new-instance v4, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;

    iget-object v5, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    .line 249
    invoke-virtual {v1, v5}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 250
    invoke-virtual {v3}, Landroid/health/connect/AggregateRecordsResponse;->getAggregateResults()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;-><init>(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/util/Map;)V

    .line 246
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v4, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    invoke-virtual {v1, v4}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 252
    .end local v3    # "aggregateRecordsResponse":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<*>;"
    goto :goto_18

    .line 254
    :cond_3d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59

    .line 255
    nop

    .line 256
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;

    iget-object v3, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 257
    invoke-direct {p0, v3}, Landroid/health/connect/aidl/AggregateDataResponseParcel;->getPeriodEndLocalDateTime(Landroid/health/connect/TimeRangeFilter;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->setEndTime(Ljava/time/LocalDateTime;)Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;

    .line 260
    :cond_59
    return-object v0
.end method

.method public blacklist setDuration(Ljava/time/Duration;Landroid/health/connect/TimeRangeFilter;)Landroid/health/connect/aidl/AggregateDataResponseParcel;
    .registers 3
    .param p1, "duration"    # Ljava/time/Duration;
    .param p2, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;

    .line 137
    iput-object p1, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    .line 138
    iput-object p2, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 140
    return-object p0
.end method

.method public blacklist setPeriod(Ljava/time/Period;Landroid/health/connect/TimeRangeFilter;)Landroid/health/connect/aidl/AggregateDataResponseParcel;
    .registers 3
    .param p1, "period"    # Ljava/time/Period;
    .param p2, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;

    .line 146
    iput-object p1, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    .line 147
    iput-object p2, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 149
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 270
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mAggregateRecordsResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/AggregateRecordsResponse;

    .line 272
    .local v1, "aggregateRecordsResponse":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<*>;"
    invoke-virtual {v1}, Landroid/health/connect/AggregateRecordsResponse;->getAggregateResults()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    nop

    .line 274
    invoke-virtual {v1}, Landroid/health/connect/AggregateRecordsResponse;->getAggregateResults()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Landroid/health/connect/aidl/AggregateDataResponseParcel$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/health/connect/aidl/AggregateDataResponseParcel$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    .line 275
    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 296
    .end local v1    # "aggregateRecordsResponse":Landroid/health/connect/AggregateRecordsResponse;, "Landroid/health/connect/AggregateRecordsResponse<*>;"
    goto :goto_f

    .line 298
    :cond_34
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    if-eqz v0, :cond_54

    .line 299
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mPeriod:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_58

    .line 303
    :cond_54
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    :goto_58
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_68

    .line 307
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mDuration:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_6b

    .line 309
    :cond_68
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 312
    :goto_6b
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    if-eqz v0, :cond_8b

    .line 313
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->isLocalTimeFilter(Landroid/health/connect/TimeRangeFilter;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getFilterStartTimeMillis(Landroid/health/connect/TimeRangeFilter;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 315
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataResponseParcel;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getFilterEndTimeMillis(Landroid/health/connect/TimeRangeFilter;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_95

    .line 317
    :cond_8b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 319
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    :goto_95
    return-void
.end method
