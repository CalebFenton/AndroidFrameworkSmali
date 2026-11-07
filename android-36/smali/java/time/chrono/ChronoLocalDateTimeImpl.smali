.class final Ljava/time/chrono/ChronoLocalDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDateTime;
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
        "Ljava/time/chrono/ChronoLocalDateTime<",
        "TD;>;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist HOURS_PER_DAY:I = 0x18

.field static final blacklist MICROS_PER_DAY:J = 0x141dd76000L

.field static final blacklist MILLIS_PER_DAY:J = 0x5265c00L

.field static final blacklist MINUTES_PER_DAY:I = 0x5a0

.field static final blacklist MINUTES_PER_HOUR:I = 0x3c

.field static final blacklist NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final blacklist NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final blacklist NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final blacklist NANOS_PER_SECOND:J = 0x3b9aca00L

.field static final blacklist SECONDS_PER_DAY:I = 0x15180

.field static final blacklist SECONDS_PER_HOUR:I = 0xe10

.field static final blacklist SECONDS_PER_MINUTE:I = 0x3c

.field private static final whitelist serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final transient blacklist date:Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final transient blacklist time:Ljava/time/LocalTime;


# direct methods
.method private constructor blacklist <init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V
    .registers 4
    .param p2, "time"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/time/LocalTime;",
            ")V"
        }
    .end annotation

    .line 203
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .local p1, "date":Ljava/time/chrono/ChronoLocalDate;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const-string v0, "date"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    const-string v0, "time"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    iput-object p1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    .line 207
    iput-object p2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    .line 208
    return-void
.end method

