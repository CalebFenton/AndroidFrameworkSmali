.class public final Landroid/health/connect/TimeRangeFilterHelper;
.super Ljava/lang/Object;
.source "TimeRangeFilterHelper.java"


# static fields
.field private static final blacklist LOCAL_TIME_ZERO_OFFSET:Ljava/time/ZoneOffset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    sput-object v0, Landroid/health/connect/TimeRangeFilterHelper;->LOCAL_TIME_ZERO_OFFSET:Ljava/time/ZoneOffset;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFilterEndTimeMillis(Landroid/health/connect/TimeRangeFilter;)J
    .registers 3
    .param p0, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;

    .line 62
    invoke-static {p0}, Landroid/health/connect/TimeRangeFilterHelper;->isLocalTimeFilter(Landroid/health/connect/TimeRangeFilter;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 63
    move-object v0, p0

    check-cast v0, Landroid/health/connect/LocalTimeRangeFilter;

    invoke-virtual {v0}, Landroid/health/connect/LocalTimeRangeFilter;->getEndTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getMillisOfLocalTime(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    return-wide v0

    .line 64
    :cond_12
    instance-of v0, p0, Landroid/health/connect/TimeInstantRangeFilter;

    if-eqz v0, :cond_22

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/health/connect/TimeInstantRangeFilter;

    invoke-virtual {v0}, Landroid/health/connect/TimeInstantRangeFilter;->getEndTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0

    .line 67
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time filter object. Object should be either TimeInstantRangeFilter or LocalTimeRangeFilter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getFilterStartTimeMillis(Landroid/health/connect/TimeRangeFilter;)J
    .registers 3
    .param p0, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;

    .line 45
    invoke-static {p0}, Landroid/health/connect/TimeRangeFilterHelper;->isLocalTimeFilter(Landroid/health/connect/TimeRangeFilter;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 46
    move-object v0, p0

    check-cast v0, Landroid/health/connect/LocalTimeRangeFilter;

    invoke-virtual {v0}, Landroid/health/connect/LocalTimeRangeFilter;->getStartTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/TimeRangeFilterHelper;->getMillisOfLocalTime(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    return-wide v0

    .line 47
    :cond_12
    instance-of v0, p0, Landroid/health/connect/TimeInstantRangeFilter;

    if-eqz v0, :cond_22

    .line 48
    move-object v0, p0

    check-cast v0, Landroid/health/connect/TimeInstantRangeFilter;

    invoke-virtual {v0}, Landroid/health/connect/TimeInstantRangeFilter;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0

    .line 50
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time filter object. Object should be either TimeInstantRangeFilter or LocalTimeRangeFilter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstantFromLocalTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/Instant;
    .registers 3
    .param p0, "time"    # Ljava/time/LocalDateTime;
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 88
    if-eqz p1, :cond_7

    .line 89
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    goto :goto_17

    .line 90
    :cond_7
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    .line 88
    :goto_17
    return-object v0
.end method

.method public static blacklist getLocalTimeFromMillis(Ljava/lang/Long;)Ljava/time/LocalDateTime;
    .registers 3
    .param p0, "localDateTimeMillis"    # Ljava/lang/Long;

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Landroid/health/connect/TimeRangeFilterHelper;->LOCAL_TIME_ZERO_OFFSET:Ljava/time/ZoneOffset;

    .line 74
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMillisOfLocalTime(Ljava/time/LocalDateTime;)J
    .registers 3
    .param p0, "time"    # Ljava/time/LocalDateTime;

    .line 79
    sget-object v0, Landroid/health/connect/TimeRangeFilterHelper;->LOCAL_TIME_ZERO_OFFSET:Ljava/time/ZoneOffset;

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist isLocalTimeFilter(Landroid/health/connect/TimeRangeFilter;)Z
    .registers 2
    .param p0, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;

    .line 36
    instance-of v0, p0, Landroid/health/connect/LocalTimeRangeFilter;

    return v0
.end method
