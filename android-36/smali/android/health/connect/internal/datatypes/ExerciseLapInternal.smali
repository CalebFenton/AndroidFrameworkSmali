.class public Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
.super Ljava/lang/Object;
.source "ExerciseLapInternal.java"


# instance fields
.field private blacklist mEndTime:J

.field private blacklist mLength:D

.field private blacklist mStartTime:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getExternalLaps(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseLapInternal;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseLap;",
            ">;"
        }
    .end annotation

    .line 64
    .local p0, "internalLaps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExerciseLapInternal;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v0, "externalLaps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseLap;>;"
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseLapInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 66
    return-object v0
.end method

.method static synthetic blacklist lambda$getExternalLaps$0(Ljava/util/List;Landroid/health/connect/internal/datatypes/ExerciseLapInternal;)V
    .registers 3
    .param p0, "externalLaps"    # Ljava/util/List;
    .param p1, "lap"    # Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    .line 65
    invoke-virtual {p1}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->toExternalRecord()Landroid/health/connect/datatypes/ExerciseLap;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static blacklist populateLapsFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseLapInternal;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "lapsSize":I
    if-nez v0, :cond_8

    .line 73
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v1, "laps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/health/connect/internal/datatypes/ExerciseLapInternal;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1a

    .line 78
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 80
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 45
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;-><init>()V

    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->setLength(D)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method static blacklist writeLapsToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseLapInternal;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 52
    .local p0, "laps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExerciseLapInternal;>;"
    if-nez p0, :cond_7

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void

    .line 57
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    .line 59
    .local v1, "lap":Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    invoke-virtual {v1, p1}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->writeToParcel(Landroid/os/Parcel;)V

    .line 60
    .end local v1    # "lap":Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    goto :goto_12

    .line 61
    :cond_22
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 140
    :cond_4
    instance-of v1, p1, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 141
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    .line 142
    .local v1, "that":Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    iget-wide v3, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mStartTime:J

    iget-wide v5, v1, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    iget-wide v3, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mEndTime:J

    iget-wide v5, v1, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mEndTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    iget-wide v3, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mLength:D

    iget-wide v5, v1, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mLength:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public blacklist getEndTime()J
    .registers 3

    .line 134
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getLength()D
    .registers 3

    .line 106
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mLength:D

    return-wide v0
.end method

.method public blacklist getStartTime()J
    .registers 3

    .line 129
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mStartTime:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 149
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mStartTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mEndTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mLength:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setEndTime(J)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    .registers 3
    .param p1, "endTime"    # J

    .line 123
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mEndTime:J

    .line 124
    return-object p0
.end method

.method public blacklist setLength(D)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    .registers 3
    .param p1, "lengthInMeters"    # D

    .line 111
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mLength:D

    .line 112
    return-object p0
.end method

.method public blacklist setStartTime(J)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    .registers 3
    .param p1, "startTime"    # J

    .line 117
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mStartTime:J

    .line 118
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/ExerciseLap;
    .registers 6

    .line 94
    new-instance v0, Landroid/health/connect/datatypes/ExerciseLap$Builder;

    .line 96
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/health/connect/datatypes/ExerciseLap$Builder;-><init>(Ljava/time/Instant;Ljava/time/Instant;)V

    .line 98
    .local v0, "builder":Landroid/health/connect/datatypes/ExerciseLap$Builder;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->getLength()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2a

    .line 99
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->getLength()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseLap$Builder;->setLength(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseLap$Builder;

    .line 101
    :cond_2a
    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseLap$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/ExerciseLap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 86
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->mLength:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 89
    return-void
.end method
