.class public final Ljava/time/Instant;
.super Ljava/lang/Object;
.source "Instant.java"

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
        "Ljava/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final whitelist test-api EPOCH:Ljava/time/Instant;

.field public static final whitelist test-api MAX:Ljava/time/Instant;

.field private static final greylist-max-o MAX_SECOND:J = 0x701cd2fa9578ffL

.field public static final whitelist test-api MIN:Ljava/time/Instant;

.field private static final greylist-max-o MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final whitelist serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final greylist-max-o nanos:I

.field private final greylist-max-o seconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 207
    new-instance v0, Ljava/time/Instant;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/time/Instant;-><init>(JI)V

    sput-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    .line 226
    const-wide v0, -0x701cefeb9bec00L

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    .line 237
    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    return-void
.end method

.method private constructor greylist-max-o <init>(JI)V
    .registers 4
    .param p1, "epochSecond"    # J
    .param p3, "nanos"    # I

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-wide p1, p0, Ljava/time/Instant;->seconds:J

    .line 421
    iput p3, p0, Ljava/time/Instant;->nanos:I

    .line 422
    return-void
.end method

.method private static greylist-max-o create(JI)Ljava/time/Instant;
    .registers 7
    .param p0, "seconds"    # J
    .param p2, "nanoOfSecond"    # I

    .line 402
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 403
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    return-object v0

    .line 405
    :cond_b
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_23

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_23

    .line 408
    new-instance v0, Ljava/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Instant;-><init>(JI)V

    return-object v0

    .line 406
    :cond_23
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Instant exceeds minimum or maximum instant"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .registers 6
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 363
    instance-of v0, p0, Ljava/time/Instant;

    if-eqz v0, :cond_8

    .line 364
    move-object v0, p0

    check-cast v0, Ljava/time/Instant;

    return-object v0

    .line 366
    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    :try_start_d
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 369
    .local v0, "instantSecs":J
    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 370
    .local v2, "nanoOfSecond":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v3
    :try_end_1e
    .catch Ljava/time/DateTimeException; {:try_start_d .. :try_end_1e} :catch_1f

    return-object v3

    .line 371
    .end local v0    # "instantSecs":J
    .end local v2    # "nanoOfSecond":I
    :catch_1f
    move-exception v0

    .line 372
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain Instant from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 373
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

