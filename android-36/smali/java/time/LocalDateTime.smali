.class public final Ljava/time/LocalDateTime;
.super Ljava/lang/Object;
.source "LocalDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/time/chrono/ChronoLocalDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/time/chrono/ChronoLocalDateTime<",
        "Ljava/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final whitelist test-api MAX:Ljava/time/LocalDateTime;

.field public static final whitelist test-api MIN:Ljava/time/LocalDateTime;

.field private static final whitelist serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final greylist-max-o date:Ljava/time/LocalDate;

.field private final greylist-max-o time:Ljava/time/LocalTime;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 138
    sget-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    .line 145
    sget-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V
    .registers 3
    .param p1, "date"    # Ljava/time/LocalDate;
    .param p2, "time"    # Ljava/time/LocalTime;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    .line 499
    iput-object p2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    .line 500
    return-void
.end method

.method private greylist-max-o compareTo0(Ljava/time/LocalDateTime;)I
    .registers 5
    .param p1, "other"    # Ljava/time/LocalDateTime;

    .line 1814
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    .line 1815
    .local v0, "cmp":I
    if-nez v0, :cond_16

    .line 1816
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    .line 1818
    :cond_16
    return v0
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 443
    instance-of v0, p0, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_8

    .line 444
    move-object v0, p0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0

    .line 445
    :cond_8
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_14

    .line 446
    move-object v0, p0

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 447
    :cond_14
    instance-of v0, p0, Ljava/time/OffsetDateTime;

    if-eqz v0, :cond_20

    .line 448
    move-object v0, p0

    check-cast v0, Ljava/time/OffsetDateTime;

    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 451
    :cond_20
    :try_start_20
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 452
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v1

    .line 453
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V
    :try_end_2d
    .catch Ljava/time/DateTimeException; {:try_start_20 .. :try_end_2d} :catch_2e

    return-object v2

    .line 454
    .end local v0    # "date":Ljava/time/LocalDate;
    .end local v1    # "time":Ljava/time/LocalTime;
    :catch_2e
    move-exception v0

    .line 455
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain LocalDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist test-api now()Ljava/time/LocalDateTime;
    .registers 1

    .line 175
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/LocalDateTime;
    .registers 6
    .param p0, "clock"    # Ljava/time/Clock;

    .line 205
    const-string v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 207
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 208
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 191
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(IIIII)Ljava/time/LocalDateTime;
    .registers 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .line 306
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 307
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v1

    .line 308
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static whitelist test-api of(IIIIII)Ljava/time/LocalDateTime;
    .registers 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .line 331
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 332
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4, p5}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v1

    .line 333
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static whitelist test-api of(IIIIIII)Ljava/time/LocalDateTime;
    .registers 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I

    .line 356
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 357
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4, p5, p6}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    .line 358
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static whitelist test-api of(ILjava/time/Month;III)Ljava/time/LocalDateTime;
    .registers 8
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .line 231
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 232
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v1

    .line 233
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static whitelist test-api of(ILjava/time/Month;IIII)Ljava/time/LocalDateTime;
    .registers 9
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .line 256
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 257
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4, p5}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v1

    .line 258
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static whitelist test-api of(ILjava/time/Month;IIIII)Ljava/time/LocalDateTime;
    .registers 10
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I

    .line 281
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 282
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p3, p4, p5, p6}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    .line 283
    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static whitelist test-api of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .registers 3
    .param p0, "date"    # Ljava/time/LocalDate;
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 369
    const-string v0, "date"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    const-string v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    new-instance v0, Ljava/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method public static whitelist test-api ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .registers 14
    .param p0, "epochSecond"    # J
    .param p2, "nanoOfSecond"    # I
    .param p3, "offset"    # Ljava/time/ZoneOffset;

    .line 412
    const-string v0, "offset"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 414
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    .line 415
    .local v0, "localSecond":J
    const v2, 0x15180

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v3

    .line 416
    .local v3, "localEpochDay":J
    invoke-static {v0, v1, v2}, Ljava/lang/Math;->floorMod(JI)I

    move-result v2

    .line 417
    .local v2, "secsOfDay":I
    invoke-static {v3, v4}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v5

    .line 418
    .local v5, "date":Ljava/time/LocalDate;
    int-to-long v6, v2

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    int-to-long v8, p2

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    .line 419
    .local v6, "time":Ljava/time/LocalTime;
    new-instance v7, Ljava/time/LocalDateTime;

    invoke-direct {v7, v5, v6}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v7
