.class final enum Ljava/time/temporal/IsoFields$Field$1;
.super Ljava/time/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
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

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/time/temporal/IsoFields-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/time/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 11
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 345
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    .line 346
    .local v0, "curValue":J
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 347
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long v5, p2, v0

    add-long/2addr v3, v5

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 300
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 9
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 333
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 336
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 337
    .local v0, "doy":I
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 338
    .local v1, "moy":I
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 339
    .local v2, "year":J
    invoke-static {}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$sfgetQUARTER_DAYS()[I

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x3

    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v6, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v6

    if-eqz v6, :cond_2a

    const/4 v6, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    :goto_2b
    add-int/2addr v5, v6

    aget v4, v4, v5

    sub-int v4, v0, v4

    int-to-long v4, v4

    return-wide v4

    .line 334
    .end local v0    # "doy":I
    .end local v1    # "moy":I
    .end local v2    # "year":J
    :cond_32
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 304
    sget-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 312
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 313
    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Ljava/time/temporal/IsoFields;->isIso(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 312
    :goto_21
    return v0
.end method

.method public whitelist test-api range()Ljava/time/temporal/ValueRange;
    .registers 7

    .line 308
    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 11
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 317
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 320
    sget-object v0, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 321
    .local v0, "qoy":J
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x5b

    if-nez v4, :cond_2e

    .line 322
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v7

    .line 323
    .local v7, "year":J
    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v4, v7, v8}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {v2, v3, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    goto :goto_2d

    :cond_27
    const-wide/16 v4, 0x5a

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    :goto_2d
    return-object v2

    .line 324
    .end local v7    # "year":J
    :cond_2e
    const-wide/16 v7, 0x2

    cmp-long v4, v0, v7

    if-nez v4, :cond_39

    .line 325
    invoke-static {v2, v3, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 326
    :cond_39
    const-wide/16 v4, 0x3

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4b

    const-wide/16 v4, 0x4

    cmp-long v4, v0, v4

    if-nez v4, :cond_46

    goto :goto_4b

    .line 329
    :cond_46
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 327
    :cond_4b
    :goto_4b
    const-wide/16 v4, 0x5c

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 318
    .end local v0    # "qoy":J
    :cond_52
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 20
    .param p2, "partialTemporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 352
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 353
    .local v3, "yearLong":Ljava/lang/Long;
    sget-object v4, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 354
    .local v4, "qoyLong":Ljava/lang/Long;
    if-eqz v3, :cond_9f

    if-nez v4, :cond_1c

    goto/16 :goto_9f

    .line 357
    :cond_1c
    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    .line 358
    .local v5, "y":I
    sget-object v6, Ljava/time/temporal/IsoFields$Field$1;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 359
    .local v6, "doq":J
    invoke-static/range {p2 .. p2}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$smensureIso(Ljava/time/temporal/TemporalAccessor;)V

    .line 361
    sget-object v8, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const/4 v9, 0x3

    const-wide/16 v10, 0x1

    const/4 v12, 0x1

    if-ne v2, v8, :cond_56

    .line 362
    invoke-static {v5, v12, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v12

    invoke-static {v12, v13, v9}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v8

    .line 363
    .local v8, "date":Ljava/time/LocalDate;
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    goto :goto_8d

    .line 365
    .end local v8    # "date":Ljava/time/LocalDate;
    :cond_56
    sget-object v8, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v8}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sget-object v15, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v8, v13, v14, v15}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    .line 366
    .local v8, "qoy":I
    add-int/lit8 v13, v8, -0x1

    mul-int/2addr v13, v9

    add-int/2addr v13, v12

    invoke-static {v5, v13, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v9

    .line 367
    .local v9, "date":Ljava/time/LocalDate;
    cmp-long v12, v6, v10

    if-ltz v12, :cond_78

    const-wide/16 v12, 0x5a

    cmp-long v12, v6, v12

    if-lez v12, :cond_8b

    .line 368
    :cond_78
    sget-object v12, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v2, v12, :cond_84

    .line 369
    invoke-virtual {v0, v9}, Ljava/time/temporal/IsoFields$Field$1;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v12

    invoke-virtual {v12, v6, v7, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto :goto_8b

    .line 371
    :cond_84
    invoke-virtual {v0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v12

    invoke-virtual {v12, v6, v7, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 374
    :cond_8b
    :goto_8b
    sub-long/2addr v6, v10

    move-object v8, v9

    .line 376
    .end local v9    # "date":Ljava/time/LocalDate;
    .local v8, "date":Ljava/time/LocalDate;
    :goto_8d
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v9, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v9, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {v8, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v9

    return-object v9

    .line 355
    .end local v5    # "y":I
    .end local v6    # "doq":J
    .end local v8    # "date":Ljava/time/LocalDate;
    :cond_9f
    :goto_9f
    const/4 v5, 0x0

    return-object v5
.end method

.method public bridge synthetic whitelist test-api resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
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

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/IsoFields$Field$1;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 383
    const-string v0, "DayOfQuarter"

    return-object v0
.end method
