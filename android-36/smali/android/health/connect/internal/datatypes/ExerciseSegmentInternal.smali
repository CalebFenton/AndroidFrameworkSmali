.class public Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;
.super Ljava/lang/Object;
.source "ExerciseSegmentInternal.java"


# instance fields
.field private blacklist mEndTime:J

.field private blacklist mRepetitionsCount:I

.field private blacklist mSegmentType:I

.field private blacklist mStartTime:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getExternalSegments(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseSegment;",
            ">;"
        }
    .end annotation

    .line 70
    .local p0, "internalSegments":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v0, "externalSegments":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseSegment;>;"
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 72
    return-object v0
.end method

.method static synthetic blacklist lambda$getExternalSegments$0(Ljava/util/List;Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;)V
    .registers 3
    .param p0, "externalSegments"    # Ljava/util/List;
    .param p1, "segment"    # Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    .line 71
    invoke-virtual {p1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->toExternalRecord()Landroid/health/connect/datatypes/ExerciseSegment;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$writeSegmentsToParcel$1(Landroid/os/Parcel;Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;)V
    .registers 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "segment"    # Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    .line 81
    invoke-virtual {p1, p0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist populateSegmentsFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "size":I
    if-nez v0, :cond_8

    .line 59
    const/4 v1, 0x0

    return-object v1

    .line 61
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v1, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1a

    .line 63
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 65
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;-><init>()V

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->setRepetitionsCount(I)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->setSegmentType(I)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method static blacklist writeSegmentsToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 76
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;>;"
    if-nez p0, :cond_7

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void

    .line 80
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 151
    :cond_4
    instance-of v1, p1, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 152
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    .line 153
    .local v1, "that":Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;
    iget v3, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mSegmentType:I

    iget v4, v1, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mSegmentType:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mRepetitionsCount:I

    iget v4, v1, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mRepetitionsCount:I

    if-ne v3, v4, :cond_2a

    iget-wide v3, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mStartTime:J

    iget-wide v5, v1, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    iget-wide v3, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mEndTime:J

    iget-wide v5, v1, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mEndTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    return v0
.end method

.method public blacklist getEndTime()J
    .registers 3

    .line 123
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getRepetitionsCount()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mRepetitionsCount:I

    return v0
.end method

.method public blacklist getSegmentType()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mSegmentType:I

    return v0
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 118
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mStartTime:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 161
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mStartTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mEndTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mSegmentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mRepetitionsCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setEndTime(J)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;
    .registers 3
    .param p1, "endTime"    # J

    .line 112
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mEndTime:J

    .line 113
    return-object p0
.end method

.method public blacklist setRepetitionsCount(I)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;
    .registers 2
    .param p1, "repetitionsCount"    # I

    .line 133
    iput p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mRepetitionsCount:I

    .line 134
    return-object p0
.end method

.method public blacklist setSegmentType(I)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;
    .registers 2
    .param p1, "segmentType"    # I

    .line 144
    iput p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mSegmentType:I

    .line 145
    return-object p0
.end method

.method public blacklist setStartTime(J)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;
    .registers 3
    .param p1, "startTime"    # J

    .line 106
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mStartTime:J

    .line 107
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/ExerciseSegment;
    .registers 5

    .line 96
    new-instance v0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;

    .line 97
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->getSegmentType()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/ExerciseSegment$Builder;-><init>(Ljava/time/Instant;Ljava/time/Instant;I)V

    .line 100
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->getRepetitionsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->setRepetitionsCount(I)Landroid/health/connect/datatypes/ExerciseSegment$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/ExerciseSegment;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 87
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mRepetitionsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->mSegmentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
