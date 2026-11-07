.class final Ljava/time/Clock$TickClock;
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
    name = "TickClock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x5a4531089f29d952L


# instance fields
.field private final greylist-max-o baseClock:Ljava/time/Clock;

.field private final greylist-max-o tickNanos:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/Clock;J)V
    .registers 4
    .param p1, "baseClock"    # Ljava/time/Clock;
    .param p2, "tickNanos"    # J

    .line 742
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 743
    iput-object p1, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    .line 744
    iput-wide p2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    .line 745
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 777
    instance-of v0, p1, Ljava/time/Clock$TickClock;

    if-eqz v0, :cond_1b

    .line 775
    move-object v0, p1

    check-cast v0, Ljava/time/Clock$TickClock;

    .local v0, "other":Ljava/time/Clock$TickClock;
    iget-wide v1, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    iget-wide v3, v0, Ljava/time/Clock$TickClock;->tickNanos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    iget-object v1, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    iget-object v2, v0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    .line 777
    invoke-virtual {v1, v2}, Ljava/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    .end local v0    # "other":Ljava/time/Clock$TickClock;
    :cond_1b
    const/4 v1, 0x0

    .line 775
    :goto_1c
    return v1
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 748
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 781
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    iget-wide v3, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 7

    .line 764
    iget-wide v0, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_20

    .line 765
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 766
    .local v0, "millis":J
    iget-wide v4, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    div-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    return-object v2

    .line 768
    .end local v0    # "millis":J
    :cond_20
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 769
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v1

    int-to-long v1, v1

    .line 770
    .local v1, "nanos":J
    iget-wide v3, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v3

    .line 771
    .local v3, "adjust":J
    invoke-virtual {v0, v3, v4}, Ljava/time/Instant;->minusNanos(J)Ljava/time/Instant;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api millis()J
    .registers 7

    .line 759
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 760
    .local v0, "millis":J
    iget-wide v2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TickClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-static {v1, v2}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v1

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
    .registers 6
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 752
    iget-object v0, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 753
    return-object p0

    .line 755
    :cond_d
    new-instance v0, Ljava/time/Clock$TickClock;

    iget-object v1, p0, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1, p1}, Ljava/time/Clock;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method
