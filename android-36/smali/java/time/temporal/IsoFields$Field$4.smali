.class final enum Ljava/time/temporal/IsoFields$Field$4;
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

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/time/temporal/IsoFields-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/time/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 12
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 564
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 567
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$4;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/IsoFields$Field$4;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v0, p2, p3, v1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 568
    .local v0, "newWby":I
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v1

    .line 569
    .local v1, "date":Ljava/time/LocalDate;
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 570
    .local v2, "dow":I
    invoke-static {v1}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$smgetWeek(Ljava/time/LocalDate;)I

    move-result v3

    .line 571
    .local v3, "week":I
    const/16 v4, 0x35

    if-ne v3, v4, :cond_2c

    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(I)I

    move-result v4

    const/16 v5, 0x34

    if-ne v4, v5, :cond_2c

    .line 572
    const/16 v3, 0x34

    .line 574
    :cond_2c
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {v0, v5, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    .line 575
    .local v4, "resolved":Ljava/time/LocalDate;
    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    sub-int v5, v2, v5

    add-int/lit8 v6, v3, -0x1

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    .line 576
    .local v5, "days":I
    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v4

    .line 577
    invoke-interface {p1, v4}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v6

    return-object v6

    .line 565
    .end local v0    # "newWby":I
    .end local v1    # "date":Ljava/time/LocalDate;
    .end local v2    # "dow":I
    .end local v3    # "week":I
    .end local v4    # "resolved":Ljava/time/LocalDate;
    .end local v5    # "days":I
    :cond_49
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 534
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 550
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 553
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekBasedYear(Ljava/time/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 551
    :cond_10
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 538
    sget-object v0, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 546
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
    .registers 2

    .line 542
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 556
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 559
    invoke-super {p0, p1}, Ljava/time/temporal/IsoFields$Field;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 557
    :cond_b
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 581
    const-string v0, "WeekBasedYear"

    return-object v0
.end method
