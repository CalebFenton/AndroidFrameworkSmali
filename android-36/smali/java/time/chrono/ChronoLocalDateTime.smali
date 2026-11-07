.class public interface abstract Ljava/time/chrono/ChronoLocalDateTime;
.super Ljava/lang/Object;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Ljava/time/chrono/ChronoLocalDateTime<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;"
        }
    .end annotation

    .line 172
    instance-of v0, p0, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v0, :cond_8

    .line 173
    move-object v0, p0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTime;

    return-object v0

    .line 175
    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 177
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_1e

    .line 180
    invoke-interface {v0, p0}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    return-object v1

    .line 178
    :cond_1e
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic blacklist lambda$timeLineOrder$b9959cb5$1(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;)I
    .registers 7
    .param p0, "dateTime1"    # Ljava/time/chrono/ChronoLocalDateTime;
    .param p1, "dateTime2"    # Ljava/time/chrono/ChronoLocalDateTime;

    .line 141
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 142
    .local v0, "cmp":I
    if-nez v0, :cond_2a

    .line 143
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 145
    :cond_2a
    return v0
.end method

.method public static whitelist test-api timeLineOrder()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/time/chrono/ChronoLocalDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/chrono/ChronoLocalDateTime$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 385
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    .line 386
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 387
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    .line 385
    return-object v0
.end method

.method public abstract whitelist test-api atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
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

    .line 121
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)I"
        }
    .end annotation

    .line 507
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    .line 508
    .local v0, "cmp":I
    if-nez v0, :cond_28

    .line 509
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    .line 510
    if-nez v0, :cond_28

    .line 511
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v0

    .line 514
    :cond_28
    return v0
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 405
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 193
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public whitelist test-api isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 532
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 533
    .local v0, "thisEpDay":J
    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    .line 534
    .local v2, "otherEpDay":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2f

    cmp-long v4, v0, v2

    if-nez v4, :cond_2d

    .line 535
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v4, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v4, 0x1

    .line 534
    :goto_30
    return v4
.end method

.method public whitelist test-api isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 553
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 554
    .local v0, "thisEpDay":J
    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    .line 555
    .local v2, "otherEpDay":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2f

    cmp-long v4, v0, v2

    if-nez v4, :cond_2d

    .line 556
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v4, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v4, 0x1

    .line 555
    :goto_30
    return v4
.end method

.method public whitelist test-api isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 575
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 576
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 575
    :goto_2b
    return v0
.end method

.method public abstract whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 258
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 259
    sget-object v0, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 261
    :cond_d
    if-eqz p1, :cond_16

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 6
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 319
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 4
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 309
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 4
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 291
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 344
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_37

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_37

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_13

    goto :goto_37

    .line 346
    :cond_13
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    .line 347
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 348
    :cond_1e
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_29

    .line 349
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    .line 350
    :cond_29
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_32

    .line 351
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 355
    :cond_32
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 345
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toEpochSecond(Ljava/time/ZoneOffset;)J
    .registers 8
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 471
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    const-string v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 473
    .local v0, "epochDay":J
    const-wide/32 v2, 0x15180

    mul-long/2addr v2, v0

    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 474
    .local v2, "secs":J
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 475
    return-wide v2
.end method

.method public whitelist test-api toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;
    .registers 6
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 453
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api toLocalTime()Ljava/time/LocalTime;
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 4
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 273
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method
