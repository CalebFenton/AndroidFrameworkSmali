.class public interface abstract Ljava/time/chrono/Chronology;
.super Ljava/lang/Object;
.source "Chronology.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/time/chrono/Chronology;",
        ">;"
    }
.end annotation


# direct methods
.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 183
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 185
    .local v0, "obj":Ljava/time/chrono/Chronology;
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/Chronology;

    return-object v1
.end method

.method public static whitelist test-api getAvailableChronologies()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 255
    invoke-static {p0}, Ljava/time/chrono/AbstractChronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 230
    invoke-static {p0}, Ljava/time/chrono/AbstractChronology;->ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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

    .line 163
    check-cast p1, Ljava/time/chrono/Chronology;

    invoke-interface {p0, p1}, Ljava/time/chrono/Chronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result p1

    return p1
.end method

.method public abstract whitelist test-api compareTo(Ljava/time/chrono/Chronology;)I
.end method

.method public abstract whitelist test-api date(III)Ljava/time/chrono/ChronoLocalDate;
.end method

.method public whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 317
    invoke-interface {p0, p1, p2}, Ljava/time/chrono/Chronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-interface {p0, v0, p3, p4}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
.end method

.method public abstract whitelist test-api dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
.end method

.method public whitelist test-api dateNow()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 391
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/chrono/Chronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "clock"    # Ljava/time/Clock;

    .line 429
    const-string v0, "clock"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 411
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/chrono/Chronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
.end method

.method public whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 348
    invoke-interface {p0, p1, p2}, Ljava/time/chrono/Chronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-interface {p0, v0, p3}, Ljava/time/chrono/Chronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api epochSecond(IIIIIILjava/time/ZoneOffset;)J
    .registers 14
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 741
    const-string v0, "zoneOffset"

    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 742
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 743
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 744
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 745
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    .line 746
    .local v0, "daysInSec":J
    mul-int/lit8 v2, p4, 0x3c

    add-int/2addr v2, p5

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, p6

    int-to-long v2, v2

    .line 747
    .local v2, "timeinSec":J
    invoke-virtual {p7}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, v2, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public whitelist test-api epochSecond(Ljava/time/chrono/Era;IIIIIILjava/time/ZoneOffset;)J
    .registers 20
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I
    .param p5, "hour"    # I
    .param p6, "minute"    # I
    .param p7, "second"    # I
    .param p8, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 770
    const-string v0, "era"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 771
    invoke-interface/range {p0 .. p2}, Ljava/time/chrono/Chronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v2

    move-object v1, p0

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v1 .. v8}, Ljava/time/chrono/Chronology;->epochSecond(IIIIIILjava/time/ZoneOffset;)J

    move-result-wide v9

    return-wide v9
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api eraOf(I)Ljava/time/chrono/Era;
.end method

.method public abstract whitelist test-api eras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getCalendarType()Ljava/lang/String;
.end method

.method public whitelist test-api getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 646
    new-instance v0, Ljava/time/chrono/Chronology$1;

    invoke-direct {v0, p0}, Ljava/time/chrono/Chronology$1;-><init>(Ljava/time/chrono/Chronology;)V

    .line 664
    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist test-api getId()Ljava/lang/String;
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract whitelist test-api isLeapYear(J)Z
.end method

.method public whitelist test-api localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation

    .line 477
    :try_start_0
    invoke-interface {p0, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-static {p1}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0
    :try_end_c
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 478
    :catch_d
    move-exception v0

    .line 479
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api period(III)Ljava/time/chrono/ChronoPeriod;
    .registers 5
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .line 717
    new-instance v0, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v0
.end method

.method public abstract whitelist test-api prolepticYear(Ljava/time/chrono/Era;I)I
.end method

.method public abstract whitelist test-api range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
.end method

.method public abstract whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation

    .line 534
    invoke-static {p0, p1, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljava/time/chrono/Chronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation

    .line 509
    :try_start_0
    invoke-static {p1}, Ljava/time/ZoneId;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v0
    :try_end_4
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_4} :catch_1c

    .line 511
    .local v0, "zone":Ljava/time/ZoneId;
    :try_start_4
    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v1

    .line 512
    .local v1, "instant":Ljava/time/Instant;
    invoke-interface {p0, v1, v0}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2
    :try_end_c
    .catch Ljava/time/DateTimeException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v2

    .line 514
    .end local v1    # "instant":Ljava/time/Instant;
    :catch_d
    move-exception v1

    .line 515
    .local v1, "ex1":Ljava/time/DateTimeException;
    :try_start_e
    invoke-interface {p0, p1}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    .line 516
    .local v2, "cldt":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v3
    :try_end_1b
    .catch Ljava/time/DateTimeException; {:try_start_e .. :try_end_1b} :catch_1c

    return-object v3

    .line 518
    .end local v0    # "zone":Ljava/time/ZoneId;
    .end local v1    # "ex1":Ljava/time/DateTimeException;
    .end local v2    # "cldt":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    :catch_1c
    move-exception v0

    .line 519
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
