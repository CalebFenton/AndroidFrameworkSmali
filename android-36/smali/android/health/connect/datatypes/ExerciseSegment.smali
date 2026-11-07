.class public final Landroid/health/connect/datatypes/ExerciseSegment;
.super Ljava/lang/Object;
.source "ExerciseSegment.java"

# interfaces
.implements Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/ExerciseSegment$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mInterval:Landroid/health/connect/datatypes/TimeInterval;

.field private final blacklist mRepetitionsCount:I

.field private final blacklist mSegmentType:I


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/TimeInterval;IIZ)V
    .registers 8
    .param p1, "interval"    # Landroid/health/connect/datatypes/TimeInterval;
    .param p2, "segmentType"    # I
    .param p3, "repetitionsCount"    # I
    .param p4, "skipValidation"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    .line 48
    iput p2, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mSegmentType:I

    .line 50
    if-nez p4, :cond_12

    .line 51
    int-to-double v0, p3

    const-string v2, "repetitionsCount"

    invoke-static {v0, v1, v2}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireNonNegative(DLjava/lang/String;)V

    .line 53
    :cond_12
    iput p3, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mRepetitionsCount:I

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/TimeInterval;IIZLandroid/health/connect/datatypes/ExerciseSegment-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/health/connect/datatypes/ExerciseSegment;-><init>(Landroid/health/connect/datatypes/TimeInterval;IIZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExerciseSegment;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 98
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExerciseSegment;

    .line 99
    .local v1, "that":Landroid/health/connect/datatypes/ExerciseSegment;
    iget v3, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mSegmentType:I

    iget v4, v1, Landroid/health/connect/datatypes/ExerciseSegment;->mSegmentType:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mRepetitionsCount:I

    iget v4, v1, Landroid/health/connect/datatypes/ExerciseSegment;->mRepetitionsCount:I

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    iget-object v4, v1, Landroid/health/connect/datatypes/ExerciseSegment;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    .line 101
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 99
    :goto_25
    return v0
.end method

.method public whitelist getEndTime()Ljava/time/Instant;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInterval()Landroid/health/connect/datatypes/TimeInterval;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    return-object v0
.end method

.method public whitelist getRepetitionsCount()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mRepetitionsCount:I

    return v0
.end method

.method public whitelist getSegmentType()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mSegmentType:I

    return v0
.end method

.method public whitelist getStartTime()Ljava/time/Instant;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 106
    iget v0, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mSegmentType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mRepetitionsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/health/connect/datatypes/ExerciseSegment;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toSegmentInternal()Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;
    .registers 4

    .line 111
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;-><init>()V

    .line 112
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSegment;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSegment;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSegment;->getSegmentType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->setSegmentType(I)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseSegment;->getRepetitionsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->setRepetitionsCount(I)Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    move-result-object v0

    .line 111
    return-object v0
.end method
