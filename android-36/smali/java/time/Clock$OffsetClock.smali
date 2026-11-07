.class final Ljava/time/Clock$OffsetClock;
.super Ljava/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OffsetClock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1bdc04b7477ef050L


# instance fields
.field private final greylist-max-o baseClock:Ljava/time/Clock;

.field private final greylist-max-o offset:Ljava/time/Duration;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/Clock;Ljava/time/Duration;)V
    .registers 3
    .param p1, "baseClock"    # Ljava/time/Clock;
    .param p2, "offset"    # Ljava/time/Duration;

    .line 692
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 693
    iput-object p1, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    .line 694
    iput-object p2, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    .line 695
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 719
    instance-of v0, p1, Ljava/time/Clock$OffsetClock;

    if-eqz v0, :cond_1d

    .line 717
    move-object v0, p1

    check-cast v0, Ljava/time/Clock$OffsetClock;

    .local v0, "other":Ljava/time/Clock$OffsetClock;
    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    iget-object v2, v0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    .line 718
    invoke-virtual {v1, v2}, Ljava/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    iget-object v2, v0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    .line 719
    invoke-virtual {v1, v2}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    .end local v0    # "other":Ljava/time/Clock$OffsetClock;
    :cond_1d
    const/4 v1, 0x0

    .line 717
    :goto_1e
    return v1
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 698
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 723
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 3

    .line 713
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api millis()J
    .registers 5

    .line 709
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffsetClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 5
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 702
    iget-object v0, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 703
    return-object p0

    .line 705
    :cond_d
    new-instance v0, Ljava/time/Clock$OffsetClock;

    iget-object v1, p0, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1, p1}, Ljava/time/Clock;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    iget-object v2, p0, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-direct {v0, v1, v2}, Ljava/time/Clock$OffsetClock;-><init>(Ljava/time/Clock;Ljava/time/Duration;)V

    return-object v0
.end method
