.class public final Landroid/health/connect/datatypes/ExerciseLap;
.super Ljava/lang/Object;
.source "ExerciseLap.java"

# interfaces
.implements Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/ExerciseLap$Builder;
    }
.end annotation


# static fields
.field private static final blacklist MAX_LAP_LENGTH_METRES:I = 0xf4240


# instance fields
.field private final blacklist mInterval:Landroid/health/connect/datatypes/TimeInterval;

.field private final blacklist mLength:Landroid/health/connect/datatypes/units/Length;


# direct methods
.method private constructor blacklist <init>(Landroid/health/connect/datatypes/TimeInterval;Landroid/health/connect/datatypes/units/Length;Z)V
    .registers 7
    .param p1, "interval"    # Landroid/health/connect/datatypes/TimeInterval;
    .param p2, "length"    # Landroid/health/connect/datatypes/units/Length;
    .param p3, "skipValidation"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    if-nez p3, :cond_1d

    .line 47
    nop

    .line 49
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v0

    .line 50
    const-wide v1, 0x412e848000000000L    # 1000000.0

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    .line 47
    const-string v2, "length"

    invoke-static {p2, v0, v1, v2}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRangeIfExists(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/String;)V

    .line 53
    :cond_1d
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseLap;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    .line 54
    iput-object p2, p0, Landroid/health/connect/datatypes/ExerciseLap;->mLength:Landroid/health/connect/datatypes/units/Length;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/TimeInterval;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/ExerciseLap-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/datatypes/ExerciseLap;-><init>(Landroid/health/connect/datatypes/TimeInterval;Landroid/health/connect/datatypes/units/Length;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 95
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExerciseLap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 96
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExerciseLap;

    .line 97
    .local v1, "that":Landroid/health/connect/datatypes/ExerciseLap;
    iget-object v3, p0, Landroid/health/connect/datatypes/ExerciseLap;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    iget-object v4, v1, Landroid/health/connect/datatypes/ExerciseLap;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 98
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseLap;->getLength()Landroid/health/connect/datatypes/units/Length;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseLap;->getLength()Landroid/health/connect/datatypes/units/Length;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    .line 97
    :goto_27
    return v0
.end method

.method public whitelist getEndTime()Ljava/time/Instant;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseLap;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInterval()Landroid/health/connect/datatypes/TimeInterval;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseLap;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    return-object v0
.end method

.method public whitelist getLength()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseLap;->mLength:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public whitelist getStartTime()Ljava/time/Instant;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseLap;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseLap;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseLap;->getLength()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toExerciseLapInternal()Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    .registers 4

    .line 109
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseLap;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseLap;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    move-result-object v0

    .line 113
    .local v0, "internalLap":Landroid/health/connect/internal/datatypes/ExerciseLapInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseLap;->getLength()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 114
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseLap;->getLength()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->setLength(D)Landroid/health/connect/internal/datatypes/ExerciseLapInternal;

    .line 117
    :cond_2e
    return-object v0
.end method