.method static blacklist ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 6
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/Temporal;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TR;>;"
        }
    .end annotation

    .line 189
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .line 190
    .local v0, "other":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    invoke-virtual {v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 194
    return-object v0

    .line 191
    :cond_e
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 192
    invoke-virtual {v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

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

.method static blacklist of(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 3
    .param p1, "time"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(TR;",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TR;>;"
        }
    .end annotation

    .line 175
    .local p0, "date":Ljava/time/chrono/ChronoLocalDate;, "TR;"
    new-instance v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v0, p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method private blacklist plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 5
    .param p1, "days"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13
    .param p1, "hours"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    .end local p1    # "hours":J
    .local v2, "hours":J
    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private blacklist plusMinutes(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13
    .param p1, "minutes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 325
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    .end local p1    # "minutes":J
    .local v4, "minutes":J
    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private blacklist plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v8, p1

    .end local p1    # "nanos":J
    .local v8, "nanos":J
    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private blacklist plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 26
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J
    .param p8, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .local p1, "newDate":Ljava/time/chrono/ChronoLocalDate;, "TD;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    .line 340
    iget-object v2, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    return-object v2

    .line 342
    :cond_17
    const-wide v2, 0x4e94914f0000L

    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    div-long v10, p4, v8

    add-long/2addr v4, v10

    const-wide/16 v10, 0x18

    div-long v12, p2, v10

    add-long/2addr v4, v12

    .line 346
    .local v4, "totDays":J
    rem-long v12, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v14, 0x3b9aca00

    mul-long/2addr v6, v14

    add-long/2addr v12, v6

    rem-long v6, p4, v8

    const-wide v8, 0xdf8475800L

    mul-long/2addr v6, v8

    add-long/2addr v12, v6

    rem-long v6, p2, v10

    const-wide v8, 0x34630b8a000L

    mul-long/2addr v6, v8

    add-long/2addr v12, v6

    .line 350
    .local v12, "totNanos":J
    iget-object v6, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    .line 351
    .local v6, "curNoD":J
    add-long/2addr v12, v6

    .line 352
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 353
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    .line 354
    .local v2, "newNoD":J
    cmp-long v8, v2, v6

    if-nez v8, :cond_60

    iget-object v8, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    goto :goto_64

    :cond_60
    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v8

    .line 355
    .local v8, "newTime":Ljava/time/LocalTime;
    :goto_64
    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v4, v5, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v9

    invoke-direct {v0, v9, v8}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v9

    return-object v9
.end method

.method static blacklist readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 429
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    .line 430
    .local v0, "date":Ljava/time/chrono/ChronoLocalDate;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalTime;

    .line 431
    .local v1, "time":Ljava/time/LocalTime;
    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

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

    .line 420
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 5
    .param p1, "newDate"    # Ljava/time/temporal/Temporal;
    .param p2, "newTime"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/Temporal;",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 219
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    if-ne v0, p2, :cond_9

    .line 220
    return-object p0

    .line 223
    :cond_9
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 224
    .local v0, "cd":Ljava/time/chrono/ChronoLocalDate;, "TD;"
    new-instance v1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v1, v0, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 409
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 437
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 438
    return v0

    .line 440
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/ChronoLocalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 441
    move-object v1, p1

    check-cast v1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 443
    :cond_15
    return v2
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 257
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 258
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    :goto_1a
    return v1

    .line 260
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 265
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 266
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    :goto_1a
    return-wide v1

    .line 268
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 448
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 241
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 242
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

    .line 244
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

    .line 100
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 10
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_6e

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 302
    .local v0, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7e

    .line 311
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 309
    :pswitch_1f
    const-wide/16 v1, 0x100

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0xc

    mul-long/2addr v1, v4

    invoke-direct {v3, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 308
    :pswitch_31
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 307
    :pswitch_36
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusMinutes(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 306
    :pswitch_3b
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 305
    :pswitch_40
    const-wide/32 v1, 0x5265c00

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/32 v4, 0xf4240

    mul-long/2addr v1, v4

    invoke-direct {v3, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 304
    :pswitch_54
    const-wide v1, 0x141dd76000L

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    invoke-direct {v3, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 303
    :pswitch_69
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 313
    .end local v0    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_6e
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_7e
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

    .line 100
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method blacklist plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13
    .param p1, "seconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 329
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v6, p1

    .end local p1    # "seconds":J
    .local v6, "seconds":J
    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 249
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 250
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    :goto_1a
    return-object v1

    .line 252
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 230
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    return-object v0
.end method

.method public whitelist test-api toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .line 235
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 453
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 9
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 367
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    .line 370
    .local v0, "end":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_9a

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    .line 371
    .local v1, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    invoke-interface {p2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 372
    sget-object v2, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v2}, Ljava/time/chrono/ChronoLocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    iget-object v4, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    sget-object v5, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 373
    .local v2, "amount":J
    sget-object v4, Ljava/time/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_a4

    goto :goto_6c

    .line 380
    :pswitch_35
    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v2

    goto :goto_6c

    .line 379
    :pswitch_3b
    const/16 v4, 0x18

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v2

    goto :goto_6c

    .line 378
    :pswitch_42
    const/16 v4, 0x5a0

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v2

    goto :goto_6c

    .line 377
    :pswitch_49
    const v4, 0x15180

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v2

    goto :goto_6c

    .line 376
    :pswitch_51
    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    goto :goto_6c

    .line 375
    :pswitch_59
    const-wide v4, 0x141dd76000L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    goto :goto_6c

    .line 374
    :pswitch_63
    const-wide v4, 0x4e94914f0000L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    .line 382
    :goto_6c
    iget-object v4, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/time/LocalTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4

    .line 384
    .end local v2    # "amount":J
    :cond_7b
    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 385
    .local v2, "endDate":Ljava/time/chrono/ChronoLocalDate;
    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v3

    iget-object v4, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 386
    const-wide/16 v3, 0x1

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 388
    :cond_93
    iget-object v3, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v3, v2, p2}, Ljava/time/chrono/ChronoLocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    return-wide v3

    .line 390
    .end local v1    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    .end local v2    # "endDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_9a
    const-string v1, "unit"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_63
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_42
        :pswitch_3b
        :pswitch_35
    .end packed-switch
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

    .line 100
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

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

    .line 100
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 4
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_e

    .line 277
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 278
    :cond_e
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_1c

    .line 279
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v1, p1

    check-cast v1, Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 280
    :cond_1c
    instance-of v0, p1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    if-eqz v0, :cond_2e

    .line 281
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 283
    :cond_2e
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_27

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 289
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 290
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 292
    :cond_1a
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 295
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_27
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

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

    .line 100
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

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

    .line 100
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method blacklist writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    .local p0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 426
    return-void
.end method
