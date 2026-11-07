.class public final Ljava/time/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/time/temporal/TemporalAmount;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/Duration$DurationUnits;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalAmount;",
        "Ljava/lang/Comparable<",
        "Ljava/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field private static final greylist-max-o PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist test-api ZERO:Ljava/time/Duration;

.field private static final whitelist serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final greylist-max-o nanos:I

.field private final greylist-max-o seconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 135
    new-instance v0, Ljava/time/Duration;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Duration;-><init>(JI)V

    sput-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 144
    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    .line 148
    nop

    .line 149
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    .line 148
    return-void
.end method

.method private constructor greylist-max-o <init>(JI)V
    .registers 4
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-wide p1, p0, Ljava/time/Duration;->seconds:J

    .line 511
    iput p3, p0, Ljava/time/Duration;->nanos:I

    .line 512
    return-void
.end method

.method public static whitelist test-api between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;
    .registers 12
    .param p0, "startInclusive"    # Ljava/time/temporal/Temporal;
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;

    .line 470
    :try_start_0
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0
    :try_end_a
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 471
    :catch_b
    move-exception v0

    .line 472
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v1}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v1

    .line 475
    .local v1, "secs":J
    :try_start_12
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5
    :try_end_1e
    .catch Ljava/time/DateTimeException; {:try_start_12 .. :try_end_1e} :catch_37

    sub-long/2addr v3, v5

    .line 476
    .local v3, "nanos":J
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const-wide/16 v8, 0x1

    if-lez v7, :cond_2d

    cmp-long v7, v3, v5

    if-gez v7, :cond_2d

    .line 477
    add-long/2addr v1, v8

    goto :goto_36

    .line 478
    :cond_2d
    cmp-long v7, v1, v5

    if-gez v7, :cond_36

    cmp-long v5, v3, v5

    if-lez v5, :cond_36

    .line 479
    sub-long/2addr v1, v8

    .line 483
    :cond_36
    :goto_36
    goto :goto_3b

    .line 481
    .end local v3    # "nanos":J
    :catch_37
    move-exception v3

    .line 482
    .local v3, "ex2":Ljava/time/DateTimeException;
    const-wide/16 v4, 0x0

    move-wide v3, v4

    .line 484
    .local v3, "nanos":J
    :goto_3b
    invoke-static {v1, v2, v3, v4}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v5

    return-object v5
.end method

.method private static greylist-max-o create(JI)Ljava/time/Duration;
    .registers 7
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # I

    .line 496
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 497
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0

    .line 499
    :cond_b
    new-instance v0, Ljava/time/Duration;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Duration;-><init>(JI)V

    return-object v0
.end method

.method private static greylist-max-o create(Ljava/math/BigDecimal;)Ljava/time/Duration;
    .registers 7
    .param p0, "seconds"    # Ljava/math/BigDecimal;

    .line 1032
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 1033
    .local v0, "nanos":Ljava/math/BigInteger;
    sget-object v1, Ljava/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 1034
    .local v1, "divRem":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x3f

    if-gt v3, v4, :cond_2e

    .line 1037
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    return-object v2

    .line 1035
    :cond_2e
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceeds capacity of Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o create(ZJJJJI)Ljava/time/Duration;
    .registers 14
    .param p0, "negate"    # Z
    .param p1, "daysAsSecs"    # J
    .param p3, "hoursAsSecs"    # J
    .param p5, "minsAsSecs"    # J
    .param p7, "secs"    # J
    .param p9, "nanos"    # I

    .line 439
    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 440
    .local v0, "seconds":J
    if-eqz p0, :cond_18

    .line 441
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->negated()Ljava/time/Duration;

    move-result-object v2

    return-object v2

    .line 443
    :cond_18
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Duration;
    .registers 6
    .param p0, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 330
    const-string v0, "amount"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 332
    .local v0, "duration":Ljava/time/Duration;
    invoke-interface {p0}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalUnit;

    .line 333
    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    .line 334
    .end local v2    # "unit":Ljava/time/temporal/TemporalUnit;
    goto :goto_f

    .line 335
    :cond_24
    return-object v0
.end method

