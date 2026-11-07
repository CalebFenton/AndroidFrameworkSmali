.class public final Ljava/time/OffsetDateTime;
.super Ljava/lang/Object;
.source "OffsetDateTime.java"

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
        "Ljava/time/OffsetDateTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final whitelist test-api MAX:Ljava/time/OffsetDateTime;

.field public static final whitelist test-api MIN:Ljava/time/OffsetDateTime;

.field private static final whitelist serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final greylist-max-o dateTime:Ljava/time/LocalDateTime;

.field private final greylist-max-o offset:Ljava/time/ZoneOffset;


# direct methods
.method public static synthetic blacklist $r8$lambda$_Z1rTp0fj6xv3b7HSM-00eRmwNU(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I
    .registers 2

    invoke-static {p0, p1}, Ljava/time/OffsetDateTime;->compareInstant(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 132
    sget-object v0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    sget-object v1, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetDateTime;->MIN:Ljava/time/OffsetDateTime;

    .line 140
    sget-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    sget-object v1, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetDateTime;->MAX:Ljava/time/OffsetDateTime;

    return-void
.end method

.method private constructor greylist-max-r <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V
    .registers 4
    .param p1, "dateTime"    # Ljava/time/LocalDateTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const-string v0, "dateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    iput-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    .line 409
    const-string v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    .line 410
    return-void
.end method

.method private static greylist-max-o compareInstant(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I
    .registers 6
    .param p0, "datetime1"    # Ljava/time/OffsetDateTime;
    .param p1, "datetime2"    # Ljava/time/OffsetDateTime;

    .line 168
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 169
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0

    .line 171
    :cond_1b
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 172
    .local v0, "cmp":I
    if-nez v0, :cond_3b

    .line 173
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    .line 175
    :cond_3b
    return v0
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;
    .registers 6
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 350
    instance-of v0, p0, Ljava/time/OffsetDateTime;

    if-eqz v0, :cond_8

    .line 351
    move-object v0, p0

    check-cast v0, Ljava/time/OffsetDateTime;

    return-object v0

    .line 354
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/time/ZoneOffset;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 355
    .local v0, "offset":Ljava/time/ZoneOffset;
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    .line 356
    .local v1, "date":Ljava/time/LocalDate;
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalTime;

    .line 357
    .local v2, "time":Ljava/time/LocalTime;
    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    .line 358
    invoke-static {v1, v2, v0}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v3

    return-object v3

    .line 360
    :cond_29
    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v3

    .line 361
    .local v3, "instant":Ljava/time/Instant;
    invoke-static {v3, v0}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v4
    :try_end_31
    .catch Ljava/time/DateTimeException; {:try_start_8 .. :try_end_31} :catch_32

    return-object v4

    .line 363
    .end local v0    # "offset":Ljava/time/ZoneOffset;
    .end local v1    # "date":Ljava/time/LocalDate;
    .end local v2    # "time":Ljava/time/LocalTime;
    .end local v3    # "instant":Ljava/time/Instant;
    :catch_32
    move-exception v0

    .line 364
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 365
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

.method public static whitelist test-api now()Ljava/time/OffsetDateTime;
    .registers 1

    .line 207
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetDateTime;->now(Ljava/time/Clock;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .line 240
    const-string v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 242
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 224
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetDateTime;->now(Ljava/time/Clock;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(IIIIIIILjava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I
    .param p7, "offset"    # Ljava/time/ZoneOffset;

    .line 301
    invoke-static/range {p0 .. p6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 302
    .local v0, "dt":Ljava/time/LocalDateTime;
    new-instance v1, Ljava/time/OffsetDateTime;

    invoke-direct {v1, v0, p7}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    return-object v1
.end method

.method public static whitelist test-api of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 5
    .param p0, "date"    # Ljava/time/LocalDate;
    .param p1, "time"    # Ljava/time/LocalTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 257
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 258
    .local v0, "dt":Ljava/time/LocalDateTime;
    new-instance v1, Ljava/time/OffsetDateTime;

    invoke-direct {v1, v0, p2}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    return-object v1
.end method

.method public static whitelist test-api of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p0, "dateTime"    # Ljava/time/LocalDateTime;
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 271
    new-instance v0, Ljava/time/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static whitelist test-api ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;
    .registers 7
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 319
    const-string v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 320
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 322
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 323
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 324
    .local v2, "ldt":Ljava/time/LocalDateTime;
    new-instance v3, Ljava/time/OffsetDateTime;

    invoke-direct {v3, v2, v1}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    return-object v3
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 382
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 396
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    new-instance v0, Ljava/time/OffsetDateTime$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/time/OffsetDateTime$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/ObjectInput;)Ljava/time/OffsetDateTime;
    .registers 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1948
    invoke-static {p0}, Ljava/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1949
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    invoke-static {p0}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 1950
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

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

    .line 1939
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api timeLineOrder()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/time/OffsetDateTime;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/time/OffsetDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/OffsetDateTime$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private greylist-max-o with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "dateTime"    # Ljava/time/LocalDateTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 419
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 420
    return-object p0

    .line 422
    :cond_d
    new-instance v0, Ljava/time/OffsetDateTime;

    invoke-direct {v0, p1, p2}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1928
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1589
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    .line 1590
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 1591
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    .line 1592
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    .line 1589
    return-object v0
.end method

.method public whitelist test-api atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 1694
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, v1, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atZoneSimilarLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 1722
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

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

    .line 122
    check-cast p1, Ljava/time/OffsetDateTime;

    invoke-virtual {p0, p1}, Ljava/time/OffsetDateTime;->compareTo(Ljava/time/OffsetDateTime;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/OffsetDateTime;)I
    .registers 5
    .param p1, "other"    # Ljava/time/OffsetDateTime;

    .line 1803
    invoke-static {p0, p1}, Ljava/time/OffsetDateTime;->compareInstant(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I

    move-result v0

    .line 1804
    .local v0, "cmp":I
    if-nez v0, :cond_12

    .line 1805
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    .line 1807
    :cond_12
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1873
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1874
    return v0

    .line 1878
    :cond_4
    instance-of v1, p1, Ljava/time/OffsetDateTime;

    if-eqz v1, :cond_20

    .line 1876
    move-object v1, p1

    check-cast v1, Ljava/time/OffsetDateTime;

    .local v1, "other":Ljava/time/OffsetDateTime;
    iget-object v2, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v3, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    .line 1877
    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v3, v1, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    .line 1878
    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_21

    .end local v1    # "other":Ljava/time/OffsetDateTime;
    :cond_20
    const/4 v0, 0x0

    .line 1876
    :goto_21
    return v0
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1673
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1674
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 592
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 593
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 599
    iget-object v1, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    return v1

    .line 597
    :pswitch_19
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    return v1

    .line 595
    :pswitch_22
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 601
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_2a
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_22
        :pswitch_19
    .end packed-switch
.end method

.method public whitelist test-api getDayOfMonth()I
    .registers 2

    .line 777
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .line 805
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDayOfYear()I
    .registers 2

    .line 788
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getHour()I
    .registers 2

    .line 827
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 629
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 630
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2e

    .line 634
    iget-object v1, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    return-wide v1

    .line 632
    :pswitch_19
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 631
    :pswitch_23
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v1

    return-wide v1

    .line 636
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_28
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method public whitelist test-api getMinute()I
    .registers 2

    .line 836
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 766
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonthValue()I
    .registers 2

    .line 751
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNano()I
    .registers 2

    .line 854
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 648
    iget-object v0, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api getSecond()I
    .registers 2

    .line 845
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getYear()I
    .registers 2

    .line 737
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1888
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isAfter(Ljava/time/OffsetDateTime;)Z
    .registers 8
    .param p1, "other"    # Ljava/time/OffsetDateTime;

    .line 1822
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1823
    .local v0, "thisEpochSec":J
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 1824
    .local v2, "otherEpochSec":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_25

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    .line 1825
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/LocalTime;->getNano()I

    move-result v5

    if-le v4, v5, :cond_23

    goto :goto_25

    :cond_23
    const/4 v4, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v4, 0x1

    .line 1824
    :goto_26
    return v4
.end method

.method public whitelist test-api isBefore(Ljava/time/OffsetDateTime;)Z
    .registers 8
    .param p1, "other"    # Ljava/time/OffsetDateTime;

    .line 1839
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1840
    .local v0, "thisEpochSec":J
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 1841
    .local v2, "otherEpochSec":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    .line 1842
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/LocalTime;->getNano()I

    move-result v5

    if-ge v4, v5, :cond_23

    goto :goto_25

    :cond_23
    const/4 v4, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v4, 0x1

    .line 1841
    :goto_26
    return v4
.end method

.method public whitelist test-api isEqual(Ljava/time/OffsetDateTime;)Z
    .registers 6
    .param p1, "other"    # Ljava/time/OffsetDateTime;

    .line 1856
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 1857
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1856
    :goto_21
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 480
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_f

    if-eqz p1, :cond_d

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 521
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 522
    sget-object v0, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 524
    :cond_d
    if-eqz p1, :cond_16

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1375
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/OffsetDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/OffsetDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/OffsetDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 1351
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

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

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

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

    .line 122
    invoke-virtual {p0, p1}, Ljava/time/OffsetDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusDays(J)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "days"    # J

    .line 1462
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusDays(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/OffsetDateTime;->plusDays(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusDays(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusHours(J)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "hours"    # J

    .line 1475
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusHours(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/OffsetDateTime;->plusHours(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusHours(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMinutes(J)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "minutes"    # J

    .line 1488
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusMinutes(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/OffsetDateTime;->plusMinutes(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusMinutes(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMonths(J)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "months"    # J

    .line 1424
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusMonths(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/OffsetDateTime;->plusMonths(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusMonths(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusNanos(J)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "nanos"    # J

    .line 1514
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusNanos(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/OffsetDateTime;->plusNanos(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusNanos(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusSeconds(J)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "seconds"    # J

    .line 1501
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusSeconds(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/OffsetDateTime;->plusSeconds(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusSeconds(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusWeeks(J)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "weeks"    # J

    .line 1443
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusWeeks(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/OffsetDateTime;->plusWeeks(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusWeeks(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusYears(J)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "years"    # J

    .line 1400
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusYears(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/OffsetDateTime;->plusYears(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/OffsetDateTime;->plusYears(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1183
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_11

    .line 1184
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    .line 1186
    :cond_11
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    return-object v0
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 1153
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

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

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

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

    .line 122
    invoke-virtual {p0, p1}, Ljava/time/OffsetDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusDays(J)Ljava/time/OffsetDateTime;
    .registers 5
    .param p1, "days"    # J

    .line 1273
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusHours(J)Ljava/time/OffsetDateTime;
    .registers 5
    .param p1, "hours"    # J

    .line 1286
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusMinutes(J)Ljava/time/OffsetDateTime;
    .registers 5
    .param p1, "minutes"    # J

    .line 1299
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusMonths(J)Ljava/time/OffsetDateTime;
    .registers 5
    .param p1, "months"    # J

    .line 1235
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusNanos(J)Ljava/time/OffsetDateTime;
    .registers 5
    .param p1, "nanos"    # J

    .line 1325
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusSeconds(J)Ljava/time/OffsetDateTime;
    .registers 5
    .param p1, "seconds"    # J

    .line 1312
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusWeeks(J)Ljava/time/OffsetDateTime;
    .registers 5
    .param p1, "weeks"    # J

    .line 1254
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusYears(J)Ljava/time/OffsetDateTime;
    .registers 5
    .param p1, "years"    # J

    .line 1211
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

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

    .line 1539
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_42

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_42

    .line 1541
    :cond_d
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_15

    .line 1542
    const/4 v0, 0x0

    return-object v0

    .line 1543
    :cond_15
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_20

    .line 1544
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 1545
    :cond_20
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2b

    .line 1546
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1547
    :cond_2b
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_34

    .line 1548
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0

    .line 1549
    :cond_34
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3d

    .line 1550
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 1554
    :cond_3d
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1540
    :cond_42
    :goto_42
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 553
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_19

    .line 554
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_14

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    goto :goto_14

    .line 557
    :cond_d
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 555
    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 559
    :cond_19
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toEpochSecond()J
    .registers 3

    .line 1774
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toInstant()Ljava/time/Instant;
    .registers 3

    .line 1761
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocalDate()Ljava/time/LocalDate;
    .registers 2

    .line 723
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocalDateTime()Ljava/time/LocalDateTime;
    .registers 2

    .line 710
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public whitelist test-api toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .line 818
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toOffsetTime()Ljava/time/OffsetTime;
    .registers 3

    .line 1734
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toZonedDateTime()Ljava/time/ZonedDateTime;
    .registers 3

    .line 1749
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1127
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 7
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1649
    invoke-static {p1}, Ljava/time/OffsetDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 1650
    .local v0, "end":Ljava/time/OffsetDateTime;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_21

    .line 1651
    move-object v1, p0

    .line 1653
    .local v1, "start":Ljava/time/OffsetDateTime;
    :try_start_9
    iget-object v2, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v2}, Ljava/time/OffsetDateTime;->withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2
    :try_end_f
    .catch Ljava/time/DateTimeException; {:try_start_9 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 1657
    goto :goto_18

    .line 1654
    :catch_11
    move-exception v2

    .line 1656
    .local v2, "ex":Ljava/time/DateTimeException;
    iget-object v3, v0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p0, v3}, Ljava/time/OffsetDateTime;->withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v1

    .line 1658
    .end local v2    # "ex":Ljava/time/DateTimeException;
    :goto_18
    iget-object v2, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v3, v0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3, p2}, Ljava/time/LocalDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    .line 1660
    .end local v1    # "start":Ljava/time/OffsetDateTime;
    :cond_21
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 905
    instance-of v0, p1, Ljava/time/LocalDate;

    if-nez v0, :cond_38

    instance-of v0, p1, Ljava/time/LocalTime;

    if-nez v0, :cond_38

    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_d

    goto :goto_38

    .line 907
    :cond_d
    instance-of v0, p1, Ljava/time/Instant;

    if-eqz v0, :cond_1b

    .line 908
    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    .line 909
    :cond_1b
    instance-of v0, p1, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_29

    .line 910
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v1, p1

    check-cast v1, Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    .line 911
    :cond_29
    instance-of v0, p1, Ljava/time/OffsetDateTime;

    if-eqz v0, :cond_31

    .line 912
    move-object v0, p1

    check-cast v0, Ljava/time/OffsetDateTime;

    return-object v0

    .line 914
    :cond_31
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    return-object v0

    .line 906
    :cond_38
    :goto_38
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetDateTime;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 963
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_3e

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 964
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 970
    iget-object v1, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v1, v2}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    .line 967
    :pswitch_1f
    iget-object v1, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    .line 965
    :pswitch_2e
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getNano()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    iget-object v2, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v1, v2}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    .line 972
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_3e
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1f
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

    .line 122
    invoke-virtual {p0, p1}, Ljava/time/OffsetDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetDateTime;

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

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withDayOfMonth(I)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "dayOfMonth"    # I

    .line 1022
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withDayOfMonth(I)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withDayOfYear(I)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "dayOfYear"    # I

    .line 1039
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withDayOfYear(I)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withHour(I)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "hour"    # I

    .line 1055
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withHour(I)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMinute(I)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "minute"    # I

    .line 1070
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withMinute(I)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMonth(I)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "month"    # I

    .line 1005
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withMonth(I)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withNano(I)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "nanoOfSecond"    # I

    .line 1100
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withNano(I)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 6
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 692
    iget-object v0, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 693
    return-object p0

    .line 695
    :cond_9
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 696
    .local v0, "difference":I
    iget-object v1, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 697
    .local v1, "adjusted":Ljava/time/LocalDateTime;
    new-instance v2, Ljava/time/OffsetDateTime;

    invoke-direct {v2, v1, p1}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    return-object v2
.end method

.method public whitelist test-api withOffsetSameLocal(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .registers 3
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 669
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-direct {p0, v0, p1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withSecond(I)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "second"    # I

    .line 1085
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withYear(I)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "year"    # I

    .line 989
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withYear(I)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1944
    iget-object v0, p0, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1945
    return-void
.end method
