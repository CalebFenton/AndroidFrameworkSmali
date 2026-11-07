.class public final Ljava/time/LocalTime;
.super Ljava/lang/Object;
.source "LocalTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Ljava/time/LocalTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o HOURS:[Ljava/time/LocalTime;

.field static final greylist-max-o HOURS_PER_DAY:I = 0x18

.field public static final whitelist test-api MAX:Ljava/time/LocalTime;

.field static final greylist-max-o MICROS_PER_DAY:J = 0x141dd76000L

.field public static final whitelist test-api MIDNIGHT:Ljava/time/LocalTime;

.field static final greylist-max-o MILLIS_PER_DAY:J = 0x5265c00L

.field public static final whitelist test-api MIN:Ljava/time/LocalTime;

.field static final greylist-max-o MINUTES_PER_DAY:I = 0x5a0

.field static final greylist-max-o MINUTES_PER_HOUR:I = 0x3c

.field static final greylist-max-o NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final greylist-max-o NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final blacklist NANOS_PER_MILLI:J = 0xf4240L

.field static final greylist-max-o NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final greylist-max-o NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final whitelist test-api NOON:Ljava/time/LocalTime;

.field static final greylist-max-o SECONDS_PER_DAY:I = 0x15180

.field static final greylist-max-o SECONDS_PER_HOUR:I = 0xe10

.field static final greylist-max-o SECONDS_PER_MINUTE:I = 0x3c

.field private static final whitelist serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final greylist-max-o hour:B

.field private final greylist-max-o minute:B

.field private final greylist-max-o nano:I

.field private final greylist-max-o second:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 143
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/time/LocalTime;

    sput-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_19

    .line 146
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    new-instance v3, Ljava/time/LocalTime;

    invoke-direct {v3, v0, v2, v2, v2}, Ljava/time/LocalTime;-><init>(IIII)V

    aput-object v3, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 148
    .end local v0    # "i":I
    :cond_19
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v0, v0, v2

    sput-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    .line 149
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    sput-object v0, Ljava/time/LocalTime;->NOON:Ljava/time/LocalTime;

    .line 150
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v0, v0, v2

    sput-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 151
    new-instance v0, Ljava/time/LocalTime;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v3, v3, v2}, Ljava/time/LocalTime;-><init>(IIII)V

    sput-object v0, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    .line 152
    return-void
.end method

.method private constructor greylist-max-o <init>(IIII)V
    .registers 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "nanoOfSecond"    # I

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    int-to-byte v0, p1

    iput-byte v0, p0, Ljava/time/LocalTime;->hour:B

    .line 491
    int-to-byte v0, p2

    iput-byte v0, p0, Ljava/time/LocalTime;->minute:B

    .line 492
    int-to-byte v0, p3

    iput-byte v0, p0, Ljava/time/LocalTime;->second:B

    .line 493
    iput p4, p0, Ljava/time/LocalTime;->nano:I

    .line 494
    return-void
.end method

.method private static greylist-max-o create(IIII)Ljava/time/LocalTime;
    .registers 5
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I

    .line 475
    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_a

    .line 476
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 478
    :cond_a
    new-instance v0, Ljava/time/LocalTime;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 423
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    .line 425
    .local v0, "time":Ljava/time/LocalTime;
    if-eqz v0, :cond_12

    .line 429
    return-object v0

    .line 426
    :cond_12
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain LocalTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o get0(Ljava/time/temporal/TemporalField;)I
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 680
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    packed-switch v0, :pswitch_data_84

    .line 697
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

    .line 695
    :pswitch_29
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    div-int/2addr v0, v1

    return v0

    .line 694
    :pswitch_2d
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    if-nez v0, :cond_34

    const/16 v0, 0x18

    goto :goto_36

    :cond_34
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    :goto_36
    return v0

    .line 693
    :pswitch_37
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    return v0

    .line 692
    :pswitch_3a
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    rem-int/2addr v0, v1

    .local v0, "ham":I
    rem-int/lit8 v2, v0, 0xc

    if-nez v2, :cond_42

    goto :goto_43

    :cond_42
    move v1, v0

    :goto_43
    return v1

    .line 691
    .end local v0    # "ham":I
    :pswitch_44
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    rem-int/2addr v0, v1

    return v0

    .line 690
    :pswitch_48
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    add-int/2addr v0, v1

    return v0

    .line 689
    :pswitch_50
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    return v0

    .line 688
    :pswitch_53
    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v0

    return v0

    .line 687
    :pswitch_58
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    return v0

    .line 686
    :pswitch_5b
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 685
    :pswitch_65
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    .line 684
    :pswitch_6c
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'MicroOfDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :pswitch_74
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 682
    :pswitch_79
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'NanoOfDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :pswitch_81
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    return v0

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_81
        :pswitch_79
        :pswitch_74
        :pswitch_6c
        :pswitch_65
        :pswitch_5b
        :pswitch_58
        :pswitch_53
        :pswitch_50
        :pswitch_48
        :pswitch_44
        :pswitch_3a
        :pswitch_37
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method

