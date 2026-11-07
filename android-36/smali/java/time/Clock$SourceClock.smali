.class final Ljava/time/Clock$SourceClock;
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
    name = "SourceClock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xd615326e8a1eL


# instance fields
.field private final blacklist baseSource:Ljava/time/InstantSource;

.field private final blacklist zone:Ljava/time/ZoneId;


# direct methods
.method constructor blacklist <init>(Ljava/time/InstantSource;Ljava/time/ZoneId;)V
    .registers 3
    .param p1, "baseSource"    # Ljava/time/InstantSource;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .line 800
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 801
    iput-object p1, p0, Ljava/time/Clock$SourceClock;->baseSource:Ljava/time/InstantSource;

    .line 802
    iput-object p2, p0, Ljava/time/Clock$SourceClock;->zone:Ljava/time/ZoneId;

    .line 803
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 827
    instance-of v0, p1, Ljava/time/Clock$SourceClock;

    if-eqz v0, :cond_1d

    .line 825
    move-object v0, p1

    check-cast v0, Ljava/time/Clock$SourceClock;

    .local v0, "other":Ljava/time/Clock$SourceClock;
    iget-object v1, p0, Ljava/time/Clock$SourceClock;->zone:Ljava/time/ZoneId;

    iget-object v2, v0, Ljava/time/Clock$SourceClock;->zone:Ljava/time/ZoneId;

    .line 826
    invoke-virtual {v1, v2}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Ljava/time/Clock$SourceClock;->baseSource:Ljava/time/InstantSource;

    iget-object v2, v0, Ljava/time/Clock$SourceClock;->baseSource:Ljava/time/InstantSource;

    .line 827
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    .end local v0    # "other":Ljava/time/Clock$SourceClock;
    :cond_1d
    const/4 v1, 0x0

    .line 825
    :goto_1e
    return v1
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 806
    iget-object v0, p0, Ljava/time/Clock$SourceClock;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 831
    iget-object v0, p0, Ljava/time/Clock$SourceClock;->baseSource:Ljava/time/InstantSource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/Clock$SourceClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 2

    .line 821
    iget-object v0, p0, Ljava/time/Clock$SourceClock;->baseSource:Ljava/time/InstantSource;

    invoke-interface {v0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api millis()J
    .registers 3

    .line 817
    iget-object v0, p0, Ljava/time/Clock$SourceClock;->baseSource:Ljava/time/InstantSource;

    invoke-interface {v0}, Ljava/time/InstantSource;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$SourceClock;->baseSource:Ljava/time/InstantSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$SourceClock;->zone:Ljava/time/ZoneId;

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
    .registers 4
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 810
    iget-object v0, p0, Ljava/time/Clock$SourceClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 811
    return-object p0

    .line 813
    :cond_9
    new-instance v0, Ljava/time/Clock$SourceClock;

    iget-object v1, p0, Ljava/time/Clock$SourceClock;->baseSource:Ljava/time/InstantSource;

    invoke-direct {v0, v1, p1}, Ljava/time/Clock$SourceClock;-><init>(Ljava/time/InstantSource;Ljava/time/ZoneId;)V

    return-object v0
.end method
