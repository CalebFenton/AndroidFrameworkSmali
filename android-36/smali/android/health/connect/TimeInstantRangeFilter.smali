.class public final Landroid/health/connect/TimeInstantRangeFilter;
.super Ljava/lang/Object;
.source "TimeInstantRangeFilter.java"

# interfaces
.implements Landroid/health/connect/TimeRangeFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/TimeInstantRangeFilter$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private final blacklist mStartTime:Ljava/time/Instant;


# direct methods
.method private constructor blacklist <init>(Ljava/time/Instant;Ljava/time/Instant;)V
    .registers 7
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_10

    if-eqz p2, :cond_8

    goto :goto_10

    .line 45
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both start time and end time cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_10
    :goto_10
    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 48
    invoke-virtual {p2, p1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 49
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end time needs to be after start time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_23
    :goto_23
    if-eqz p1, :cond_27

    move-object v0, p1

    goto :goto_29

    :cond_27
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    :goto_29
    iput-object v0, p0, Landroid/health/connect/TimeInstantRangeFilter;->mStartTime:Ljava/time/Instant;

    .line 53
    if-eqz p2, :cond_2f

    move-object v0, p2

    goto :goto_3b

    :cond_2f
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    :goto_3b
    iput-object v0, p0, Landroid/health/connect/TimeInstantRangeFilter;->mEndTime:Ljava/time/Instant;

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/time/Instant;Ljava/time/Instant;Landroid/health/connect/TimeInstantRangeFilter-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/TimeInstantRangeFilter;-><init>(Ljava/time/Instant;Ljava/time/Instant;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 83
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 85
    :cond_10
    iget-object v1, p0, Landroid/health/connect/TimeInstantRangeFilter;->mStartTime:Ljava/time/Instant;

    move-object v2, p1

    check-cast v2, Landroid/health/connect/TimeInstantRangeFilter;

    iget-object v2, v2, Landroid/health/connect/TimeInstantRangeFilter;->mStartTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 86
    :cond_1e
    iget-object v1, p0, Landroid/health/connect/TimeInstantRangeFilter;->mEndTime:Ljava/time/Instant;

    move-object v2, p1

    check-cast v2, Landroid/health/connect/TimeInstantRangeFilter;

    iget-object v2, v2, Landroid/health/connect/TimeInstantRangeFilter;->mEndTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v3

    .line 88
    :cond_2c
    return v0
.end method

.method public whitelist getEndTime()Ljava/time/Instant;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/health/connect/TimeInstantRangeFilter;->mEndTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getStartTime()Ljava/time/Instant;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/health/connect/TimeInstantRangeFilter;->mStartTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/health/connect/TimeInstantRangeFilter;->mStartTime:Ljava/time/Instant;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_10

    :cond_a
    iget-object v2, p0, Landroid/health/connect/TimeInstantRangeFilter;->mStartTime:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v1, v2

    .line 95
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/health/connect/TimeInstantRangeFilter;->mEndTime:Ljava/time/Instant;

    if-nez v2, :cond_18

    goto :goto_1e

    :cond_18
    iget-object v2, p0, Landroid/health/connect/TimeInstantRangeFilter;->mEndTime:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1e
    add-int/2addr v0, v3

    .line 96
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist isBounded()Z
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/health/connect/TimeInstantRangeFilter;->mStartTime:Ljava/time/Instant;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/health/connect/TimeInstantRangeFilter;->mEndTime:Ljava/time/Instant;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