.method public static whitelist test-api now()Ljava/time/LocalTime;
    .registers 1

    .line 243
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalTime;->now(Ljava/time/Clock;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/LocalTime;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .line 273
    const-string v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 276
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/LocalTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 259
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalTime;->now(Ljava/time/Clock;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(II)Ljava/time/LocalTime;
    .registers 5
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .line 292
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 293
    if-nez p1, :cond_d

    .line 294
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 296
    :cond_d
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 297
    new-instance v0, Ljava/time/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Ljava/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static whitelist test-api of(III)Ljava/time/LocalTime;
    .registers 6
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I

    .line 313
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 314
    or-int v0, p1, p2

    if-nez v0, :cond_f

    .line 315
    sget-object v0, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 317
    :cond_f
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 318
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 319
    new-instance v0, Ljava/time/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static whitelist test-api of(IIII)Ljava/time/LocalTime;
    .registers 7
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I

    .line 335
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 336
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 337
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 338
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 339
    invoke-static {p0, p1, p2, p3}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalTime;
    .registers 10
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 356
    const-string v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 357
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 359
    .local v0, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 360
    .local v1, "localSecond":J
    const v3, 0x15180

    invoke-static {v1, v2, v3}, Ljava/lang/Math;->floorMod(JI)I

    move-result v3

    .line 361
    .local v3, "secsOfDay":I
    int-to-long v4, v3

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v4, v6

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist test-api ofNanoOfDay(J)Ljava/time/LocalTime;
    .registers 9
    .param p0, "nanoOfDay"    # J

    .line 394
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 395
    const-wide v0, 0x34630b8a000L

    div-long v2, p0, v0

    long-to-int v2, v2

    .line 396
    .local v2, "hours":I
    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p0, v3

    .line 397
    const-wide v0, 0xdf8475800L

    div-long v3, p0, v0

    long-to-int v3, v3

    .line 398
    .local v3, "minutes":I
    int-to-long v4, v3

    mul-long/2addr v4, v0

    sub-long/2addr p0, v4

    .line 399
    const-wide/32 v0, 0x3b9aca00

    div-long v4, p0, v0

    long-to-int v4, v4

    .line 400
    .local v4, "seconds":I
    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    .line 401
    long-to-int v0, p0

    invoke-static {v2, v3, v4, v0}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofSecondOfDay(J)Ljava/time/LocalTime;
    .registers 6
    .param p0, "secondOfDay"    # J

    .line 376
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 377
    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 378
    .local v0, "hours":I
    mul-int/lit16 v1, v0, 0xe10

    int-to-long v1, v1

    sub-long/2addr p0, v1

    .line 379
    const-wide/16 v1, 0x3c

    div-long v1, p0, v1

    long-to-int v1, v1

    .line 380
    .local v1, "minutes":I
    mul-int/lit8 v2, v1, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 381
    long-to-int v2, p0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 444
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 458
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 459
    new-instance v0, Ljava/time/LocalTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/LocalTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1713
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 1714
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 1715
    .local v1, "minute":I
    const/4 v2, 0x0

    .line 1716
    .local v2, "second":I
    const/4 v3, 0x0

    .line 1717
    .local v3, "nano":I
    if-gez v0, :cond_b

    .line 1718
    not-int v0, v0

    goto :goto_1f

    .line 1720
    :cond_b
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1721
    if-gez v1, :cond_13

    .line 1722
    not-int v1, v1

    goto :goto_1f

    .line 1724
    :cond_13
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 1725
    if-gez v2, :cond_1b

    .line 1726
    not-int v2, v2

    goto :goto_1f

    .line 1728
    :cond_1b
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 1732
    :goto_1f
    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1687
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1676
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1350
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;
    .registers 3
    .param p1, "date"    # Ljava/time/LocalDate;

    .line 1444
    invoke-static {p1, p0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .registers 3
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 1457
    invoke-static {p0, p1}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
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

    .line 119
    check-cast p1, Ljava/time/LocalTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/LocalTime;)I
    .registers 5
    .param p1, "other"    # Ljava/time/LocalTime;

    .line 1525
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v1, p1, Ljava/time/LocalTime;->hour:B

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1526
    .local v0, "cmp":I
    if-nez v0, :cond_26

    .line 1527
    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v2, p1, Ljava/time/LocalTime;->minute:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1528
    if-nez v0, :cond_26

    .line 1529
    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    iget-byte v2, p1, Ljava/time/LocalTime;->second:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1530
    if-nez v0, :cond_26

    .line 1531
    iget v1, p0, Ljava/time/LocalTime;->nano:I

    iget v2, p1, Ljava/time/LocalTime;->nano:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1535
    :cond_26
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1579
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1580
    return v0

    .line 1586
    :cond_4
    instance-of v1, p1, Ljava/time/LocalTime;

    if-eqz v1, :cond_24

    .line 1582
    move-object v1, p1

    check-cast v1, Ljava/time/LocalTime;

    .local v1, "other":Ljava/time/LocalTime;
    iget-byte v2, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v3, v1, Ljava/time/LocalTime;->hour:B

    if-ne v2, v3, :cond_24

    iget-byte v2, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v3, v1, Ljava/time/LocalTime;->minute:B

    if-ne v2, v3, :cond_24

    iget-byte v2, p0, Ljava/time/LocalTime;->second:B

    iget-byte v3, v1, Ljava/time/LocalTime;->second:B

    if-ne v2, v3, :cond_24

    iget v2, p0, Ljava/time/LocalTime;->nano:I

    iget v3, v1, Ljava/time/LocalTime;->nano:I

    if-ne v2, v3, :cond_24

    goto :goto_25

    .end local v1    # "other":Ljava/time/LocalTime;
    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1429
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1430
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 636
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    .line 637
    invoke-direct {p0, p1}, Ljava/time/LocalTime;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 639
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getHour()I
    .registers 2

    .line 707
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 667
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1f

    .line 668
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    .line 669
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    return-wide v0

    .line 671
    :cond_d
    sget-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_19

    .line 672
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 674
    :cond_19
    invoke-direct {p0, p1}, Ljava/time/LocalTime;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 676
    :cond_1f
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getMinute()I
    .registers 2

    .line 716
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    return v0
.end method

.method public whitelist test-api getNano()I
    .registers 2

    .line 734
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    return v0
.end method

.method public whitelist test-api getSecond()I
    .registers 2

    .line 725
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1596
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1597
    .local v0, "nod":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public whitelist test-api isAfter(Ljava/time/LocalTime;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/LocalTime;

    .line 1548
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/LocalTime;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/LocalTime;

    .line 1561
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 536
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    .line 537
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    return v0

    .line 539
    :cond_9
    if-eqz p1, :cond_13

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 572
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_9

    .line 573
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    .line 575
    :cond_9
    if-eqz p1, :cond_13

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1223
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 1199
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

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

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

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

    .line 119
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusHours(J)Ljava/time/LocalTime;
    .registers 5
    .param p1, "hoursToSubtract"    # J

    .line 1239
    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minusMinutes(J)Ljava/time/LocalTime;
    .registers 5
    .param p1, "minutesToSubtract"    # J

    .line 1254
    const-wide/16 v0, 0x5a0

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minusNanos(J)Ljava/time/LocalTime;
    .registers 5
    .param p1, "nanosToSubtract"    # J

    .line 1284
    const-wide v0, 0x4e94914f0000L

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minusSeconds(J)Ljava/time/LocalTime;
    .registers 5
    .param p1, "secondsToSubtract"    # J

    .line 1269
    const-wide/32 v0, 0x15180

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .registers 9
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1062
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_68

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 1063
    .local v0, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_70

    .line 1072
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

    .line 1070
    :pswitch_2b
    const-wide/16 v1, 0x2

    rem-long v1, p1, v1

    const-wide/16 v3, 0xc

    mul-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 1069
    :pswitch_37
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 1068
    :pswitch_3c
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 1067
    :pswitch_41
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 1066
    :pswitch_46
    const-wide/32 v1, 0x5265c00

    rem-long v1, p1, v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 1065
    :pswitch_54
    const-wide v1, 0x141dd76000L

    rem-long v1, p1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 1064
    :pswitch_63
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 1074
    .end local v0    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_68
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_63
        :pswitch_54
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 1005
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

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

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

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

    .line 119
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusHours(J)Ljava/time/LocalTime;
    .registers 7
    .param p1, "hoursToAdd"    # J

    .line 1090
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1091
    return-object p0

    .line 1093
    :cond_7
    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    long-to-int v0, v0

    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x18

    rem-int/lit8 v0, v0, 0x18

    .line 1094
    .local v0, "newHour":I
    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v2, p0, Ljava/time/LocalTime;->second:B

    iget v3, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api plusMinutes(J)Ljava/time/LocalTime;
    .registers 9
    .param p1, "minutesToAdd"    # J

    .line 1109
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1110
    return-object p0

    .line 1112
    :cond_7
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    add-int/2addr v0, v1

    .line 1113
    .local v0, "mofd":I
    const-wide/16 v1, 0x5a0

    rem-long v1, p1, v1

    long-to-int v1, v1

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x5a0

    rem-int/lit16 v1, v1, 0x5a0

    .line 1114
    .local v1, "newMofd":I
    if-ne v0, v1, :cond_1b

    .line 1115
    return-object p0

    .line 1117
    :cond_1b
    div-int/lit8 v2, v1, 0x3c

    .line 1118
    .local v2, "newHour":I
    rem-int/lit8 v3, v1, 0x3c

    .line 1119
    .local v3, "newMinute":I
    iget-byte v4, p0, Ljava/time/LocalTime;->second:B

    iget v5, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v2, v3, v4, v5}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api plusNanos(J)Ljava/time/LocalTime;
    .registers 15
    .param p1, "nanosToAdd"    # J

    .line 1161
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1162
    return-object p0

    .line 1164
    :cond_7
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1165
    .local v0, "nofd":J
    const-wide v2, 0x4e94914f0000L

    rem-long v4, p1, v2

    add-long/2addr v4, v0

    add-long/2addr v4, v2

    rem-long/2addr v4, v2

    .line 1166
    .local v4, "newNofd":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1a

    .line 1167
    return-object p0

    .line 1169
    :cond_1a
    const-wide v2, 0x34630b8a000L

    div-long v2, v4, v2

    long-to-int v2, v2

    .line 1170
    .local v2, "newHour":I
    const-wide v6, 0xdf8475800L

    div-long v6, v4, v6

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    long-to-int v3, v6

    .line 1171
    .local v3, "newMinute":I
    const-wide/32 v6, 0x3b9aca00

    div-long v10, v4, v6

    rem-long/2addr v10, v8

    long-to-int v8, v10

    .line 1172
    .local v8, "newSecond":I
    rem-long v6, v4, v6

    long-to-int v6, v6

    .line 1173
    .local v6, "newNano":I
    invoke-static {v2, v3, v8, v6}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v7

    return-object v7
.end method

.method public whitelist test-api plusSeconds(J)Ljava/time/LocalTime;
    .registers 9
    .param p1, "secondstoAdd"    # J

    .line 1134
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1135
    return-object p0

    .line 1137
    :cond_7
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    add-int/2addr v0, v1

    .line 1139
    .local v0, "sofd":I
    const-wide/32 v1, 0x15180

    rem-long v1, p1, v1

    long-to-int v1, v1

    add-int/2addr v1, v0

    const v2, 0x15180

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    .line 1140
    .local v1, "newSofd":I
    if-ne v0, v1, :cond_22

    .line 1141
    return-object p0

    .line 1143
    :cond_22
    div-int/lit16 v2, v1, 0xe10

    .line 1144
    .local v2, "newHour":I
    div-int/lit8 v3, v1, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 1145
    .local v3, "newMinute":I
    rem-int/lit8 v4, v1, 0x3c

    .line 1146
    .local v4, "newSecond":I
    iget v5, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v2, v3, v4, v5}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1309
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_36

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_36

    .line 1310
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_36

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1a

    goto :goto_36

    .line 1312
    :cond_1a
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_21

    .line 1313
    return-object p0

    .line 1314
    :cond_21
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_28

    .line 1315
    return-object v1

    .line 1316
    :cond_28
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_31

    .line 1317
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 1321
    :cond_31
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1311
    :cond_36
    :goto_36
    return-object v1
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 604
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toEpochSecond(Ljava/time/LocalDate;Ljava/time/ZoneOffset;)J
    .registers 9
    .param p1, "date"    # Ljava/time/LocalDate;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 1504
    const-string v0, "date"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1505
    const-string v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1506
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 1507
    .local v0, "epochDay":J
    const-wide/32 v2, 0x15180

    mul-long/2addr v2, v0

    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1508
    .local v2, "secs":J
    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 1509
    return-wide v2
.end method

.method public whitelist test-api toNanoOfDay()J
    .registers 7

    .line 1481
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long/2addr v0, v2

    .line 1482
    .local v0, "total":J
    iget-byte v2, p0, Ljava/time/LocalTime;->minute:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1483
    iget-byte v2, p0, Ljava/time/LocalTime;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1484
    iget v2, p0, Ljava/time/LocalTime;->nano:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1485
    return-wide v0
.end method

.method public whitelist test-api toSecondOfDay()I
    .registers 3

    .line 1468
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    .line 1469
    .local v0, "total":I
    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 1470
    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    add-int/2addr v0, v1

    .line 1471
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1620
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    .line 1621
    .local v1, "hourValue":I
    iget-byte v2, p0, Ljava/time/LocalTime;->minute:B

    .line 1622
    .local v2, "minuteValue":I
    iget-byte v3, p0, Ljava/time/LocalTime;->second:B

    .line 1623
    .local v3, "secondValue":I
    iget v4, p0, Ljava/time/LocalTime;->nano:I

    .line 1624
    .local v4, "nanoValue":I
    const/16 v5, 0xa

    if-ge v1, v5, :cond_16

    const-string v6, "0"

    goto :goto_18

    :cond_16
    const-string v6, ""

    :goto_18
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1625
    const-string v7, ":0"

    const-string v8, ":"

    if-ge v2, v5, :cond_28

    move-object v9, v7

    goto :goto_29

    :cond_28
    move-object v9, v8

    :goto_29
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1626
    if-gtz v3, :cond_34

    if-lez v4, :cond_80

    .line 1627
    :cond_34
    if-ge v3, v5, :cond_37

    goto :goto_38

    :cond_37
    move-object v7, v8

    :goto_38
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1628
    if-lez v4, :cond_80

    .line 1629
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1630
    const v5, 0xf4240

    rem-int v6, v4, v5

    const/4 v7, 0x1

    if-nez v6, :cond_5e

    .line 1631
    div-int v5, v4, v5

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 1632
    :cond_5e
    rem-int/lit16 v6, v4, 0x3e8

    if-nez v6, :cond_71

    .line 1633
    div-int/lit16 v6, v4, 0x3e8

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 1635
    :cond_71
    const v5, 0x3b9aca00

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    :cond_80
    :goto_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .registers 9
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 967
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_5

    .line 968
    return-object p0

    .line 970
    :cond_5
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v0

    .line 971
    .local v0, "unitDur":Ljava/time/Duration;
    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    cmp-long v1, v1, v3

    if-gtz v1, :cond_38

    .line 974
    invoke-virtual {v0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    .line 975
    .local v1, "dur":J
    const-wide v3, 0x4e94914f0000L

    rem-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    .line 978
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    .line 979
    .local v3, "nod":J
    div-long v5, v3, v1

    mul-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    return-object v5

    .line 976
    .end local v3    # "nod":J
    :cond_30
    new-instance v3, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v4, "Unit must divide into a standard day without remainder"

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 972
    .end local v1    # "dur":J
    :cond_38
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 10
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1402
    invoke-static {p1}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v0

    .line 1403
    .local v0, "end":Ljava/time/LocalTime;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_62

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    .line 1404
    .local v1, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1405
    .local v2, "nanosUntil":J
    sget-object v4, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_68

    .line 1414
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported unit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1412
    :pswitch_38
    const-wide v4, 0x274a48a78000L

    div-long v4, v2, v4

    return-wide v4

    .line 1411
    :pswitch_40
    const-wide v4, 0x34630b8a000L

    div-long v4, v2, v4

    return-wide v4

    .line 1410
    :pswitch_48
    const-wide v4, 0xdf8475800L

    div-long v4, v2, v4

    return-wide v4

    .line 1409
    :pswitch_50
    const-wide/32 v4, 0x3b9aca00

    div-long v4, v2, v4

    return-wide v4

    .line 1408
    :pswitch_56
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    return-wide v4

    .line 1407
    :pswitch_5c
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    return-wide v4

    .line 1406
    :pswitch_61
    return-wide v2

    .line 1416
    .end local v1    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    .end local v2    # "nanosUntil":J
    :cond_62
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_48
        :pswitch_40
        :pswitch_38
    .end packed-switch
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalTime;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 762
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_8

    .line 763
    move-object v0, p1

    check-cast v0, Ljava/time/LocalTime;

    return-object v0

    .line 765
    :cond_8
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;
    .registers 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 852
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_c5

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 853
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 854
    sget-object v1, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc

    packed-switch v1, :pswitch_data_cc

    .line 871
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    :pswitch_32
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    div-int/lit8 v1, v1, 0xc

    int-to-long v1, v1

    sub-long v1, p2, v1

    mul-long/2addr v1, v4

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 868
    :pswitch_3f
    const-wide/16 v4, 0x18

    cmp-long v1, p2, v4

    if-nez v1, :cond_46

    goto :goto_47

    :cond_46
    move-wide v2, p2

    :goto_47
    long-to-int v1, v2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 867
    :pswitch_4d
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 866
    :pswitch_53
    cmp-long v1, p2, v4

    if-nez v1, :cond_58

    goto :goto_59

    :cond_58
    move-wide v2, p2

    :goto_59
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 865
    :pswitch_64
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 864
    :pswitch_70
    iget-byte v1, p0, Ljava/time/LocalTime;->hour:B

    mul-int/lit8 v1, v1, 0x3c

    iget-byte v2, p0, Ljava/time/LocalTime;->minute:B

    add-int/2addr v1, v2

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 863
    :pswitch_7f
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 862
    :pswitch_85
    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 861
    :pswitch_91
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 860
    :pswitch_97
    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 859
    :pswitch_a0
    long-to-int v1, p2

    const v2, 0xf4240

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 858
    :pswitch_aa
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 857
    :pswitch_b2
    long-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 856
    :pswitch_ba
    invoke-static {p2, p3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 855
    :pswitch_bf
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 873
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_c5
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_ba
        :pswitch_b2
        :pswitch_aa
        :pswitch_a0
        :pswitch_97
        :pswitch_91
        :pswitch_85
        :pswitch_7f
        :pswitch_70
        :pswitch_64
        :pswitch_53
        :pswitch_4d
        :pswitch_3f
        :pswitch_32
    .end packed-switch
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

    .line 119
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalTime;

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

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withHour(I)Ljava/time/LocalTime;
    .registers 5
    .param p1, "hour"    # I

    .line 887
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    if-ne v0, p1, :cond_5

    .line 888
    return-object p0

    .line 890
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 891
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    iget v2, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {p1, v0, v1, v2}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMinute(I)Ljava/time/LocalTime;
    .registers 5
    .param p1, "minute"    # I

    .line 904
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    if-ne v0, p1, :cond_5

    .line 905
    return-object p0

    .line 907
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 908
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljava/time/LocalTime;->second:B

    iget v2, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v0, p1, v1, v2}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withNano(I)Ljava/time/LocalTime;
    .registers 5
    .param p1, "nanoOfSecond"    # I

    .line 938
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    if-ne v0, p1, :cond_5

    .line 939
    return-object p0

    .line 941
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 942
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    iget-byte v2, p0, Ljava/time/LocalTime;->second:B

    invoke-static {v0, v1, v2, p1}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withSecond(I)Ljava/time/LocalTime;
    .registers 5
    .param p1, "second"    # I

    .line 921
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    if-ne v0, p1, :cond_5

    .line 922
    return-object p0

    .line 924
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 925
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljava/time/LocalTime;->minute:B

    iget v2, p0, Ljava/time/LocalTime;->nano:I

    invoke-static {v0, v1, p1, v2}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

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

    .line 1691
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    if-nez v0, :cond_30

    .line 1692
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    if-nez v0, :cond_1f

    .line 1693
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    if-nez v0, :cond_13

    .line 1694
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_44

    .line 1696
    :cond_13
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1697
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_44

    .line 1700
    :cond_1f
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1701
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1702
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_44

    .line 1705
    :cond_30
    iget-byte v0, p0, Ljava/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1706
    iget-byte v0, p0, Ljava/time/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1707
    iget-byte v0, p0, Ljava/time/LocalTime;->second:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1708
    iget v0, p0, Ljava/time/LocalTime;->nano:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1710
    :goto_44
    return-void
.end method