.method private greylist-max-o nanosUntil(Ljava/time/Instant;)J
    .registers 8
    .param p1, "end"    # Ljava/time/Instant;

    .line 1155
    iget-wide v0, p1, Ljava/time/Instant;->seconds:J

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    .line 1156
    .local v0, "secsDiff":J
    const-wide/32 v2, 0x3b9aca00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    .line 1157
    .local v2, "totalNanos":J
    iget v4, p1, Ljava/time/Instant;->nanos:I

    iget v5, p0, Ljava/time/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static whitelist test-api now()Ljava/time/Instant;
    .registers 1

    .line 268
    invoke-static {}, Ljava/time/Clock;->currentInstant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/Instant;
    .registers 2
    .param p0, "clock"    # Ljava/time/Clock;

    .line 283
    const-string v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofEpochMilli(J)Ljava/time/Instant;
    .registers 6
    .param p0, "epochMilli"    # J

    .line 339
    const/16 v0, 0x3e8

    invoke-static {p0, p1, v0}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v1

    .line 340
    .local v1, "secs":J
    invoke-static {p0, p1, v0}, Ljava/lang/Math;->floorMod(JI)I

    move-result v0

    .line 341
    .local v0, "mos":I
    const v3, 0xf4240

    mul-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist test-api ofEpochSecond(J)Ljava/time/Instant;
    .registers 3
    .param p0, "epochSecond"    # J

    .line 299
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofEpochSecond(JJ)Ljava/time/Instant;
    .registers 8
    .param p0, "epochSecond"    # J
    .param p2, "nanoAdjustment"    # J

    .line 323
    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    .line 324
    .local v2, "secs":J
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 325
    .local v0, "nos":I
    invoke-static {v2, v3, v0}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/Instant;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 390
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    new-instance v1, Ljava/time/Instant$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/time/Instant$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method private greylist-max-o plus(JJ)Ljava/time/Instant;
    .registers 11
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .line 915
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 916
    return-object p0

    .line 918
    :cond_9
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 919
    .local v0, "epochSec":J
    const-wide/32 v2, 0x3b9aca00

    div-long v4, p3, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 920
    rem-long/2addr p3, v2

    .line 921
    iget v2, p0, Ljava/time/Instant;->nanos:I

    int-to-long v2, v2

    add-long/2addr v2, p3

    .line 922
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v4

    return-object v4
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/Instant;
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1357
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 1358
    .local v0, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1359
    .local v2, "nanos":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

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

    .line 1348
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o secondsUntil(Ljava/time/Instant;)J
    .registers 11
    .param p1, "end"    # Ljava/time/Instant;

    .line 1161
    iget-wide v0, p1, Ljava/time/Instant;->seconds:J

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    .line 1162
    .local v0, "secsDiff":J
    iget v2, p1, Ljava/time/Instant;->nanos:I

    iget v3, p0, Ljava/time/Instant;->nanos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 1163
    .local v2, "nanosDiff":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const-wide/16 v7, 0x1

    if-lez v6, :cond_1c

    cmp-long v6, v2, v4

    if-gez v6, :cond_1c

    .line 1164
    sub-long/2addr v0, v7

    goto :goto_25

    .line 1165
    :cond_1c
    cmp-long v6, v0, v4

    if-gez v6, :cond_25

    cmp-long v4, v2, v4

    if-lez v4, :cond_25

    .line 1166
    add-long/2addr v0, v7

    .line 1168
    :cond_25
    :goto_25
    return-wide v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1337
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1088
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    iget-wide v1, p0, Ljava/time/Instant;->seconds:J

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    iget v2, p0, Ljava/time/Instant;->nanos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 1187
    invoke-static {p0, p1}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 1205
    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

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

    .line 201
    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/Instant;)I
    .registers 6
    .param p1, "otherInstant"    # Ljava/time/Instant;

    .line 1247
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    iget-wide v2, p1, Ljava/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1248
    .local v0, "cmp":I
    if-eqz v0, :cond_b

    .line 1249
    return v0

    .line 1251
    :cond_b
    iget v1, p0, Ljava/time/Instant;->nanos:I

    iget v2, p1, Ljava/time/Instant;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 1291
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1292
    return v0

    .line 1296
    :cond_4
    instance-of v1, p1, Ljava/time/Instant;

    if-eqz v1, :cond_1a

    .line 1294
    move-object v1, p1

    check-cast v1, Ljava/time/Instant;

    .local v1, "otherInstant":Ljava/time/Instant;
    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    iget-wide v4, v1, Ljava/time/Instant;->seconds:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    iget v2, p0, Ljava/time/Instant;->nanos:I

    iget v3, v1, Ljava/time/Instant;->nanos:I

    if-ne v2, v3, :cond_1a

    goto :goto_1b

    .end local v1    # "otherInstant":Ljava/time/Instant;
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 554
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_3a

    .line 555
    sget-object v0, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 560
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

    .line 558
    :pswitch_2b
    iget v0, p0, Ljava/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    .line 557
    :pswitch_32
    iget v0, p0, Ljava/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 556
    :pswitch_37
    iget v0, p0, Ljava/time/Instant;->nanos:I

    return v0

    .line 562
    :cond_3a
    invoke-virtual {p0, p1}, Ljava/time/Instant;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37
        :pswitch_32
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api getEpochSecond()J
    .registers 3

    .line 613
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    return-wide v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 590
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_40

    .line 591
    sget-object v0, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 597
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

    .line 595
    :pswitch_2b
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    return-wide v0

    .line 594
    :pswitch_2e
    iget v0, p0, Ljava/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 593
    :pswitch_36
    iget v0, p0, Ljava/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    .line 592
    :pswitch_3c
    iget v0, p0, Ljava/time/Instant;->nanos:I

    int-to-long v0, v0

    return-wide v0

    .line 599
    :cond_40
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_36
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api getNano()I
    .registers 2

    .line 626
    iget v0, p0, Ljava/time/Instant;->nanos:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1306
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Ljava/time/Instant;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isAfter(Ljava/time/Instant;)Z
    .registers 3
    .param p1, "otherInstant"    # Ljava/time/Instant;

    .line 1264
    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/Instant;)Z
    .registers 3
    .param p1, "otherInstant"    # Ljava/time/Instant;

    .line 1277
    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

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
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 453
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 454
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_18

    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_18

    sget-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_18

    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :cond_18
    :goto_18
    return v1

    .line 456
    :cond_19
    if-eqz p1, :cond_22

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    return v1
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 490
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 491
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :cond_12
    :goto_12
    return v1

    .line 493
    :cond_13
    if-eqz p1, :cond_1c

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 972
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 948
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

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

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

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

    .line 201
    invoke-virtual {p0, p1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusMillis(J)Ljava/time/Instant;
    .registers 6
    .param p1, "millisToSubtract"    # J

    .line 1004
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 1005
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 1007
    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minusNanos(J)Ljava/time/Instant;
    .registers 6
    .param p1, "nanosToSubtract"    # J

    .line 1021
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 1022
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minusSeconds(J)Ljava/time/Instant;
    .registers 6
    .param p1, "secondsToSubtract"    # J

    .line 987
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 988
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 990
    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .registers 10
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 844
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_77

    .line 845
    sget-object v0, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7e

    .line 855
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :pswitch_2b
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 852
    :pswitch_37
    const v0, 0xa8c0

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 851
    :pswitch_43
    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 850
    :pswitch_4e
    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 849
    :pswitch_59
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 848
    :pswitch_5e
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 847
    :pswitch_63
    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 846
    :pswitch_72
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 857
    :cond_77
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_72
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_37
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 781
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

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

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

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

    .line 201
    invoke-virtual {p0, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusMillis(J)Ljava/time/Instant;
    .registers 9
    .param p1, "millisToAdd"    # J

    .line 886
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusNanos(J)Ljava/time/Instant;
    .registers 5
    .param p1, "nanosToAdd"    # J

    .line 900
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusSeconds(J)Ljava/time/Instant;
    .registers 5
    .param p1, "secondsToAdd"    # J

    .line 872
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
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

    .line 1049
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 1050
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 1053
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    .line 1054
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    .line 1055
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2e

    goto :goto_33

    .line 1058
    :cond_2e
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1056
    :cond_33
    :goto_33
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 522
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toEpochMilli()J
    .registers 8

    .line 1224
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const v1, 0xf4240

    const/16 v2, 0x3e8

    if-gez v0, :cond_24

    iget v0, p0, Ljava/time/Instant;->nanos:I

    if-lez v0, :cond_24

    .line 1225
    iget-wide v3, p0, Ljava/time/Instant;->seconds:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v3, v4, v2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v3

    .line 1226
    .local v3, "millis":J
    iget v0, p0, Ljava/time/Instant;->nanos:I

    div-int/2addr v0, v1

    sub-int/2addr v0, v2

    int-to-long v0, v0

    .line 1227
    .local v0, "adjustment":J
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v5

    return-wide v5

    .line 1229
    .end local v0    # "adjustment":J
    .end local v3    # "millis":J
    :cond_24
    iget-wide v3, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v3, v4, v2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v2

    .line 1230
    .local v2, "millis":J
    iget v0, p0, Ljava/time/Instant;->nanos:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1319
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .registers 11
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 742
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_5

    .line 743
    return-object p0

    .line 745
    :cond_5
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v0

    .line 746
    .local v0, "unitDur":Ljava/time/Duration;
    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    cmp-long v1, v1, v3

    if-gtz v1, :cond_43

    .line 749
    invoke-virtual {v0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    .line 750
    .local v1, "dur":J
    const-wide v5, 0x4e94914f0000L

    rem-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3b

    .line 753
    iget-wide v5, p0, Ljava/time/Instant;->seconds:J

    rem-long/2addr v5, v3

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v5, v3

    iget v3, p0, Ljava/time/Instant;->nanos:I

    int-to-long v3, v3

    add-long/2addr v5, v3

    .line 754
    .local v5, "nod":J
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v3

    mul-long/2addr v3, v1

    .line 755
    .local v3, "result":J
    sub-long v7, v3, v5

    invoke-virtual {p0, v7, v8}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v7

    return-object v7

    .line 751
    .end local v3    # "result":J
    .end local v5    # "nod":J
    :cond_3b
    new-instance v3, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v4, "Unit must divide into a standard day without remainder"

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 747
    .end local v1    # "dur":J
    :cond_43
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 9
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1137
    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v0

    .line 1138
    .local v0, "end":Ljava/time/Instant;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_70

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    .line 1139
    .local v1, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v2, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_76

    .line 1149
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

    .line 1147
    :pswitch_2f
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    return-wide v2

    .line 1146
    :pswitch_38
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0xa8c0

    div-long/2addr v2, v4

    return-wide v2

    .line 1145
    :pswitch_41
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    return-wide v2

    .line 1144
    :pswitch_49
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    return-wide v2

    .line 1143
    :pswitch_51
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    return-wide v2

    .line 1142
    :pswitch_56
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    return-wide v2

    .line 1141
    :pswitch_63
    invoke-direct {p0, v0}, Ljava/time/Instant;->nanosUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    .line 1140
    :pswitch_6b
    invoke-direct {p0, v0}, Ljava/time/Instant;->nanosUntil(Ljava/time/Instant;)J

    move-result-wide v2

    return-wide v2

    .line 1151
    .end local v1    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_70
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_63
        :pswitch_56
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_38
        :pswitch_2f
    .end packed-switch
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Instant;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 650
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/Instant;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 699
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_70

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 700
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 701
    sget-object v1, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_78

    .line 713
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

    .line 711
    :pswitch_2e
    iget-wide v1, p0, Ljava/time/Instant;->seconds:J

    cmp-long v1, p2, v1

    if-eqz v1, :cond_3b

    iget v1, p0, Ljava/time/Instant;->nanos:I

    invoke-static {p2, p3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    move-object v1, p0

    :goto_3c
    return-object v1

    .line 703
    :pswitch_3d
    long-to-int v1, p2

    const v2, 0xf4240

    mul-int/2addr v1, v2

    .line 704
    .local v1, "nval":I
    iget v2, p0, Ljava/time/Instant;->nanos:I

    if-eq v1, v2, :cond_4d

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v2

    goto :goto_4e

    :cond_4d
    move-object v2, p0

    :goto_4e
    return-object v2

    .line 707
    .end local v1    # "nval":I
    :pswitch_4f
    long-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    .line 708
    .restart local v1    # "nval":I
    iget v2, p0, Ljava/time/Instant;->nanos:I

    if-eq v1, v2, :cond_5d

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v2

    goto :goto_5e

    :cond_5d
    move-object v2, p0

    :goto_5e
    return-object v2

    .line 710
    .end local v1    # "nval":I
    :pswitch_5f
    iget v1, p0, Ljava/time/Instant;->nanos:I

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_6e

    iget-wide v1, p0, Ljava/time/Instant;->seconds:J

    long-to-int v3, p2

    invoke-static {v1, v2, v3}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v1

    goto :goto_6f

    :cond_6e
    move-object v1, p0

    :goto_6f
    return-object v1

    .line 715
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_70
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_4f
        :pswitch_3d
        :pswitch_2e
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

    .line 201
    invoke-virtual {p0, p1}, Ljava/time/Instant;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Instant;

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

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1352
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1353
    iget v0, p0, Ljava/time/Instant;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1354
    return-void
.end method
