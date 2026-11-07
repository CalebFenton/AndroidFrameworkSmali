.class public Landroid/health/connect/aidl/ReadRecordsRequestParcel;
.super Ljava/lang/Object;
.source "ReadRecordsRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/ReadRecordsRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAscending:Z

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

.field private final blacklist mPageSize:I

.field private final blacklist mPageToken:J

.field private final blacklist mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

.field private final blacklist mRecordType:I

.field private final blacklist mStartTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/health/connect/aidl/ReadRecordsRequestParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/ReadRecordsRequestParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/ReadRecordsRequestUsingFilters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/ReadRecordsRequestUsingFilters<",
            "*>;)V"
        }
    .end annotation

    .line 94
    .local p1, "request":Landroid/health/connect/ReadRecordsRequestUsingFilters;, "Landroid/health/connect/ReadRecordsRequestUsingFilters<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    nop

    .line 96
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->getDataOrigins()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 97
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 98
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPackageFilters:Ljava/util/List;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 100
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    if-nez v0, :cond_31

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mStartTime:J

    .line 103
    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mEndTime:J

    goto :goto_46

    .line 105
    :cond_31
    nop

    .line 106
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getFilterStartTimeMillis(Landroid/health/connect/TimeRangeFilter;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mStartTime:J

    .line 107
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getFilterEndTimeMillis(Landroid/health/connect/TimeRangeFilter;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mEndTime:J

    .line 110
    :goto_46
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->isLocalTimeFilter(Landroid/health/connect/TimeRangeFilter;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mLocalTimeFilter:Z

    .line 111
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->getRecordType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordType(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordType:I

    .line 112
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->getPageSize()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageSize:I

    .line 113
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->getPageToken()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageToken:J

    .line 114
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingFilters;->isAscending()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mAscending:Z

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/ReadRecordsRequestUsingIds;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/ReadRecordsRequestUsingIds<",
            "*>;)V"
        }
    .end annotation

    .line 79
    .local p1, "request":Landroid/health/connect/ReadRecordsRequestUsingIds;, "Landroid/health/connect/ReadRecordsRequestUsingIds<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPackageFilters:Ljava/util/List;

    .line 81
    new-instance v0, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingIds;->getRecordIdFilters()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/aidl/RecordIdFiltersParcel;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mStartTime:J

    .line 83
    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mEndTime:J

    .line 84
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v2

    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequestUsingIds;->getRecordType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordType(Ljava/lang/Class;)I

    move-result v2

    iput v2, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordType:I

    .line 85
    const/4 v2, -0x1

    iput v2, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageSize:I

    .line 86
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mLocalTimeFilter:Z

    .line 89
    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageToken:J

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mAscending:Z

    .line 91
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordType:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mStartTime:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mEndTime:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mLocalTimeFilter:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPackageFilters:Ljava/util/List;

    .line 71
    const-class v0, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    iput-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageSize:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageToken:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mAscending:Z

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEndTime()J
    .registers 3

    .line 130
    iget-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mEndTime:J

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

    .line 122
    iget-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPackageFilters:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPageSize()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageSize:I

    return v0
.end method

.method public blacklist getPageToken()J
    .registers 3

    .line 142
    iget-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageToken:J

    return-wide v0
.end method

.method public blacklist getRecordIdFiltersParcel()Landroid/health/connect/aidl/RecordIdFiltersParcel;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    return-object v0
.end method

.method public blacklist getRecordType()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordType:I

    return v0
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 126
    iget-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mStartTime:J

    return-wide v0
.end method

.method public blacklist isAscending()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mAscending:Z

    return v0
.end method

.method public blacklist usesLocalTimeFilter()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mLocalTimeFilter:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mLocalTimeFilter:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    iget-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPackageFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    iget v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mPageToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget-boolean v0, p0, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->mAscending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    return-void
.end method