.method public static whitelist test-api of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .registers 4
    .param p0, "amount"    # J
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 305
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, p0, p1, p2}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofDays(J)Ljava/time/Duration;
    .registers 5
    .param p0, "days"    # J

    .line 176
    const v0, 0x15180

    invoke-static {p0, p1, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofHours(J)Ljava/time/Duration;
    .registers 5
    .param p0, "hours"    # J

    .line 191
    const/16 v0, 0xe10

    invoke-static {p0, p1, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofMillis(J)Ljava/time/Duration;
    .registers 8
    .param p0, "millis"    # J

    .line 257
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 258
    .local v2, "secs":J
    rem-long v0, p0, v0

    long-to-int v0, v0

    .line 259
    .local v0, "mos":I
    if-gez v0, :cond_e

    .line 260
    add-int/lit16 v0, v0, 0x3e8

    .line 261
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 263
    :cond_e
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-static {v2, v3, v1}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api ofMinutes(J)Ljava/time/Duration;
    .registers 5
    .param p0, "minutes"    # J

    .line 206
    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofNanos(J)Ljava/time/Duration;
    .registers 9
    .param p0, "nanos"    # J

    .line 276
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    .line 277
    .local v2, "secs":J
    rem-long v4, p0, v0

    long-to-int v4, v4

    .line 278
    .local v4, "nos":I
    if-gez v4, :cond_10

    .line 279
    int-to-long v5, v4

    add-long/2addr v5, v0

    long-to-int v4, v5

    .line 280
    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    .line 282
    :cond_10
    invoke-static {v2, v3, v4}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofSeconds(J)Ljava/time/Duration;
    .registers 3
    .param p0, "seconds"    # J

    .line 219
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofSeconds(JJ)Ljava/time/Duration;
    .registers 8
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # J

    .line 242
    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    .line 243
    .local v2, "secs":J
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 244
    .local v0, "nos":I
    invoke-static {v2, v3, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/Duration;
    .registers 24
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 384
    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    sget-object v0, Ljava/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 386
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_a8

    .line 388
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "T"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 389
    const-string v0, "-"

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 390
    .local v6, "negate":Z
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "dayMatch":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v7, "hourMatch":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "minuteMatch":Ljava/lang/String;
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "secondMatch":Ljava/lang/String;
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "fractionMatch":Ljava/lang/String;
    if-nez v5, :cond_51

    if-nez v7, :cond_51

    if-nez v8, :cond_51

    if-eqz v9, :cond_4e

    goto :goto_51

    :cond_4e
    move-object/from16 v19, v2

    goto :goto_aa

    .line 396
    :cond_51
    :goto_51
    const v0, 0x15180

    const-string v11, "days"

    invoke-static {v1, v5, v0, v11}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v11

    .line 397
    .local v11, "daysAsSecs":J
    const/16 v0, 0xe10

    const-string v13, "hours"

    invoke-static {v1, v7, v0, v13}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v13

    .line 398
    .local v13, "hoursAsSecs":J
    const/16 v0, 0x3c

    const-string v15, "minutes"

    invoke-static {v1, v8, v0, v15}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v15

    .line 399
    .local v15, "minsAsSecs":J
    const-string v0, "seconds"

    invoke-static {v1, v9, v4, v0}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v17

    .line 400
    .local v17, "seconds":J
    const-wide/16 v19, 0x0

    cmp-long v0, v17, v19

    if-gez v0, :cond_77

    const/4 v4, -0x1

    :cond_77
    invoke-static {v1, v10, v4}, Ljava/time/Duration;->parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v4

    .line 402
    .local v4, "nanos":I
    move-wide/from16 v21, v15

    move v15, v4

    move-object v4, v7

    move-object/from16 v16, v8

    move-wide v7, v11

    move-wide/from16 v11, v21

    move-wide/from16 v21, v17

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-wide v9, v13

    move-wide/from16 v13, v21

    .end local v8    # "minuteMatch":Ljava/lang/String;
    .end local v10    # "fractionMatch":Ljava/lang/String;
    .local v4, "hourMatch":Ljava/lang/String;
    .local v7, "daysAsSecs":J
    .local v9, "hoursAsSecs":J
    .local v11, "minsAsSecs":J
    .local v13, "seconds":J
    .local v15, "nanos":I
    .local v16, "minuteMatch":Ljava/lang/String;
    .local v17, "secondMatch":Ljava/lang/String;
    .local v18, "fractionMatch":Ljava/lang/String;
    :try_start_8d
    invoke-static/range {v6 .. v15}, Ljava/time/Duration;->create(ZJJJJI)Ljava/time/Duration;

    move-result-object v0
    :try_end_91
    .catch Ljava/lang/ArithmeticException; {:try_start_8d .. :try_end_91} :catch_92

    return-object v0

    .line 403
    :catch_92
    move-exception v0

    .line 404
    .local v0, "ex":Ljava/lang/ArithmeticException;
    move-object/from16 v19, v2

    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .local v19, "matcher":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/time/format/DateTimeParseException;

    move-object/from16 v20, v4

    .end local v4    # "hourMatch":Ljava/lang/String;
    .local v20, "hourMatch":Ljava/lang/String;
    const-string v4, "Text cannot be parsed to a Duration: overflow"

    invoke-direct {v2, v4, v1, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v0}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/time/format/DateTimeParseException;

    throw v2

    .line 388
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    .end local v5    # "dayMatch":Ljava/lang/String;
    .end local v6    # "negate":Z
    .end local v7    # "daysAsSecs":J
    .end local v9    # "hoursAsSecs":J
    .end local v11    # "minsAsSecs":J
    .end local v13    # "seconds":J
    .end local v15    # "nanos":I
    .end local v16    # "minuteMatch":Ljava/lang/String;
    .end local v17    # "secondMatch":Ljava/lang/String;
    .end local v18    # "fractionMatch":Ljava/lang/String;
    .end local v19    # "matcher":Ljava/util/regex/Matcher;
    .end local v20    # "hourMatch":Ljava/lang/String;
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_a5
    move-object/from16 v19, v2

    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v19    # "matcher":Ljava/util/regex/Matcher;
    goto :goto_aa

    .line 386
    .end local v19    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_a8
    move-object/from16 v19, v2

    .line 409
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v19    # "matcher":Ljava/util/regex/Matcher;
    :goto_aa
    new-instance v0, Ljava/time/format/DateTimeParseException;

    const-string v2, "Text cannot be parsed to a Duration"

    invoke-direct {v0, v2, v1, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private static greylist-max-o parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .registers 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "negate"    # I

    .line 427
    const/4 v0, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_39

    .line 431
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_28} :catch_2a
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_28} :catch_2a

    mul-int/2addr v0, p2

    return v0

    .line 433
    :catch_2a
    move-exception v1

    .line 434
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/time/format/DateTimeParseException;

    const-string v3, "Text cannot be parsed to a Duration: fraction"

    invoke-direct {v2, v3, p0, v0}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeParseException;

    throw v0

    .line 428
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_39
    :goto_39
    return v0
.end method

.method private static greylist-max-o parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J
    .registers 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "multiplier"    # I
    .param p3, "errorText"    # Ljava/lang/String;

    .line 414
    if-nez p1, :cond_5

    .line 415
    const-wide/16 v0, 0x0

    return-wide v0

    .line 418
    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 419
    .local v0, "val":J
    invoke-static {v0, v1, p2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v2
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_d} :catch_e
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_d} :catch_e

    return-wide v2

    .line 420
    .end local v0    # "val":J
    :catch_e
    move-exception v0

    .line 421
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text cannot be parsed to a Duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeParseException;

    throw v1
.end method

.method private greylist-max-o plus(JJ)Ljava/time/Duration;
    .registers 11
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .line 823
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 824
    return-object p0

    .line 826
    :cond_9
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 827
    .local v0, "epochSec":J
    const-wide/32 v2, 0x3b9aca00

    div-long v4, p3, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 828
    rem-long/2addr p3, v2

    .line 829
    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v2, p3

    .line 830
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v4

    return-object v4
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/Duration;
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1528
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 1529
    .local v0, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1530
    .local v2, "nanos":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1519
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist toBigDecimalSeconds()Ljava/math/BigDecimal;
    .registers 5

    .line 1021
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Ljava/time/Duration;->nanos:I

    int-to-long v1, v1

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1508
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api abs()Ljava/time/Duration;
    .registers 2

    .line 1068
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/time/Duration;->negated()Ljava/time/Duration;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    return-object v0
.end method

.method public whitelist test-api addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1098
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 1099
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    sget-object v2, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 1101
    :cond_10
    iget v0, p0, Ljava/time/Duration;->nanos:I

    if-eqz v0, :cond_1d

    .line 1102
    iget v0, p0, Ljava/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 1104
    :cond_1d
    return-object p1
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

    .line 129
    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/Duration;)I
    .registers 6
    .param p1, "otherDuration"    # Ljava/time/Duration;

    .line 1390
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    iget-wide v2, p1, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1391
    .local v0, "cmp":I
    if-eqz v0, :cond_b

    .line 1392
    return v0

    .line 1394
    :cond_b
    iget v1, p0, Ljava/time/Duration;->nanos:I

    iget v2, p1, Ljava/time/Duration;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api dividedBy(Ljava/time/Duration;)J
    .registers 6
    .param p1, "divisor"    # Ljava/time/Duration;

    .line 1008
    const-string v0, "divisor"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1009
    invoke-direct {p0}, Ljava/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1010
    .local v0, "dividendBigD":Ljava/math/BigDecimal;
    invoke-direct {p1}, Ljava/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v1

    .line 1011
    .local v1, "divisorBigD":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v2

    return-wide v2
