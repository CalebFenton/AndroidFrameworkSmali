.class final enum Ljava/time/temporal/IsoFields$Field$3;
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

    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/time/temporal/IsoFields-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/time/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 7
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 485
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$3;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 486
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$3;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 453
    sget-object v0, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 433
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    nop

    .line 444
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 445
    .local v0, "dateTimePatternGenerator":Landroid/icu/text/DateTimePatternGenerator;
    nop

    .line 446
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "icuName":Ljava/lang/String;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object v2, v1

    goto :goto_22

    :cond_1e
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$3;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_22
    return-object v2
.end method

.method public whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 476
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$3;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 479
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$smgetWeek(Ljava/time/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 477
    :cond_10
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 457
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 465
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/time/temporal/IsoFields;->isIso(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api range()Ljava/time/temporal/ValueRange;
    .registers 7

    .line 461
    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 469
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$3;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 472
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 470
    :cond_f
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 24
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

    .line 491
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 492
    .local v3, "wbyLong":Ljava/lang/Long;
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 493
    .local v4, "dowLong":Ljava/lang/Long;
    if-eqz v3, :cond_cc

    if-nez v4, :cond_1c

    goto/16 :goto_cc

    .line 496
    :cond_1c
    sget-object v5, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v5}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v5

    .line 497
    .local v5, "wby":I
    sget-object v6, Ljava/time/temporal/IsoFields$Field$3;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 498
    .local v6, "wowby":J
    invoke-static/range {p2 .. p2}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$smensureIso(Ljava/time/temporal/TemporalAccessor;)V

    .line 499
    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-static {v5, v8, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v8

    .line 500
    .local v8, "date":Ljava/time/LocalDate;
    sget-object v9, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const-wide/16 v10, 0x1

    if-ne v2, v9, :cond_87

    .line 501
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 502
    .local v12, "dow":J
    const-wide/16 v14, 0x7

    cmp-long v9, v12, v14

    if-lez v9, :cond_61

    .line 503
    sub-long v16, v12, v10

    move-wide/from16 v18, v10

    div-long v10, v16, v14

    invoke-virtual {v8, v10, v11}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v8

    .line 504
    sub-long v9, v12, v18

    rem-long/2addr v9, v14

    add-long v12, v9, v18

    goto :goto_76

    .line 505
    :cond_61
    move-wide/from16 v18, v10

    cmp-long v9, v12, v18

    if-gez v9, :cond_76

    .line 506
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v9

    div-long/2addr v9, v14

    invoke-virtual {v8, v9, v10}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v8

    .line 507
    const-wide/16 v9, 0x6

    add-long/2addr v9, v12

    rem-long/2addr v9, v14

    add-long v12, v9, v18

    .line 509
    :cond_76
    :goto_76
    move-wide/from16 v9, v18

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v9

    sget-object v10, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v12, v13}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v8

    .line 510
    .end local v12    # "dow":J
    goto :goto_be

    .line 511
    :cond_87
    move-wide v9, v10

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v11

    .line 512
    .local v11, "dow":I
    cmp-long v12, v6, v9

    if-ltz v12, :cond_9c

    const-wide/16 v9, 0x34

    cmp-long v9, v6, v9

    if-lez v9, :cond_af

    .line 513
    :cond_9c
    sget-object v9, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v2, v9, :cond_a8

    .line 514
    invoke-static {v8}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto :goto_af

    .line 516
    :cond_a8
    invoke-virtual {v0}, Ljava/time/temporal/IsoFields$Field$3;->range()Ljava/time/temporal/ValueRange;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 519
    :cond_af
    :goto_af
    const-wide/16 v18, 0x1

    sub-long v9, v6, v18

    invoke-virtual {v8, v9, v10}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v9

    sget-object v10, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v8

    .line 521
    .end local v11    # "dow":I
    :goto_be
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v9, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-object v8

    .line 494
    .end local v5    # "wby":I
    .end local v6    # "wowby":J
    .end local v8    # "date":Ljava/time/LocalDate;
    :cond_cc
    :goto_cc
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

    .line 430
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/IsoFields$Field$3;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 528
    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
