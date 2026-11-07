.class public final Landroid/health/connect/internal/datatypes/SleepStageInternal;
.super Ljava/lang/Object;
.source "SleepStageInternal.java"


# instance fields
.field private blacklist mEndTime:J

.field private blacklist mStageType:I

.field private blacklist mStartTime:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getExternalStages(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/SleepStageInternal;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SleepSessionRecord$Stage;",
            ">;"
        }
    .end annotation

    .line 64
    .local p0, "internalStages":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/SleepStageInternal;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v0, "externalStages":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/SleepSessionRecord$Stage;>;"
    new-instance v1, Landroid/health/connect/internal/datatypes/SleepStageInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/health/connect/internal/datatypes/SleepStageInternal$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 66
    return-object v0
.end method

.method static synthetic blacklist lambda$getExternalStages$0(Ljava/util/List;Landroid/health/connect/internal/datatypes/SleepStageInternal;)V
    .registers 3
    .param p0, "externalStages"    # Ljava/util/List;
    .param p1, "stage"    # Landroid/health/connect/internal/datatypes/SleepStageInternal;

    .line 65
    invoke-virtual {p1}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->toExternalRecord()Landroid/health/connect/datatypes/SleepSessionRecord$Stage;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$writeStagesToParcel$1(Landroid/os/Parcel;Landroid/health/connect/internal/datatypes/SleepStageInternal;)V
    .registers 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "stage"    # Landroid/health/connect/internal/datatypes/SleepStageInternal;

    .line 75
    invoke-virtual {p1, p0}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist populateStagesFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/SleepStageInternal;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "size":I
    if-nez v0, :cond_8

    .line 53
    const/4 v1, 0x0

    return-object v1

    .line 55
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v1, "stages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/health/connect/internal/datatypes/SleepStageInternal;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1a

    .line 57
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/SleepStageInternal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 59
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/SleepStageInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 43
    new-instance v0, Landroid/health/connect/internal/datatypes/SleepStageInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/SleepStageInternal;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/SleepStageInternal;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/SleepStageInternal;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->setStageType(I)Landroid/health/connect/internal/datatypes/SleepStageInternal;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method static blacklist writeStagesToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/SleepStageInternal;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 70
    .local p0, "stages":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/SleepStageInternal;>;"
    if-nez p0, :cond_7

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return-void

    .line 74
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    new-instance v0, Landroid/health/connect/internal/datatypes/SleepStageInternal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/health/connect/internal/datatypes/SleepStageInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 132
    :cond_4
    instance-of v1, p1, Landroid/health/connect/internal/datatypes/SleepStageInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 133
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/internal/datatypes/SleepStageInternal;

    .line 134
    .local v1, "that":Landroid/health/connect/internal/datatypes/SleepStageInternal;
    iget-wide v3, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStartTime:J

    iget-wide v5, v1, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    iget-wide v3, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mEndTime:J

    iget-wide v5, v1, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mEndTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    iget v3, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStageType:I

    iget v4, v1, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStageType:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0
.end method

.method public blacklist getEndTime()J
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getStageType()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStageType:I

    return v0
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 109
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStartTime:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 141
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStartTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mEndTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setEndTime(J)Landroid/health/connect/internal/datatypes/SleepStageInternal;
    .registers 3
    .param p1, "endTime"    # J

    .line 103
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mEndTime:J

    .line 104
    return-object p0
.end method

.method public blacklist setStageType(I)Landroid/health/connect/internal/datatypes/SleepStageInternal;
    .registers 2
    .param p1, "stageType"    # I

    .line 125
    iput p1, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStageType:I

    .line 126
    return-object p0
.end method

.method public blacklist setStartTime(J)Landroid/health/connect/internal/datatypes/SleepStageInternal;
    .registers 3
    .param p1, "startTime"    # J

    .line 97
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStartTime:J

    .line 98
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/SleepSessionRecord$Stage;
    .registers 5

    .line 89
    new-instance v0, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;

    .line 90
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->getStageType()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;-><init>(Ljava/time/Instant;Ljava/time/Instant;I)V

    .line 89
    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 81
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget v0, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal;->mStageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return-void
.end method