.end method

.method public static whitelist test-api ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 389
    const-string v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 392
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 393
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 472
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 486
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    new-instance v0, Ljava/time/LocalDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/LocalDateTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method private greylist-max-o plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;
    .registers 28
    .param p1, "newDate"    # Ljava/time/LocalDate;
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J
    .param p8, "nanos"    # J
    .param p10, "sign"    # I

    .line 1541
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p10

    or-long v3, p2, p4

    or-long v3, v3, p6

    or-long v3, v3, p8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 1542
    iget-object v3, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v0, v1, v3}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    return-object v3

    .line 1544
    :cond_19
    const-wide v3, 0x4e94914f0000L

    div-long v5, p8, v3

    const-wide/32 v7, 0x15180

    div-long v9, p6, v7

    add-long/2addr v5, v9

    const-wide/16 v9, 0x5a0

    div-long v11, p4, v9

    add-long/2addr v5, v11

    const-wide/16 v11, 0x18

    div-long v13, p2, v11

    add-long/2addr v5, v13

    .line 1548
    .local v5, "totDays":J
    int-to-long v13, v2

    mul-long/2addr v5, v13

    .line 1549
    rem-long v13, p8, v3

    rem-long v7, p6, v7

    const-wide/32 v15, 0x3b9aca00

    mul-long/2addr v7, v15

    add-long/2addr v13, v7

    rem-long v7, p4, v9

    const-wide v9, 0xdf8475800L

    mul-long/2addr v7, v9

    add-long/2addr v13, v7

    rem-long v7, p2, v11

    const-wide v9, 0x34630b8a000L

    mul-long/2addr v7, v9

    add-long/2addr v13, v7

    .line 1553
    .local v13, "totNanos":J
    iget-object v7, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v7}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v7

    .line 1554
    .local v7, "curNoD":J
    int-to-long v9, v2

    mul-long/2addr v9, v13

    add-long/2addr v9, v7

    .line 1555
    .end local v13    # "totNanos":J
    .local v9, "totNanos":J
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v11

    add-long/2addr v5, v11

    .line 1556
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v3

    .line 1557
    .local v3, "newNoD":J
    cmp-long v11, v3, v7

    if-nez v11, :cond_66

    iget-object v11, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    goto :goto_6a

    :cond_66
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v11

    .line 1558
    .local v11, "newTime":Ljava/time/LocalTime;
    :goto_6a
    invoke-virtual {v1, v5, v6}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    invoke-direct {v0, v12, v11}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v12

    return-object v12
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;
    .registers 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1995
    invoke-static {p0}, Ljava/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;

    move-result-object v0

    .line 1996
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {p0}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v1

    .line 1997
    .local v1, "time":Ljava/time/LocalTime;
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1986
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "newDate"    # Ljava/time/LocalDate;
    .param p2, "newTime"    # Ljava/time/LocalTime;

    .line 511
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    if-ne v0, p2, :cond_9

    .line 512
    return-object p0

    .line 514
    :cond_9
    new-instance v0, Ljava/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1975
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1616
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 1753
    invoke-static {p0, p1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 1787
    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
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
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

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
    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)I"
        }
    .end annotation

    .line 1807
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_c

    .line 1808
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v0

    return v0

    .line 1810
    :cond_c
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1920
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1921
    return v0

    .line 1925
    :cond_4
    instance-of v1, p1, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_20

    .line 1923
    move-object v1, p1

    check-cast v1, Ljava/time/LocalDateTime;

    .local v1, "other":Ljava/time/LocalDateTime;
    iget-object v2, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v3, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    .line 1924
    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v3, v1, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    .line 1925
    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_21

    .end local v1    # "other":Ljava/time/LocalDateTime;
    :cond_20
    const/4 v0, 0x0

    .line 1923
    :goto_21
    return v0
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1738
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1739
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 679
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 680
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    :goto_1a
    return v1

    .line 682
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDayOfMonth()I
    .registers 2

    .line 781
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .line 809
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDayOfYear()I
    .registers 2

    .line 792
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getHour()I
    .registers 2

    .line 832
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 710
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 711
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    :goto_1a
    return-wide v1

    .line 713
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getMinute()I
    .registers 2

    .line 841
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 770
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonthValue()I
    .registers 2

    .line 755
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNano()I
    .registers 2

    .line 859
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getSecond()I
    .registers 2

    .line 850
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getYear()I
    .registers 2

    .line 741
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1935
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1844
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_11

    .line 1845
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 1847
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1873
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_11

    .line 1874
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 1876
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1902
    .local p1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_11

    .line 1903
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 1905
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 570
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 571
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :cond_17
    :goto_17
    return v1

    .line 573
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_18
    if-eqz p1, :cond_21

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 614
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1382
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 1354
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    .line 1355
    .local v0, "periodToSubtract":Ljava/time/Period;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1357
    .end local v0    # "periodToSubtract":Ljava/time/Period;
    :cond_14
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1358
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
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
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

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

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusDays(J)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "days"    # J

    .line 1469
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusHours(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "hours"    # J

    .line 1483
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    .end local p1    # "hours":J
    .local v2, "hours":J
    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusMinutes(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "minutes"    # J

    .line 1496
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    .end local p1    # "minutes":J
    .local v4, "minutes":J
    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusMonths(J)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "months"    # J

    .line 1431
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusNanos(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "nanos"    # J

    .line 1522
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v6, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v8, p1

    .end local p1    # "nanos":J
    .local v8, "nanos":J
    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusSeconds(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "seconds"    # J

    .line 1509
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    .end local p1    # "seconds":J
    .local v6, "seconds":J
    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusWeeks(J)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "weeks"    # J

    .line 1450
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusYears(J)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "years"    # J

    .line 1407
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .registers 10
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1172
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_6e

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 1173
    .local v0, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/LocalDateTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_76

    .line 1182
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1180
    :pswitch_1f
    const-wide/16 v1, 0x100

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0xc

    mul-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1179
    :pswitch_31
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1178
    :pswitch_36
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1177
    :pswitch_3b
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1176
    :pswitch_40
    const-wide/32 v1, 0x5265c00

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/32 v4, 0xf4240

    mul-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1175
    :pswitch_54
    const-wide v1, 0x141dd76000L

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1174
    :pswitch_69
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1184
    .end local v0    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_6e
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_69
        :pswitch_54
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 1137
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    .line 1138
    .local v0, "periodToAdd":Ljava/time/Period;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1140
    .end local v0    # "periodToAdd":Ljava/time/Period;
    :cond_14
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1141
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
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
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

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

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusDays(J)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "days"    # J

    .line 1274
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1275
    .local v0, "newDate":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api plusHours(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "hours"    # J

    .line 1289
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    .end local p1    # "hours":J
    .local v2, "hours":J
    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusMinutes(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "minutes"    # J

    .line 1302
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    .end local p1    # "minutes":J
    .local v4, "minutes":J
    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusMonths(J)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "months"    # J

    .line 1234
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1235
    .local v0, "newDate":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api plusNanos(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "nanos"    # J

    .line 1328
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v8, p1

    .end local p1    # "nanos":J
    .local v8, "nanos":J
    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusSeconds(J)Ljava/time/LocalDateTime;
    .registers 14
    .param p1, "seconds"    # J

    .line 1315
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    .end local p1    # "seconds":J
    .local v6, "seconds":J
    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusWeeks(J)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "weeks"    # J

    .line 1254
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1255
    .local v0, "newDate":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api plusYears(J)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "years"    # J

    .line 1209
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1210
    .local v0, "newDate":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1583
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 1584
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    return-object v0

    .line 1586
    :cond_9
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 643
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 644
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    :goto_1a
    return-object v1

    .line 646
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocalDate()Ljava/time/LocalDate;
    .registers 2

    .line 727
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 129
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .line 823
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1111
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 16
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1670
    invoke-static {p1}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1671
    .local v0, "end":Ljava/time/LocalDateTime;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_dc

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    .line 1672
    .local v1, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    invoke-interface {p2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_a6

    .line 1673
    iget-object v2, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v5, v0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v2, v5}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v5

    .line 1674
    .local v5, "amount":J
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_2a

    .line 1675
    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v3, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3, p2}, Ljava/time/LocalTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    .line 1677
    :cond_2a
    iget-object v2, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v9

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 1678
    .local v9, "timePart":J
    cmp-long v2, v5, v7

    const-wide v7, 0x4e94914f0000L

    if-lez v2, :cond_43

    .line 1679
    sub-long/2addr v5, v3

    .line 1680
    add-long/2addr v9, v7

    goto :goto_45

    .line 1682
    :cond_43
    add-long/2addr v5, v3

    .line 1683
    sub-long/2addr v9, v7

    .line 1685
    :goto_45
    sget-object v2, Ljava/time/LocalDateTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e2

    goto :goto_a1

    .line 1710
    :pswitch_51
    const/4 v2, 0x2

    invoke-static {v5, v6, v2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v5

    .line 1711
    const-wide v2, 0x274a48a78000L

    div-long/2addr v9, v2

    goto :goto_a1

    .line 1706
    :pswitch_5d
    const/16 v2, 0x18

    invoke-static {v5, v6, v2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v5

    .line 1707
    const-wide v2, 0x34630b8a000L

    div-long/2addr v9, v2

    .line 1708
    goto :goto_a1

    .line 1702
    :pswitch_6a
    const/16 v2, 0x5a0

    invoke-static {v5, v6, v2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v5

    .line 1703
    const-wide v2, 0xdf8475800L

    div-long/2addr v9, v2

    .line 1704
    goto :goto_a1

    .line 1698
    :pswitch_77
    const v2, 0x15180

    invoke-static {v5, v6, v2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v5

    .line 1699
    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v9, v2

    .line 1700
    goto :goto_a1

    .line 1694
    :pswitch_83
    const-wide/32 v2, 0x5265c00

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v5

    .line 1695
    const-wide/32 v2, 0xf4240

    div-long/2addr v9, v2

    .line 1696
    goto :goto_a1

    .line 1690
    :pswitch_8f
    const-wide v2, 0x141dd76000L

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v5

    .line 1691
    const-wide/16 v2, 0x3e8

    div-long/2addr v9, v2

    .line 1692
    goto :goto_a1

    .line 1687
    :pswitch_9c
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v5

    .line 1688
    nop

    .line 1714
    :goto_a1
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    return-wide v2

    .line 1716
    .end local v5    # "amount":J
    .end local v9    # "timePart":J
    :cond_a6
    iget-object v2, v0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    .line 1717
    .local v2, "endDate":Ljava/time/LocalDate;
    iget-object v5, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v2, v5}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v5

    if-eqz v5, :cond_bf

    iget-object v5, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v6, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 1718
    invoke-virtual {v2, v3, v4}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v2

    goto :goto_d5

    .line 1719
    :cond_bf
    iget-object v5, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v2, v5}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v5

    if-eqz v5, :cond_d5

    iget-object v5, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v6, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 1720
    invoke-virtual {v2, v3, v4}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v2

    .line 1722
    :cond_d5
    :goto_d5
    iget-object v3, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v3, v2, p2}, Ljava/time/LocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    return-wide v3

    .line 1724
    .end local v1    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    .end local v2    # "endDate":Ljava/time/LocalDate;
    :cond_dc
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_8f
        :pswitch_83
        :pswitch_77
        :pswitch_6a
        :pswitch_5d
        :pswitch_51
    .end packed-switch
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 910
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_e

    .line 911
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 912
    :cond_e
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_1c

    .line 913
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v1, p1

    check-cast v1, Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 914
    :cond_1c
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_24

    .line 915
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0

    .line 917
    :cond_24
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 956
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_27

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 957
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 958
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 960
    :cond_1a
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 963
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_27
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
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
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
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

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withDayOfMonth(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "dayOfMonth"    # I

    .line 1013
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withDayOfYear(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "dayOfYear"    # I

    .line 1029
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withHour(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "hour"    # I

    .line 1043
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v0

    .line 1044
    .local v0, "newTime":Ljava/time/LocalTime;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api withMinute(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "minute"    # I

    .line 1057
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v0

    .line 1058
    .local v0, "newTime":Ljava/time/LocalTime;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api withMonth(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "month"    # I

    .line 996
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withNano(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "nanoOfSecond"    # I

    .line 1085
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v0

    .line 1086
    .local v0, "newTime":Ljava/time/LocalTime;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api withSecond(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "second"    # I

    .line 1071
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v0

    .line 1072
    .local v0, "newTime":Ljava/time/LocalTime;
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api withYear(I)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "year"    # I

    .line 980
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1990
    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 1991
    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1992
    return-void
.end method
