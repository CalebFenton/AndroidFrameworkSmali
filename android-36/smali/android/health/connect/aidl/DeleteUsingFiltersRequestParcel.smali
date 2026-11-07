.class public Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;
.super Ljava/lang/Object;
.source "DeleteUsingFiltersRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEndTime:J

.field private final blacklist mLocalTimeFilter:Z

.field private blacklist mPackageNameFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

.field private final blacklist mRecordTypeFilters:[I

.field private final blacklist mStartTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/DeleteUsingFiltersRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/health/connect/DeleteUsingFiltersRequest;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    nop

    .line 73
    invoke-virtual {p1}, Landroid/health/connect/DeleteUsingFiltersRequest;->getDataOrigins()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mPackageNameFilters:Ljava/util/List;

    .line 76
    nop

    .line 77
    invoke-virtual {p1}, Landroid/health/connect/DeleteUsingFiltersRequest;->getRecordTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel$$ExternalSyntheticLambda1;-><init>()V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordTypeFilters:[I

    .line 84
    invoke-virtual {p1}, Landroid/health/connect/DeleteUsingFiltersRequest;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    if-nez v0, :cond_46

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mStartTime:J

    .line 87
    iput-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mEndTime:J

    goto :goto_5b

    .line 89
    :cond_46
    nop

    .line 90
    invoke-virtual {p1}, Landroid/health/connect/DeleteUsingFiltersRequest;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getFilterStartTimeMillis(Landroid/health/connect/TimeRangeFilter;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mStartTime:J

    .line 91
    invoke-virtual {p1}, Landroid/health/connect/DeleteUsingFiltersRequest;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getFilterEndTimeMillis(Landroid/health/connect/TimeRangeFilter;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mEndTime:J

    .line 93
    :goto_5b
    invoke-virtual {p1}, Landroid/health/connect/DeleteUsingFiltersRequest;->getTimeRangeFilter()Landroid/health/connect/TimeRangeFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->isLocalTimeFilter(Landroid/health/connect/TimeRangeFilter;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mLocalTimeFilter:Z

    .line 94
    new-instance v0, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/aidl/RecordIdFiltersParcel;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/aidl/RecordIdFiltersParcel;Ljava/lang/String;)V
    .registers 6
    .param p1, "recordIdFiltersParcel"    # Landroid/health/connect/aidl/RecordIdFiltersParcel;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mPackageNameFilters:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordTypeFilters:[I

    .line 102
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mStartTime:J

    .line 103
    iput-wide v1, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mEndTime:J

    .line 104
    iput-boolean v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mLocalTimeFilter:Z

    .line 105
    iput-object p1, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 106
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mPackageNameFilters:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordTypeFilters:[I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mStartTime:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mEndTime:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mLocalTimeFilter:Z

    .line 65
    const-class v0, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    iput-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 68
    return-void
.end method

.method static synthetic blacklist lambda$getRecordTypeFilters$1(Landroid/health/connect/RecordIdFilter;)Ljava/lang/Integer;
    .registers 3
    .param p0, "recordIdFilter"    # Landroid/health/connect/RecordIdFilter;

    .line 127
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Landroid/health/connect/RecordIdFilter;->getRecordType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordType(Ljava/lang/Class;)I

    move-result v0

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/Class;)I
    .registers 2
    .param p0, "recordType"    # Ljava/lang/Class;

    .line 80
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordType(Ljava/lang/Class;)I

    move-result v0

    .line 80
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEndTime()J
    .registers 3

    .line 143
    iget-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getPackageNameFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mPackageNameFilters:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRecordIdFiltersParcel()Landroid/health/connect/aidl/RecordIdFiltersParcel;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    return-object v0
.end method

.method public blacklist getRecordTypeFilters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 123
    invoke-virtual {v0}, Landroid/health/connect/aidl/RecordIdFiltersParcel;->getRecordIdFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 124
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    invoke-virtual {v0}, Landroid/health/connect/aidl/RecordIdFiltersParcel;->getRecordIdFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 124
    return-object v0

    .line 135
    :cond_34
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordTypeFilters:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 139
    iget-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mStartTime:J

    return-wide v0
.end method

.method public blacklist isLocalTimeFilter()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mLocalTimeFilter:Z

    return v0
.end method

.method public blacklist setPackageNameFilters(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mPackageNameFilters:Ljava/util/List;

    .line 119
    return-void
.end method

.method public blacklist usesIdFilters()Z
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    invoke-virtual {v0}, Landroid/health/connect/aidl/RecordIdFiltersParcel;->getRecordIdFilters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    .line 148
    invoke-virtual {v0}, Landroid/health/connect/aidl/RecordIdFiltersParcel;->getRecordIdFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 147
    :goto_17
    return v0
.end method

.method public blacklist usesNonIdFilters()Z
    .registers 5

    .line 171
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordTypeFilters:[I

    array-length v0, v0

    if-nez v0, :cond_16

    iget-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    iget-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mEndTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mPackageNameFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordTypeFilters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 160
    iget-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-wide v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-boolean v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mLocalTimeFilter:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 163
    iget-object v0, p0, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->mRecordIdFiltersParcel:Landroid/health/connect/aidl/RecordIdFiltersParcel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    return-void
.end method
