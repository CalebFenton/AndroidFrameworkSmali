.class abstract Ljava/time/chrono/ChronoLocalDateImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 174
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method private greylist-max-o daysUntil(Ljava/time/chrono/ChronoLocalDate;)J
    .registers 6
    .param p1, "end"    # Ljava/time/chrono/ChronoLocalDate;

    .line 397
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static greylist-max-o ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/Temporal;",
            ")TD;"
        }
    .end annotation

    .line 163
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    .line 164
    .local v0, "other":Ljava/time/chrono/ChronoLocalDate;, "TD;"
    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 167
    return-object v0

    .line 165
    :cond_e
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J
    .registers 11
    .param p1, "end"    # Ljava/time/chrono/ChronoLocalDate;

    .line 401
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 402
    .local v0, "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    .line 405
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    const-wide/16 v3, 0x20

    mul-long/2addr v1, v3

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Ljava/time/chrono/ChronoLocalDateImpl;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 406
    .local v1, "packed1":J
    sget-object v5, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    mul-long/2addr v5, v3

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 407
    .local v5, "packed2":J
    sub-long v7, v5, v1

    div-long/2addr v7, v3

    return-wide v7

    .line 403
    .end local v1    # "packed1":J
    .end local v5    # "packed2":J
    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ChronoLocalDateImpl only supports Chronologies with 12 months per year"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 412
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 413
    return v0

    .line 415
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/ChronoLocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 416
    move-object v1, p1

    check-cast v1, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 418
    :cond_15
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 423
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toEpochDay()J

    move-result-wide v0

    .line 424
    .local v0, "epDay":J
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/Chronology;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    xor-long/2addr v3, v0

    long-to-int v3, v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")TD;"
        }
    .end annotation

    .line 225
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")TD;"
        }
    .end annotation

    .line 219
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 143
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 143
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "daysToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 371
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_1d

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method greylist-max-o minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "monthsToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 333
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_1d

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method greylist-max-o minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "weeksToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 353
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_1d

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method greylist-max-o minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "yearsToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 312
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_1d

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 8
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")TD;"
        }
    .end annotation

    .line 200
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_76

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 201
    .local v0, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/chrono/ChronoLocalDateImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7c

    .line 211
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :pswitch_2b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 208
    :pswitch_3c
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 207
    :pswitch_47
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 206
    :pswitch_52
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 205
    :pswitch_5d
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 204
    :pswitch_62
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 203
    :pswitch_67
    const/4 v1, 0x7

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 202
    :pswitch_71
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 213
    .end local v0    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_76
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_71
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_52
        :pswitch_47
        :pswitch_3c
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")TD;"
        }
    .end annotation

    .line 193
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 143
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 143
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method abstract greylist-max-o plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method abstract greylist-max-o plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method greylist-max-o plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .param p1, "weeksToAdd"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 277
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method abstract greylist-max-o plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 14

    .line 430
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 431
    .local v0, "yoe":J
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 432
    .local v2, "moy":J
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    .line 433
    .local v4, "dom":J
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 434
    .local v6, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v7

    invoke-interface {v7}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 435
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 436
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getEra()Ljava/time/chrono/Era;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 438
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 439
    const-wide/16 v8, 0xa

    cmp-long v10, v2, v8

    const-string v11, "-0"

    const-string v12, "-"

    if-gez v10, :cond_47

    move-object v10, v11

    goto :goto_48

    :cond_47
    move-object v10, v12

    :goto_48
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 440
    cmp-long v8, v4, v8

    if-gez v8, :cond_55

    goto :goto_56

    :cond_55
    move-object v11, v12

    :goto_56
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 9
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 377
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 379
    .local v0, "end":Ljava/time/chrono/ChronoLocalDate;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_78

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    .line 380
    .local v1, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v2, Ljava/time/chrono/ChronoLocalDateImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_82

    .line 390
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :pswitch_38
    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v2}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/ChronoLocalDateImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2

    .line 387
    :pswitch_46
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x2ee0

    div-long/2addr v2, v4

    return-wide v2

    .line 386
    :pswitch_4e
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    div-long/2addr v2, v4

    return-wide v2

    .line 385
    :pswitch_56
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x78

    div-long/2addr v2, v4

    return-wide v2

    .line 384
    :pswitch_5e
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0xc

    div-long/2addr v2, v4

    return-wide v2

    .line 383
    :pswitch_66
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    return-wide v2

    .line 382
    :pswitch_6b
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->daysUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x7

    div-long/2addr v2, v4

    return-wide v2

    .line 381
    :pswitch_73
    invoke-direct {p0, v0}, Ljava/time/chrono/ChronoLocalDateImpl;->daysUntil(Ljava/time/chrono/ChronoLocalDate;)J

    move-result-wide v2

    return-wide v2

    .line 392
    .end local v1    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_78
    const-string v1, "unit"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_73
        :pswitch_6b
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_46
        :pswitch_38
    .end packed-switch
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")TD;"
        }
    .end annotation

    .line 180
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)TD;"
        }
    .end annotation

    .line 186
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
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

    .line 143
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

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

    .line 143
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method
