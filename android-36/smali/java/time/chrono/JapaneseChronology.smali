.class public final Ljava/time/chrono/JapaneseChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "JapaneseChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist test-api INSTANCE:Ljava/time/chrono/JapaneseChronology;

.field static final greylist-max-o JCAL:Lsun/util/calendar/LocalGregorianCalendar;

.field private static final greylist-max-o LOCALE:Ljava/util/Locale;

.field private static final whitelist serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    nop

    .line 126
    const-string v0, "japanese"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar;

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    .line 131
    const-string v0, "ja-JP-u-ca-japanese"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    .line 140
    new-instance v0, Ljava/time/chrono/JapaneseChronology;

    invoke-direct {v0}, Ljava/time/chrono/JapaneseChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 153
    return-void
.end method

.method static greylist-max-o createCalendar()Ljava/util/Calendar;
    .registers 2

    .line 134
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getJapaneseImperialInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o prolepticYearLenient(Ljava/time/chrono/JapaneseEra;I)I
    .registers 4
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yearOfEra"    # I

    .line 469
    invoke-virtual {p1}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o resolveYD(Ljava/time/chrono/JapaneseEra;ILjava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 10
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yoe"    # I
    .param p4, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/JapaneseEra;",
            "I",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 506
    .local p3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p4, v0, :cond_30

    .line 509
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljava/time/chrono/JapaneseEra;I)I

    move-result v0

    .line 510
    .local v0, "y":I
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    .line 511
    .local v1, "days":J
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(II)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v1, v2, v4}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    return-object v3

    .line 513
    .end local v0    # "y":I
    .end local v1    # "days":J
    :cond_30
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 514
    .local v0, "doy":I
    invoke-virtual {p0, p1, p2, v0}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o resolveYMD(Ljava/time/chrono/JapaneseEra;ILjava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 13
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yoe"    # I
    .param p4, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/JapaneseEra;",
            "I",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 473
    .local p3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const/4 v1, 0x1

    if-ne p4, v0, :cond_46

    .line 476
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljava/time/chrono/JapaneseEra;I)I

    move-result v0

    .line 477
    .local v0, "y":I
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    .line 478
    .local v2, "months":J
    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 479
    .local v4, "days":J
    invoke-virtual {p0, v0, v1, v1}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v6}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1

    .line 481
    .end local v0    # "y":I
    .end local v2    # "months":J
    .end local v4    # "days":J
    :cond_46
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v2, v3, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 482
    .local v0, "moy":I
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    .line 483
    .local v2, "dom":I
    sget-object v3, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne p4, v3, :cond_e1

    .line 484
    if-lt p2, v1, :cond_c8

    .line 487
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljava/time/chrono/JapaneseEra;I)I

    move-result v3

    .line 490
    .local v3, "y":I
    :try_start_80
    invoke-virtual {p0, v3, v0, v2}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v4
    :try_end_84
    .catch Ljava/time/DateTimeException; {:try_start_80 .. :try_end_84} :catch_85

    .line 493
    .local v4, "result":Ljava/time/chrono/JapaneseDate;
    goto :goto_93

    .line 491
    .end local v4    # "result":Ljava/time/chrono/JapaneseDate;
    :catch_85
    move-exception v4

    .line 492
    .local v4, "ex":Ljava/time/DateTimeException;
    invoke-virtual {p0, v3, v0, v1}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    invoke-static {}, Ljava/time/temporal/TemporalAdjusters;->lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v4, v5

    .line 497
    .local v4, "result":Ljava/time/chrono/JapaneseDate;
    :goto_93
    invoke-virtual {v4}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v5

    if-eq v5, p1, :cond_c7

    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v5}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    if-le v5, v1, :cond_c7

    if-gt p2, v1, :cond_a4

    goto :goto_c7

    .line 498
    :cond_a4
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid YearOfEra for Era: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_c7
    :goto_c7
    return-object v4

    .line 485
    .end local v3    # "y":I
    .end local v4    # "result":Ljava/time/chrono/JapaneseDate;
    :cond_c8
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid YearOfEra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_e1
    invoke-virtual {p0, p1, p2, v0, v2}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic whitelist test-api date(III)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api date(III)Ljava/time/chrono/JapaneseDate;
    .registers 6
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 233
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;
    .registers 7
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 212
    instance-of v0, p1, Ljava/time/chrono/JapaneseEra;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/time/chrono/JapaneseEra;

    .line 215
    .local v0, "jera":Ljava/time/chrono/JapaneseEra;
    invoke-static {v0, p2, p3, p4}, Ljava/time/chrono/JapaneseDate;->of(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1

    .line 213
    .end local v0    # "jera":Ljava/time/chrono/JapaneseEra;
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 310
    instance-of v0, p1, Ljava/time/chrono/JapaneseDate;

    if-eqz v0, :cond_8

    .line 311
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0

    .line 313
    :cond_8
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->dateEpochDay(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateEpochDay(J)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "epochDay"    # J

    .line 290
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 123
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseChronology;->dateNow()Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateNow()Ljava/time/chrono/JapaneseDate;
    .registers 2

    .line 295
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "clock"    # Ljava/time/Clock;

    .line 305
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 300
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
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

    .line 123
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(II)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateYearDay(II)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 278
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 260
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/JapaneseEra;

    invoke-static {v0, p2, p3}, Ljava/time/chrono/JapaneseDate;->ofYearDay(Ljava/time/chrono/JapaneseEra;II)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api eraOf(I)Ljava/time/chrono/Era;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseChronology;->eraOf(I)Ljava/time/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api eraOf(I)Ljava/time/chrono/JapaneseEra;
    .registers 3
    .param p1, "eraValue"    # I

    .line 384
    invoke-static {p1}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api eras()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 184
    const-string v0, "japanese"

    return-object v0
.end method

.method greylist-max-o getCurrentEra()Ljava/time/chrono/JapaneseEra;
    .registers 3

    .line 394
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    .line 395
    .local v0, "eras":[Ljava/time/chrono/JapaneseEra;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public whitelist test-api getId()Ljava/lang/String;
    .registers 2

    .line 167
    const-string v0, "Japanese"

    return-object v0
.end method

.method public whitelist test-api isLeapYear(J)Z
    .registers 4
    .param p1, "prolepticYear"    # J

    .line 347
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v0, p1, p2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 319
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api prolepticYear(Ljava/time/chrono/Era;I)I
    .registers 8
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 352
    instance-of v0, p1, Ljava/time/chrono/JapaneseEra;

    if-eqz v0, :cond_46

    .line 356
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/JapaneseEra;

    .line 357
    .local v0, "jera":Ljava/time/chrono/JapaneseEra;
    invoke-virtual {v0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 358
    .local v1, "gregorianYear":I
    if-ne p2, v2, :cond_19

    .line 359
    return v1

    .line 361
    :cond_19
    const v3, -0x3b9ac9ff

    if-lt v1, v3, :cond_3e

    const v3, 0x3b9ac9ff

    if-gt v1, v3, :cond_3e

    .line 362
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 363
    .local v3, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    invoke-virtual {v4, p2, v2, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 364
    sget-object v2, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 365
    return v1

    .line 368
    .end local v3    # "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_3e
    new-instance v2, Ljava/time/DateTimeException;

    const-string v3, "Invalid yearOfEra value"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    .end local v0    # "jera":Ljava/time/chrono/JapaneseEra;
    .end local v1    # "gregorianYear":I
    :cond_46
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .registers 14
    .param p1, "field"    # Ljava/time/temporal/ChronoField;

    .line 401
    sget-object v0, Ljava/time/chrono/JapaneseChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    .line 427
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 425
    :pswitch_10
    sget-object v0, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Ljava/time/chrono/JapaneseChronology;->getCurrentEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 423
    :pswitch_25
    sget-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 417
    :pswitch_34
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 418
    .local v0, "jcal":Ljava/util/Calendar;
    const/4 v1, 0x6

    .line 419
    .local v1, "fieldIndex":I
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    int-to-long v3, v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v2

    int-to-long v5, v2

    .line 420
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v2

    int-to-long v7, v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    int-to-long v9, v2

    .line 419
    invoke-static/range {v3 .. v10}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 409
    .end local v0    # "jcal":Ljava/util/Calendar;
    .end local v1    # "fieldIndex":I
    :pswitch_52
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 410
    .restart local v0    # "jcal":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseChronology;->getCurrentEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    .line 411
    .local v1, "startYear":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v3

    int-to-long v6, v3

    .line 412
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v3

    add-int/2addr v3, v2

    int-to-long v8, v3

    const v2, 0x3b9ac9ff

    sub-int/2addr v2, v1

    int-to-long v10, v2

    .line 411
    const-wide/16 v4, 0x1

    invoke-static/range {v4 .. v11}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 406
    .end local v0    # "jcal":Ljava/util/Calendar;
    .end local v1    # "startYear":I
    :pswitch_7e
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

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_52
        :pswitch_34
        :pswitch_25
        :pswitch_10
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
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

    .line 123
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/JapaneseDate;"
        }
    .end annotation

    .line 434
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method greylist-max-o resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 11
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
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

    .line 440
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 441
    .local v0, "eraLong":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 442
    .local v1, "era":Ljava/time/chrono/JapaneseEra;
    if-eqz v0, :cond_1f

    .line 443
    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/time/chrono/JapaneseChronology;->eraOf(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    .line 445
    :cond_1f
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 446
    .local v2, "yoeLong":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 447
    .local v3, "yoe":I
    if-eqz v2, :cond_3a

    .line 448
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 451
    :cond_3a
    if-nez v1, :cond_57

    if-eqz v2, :cond_57

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq p2, v4, :cond_57

    .line 452
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v4

    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v4, v5

    .line 455
    :cond_57
    if-eqz v2, :cond_7d

    if-eqz v1, :cond_7d

    .line 456
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 457
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 458
    invoke-direct {p0, v1, v3, p1, p2}, Ljava/time/chrono/JapaneseChronology;->resolveYMD(Ljava/time/chrono/JapaneseEra;ILjava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 461
    :cond_70
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 462
    invoke-direct {p0, v1, v3, p1, p2}, Ljava/time/chrono/JapaneseChronology;->resolveYD(Ljava/time/chrono/JapaneseEra;ILjava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 465
    :cond_7d
    const/4 v4, 0x0

    return-object v4
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 532
    invoke-super {p0}, Ljava/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
