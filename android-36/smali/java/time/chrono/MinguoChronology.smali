.class public final Ljava/time/chrono/MinguoChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "MinguoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist test-api INSTANCE:Ljava/time/chrono/MinguoChronology;

.field static final greylist-max-o YEARS_DIFFERENCE:I = 0x777

.field private static final whitelist serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Ljava/time/chrono/MinguoChronology;

    invoke-direct {v0}, Ljava/time/chrono/MinguoChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/MinguoChronology;->INSTANCE:Ljava/time/chrono/MinguoChronology;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 128
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/MinguoChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/MinguoDate;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/time/chrono/MinguoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api date(III)Ljava/time/chrono/MinguoDate;
    .registers 6
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 192
    new-instance v0, Ljava/time/chrono/MinguoDate;

    add-int/lit16 v1, p1, 0x777

    invoke-static {v1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/MinguoDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/MinguoDate;
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 177
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/MinguoChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/MinguoDate;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 254
    instance-of v0, p1, Ljava/time/chrono/MinguoDate;

    if-eqz v0, :cond_8

    .line 255
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/MinguoDate;

    return-object v0

    .line 257
    :cond_8
    new-instance v0, Ljava/time/chrono/MinguoDate;

    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/MinguoDate;-><init>(Ljava/time/LocalDate;)V

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/MinguoChronology;->dateEpochDay(J)Ljava/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateEpochDay(J)Ljava/time/chrono/MinguoDate;
    .registers 5
    .param p1, "epochDay"    # J

    .line 234
    new-instance v0, Ljava/time/chrono/MinguoDate;

    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/MinguoDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 107
    invoke-virtual {p0}, Ljava/time/chrono/MinguoChronology;->dateNow()Ljava/time/chrono/MinguoDate;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/time/chrono/MinguoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/MinguoDate;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/time/chrono/MinguoChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateNow()Ljava/time/chrono/MinguoDate;
    .registers 2

    .line 239
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/MinguoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/MinguoDate;
    .registers 3
    .param p1, "clock"    # Ljava/time/Clock;

    .line 249
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/MinguoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/MinguoDate;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 244
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/MinguoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/MinguoDate;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/MinguoChronology;->dateYearDay(II)Ljava/time/chrono/MinguoDate;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/MinguoChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateYearDay(II)Ljava/time/chrono/MinguoDate;
    .registers 5
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 222
    new-instance v0, Ljava/time/chrono/MinguoDate;

    add-int/lit16 v1, p1, 0x777

    invoke-static {v1, p2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/MinguoDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/MinguoDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 208
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/MinguoChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljava/time/chrono/MinguoChronology;->dateYearDay(II)Ljava/time/chrono/MinguoDate;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/time/chrono/MinguoChronology;->eraOf(I)Ljava/time/chrono/MinguoEra;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api eraOf(I)Ljava/time/chrono/MinguoEra;
    .registers 3
    .param p1, "eraValue"    # I

    .line 304
    invoke-static {p1}, Ljava/time/chrono/MinguoEra;->of(I)Ljava/time/chrono/MinguoEra;

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

    .line 309
    invoke-static {}, Ljava/time/chrono/MinguoEra;->values()[Ljava/time/chrono/MinguoEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 159
    const-string v0, "roc"

    return-object v0
.end method

.method public whitelist test-api getId()Ljava/lang/String;
    .registers 2

    .line 142
    const-string v0, "Minguo"

    return-object v0
.end method

.method public whitelist test-api isLeapYear(J)Z
    .registers 6
    .param p1, "prolepticYear"    # J

    .line 291
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    const-wide/16 v1, 0x777

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

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
            "Ljava/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api prolepticYear(Ljava/time/chrono/Era;I)I
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 296
    instance-of v0, p1, Ljava/time/chrono/MinguoEra;

    if-eqz v0, :cond_d

    .line 299
    sget-object v0, Ljava/time/chrono/MinguoEra;->ROC:Ljava/time/chrono/MinguoEra;

    if-ne p1, v0, :cond_a

    move v0, p2

    goto :goto_c

    :cond_a
    rsub-int/lit8 v0, p2, 0x1

    :goto_c
    return v0

    .line 297
    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be MinguoEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .registers 13
    .param p1, "field"    # Ljava/time/temporal/ChronoField;

    .line 315
    sget-object v0, Ljava/time/chrono/MinguoChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x777

    packed-switch v0, :pswitch_data_5a

    .line 329
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 325
    :pswitch_12
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 326
    .local v0, "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 321
    .end local v0    # "range":Ljava/time/temporal/ValueRange;
    :pswitch_27
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 322
    .restart local v0    # "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v3

    sub-long v7, v3, v1

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    neg-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long v9, v3, v1

    invoke-static/range {v5 .. v10}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 317
    .end local v0    # "range":Ljava/time/temporal/ValueRange;
    :pswitch_42
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 318
    .restart local v0    # "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    const-wide/16 v3, 0x5994

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_27
        :pswitch_12
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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/MinguoChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/MinguoDate;
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
            "Ljava/time/chrono/MinguoDate;"
        }
    .end annotation

    .line 335
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/MinguoDate;

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 353
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
            "Ljava/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .line 275
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
            "Ljava/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