.end method

.method public whitelist test-api dividedBy(J)Ljava/time/Duration;
    .registers 6
    .param p1, "divisor"    # J

    .line 987
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_20

    .line 990
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 991
    return-object p0

    .line 993
    :cond_d
    invoke-direct {p0}, Ljava/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Duration;->create(Ljava/math/BigDecimal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 988
    :cond_20
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Cannot divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 1408
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1409
    return v0

    .line 1413
    :cond_4
    instance-of v1, p1, Ljava/time/Duration;

    if-eqz v1, :cond_1a

    .line 1411
    move-object v1, p1

    check-cast v1, Ljava/time/Duration;

    .local v1, "otherDuration":Ljava/time/Duration;
    iget-wide v2, p0, Ljava/time/Duration;->seconds:J

    iget-wide v4, v1, Ljava/time/Duration;->seconds:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    iget v2, p0, Ljava/time/Duration;->nanos:I

    iget v3, v1, Ljava/time/Duration;->nanos:I

    if-ne v2, v3, :cond_1a

    goto :goto_1b

    .end local v1    # "otherDuration":Ljava/time/Duration;
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 529
    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_7

    .line 530
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    return-wide v0

    .line 531
    :cond_7
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_f

    .line 532
    iget v0, p0, Ljava/time/Duration;->nanos:I

    int-to-long v0, v0

    return-wide v0

    .line 534
    :cond_f
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getNano()I
    .registers 2

    .line 640
    iget v0, p0, Ljava/time/Duration;->nanos:I

    return v0
.end method

.method public whitelist test-api getSeconds()J
    .registers 3

    .line 622
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    return-wide v0
.end method

.method public whitelist test-api getUnits()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 552
    sget-object v0, Ljava/time/Duration$DurationUnits;->UNITS:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1423
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    iget-wide v2, p0, Ljava/time/Duration;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Ljava/time/Duration;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isNegative()Z
    .registers 5

    .line 603
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isPositive()Z
    .registers 5

    .line 577
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isZero()Z
    .registers 5

    .line 590
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 868
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/Duration;)Ljava/time/Duration;
    .registers 10
    .param p1, "duration"    # Ljava/time/Duration;

    .line 844
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 845
    .local v0, "secsToSubtract":J
    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v2

    .line 846
    .local v2, "nanosToSubtract":I
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_22

    .line 847
    neg-int v3, v2

    int-to-long v3, v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {p0, v5, v6, v3, v4}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    return-object v3

    .line 849
    :cond_22
    neg-long v3, v0

    neg-int v5, v2

    int-to-long v5, v5

    invoke-direct {p0, v3, v4, v5, v6}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api minusDays(J)Ljava/time/Duration;
    .registers 6
    .param p1, "daysToSubtract"    # J

    .line 885
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusHours(J)Ljava/time/Duration;
    .registers 6
    .param p1, "hoursToSubtract"    # J

    .line 900
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMillis(J)Ljava/time/Duration;
    .registers 6
    .param p1, "millisToSubtract"    # J

    .line 941
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMinutes(J)Ljava/time/Duration;
    .registers 6
    .param p1, "minutesToSubtract"    # J

    .line 915
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusNanos(J)Ljava/time/Duration;
    .registers 6
    .param p1, "nanosToSubtract"    # J

    .line 954
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusSeconds(J)Ljava/time/Duration;
    .registers 6
    .param p1, "secondsToSubtract"    # J

    .line 928
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api multipliedBy(J)Ljava/time/Duration;
    .registers 5
    .param p1, "multiplicand"    # J

    .line 968
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 969
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0

    .line 971
    :cond_9
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    .line 972
    return-object p0

    .line 974
    :cond_10
    invoke-direct {p0}, Ljava/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Duration;->create(Ljava/math/BigDecimal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api negated()Ljava/time/Duration;
    .registers 3

    .line 1053
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .registers 11
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 707
    const-string v0, "unit"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 708
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x0

    if-ne p3, v0, :cond_17

    .line 709
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 711
    :cond_17
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->isDurationEstimated()Z

    move-result v0

    if-nez v0, :cond_80

    .line 714
    cmp-long v0, p1, v1

    if-nez v0, :cond_22

    .line 715
    return-object p0

    .line 717
    :cond_22
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_66

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 718
    .local v0, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/Duration$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_88

    .line 724
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v1

    iget-wide v1, v1, Ljava/time/Duration;->seconds:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    .line 722
    :pswitch_43
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    .line 721
    :pswitch_48
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    .line 720
    :pswitch_4d
    const-wide/32 v1, 0x3b9aca00

    div-long v3, p1, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v3

    rem-long v1, p1, v1

    mul-long/2addr v1, v5

    invoke-virtual {v3, v1, v2}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    .line 719
    :pswitch_61
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    .line 726
    .end local v0    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_66
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    .line 727
    .local v0, "duration":Ljava/time/Duration;
    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    .line 712
    .end local v0    # "duration":Ljava/time/Duration;
    :cond_80
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unit must not have an estimated duration"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_61
        :pswitch_4d
        :pswitch_48
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/Duration;)Ljava/time/Duration;
    .registers 6
    .param p1, "duration"    # Ljava/time/Duration;

    .line 687
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusDays(J)Ljava/time/Duration;
    .registers 7
    .param p1, "daysToAdd"    # J

    .line 744
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusHours(J)Ljava/time/Duration;
    .registers 7
    .param p1, "hoursToAdd"    # J

    .line 757
    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusMillis(J)Ljava/time/Duration;
    .registers 9
    .param p1, "millisToAdd"    # J

    .line 796
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusMinutes(J)Ljava/time/Duration;
    .registers 7
    .param p1, "minutesToAdd"    # J

    .line 770
    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusNanos(J)Ljava/time/Duration;
    .registers 5
    .param p1, "nanosToAdd"    # J

    .line 809
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusSeconds(J)Ljava/time/Duration;
    .registers 5
    .param p1, "secondsToAdd"    # J

    .line 783
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1133
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 1134
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    sget-object v2, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 1136
    :cond_10
    iget v0, p0, Ljava/time/Duration;->nanos:I

    if-eqz v0, :cond_1d

    .line 1137
    iget v0, p0, Ljava/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 1139
    :cond_1d
    return-object p1
