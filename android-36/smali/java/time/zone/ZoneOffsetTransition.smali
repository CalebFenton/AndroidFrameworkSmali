.class public final Ljava/time/zone/ZoneOffsetTransition;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/time/zone/ZoneOffsetTransition;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final whitelist serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final blacklist epochSecond:J

.field private final greylist-max-o offsetAfter:Ljava/time/ZoneOffset;

.field private final greylist-max-o offsetBefore:Ljava/time/ZoneOffset;

.field private final greylist-max-o transition:Ljava/time/LocalDateTime;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 99
    return-void
.end method

.method constructor greylist-max-o <init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .registers 6
    .param p1, "epochSecond"    # J
    .param p3, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p4, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-wide p1, p0, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    .line 175
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 176
    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 177
    iput-object p4, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 178
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .registers 6
    .param p1, "transition"    # Ljava/time/LocalDateTime;
    .param p2, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p3, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    nop

    .line 160
    invoke-virtual {p1, p2}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    .line 161
    iput-object p1, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 162
    iput-object p2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 163
    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 164
    return-void
.end method

.method private greylist-max-o getDurationSeconds()I
    .registers 3

    .line 338
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 5
    .param p0, "transition"    # Ljava/time/LocalDateTime;
    .param p1, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p2, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 139
    const-string v0, "transition"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    const-string v0, "offsetBefore"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string v0, "offsetAfter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p1, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 145
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    if-nez v0, :cond_21

    .line 148
    new-instance v0, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v0

    .line 146
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offsets must not be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 7
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v0

    .line 233
    .local v0, "epochSecond":J
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 234
    .local v2, "before":Ljava/time/ZoneOffset;
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v3

    .line 235
    .local v3, "after":Ljava/time/ZoneOffset;
    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 238
    new-instance v4, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v4

    .line 236
    :cond_18
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Offsets must not be equal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 209
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/io/Serializable;)V

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

    .line 99
    check-cast p1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneOffsetTransition;->compareTo(Ljava/time/zone/ZoneOffsetTransition;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/zone/ZoneOffsetTransition;)I
    .registers 6
    .param p1, "transition"    # Ljava/time/zone/ZoneOffsetTransition;

    .line 407
    iget-wide v0, p0, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    iget-wide v2, p1, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 421
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 422
    return v0

    .line 427
    :cond_4
    instance-of v1, p1, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_28

    .line 424
    move-object v1, p1

    check-cast v1, Ljava/time/zone/ZoneOffsetTransition;

    .local v1, "d":Ljava/time/zone/ZoneOffsetTransition;
    iget-wide v2, p0, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    iget-wide v4, v1, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 426
    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 427
    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    .end local v1    # "d":Ljava/time/zone/ZoneOffsetTransition;
    :cond_28
    const/4 v0, 0x0

    .line 424
    :goto_29
    return v0
.end method

.method public whitelist test-api getDateTimeAfter()Ljava/time/LocalDateTime;
    .registers 4

    .line 294
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-direct {p0}, Ljava/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDateTimeBefore()Ljava/time/LocalDateTime;
    .registers 2

    .line 280
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public whitelist test-api getDuration()Ljava/time/Duration;
    .registers 3

    .line 329
    invoke-direct {p0}, Ljava/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInstant()Ljava/time/Instant;
    .registers 3

    .line 254
    iget-wide v0, p0, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOffsetAfter()Ljava/time/ZoneOffset;
    .registers 2

    .line 316
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api getOffsetBefore()Ljava/time/ZoneOffset;
    .registers 2

    .line 305
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method greylist-max-o getValidOffsets()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 390
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 392
    :cond_b
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 437
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isGap()Z
    .registers 3

    .line 351
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public whitelist test-api isOverlap()Z
    .registers 3

    .line 364
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public whitelist test-api isValidOffset(Ljava/time/ZoneOffset;)Z
    .registers 4
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 378
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    :cond_7
    goto :goto_1d

    :cond_8
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1
.end method

.method public whitelist test-api toEpochSecond()J
    .registers 3

    .line 263
    iget-wide v0, p0, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "Transition["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "Gap"

    goto :goto_16

    :cond_14
    const-string v2, "Overlap"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 456
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-wide v0, p0, Ljava/time/zone/ZoneOffsetTransition;->epochSecond:J

    invoke-static {v0, v1, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 220
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 221
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 222
    return-void
.end method
