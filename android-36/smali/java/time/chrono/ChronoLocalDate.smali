.class public interface abstract Ljava/time/chrono/ChronoLocalDate;
.super Ljava/lang/Object;
.source "ChronoLocalDate.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 288
    instance-of v0, p0, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_8

    .line 289
    move-object v0, p0

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    return-object v0

    .line 291
    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 293
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_1e

    .line 296
    invoke-interface {v0, p0}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 294
    :cond_1e
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoLocalDate from TemporalAccessor: "

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

.method public static synthetic blacklist lambda$timeLineOrder$493d4938$1(Ljava/time/chrono/ChronoLocalDate;Ljava/time/chrono/ChronoLocalDate;)I
    .registers 6
    .param p0, "date1"    # Ljava/time/chrono/ChronoLocalDate;
    .param p1, "date2"    # Ljava/time/chrono/ChronoLocalDate;

    .line 261
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api timeLineOrder()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/time/chrono/ChronoLocalDate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/chrono/ChronoLocalDate$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 551
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;"
        }
    .end annotation

    .line 657
    invoke-static {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->of(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
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

    .line 241
    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/chrono/ChronoLocalDate;)I
    .registers 6
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 707
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 708
    .local v0, "cmp":I
    if-nez v0, :cond_1a

    .line 709
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v0

    .line 711
    :cond_1a
    return v0
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 641
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getChronology()Ljava/time/chrono/Chronology;
.end method

.method public whitelist test-api getEra()Ljava/time/chrono/Era;
    .registers 3

    .line 326
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->eraOf(I)Ljava/time/chrono/Era;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public whitelist test-api isAfter(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 729
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 747
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isEqual(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 765
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isLeapYear()Z
    .registers 4

    .line 341
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/time/chrono/Chronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 387
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    .line 388
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    return v0

    .line 390
    :cond_9
    if-eqz p1, :cond_13

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 413
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_9

    .line 414
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    return v0

    .line 416
    :cond_9
    if-eqz p1, :cond_13

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public abstract whitelist test-api lengthOfMonth()I
.end method

.method public whitelist test-api lengthOfYear()I
    .registers 2

    .line 363
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 486
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 475
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 241
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 241
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 7
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 462
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-nez v0, :cond_11

    .line 465
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 463
    :cond_11
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 452
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 241
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 241
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 511
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_34

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_34

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_14

    goto :goto_34

    .line 513
    :cond_14
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1b

    .line 514
    return-object v1

    .line 515
    :cond_1b
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_26

    .line 516
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    .line 517
    :cond_26
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2f

    .line 518
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 522
    :cond_2f
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 512
    :cond_34
    :goto_34
    return-object v1
.end method

.method public whitelist test-api toEpochDay()J
    .registers 3

    .line 673
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public abstract whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
.end method

.method public abstract whitelist test-api until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 428
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 439
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_11

    .line 442
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 440
    :cond_11
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 241
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 241
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method