.end method

.method public whitelist test-api toDays()J
    .registers 5

    .line 1155
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api toDaysPart()J
    .registers 5

    .line 1247
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api toHours()J
    .registers 5

    .line 1169
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api toHoursPart()I
    .registers 5

    .line 1263
    invoke-virtual {p0}, Ljava/time/Duration;->toHours()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api toMillis()J
    .registers 5

    .line 1214
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    .line 1215
    .local v0, "millis":J
    iget v2, p0, Ljava/time/Duration;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 1216
    return-wide v0
.end method

.method public whitelist test-api toMillisPart()I
    .registers 3

    .line 1313
    iget v0, p0, Ljava/time/Duration;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toMinutes()J
    .registers 5

    .line 1183
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api toMinutesPart()I
    .registers 5

    .line 1279
    invoke-virtual {p0}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api toNanos()J
    .registers 5

    .line 1229
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 1230
    .local v0, "totalNanos":J
    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 1231
    return-wide v0
.end method

.method public whitelist test-api toNanosPart()I
    .registers 2

    .line 1330
    iget v0, p0, Ljava/time/Duration;->nanos:I

    return v0
.end method

.method public whitelist test-api toSeconds()J
    .registers 3

    .line 1197
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    return-wide v0
.end method

.method public whitelist test-api toSecondsPart()I
    .registers 5

    .line 1295
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 1451
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    if-ne p0, v0, :cond_7

    .line 1452
    const-string v0, "PT0S"

    return-object v0

    .line 1454
    :cond_7
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    .line 1455
    .local v0, "hours":J
    iget-wide v4, p0, Ljava/time/Duration;->seconds:J

    rem-long/2addr v4, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v4, v2

    long-to-int v4, v4

    .line 1456
    .local v4, "minutes":I
    iget-wide v5, p0, Ljava/time/Duration;->seconds:J

    rem-long/2addr v5, v2

    long-to-int v2, v5

    .line 1457
    .local v2, "secs":I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x18

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1458
    .local v3, "buf":Ljava/lang/StringBuilder;
    const-string v5, "PT"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_32

    .line 1460
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x48

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1462
    :cond_32
    if-eqz v4, :cond_3d

    .line 1463
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x4d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1465
    :cond_3d
    if-nez v2, :cond_4f

    iget v5, p0, Ljava/time/Duration;->nanos:I

    if-nez v5, :cond_4f

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_4f

    .line 1466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1468
    :cond_4f
    if-gez v2, :cond_64

    iget v5, p0, Ljava/time/Duration;->nanos:I

    if-lez v5, :cond_64

    .line 1469
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5e

    .line 1470
    const-string v5, "-0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 1472
    :cond_5e
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 1475
    :cond_64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1477
    :goto_67
    iget v5, p0, Ljava/time/Duration;->nanos:I

    if-lez v5, :cond_a3

    .line 1478
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1479
    .local v5, "pos":I
    if-gez v2, :cond_7c

    .line 1480
    iget v6, p0, Ljava/time/Duration;->nanos:I

    int-to-long v6, v6

    const-wide/32 v8, 0x77359400

    sub-long/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 1482
    :cond_7c
    iget v6, p0, Ljava/time/Duration;->nanos:I

    int-to-long v6, v6

    const-wide/32 v8, 0x3b9aca00

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1484
    :goto_86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_9e

    .line 1485
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_86

    .line 1487
    :cond_9e
    const/16 v6, 0x2e

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1489
    .end local v5    # "pos":I
    :cond_a3
    const/16 v5, 0x53

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .registers 11
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1359
    const-string v0, "unit"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1360
    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_1e

    iget-wide v3, p0, Ljava/time/Duration;->seconds:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_15

    iget v0, p0, Ljava/time/Duration;->nanos:I

    if-nez v0, :cond_1e

    .line 1361
    :cond_15
    new-instance v0, Ljava/time/Duration;

    iget-wide v1, p0, Ljava/time/Duration;->seconds:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Duration;-><init>(JI)V

    return-object v0

    .line 1362
    :cond_1e
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_23

    .line 1363
    return-object p0

    .line 1365
    :cond_23
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v0

    .line 1366
    .local v0, "unitDur":Ljava/time/Duration;
    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/32 v5, 0x15180

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5d

    .line 1369
    invoke-virtual {v0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v3

    .line 1370
    .local v3, "dur":J
    const-wide v7, 0x4e94914f0000L

    rem-long/2addr v7, v3

    cmp-long v1, v7, v1

    if-nez v1, :cond_55

    .line 1373
    iget-wide v1, p0, Ljava/time/Duration;->seconds:J

    rem-long/2addr v1, v5

    const-wide/32 v5, 0x3b9aca00

    mul-long/2addr v1, v5

    iget v5, p0, Ljava/time/Duration;->nanos:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 1374
    .local v1, "nod":J
    div-long v5, v1, v3

    mul-long/2addr v5, v3

    .line 1375
    .local v5, "result":J
    sub-long v7, v5, v1

    invoke-virtual {p0, v7, v8}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v7

    return-object v7

    .line 1371
    .end local v1    # "nod":J
    .end local v5    # "result":J
    :cond_55
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit must divide into a standard day without remainder"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1367
    .end local v3    # "dur":J
    :cond_5d
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api withNanos(I)Ljava/time/Duration;
    .registers 5
    .param p1, "nanoOfSecond"    # I

    .line 672
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    .line 673
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1, p1}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withSeconds(J)Ljava/time/Duration;
    .registers 4
    .param p1, "seconds"    # J

    .line 656
    iget v0, p0, Ljava/time/Duration;->nanos:I

    invoke-static {p1, p2, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1524
    iget v0, p0, Ljava/time/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1525
    return-void
.end method
