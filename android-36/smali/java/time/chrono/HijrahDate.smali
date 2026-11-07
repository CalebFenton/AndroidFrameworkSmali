.class public final Ljava/time/chrono/HijrahDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "HijrahDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl<",
        "Ljava/time/chrono/HijrahDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient greylist-max-o chrono:Ljava/time/chrono/HijrahChronology;

.field private final transient greylist-max-o dayOfMonth:I

.field private final transient greylist-max-o monthOfYear:I

.field private final transient greylist-max-o prolepticYear:I


# direct methods
.method private constructor greylist-max-o <init>(Ljava/time/chrono/HijrahChronology;III)V
    .registers 5
    .param p1, "chrono"    # Ljava/time/chrono/HijrahChronology;
    .param p2, "prolepticYear"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 263
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 265
    invoke-virtual {p1, p2, p3, p4}, Ljava/time/chrono/HijrahChronology;->getEpochDay(III)J

    .line 267
    iput-object p1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    .line 268
    iput p2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    .line 269
    iput p3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    .line 270
    iput p4, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    .line 271
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/chrono/HijrahChronology;J)V
    .registers 6
    .param p1, "chrono"    # Ljava/time/chrono/HijrahChronology;
    .param p2, "epochDay"    # J

    .line 278
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 279
    long-to-int v0, p2

    invoke-virtual {p1, v0}, Ljava/time/chrono/HijrahChronology;->getHijrahDateInfo(I)[I

    move-result-object v0

    .line 281
    .local v0, "dateInfo":[I
    iput-object p1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    .line 282
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    .line 283
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    .line 284
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    .line 285
    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 250
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getDayOfWeek()I
    .registers 5

    .line 494
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->floorMod(JI)I

    move-result v0

    .line 495
    .local v0, "dow0":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private greylist-max-o getDayOfYear()I
    .registers 4

    .line 485
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    iget v1, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getEraValue()I
    .registers 3

    .line 504
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private greylist-max-o getProlepticMonth()J
    .registers 5

    .line 385
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api now()Ljava/time/chrono/HijrahDate;
    .registers 1

    .line 178
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/HijrahDate;->now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p0, "clock"    # Ljava/time/Clock;

    .line 211
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 195
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/HijrahDate;->now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(III)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 229
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p0, "chrono"    # Ljava/time/chrono/HijrahChronology;
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .line 151
    new-instance v0, Ljava/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;III)V

    return-object v0
.end method

.method static greylist-max-o ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p0, "chrono"    # Ljava/time/chrono/HijrahChronology;
    .param p1, "epochDay"    # J

    .line 161
    new-instance v0, Ljava/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 684
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahChronology;

    .line 685
    .local v0, "chrono":Ljava/time/chrono/HijrahChronology;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 686
    .local v1, "year":I
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 687
    .local v2, "month":I
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    .line 688
    .local v3, "dayOfMonth":I
    invoke-virtual {v0, v1, v2, v3}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

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

    .line 653
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 415
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v0, p1, p2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    .line 416
    .local v0, "monthDays":I
    if-le p3, v0, :cond_9

    .line 417
    move p3, v0

    .line 419
    :cond_9
    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-static {v1, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 672
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 583
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 620
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 621
    return v0

    .line 627
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/HijrahDate;

    if-eqz v1, :cond_2c

    .line 623
    move-object v1, p1

    check-cast v1, Ljava/time/chrono/HijrahDate;

    .local v1, "otherDate":Ljava/time/chrono/HijrahDate;
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, v1, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    if-ne v2, v3, :cond_2c

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, v1, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    if-ne v2, v3, :cond_2c

    iget v2, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    iget v3, v1, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    if-ne v2, v3, :cond_2c

    .line 627
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v2

    invoke-virtual {v1}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahChronology;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2d

    .end local v1    # "otherDate":Ljava/time/chrono/HijrahDate;
    :cond_2c
    const/4 v0, 0x0

    .line 623
    :goto_2d
    return v0
.end method

.method public bridge synthetic whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 113
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getChronology()Ljava/time/chrono/HijrahChronology;
    .registers 2

    .line 298
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getEra()Ljava/time/chrono/Era;
    .registers 2

    .line 113
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getEra()Ljava/time/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEra()Ljava/time/chrono/HijrahEra;
    .registers 2

    .line 311
    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 363
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_83

    .line 364
    sget-object v0, Ljava/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_88

    .line 379
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

    .line 377
    :pswitch_2b
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getEraValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 376
    :pswitch_31
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    .line 375
    :pswitch_35
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    .line 374
    :pswitch_39
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 373
    :pswitch_3e
    iget v0, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v0, v0

    return-wide v0

    .line 372
    :pswitch_42
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 370
    :pswitch_4e
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 367
    :pswitch_53
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 366
    :pswitch_5f
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 365
    :pswitch_69
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 371
    :pswitch_6f
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 369
    :pswitch_79
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 368
    :pswitch_7f
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    int-to-long v0, v0

    return-wide v0

    .line 381
    :cond_83
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_79
        :pswitch_6f
        :pswitch_69
        :pswitch_5f
        :pswitch_53
        :pswitch_4e
        :pswitch_42
        :pswitch_3e
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 637
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    .line 638
    .local v0, "yearValue":I
    iget v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    .line 639
    .local v1, "monthValue":I
    iget v2, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    .line 640
    .local v2, "dayValue":I
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    and-int/lit16 v4, v0, -0x800

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    xor-int/2addr v3, v4

    return v3
.end method

.method public whitelist test-api isLeapYear()Z
    .registers 4

    .line 515
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api lengthOfMonth()I
    .registers 4

    .line 324
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lengthOfYear()I
    .registers 3

    .line 338
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    invoke-virtual {v0, v1}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
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

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 557
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 469
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

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

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

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

    .line 113
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusDays(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "daysToSubtract"    # J

    .line 577
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusMonths(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "monthsToSubtract"    # J

    .line 567
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusWeeks(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusWeeks(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "weeksToSubtract"    # J

    .line 572
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusYears(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusYears(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "yearsToSubtract"    # J

    .line 562
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
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

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 552
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 459
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

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

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

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

    .line 113
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusDays(J)Ljava/time/chrono/HijrahDate;
    .registers 7
    .param p1, "days"    # J

    .line 547
    new-instance v0, Ljava/time/chrono/HijrahDate;

    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method bridge synthetic blacklist plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusMonths(J)Ljava/time/chrono/HijrahDate;
    .registers 12
    .param p1, "monthsToAdd"    # J

    .line 530
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 531
    return-object p0

    .line 533
    :cond_7
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v4, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 534
    .local v0, "monthCount":J
    add-long v4, v0, p1

    .line 535
    .local v4, "calcMonths":J
    iget-object v6, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/time/chrono/HijrahChronology;->checkValidYear(J)I

    move-result v6

    .line 536
    .local v6, "newYear":I
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 537
    .local v2, "newMonth":I
    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v6, v2, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    return-object v3
.end method

.method bridge synthetic blacklist plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusWeeks(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusWeeks(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "weeksToAdd"    # J

    .line 542
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic blacklist plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusYears(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusYears(J)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p1, "years"    # J

    .line 521
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 522
    return-object p0

    .line 524
    :cond_7
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    long-to-int v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    .line 525
    .local v0, "newYear":I
    iget v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 344
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_57

    .line 345
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 346
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 347
    .local v0, "f":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_5c

    .line 354
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 350
    :pswitch_23
    const-wide/16 v4, 0x5

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 349
    :pswitch_2a
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 348
    :pswitch_34
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 356
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_3e
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

    .line 358
    :cond_57
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2a
        :pswitch_23
    .end packed-switch
.end method

.method public whitelist test-api toEpochDay()J
    .registers 5

    .line 474
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/chrono/HijrahChronology;->getEpochDay(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 113
    invoke-super {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
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

    .line 113
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist test-api until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .registers 11
    .param p1, "endDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 589
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    .line 590
    .local v0, "end":Ljava/time/chrono/HijrahDate;
    iget v1, v0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    iget v2, v0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 591
    .local v1, "totalMonths":J
    iget v3, v0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    iget v4, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    sub-int/2addr v3, v4

    .line 592
    .local v3, "days":I
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    const-wide/16 v7, 0x1

    if-lez v6, :cond_35

    if-gez v3, :cond_35

    .line 593
    sub-long/2addr v1, v7

    .line 594
    invoke-virtual {p0, v1, v2}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    .line 595
    .local v4, "calcDate":Ljava/time/chrono/HijrahDate;
    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    .line 596
    .end local v4    # "calcDate":Ljava/time/chrono/HijrahDate;
    :cond_34
    goto :goto_41

    :cond_35
    cmp-long v4, v1, v4

    if-gez v4, :cond_34

    if-lez v3, :cond_34

    .line 597
    add-long/2addr v1, v7

    .line 598
    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 600
    :goto_41
    const-wide/16 v4, 0xc

    div-long v6, v1, v4

    .line 601
    .local v6, "years":J
    rem-long v4, v1, v4

    long-to-int v4, v4

    .line 602
    .local v4, "months":I
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v8

    invoke-virtual {v5, v8, v4, v3}, Ljava/time/chrono/HijrahChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
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

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 430
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;
    .registers 11
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 390
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_d8

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 392
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v1, v0}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 393
    long-to-int v1, p2

    .line 394
    .local v1, "nvalue":I
    sget-object v2, Ljava/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x7

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_e0

    .line 409
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :pswitch_38
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    sub-int/2addr v5, v2

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v5, v2, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 406
    :pswitch_44
    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v1, v2, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 405
    :pswitch_4d
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    if-lt v2, v5, :cond_53

    move v2, v1

    goto :goto_55

    :cond_53
    rsub-int/lit8 v2, v1, 0x1

    :goto_55
    iget v3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v4, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v3, v4}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 404
    :pswitch_5e
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 403
    :pswitch_69
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v1, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 402
    :pswitch_72
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long v5, p2, v5

    mul-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 400
    :pswitch_80
    new-instance v2, Ljava/time/chrono/HijrahDate;

    iget-object v3, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-direct {v2, v3, p2, p3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v2

    .line 397
    :pswitch_88
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 396
    :pswitch_95
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 395
    :pswitch_a2
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 401
    :pswitch_ae
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long v5, p2, v5

    mul-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 399
    :pswitch_bc
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 398
    :pswitch_cf
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-direct {p0, v2, v3, v1}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 411
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_d8
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_bc
        :pswitch_ae
        :pswitch_a2
        :pswitch_95
        :pswitch_88
        :pswitch_80
        :pswitch_72
        :pswitch_69
        :pswitch_5e
        :pswitch_4d
        :pswitch_44
        :pswitch_38
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

    .line 113
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

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

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withVariant(Ljava/time/chrono/HijrahChronology;)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p1, "chronology"    # Ljava/time/chrono/HijrahChronology;

    .line 444
    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    if-ne v0, p1, :cond_5

    .line 445
    return-object p0

    .line 448
    :cond_5
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {p1, v0, v1}, Ljava/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    .line 449
    .local v0, "monthDays":I
    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    if-le v3, v0, :cond_17

    move v3, v0

    goto :goto_19

    :cond_17
    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    :goto_19
    invoke-static {p1, v1, v2, v3}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 678
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 679
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 680
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 681
    return-void
.end method
