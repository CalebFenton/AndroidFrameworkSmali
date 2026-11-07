.class public final Landroid/health/connect/datatypes/TimeInterval;
.super Ljava/lang/Object;
.source "TimeInterval.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/health/connect/datatypes/TimeInterval;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private final blacklist mStartTime:Ljava/time/Instant;


# direct methods
.method public constructor blacklist <init>(Ljava/time/Instant;Ljava/time/Instant;)V
    .registers 5
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p2, p1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 60
    iput-object p1, p0, Landroid/health/connect/datatypes/TimeInterval;->mStartTime:Ljava/time/Instant;

    .line 61
    iput-object p2, p0, Landroid/health/connect/datatypes/TimeInterval;->mEndTime:Ljava/time/Instant;

    .line 62
    return-void

    .line 58
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End time must be after start time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist compareTo(Landroid/health/connect/datatypes/TimeInterval;)I
    .registers 4
    .param p1, "interval"    # Landroid/health/connect/datatypes/TimeInterval;

    .line 35
    invoke-virtual {p0}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 36
    invoke-virtual {p0}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    return v0

    .line 38
    :cond_1b
    invoke-virtual {p0}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    check-cast p1, Landroid/health/connect/datatypes/TimeInterval;

    invoke-virtual {p0, p1}, Landroid/health/connect/datatypes/TimeInterval;->compareTo(Landroid/health/connect/datatypes/TimeInterval;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 83
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/TimeInterval;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 84
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/TimeInterval;

    .line 85
    .local v1, "that":Landroid/health/connect/datatypes/TimeInterval;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_36

    .line 86
    invoke-virtual {p0}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 85
    :goto_37
    return v0
.end method

.method public blacklist getEndTime()Ljava/time/Instant;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/health/connect/datatypes/TimeInterval;->mEndTime:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getStartTime()Ljava/time/Instant;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/health/connect/datatypes/TimeInterval;->mStartTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 91
    invoke-virtual {p0}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
