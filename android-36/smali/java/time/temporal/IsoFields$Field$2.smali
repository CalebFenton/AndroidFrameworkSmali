.class final enum Ljava/time/temporal/IsoFields$Field$2;
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

    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/time/temporal/IsoFields-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/time/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 13
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 421
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$2;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    .line 422
    .local v0, "curValue":J
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$2;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 423
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long v5, p2, v0

    const-wide/16 v7, 0x3

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 389
    sget-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 405
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$2;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 408
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 409
    .local v0, "moy":J
    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    return-wide v2

    .line 406
    .end local v0    # "moy":J
    :cond_13
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: QuarterOfYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 393
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 401
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

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
    .registers 5

    .line 397
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 412
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$2;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 415
    invoke-super {p0, p1}, Ljava/time/temporal/IsoFields$Field;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 413
    :cond_b
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: QuarterOfYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 427
    const-string v0, "QuarterOfYear"

    return-object v0
.end method
