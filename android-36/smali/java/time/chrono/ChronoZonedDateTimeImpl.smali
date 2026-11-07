.class final Ljava/time/chrono/ChronoZonedDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/chrono/ChronoZonedDateTime<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final transient blacklist dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final transient blacklist offset:Ljava/time/ZoneOffset;

.field private final transient blacklist zone:Ljava/time/ZoneId;


# direct methods
.method private constructor blacklist <init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V
    .registers 5
    .param p2, "offset"    # Ljava/time/ZoneOffset;
    .param p3, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    .line 219
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    .local p1, "dateTime":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-string v0, "dateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .line 221
    const-string v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    .line 222
    const-string v0, "zone"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    .line 223
    return-void
.end method

.method private blacklist create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 189
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljava/time/chrono/Chronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method static blacklist ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
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
            "Ljava/time/chrono/ChronoZonedDateTimeImpl<",
            "TR;>;"
        }
    .end annotation

    .line 203
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    .line 204
    .local v0, "other":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TR;>;"
    invoke-virtual {v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 208
    return-object v0

    .line 205
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

    .line 206
    invoke-virtual {v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

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

.method static blacklist ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 9
    .param p1, "zone"    # Ljava/time/ZoneId;
    .param p2, "preferredOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl<",
            "TR;>;",
            "Ljava/time/ZoneId;",
            "Ljava/time/ZoneOffset;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TR;>;"
        }
    .end annotation

    .line 137
    .local p0, "localDateTime":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    instance-of v0, p1, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_17

    .line 140
    new-instance v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v1, p1

    check-cast v1, Ljava/time/ZoneOffset;

    invoke-direct {v0, p0, v1, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0

    .line 142
    :cond_17
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 143
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 144
    .local v1, "isoLDT":Ljava/time/LocalDateTime;
    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "validOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_32

    .line 147
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneOffset;

    .local v3, "offset":Ljava/time/ZoneOffset;
    goto :goto_5d

    .line 148
    .end local v3    # "offset":Ljava/time/ZoneOffset;
    :cond_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4d

    .line 149
    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v3

    .line 150
    .local v3, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDuration()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p0

    .line 151
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v3

    .line 152
    .local v3, "offset":Ljava/time/ZoneOffset;
    goto :goto_5d

    .line 153
    .end local v3    # "offset":Ljava/time/ZoneOffset;
    :cond_4d
    if-eqz p2, :cond_57

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 154
    move-object v3, p2

    .restart local v3    # "offset":Ljava/time/ZoneOffset;
    goto :goto_5d

    .line 156
    .end local v3    # "offset":Ljava/time/ZoneOffset;
    :cond_57
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneOffset;

    .line 159
    .restart local v3    # "offset":Ljava/time/ZoneOffset;
    :goto_5d
    const-string v4, "offset"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    new-instance v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, p0, v3, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4
.end method

.method static blacklist ofInstant(Ljava/time/chrono/Chronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .registers 8
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl<",
            "*>;"
        }
    .end annotation

    .line 172
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 173
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 174
    .local v1, "offset":Ljava/time/ZoneOffset;
    const-string v2, "offset"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 176
    .local v2, "ldt":Ljava/time/LocalDateTime;
    invoke-interface {p0, v2}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .line 177
    .local v3, "cldt":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    new-instance v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, v3, v1, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4
.end method

.method static blacklist readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 5
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 359
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTime;

    .line 360
    .local v0, "dateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    .line 361
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneId;

    .line 362
    .local v2, "zone":Ljava/time/ZoneId;
    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/time/chrono/ChronoZonedDateTime;->withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

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

    .line 349
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 338
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 369
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 370
    return v0

    .line 372
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/ChronoZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 373
    move-object v1, p1

    check-cast v1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-virtual {p0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 375
    :cond_15
    return v2
.end method

.method public whitelist test-api getOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 228
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 263
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 380
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 280
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
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

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 6
    .param p1, "amountToAdd"    # J
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

    .line 302
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_f

    .line 303
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    .line 305
    :cond_f
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

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

    .line 104
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 258
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 385
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    if-eq v1, v2, :cond_50

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    :cond_50
    return-object v0
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 6
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 311
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 314
    .local v0, "end":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_22

    .line 315
    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 316
    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    .line 318
    :cond_22
    const-string v1, "unit"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 286
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_43

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 287
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/chrono/ChronoZonedDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_50

    .line 294
    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-static {v1, v2, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    .line 290
    :pswitch_21
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 291
    .local v1, "offset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    return-object v2

    .line 288
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :pswitch_36
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toEpochSecond()J

    move-result-wide v1

    sub-long v1, p2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1, v2, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_43
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_36
        :pswitch_21
    .end packed-switch
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

    .line 104
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 234
    .local v0, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 235
    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    .line 236
    .local v1, "earlierOffset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 237
    new-instance v2, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    .line 240
    .end local v1    # "earlierOffset":Ljava/time/ZoneOffset;
    :cond_2e
    return-object p0
.end method

.method public whitelist test-api withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 246
    .local v0, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_2a

    .line 247
    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    .line 248
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 249
    new-instance v2, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    .line 252
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_2a
    return-object p0
.end method

.method public whitelist test-api withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
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

    .line 273
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p0

    goto :goto_1b

    :cond_f
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
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

    .line 268
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method blacklist writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 356
    return-void
.end method
