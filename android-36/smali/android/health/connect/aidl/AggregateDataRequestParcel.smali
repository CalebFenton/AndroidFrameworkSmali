.class public Landroid/health/connect/aidl/AggregateDataRequestParcel;
.super Ljava/lang/Object;
.source "AggregateDataRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/AggregateDataRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAggregateIds:[I

.field private blacklist mDuration:Ljava/time/Duration;

.field private final blacklist mEndTime:J

.field private final blacklist mLocalTimeFilter:Z

.field private final blacklist mPackageFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPeriod:Ljava/time/Period;

.field private final blacklist mStartTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/health/connect/aidl/AggregateDataRequestParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/AggregateDataRequestParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/AggregateRecordsRequest;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/AggregateRecordsRequest<",
            "*>;)V"
        }
    .end annotation

    .line 67
    .local p1, "request":Landroid/health/connect/AggregateRecordsRequest;, "Landroid/health/connect/AggregateRecordsRequest<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/health/connect/AggregateRecordsRequest;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getFilterStartTimeMillis(Landroid/health/connect/TimeRangeFilter;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mStartTime:J

    .line 69
    invoke-virtual {p1}, Landroid/health/connect/AggregateRecordsRequest;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getFilterEndTimeMillis(Landroid/health/connect/TimeRangeFilter;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mEndTime:J

    .line 70
    invoke-virtual {p1}, Landroid/health/connect/AggregateRecordsRequest;->getAggregationTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mAggregateIds:[I

    .line 71
    invoke-virtual {p1}, Landroid/health/connect/AggregateRecordsRequest;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->isLocalTimeFilter(Landroid/health/connect/TimeRangeFilter;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mLocalTimeFilter:Z

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/health/connect/AggregateRecordsRequest;->getAggregationTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/datatypes/AggregationType;

    .line 75
    .local v2, "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    iget-object v3, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mAggregateIds:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-virtual {v2}, Landroid/health/connect/datatypes/AggregationType;->getAggregationTypeIdentifier()I

    move-result v5

    aput v5, v3, v0

    .line 76
    .end local v2    # "aggregationType":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<*>;"
    move v0, v4

    goto :goto_36

    .line 77
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_4e
    nop

    .line 78
    invoke-virtual {p1}, Landroid/health/connect/AggregateRecordsRequest;->getDataOriginsFilters()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 79
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 80
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPackageFilters:Ljava/util/List;

    .line 82
    iget-wide v1, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mEndTime:J

    iget-wide v3, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mDuration:Ljava/time/Duration;

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/AggregateRecordsRequest;Ljava/time/Duration;)V
    .registers 3
    .param p1, "request"    # Landroid/health/connect/AggregateRecordsRequest;
    .param p2, "duration"    # Ljava/time/Duration;

    .line 86
    invoke-direct {p0, p1}, Landroid/health/connect/aidl/AggregateDataRequestParcel;-><init>(Landroid/health/connect/AggregateRecordsRequest;)V

    .line 87
    iput-object p2, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mDuration:Ljava/time/Duration;

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/AggregateRecordsRequest;Ljava/time/Period;)V
    .registers 5
    .param p1, "request"    # Landroid/health/connect/AggregateRecordsRequest;
    .param p2, "period"    # Ljava/time/Period;

    .line 92
    invoke-direct {p0, p1}, Landroid/health/connect/aidl/AggregateDataRequestParcel;-><init>(Landroid/health/connect/AggregateRecordsRequest;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mDuration:Ljava/time/Duration;

    .line 94
    iput-object p2, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPeriod:Ljava/time/Period;

    .line 96
    invoke-virtual {p1}, Landroid/health/connect/AggregateRecordsRequest;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->isLocalTimeFilter(Landroid/health/connect/TimeRangeFilter;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    return-void

    .line 97
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "For period requests should use LocalTimeRangeFilter"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mStartTime:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mEndTime:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mLocalTimeFilter:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mAggregateIds:[I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPackageFilters:Ljava/util/List;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "periodDays":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .local v1, "periodMonths":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .local v2, "periodYears":I
    invoke-static {v2, v1, v0}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v3

    iput-object v3, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPeriod:Ljava/time/Period;

    .line 116
    .end local v1    # "periodMonths":I
    .end local v2    # "periodYears":I
    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 117
    .local v1, "duration":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_46

    .line 118
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v3

    iput-object v3, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mDuration:Ljava/time/Duration;

    .line 120
    :cond_46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAggregateIds()[I
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mAggregateIds:[I

    return-object v0
.end method

.method public blacklist getDuration()Ljava/time/Duration;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist getEndTime()J
    .registers 3

    .line 169
    iget-wide v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getPackageFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPackageFilters:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPeriod()Ljava/time/Period;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPeriod:Ljava/time/Period;

    return-object v0
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 165
    iget-wide v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mStartTime:J

    return-wide v0
.end method

.method public blacklist getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;
    .registers 4

    .line 183
    iget-boolean v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mLocalTimeFilter:Z

    if-eqz v0, :cond_2a

    .line 184
    new-instance v0, Landroid/health/connect/LocalTimeRangeFilter$Builder;

    invoke-direct {v0}, Landroid/health/connect/LocalTimeRangeFilter$Builder;-><init>()V

    iget-wide v1, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mStartTime:J

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/health/connect/TimeRangeFilterHelper;->getLocalTimeFromMillis(Ljava/lang/Long;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/LocalTimeRangeFilter$Builder;->setStartTime(Ljava/time/LocalDateTime;)Landroid/health/connect/LocalTimeRangeFilter$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mEndTime:J

    .line 186
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/health/connect/TimeRangeFilterHelper;->getLocalTimeFromMillis(Ljava/lang/Long;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/LocalTimeRangeFilter$Builder;->setEndTime(Ljava/time/LocalDateTime;)Landroid/health/connect/LocalTimeRangeFilter$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/health/connect/LocalTimeRangeFilter$Builder;->build()Landroid/health/connect/LocalTimeRangeFilter;

    move-result-object v0

    .line 184
    return-object v0

    .line 189
    :cond_2a
    new-instance v0, Landroid/health/connect/TimeInstantRangeFilter$Builder;

    invoke-direct {v0}, Landroid/health/connect/TimeInstantRangeFilter$Builder;-><init>()V

    iget-wide v1, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mStartTime:J

    .line 190
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/TimeInstantRangeFilter$Builder;->setStartTime(Ljava/time/Instant;)Landroid/health/connect/TimeInstantRangeFilter$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mEndTime:J

    .line 191
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/TimeInstantRangeFilter$Builder;->setEndTime(Ljava/time/Instant;)Landroid/health/connect/TimeInstantRangeFilter$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/health/connect/TimeInstantRangeFilter$Builder;->build()Landroid/health/connect/TimeInstantRangeFilter;

    move-result-object v0

    .line 189
    return-object v0
.end method

.method public blacklist useLocalTimeFilter()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mLocalTimeFilter:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget-wide v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-boolean v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mLocalTimeFilter:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 147
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mAggregateIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 148
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPackageFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPeriod:Ljava/time/Period;

    if-eqz v0, :cond_39

    .line 150
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPeriod:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPeriod:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mPeriod:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 154
    :cond_39
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    :goto_3d
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mDuration:Ljava/time/Duration;

    if-eqz v0, :cond_4b

    .line 158
    iget-object v0, p0, Landroid/health/connect/aidl/AggregateDataRequestParcel;->mDuration:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_50

    .line 160
    :cond_4b
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    :goto_50
    return-void
.end method
