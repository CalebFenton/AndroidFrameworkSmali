.class public final Landroid/health/connect/LocalTimeRangeFilter;
.super Ljava/lang/Object;
.source "LocalTimeRangeFilter.java"

# interfaces
.implements Landroid/health/connect/TimeRangeFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/LocalTimeRangeFilter$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mLocalEndTime:Ljava/time/LocalDateTime;

.field private final blacklist mLocalStartTime:Ljava/time/LocalDateTime;


# direct methods
.method private constructor blacklist <init>(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V
    .registers 7
    .param p1, "localStartTime"    # Ljava/time/LocalDateTime;
    .param p2, "localEndTime"    # Ljava/time/LocalDateTime;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_10

    if-eqz p2, :cond_8

    goto :goto_10

    .line 42
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both start time and end time cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_10
    :goto_10
    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 45
    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 46
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end time needs to be after start time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_23
    :goto_23
    nop

    .line 51
    if-eqz p1, :cond_28

    .line 52
    move-object v0, p1

    goto :goto_30

    .line 53
    :cond_28
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    sget-object v1, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_30
    iput-object v0, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 54
    nop

    .line 55
    if-eqz p2, :cond_37

    .line 56
    move-object v0, p2

    goto :goto_49

    .line 58
    :cond_37
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    .line 57
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_49
    iput-object v0, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Landroid/health/connect/LocalTimeRangeFilter-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/LocalTimeRangeFilter;-><init>(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 88
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 90
    :cond_10
    iget-object v1, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalStartTime:Ljava/time/LocalDateTime;

    move-object v2, p1

    check-cast v2, Landroid/health/connect/LocalTimeRangeFilter;

    iget-object v2, v2, Landroid/health/connect/LocalTimeRangeFilter;->mLocalStartTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 91
    :cond_1e
    iget-object v1, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalEndTime:Ljava/time/LocalDateTime;

    move-object v2, p1

    check-cast v2, Landroid/health/connect/LocalTimeRangeFilter;

    iget-object v2, v2, Landroid/health/connect/LocalTimeRangeFilter;->mLocalEndTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v3

    .line 93
    :cond_2c
    return v0
.end method

.method public whitelist getEndTime()Ljava/time/LocalDateTime;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalEndTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public whitelist getStartTime()Ljava/time/LocalDateTime;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalStartTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalStartTime:Ljava/time/LocalDateTime;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_10

    :cond_a
    iget-object v2, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalStartTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v1, v2

    .line 100
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalEndTime:Ljava/time/LocalDateTime;

    if-nez v2, :cond_18

    goto :goto_1e

    :cond_18
    iget-object v2, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalEndTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v3

    :goto_1e
    add-int/2addr v0, v3

    .line 101
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist isBounded()Z
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalStartTime:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/health/connect/LocalTimeRangeFilter;->mLocalEndTime:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
