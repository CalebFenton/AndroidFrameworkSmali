.class public interface abstract Ljava/time/chrono/ChronoZonedDateTime;
.super Ljava/lang/Object;
.source "ChronoZonedDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/lang/Comparable<",
        "Ljava/time/chrono/ChronoZonedDateTime<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;"
        }
    .end annotation

    .line 173
    instance-of v0, p0, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_8

    .line 174
    move-object v0, p0

    check-cast v0, Ljava/time/chrono/ChronoZonedDateTime;

    return-object v0

    .line 176
    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 178
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_1e

    .line 181
    invoke-interface {v0, p0}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    .line 179
    :cond_1e
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic blacklist lambda$timeLineOrder$f56e6d02$1(Ljava/time/chrono/ChronoZonedDateTime;Ljava/time/chrono/ChronoZonedDateTime;)I
    .registers 7
    .param p0, "dateTime1"    # Ljava/time/chrono/ChronoZonedDateTime;
    .param p1, "dateTime2"    # Ljava/time/chrono/ChronoZonedDateTime;

    .line 142
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 143
    .local v0, "cmp":I
    if-nez v0, :cond_24

    .line 144
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalTime;->getNano()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 146
    :cond_24
    return v0
.end method

.method public static whitelist test-api timeLineOrder()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;>;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/time/chrono/ChronoZonedDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/chrono/ChronoZonedDateTime$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
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
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    check-cast p1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;)I"
        }
    .end annotation

    .line 577
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 578
    .local v0, "cmp":I
    if-nez v0, :cond_52

    .line 579
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    .line 580
    if-nez v0, :cond_52

    .line 581
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    .line 582
    if-nez v0, :cond_52

    .line 583
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 584
    if-nez v0, :cond_52

    .line 585
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v0

    .line 590
    :cond_52
    return v0
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 522
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 198
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2c

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 199
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/chrono/ChronoZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    .line 205
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    return v1

    .line 203
    :pswitch_1b
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    return v1

    .line 201
    :pswitch_24
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_2c
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1b
    .end packed-switch
.end method

.method public whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 265
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 212
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 213
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/chrono/ChronoZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 217
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    return-wide v1

    .line 215
    :pswitch_1b
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 214
    :pswitch_25
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    return-wide v1

    .line 219
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_2a
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method

.method public abstract whitelist test-api getOffset()Ljava/time/ZoneOffset;
.end method

.method public abstract whitelist test-api getZone()Ljava/time/ZoneId;
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public whitelist test-api isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 627
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 628
    .local v0, "thisEpochSec":J
    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 629
    .local v2, "otherEpochSec":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_25

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    .line 630
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->getNano()I

    move-result v4

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

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

    .line 629
    :goto_26
    return v4
.end method

.method public whitelist test-api isBefore(Ljava/time/chrono/ChronoZonedDateTime;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 607
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 608
    .local v0, "thisEpochSec":J
    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 609
    .local v2, "otherEpochSec":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    .line 610
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->getNano()I

    move-result v4

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

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

    .line 609
    :goto_26
    return v4
.end method

.method public whitelist test-api isEqual(Ljava/time/chrono/ChronoZonedDateTime;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 647
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 648
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 647
    :goto_21
    return v0
.end method

.method public abstract whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 405
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 406
    sget-object v0, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 408
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

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 6
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 466
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

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

    .line 122
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

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
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 438
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

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

    .line 122
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

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
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
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

    .line 491
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3c

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_3c

    .line 493
    :cond_d
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_18

    .line 494
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0

    .line 495
    :cond_18
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_23

    .line 496
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 497
    :cond_23
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2e

    .line 498
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    .line 499
    :cond_2e
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_37

    .line 500
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 504
    :cond_37
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 492
    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 187
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    .line 188
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    goto :goto_16

    .line 191
    :cond_d
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 189
    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 193
    :cond_1b
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toEpochSecond()J
    .registers 7

    .line 553
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 554
    .local v0, "epochDay":J
    const-wide/32 v2, 0x15180

    mul-long/2addr v2, v0

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 555
    .local v2, "secs":J
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 556
    return-wide v2
.end method

.method public whitelist test-api toInstant()Ljava/time/Instant;
    .registers 5

    .line 538
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

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

    .line 231
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public whitelist test-api toLocalTime()Ljava/time/LocalTime;
    .registers 2

    .line 243
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 420
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
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
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;

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
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
.end method
