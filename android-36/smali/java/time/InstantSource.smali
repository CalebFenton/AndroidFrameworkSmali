.class public interface abstract Ljava/time/InstantSource;
.super Ljava/lang/Object;
.source "InstantSource.java"


# direct methods
.method public static whitelist test-api fixed(Ljava/time/Instant;)Ljava/time/InstantSource;
    .registers 2
    .param p0, "fixedInstant"    # Ljava/time/Instant;

    .line 170
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {p0, v0}, Ljava/time/Clock;->fixed(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api offset(Ljava/time/InstantSource;Ljava/time/Duration;)Ljava/time/InstantSource;
    .registers 3
    .param p0, "baseSource"    # Ljava/time/InstantSource;
    .param p1, "offsetDuration"    # Ljava/time/Duration;

    .line 194
    const-string v0, "baseSource"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-interface {p0, v0}, Ljava/time/InstantSource;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/time/Clock;->offset(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api system()Ljava/time/InstantSource;
    .registers 1

    .line 114
    sget-object v0, Ljava/time/Clock$SystemInstantSource;->INSTANCE:Ljava/time/Clock$SystemInstantSource;

    return-object v0
.end method

.method public static whitelist test-api tick(Ljava/time/InstantSource;Ljava/time/Duration;)Ljava/time/InstantSource;
    .registers 3
    .param p0, "baseSource"    # Ljava/time/InstantSource;
    .param p1, "tickDuration"    # Ljava/time/Duration;

    .line 151
    const-string v0, "baseSource"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-interface {p0, v0}, Ljava/time/InstantSource;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/time/Clock;->tick(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api instant()Ljava/time/Instant;
.end method

.method public whitelist test-api millis()J
    .registers 3

    .line 229
    invoke-interface {p0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 251
    new-instance v0, Ljava/time/Clock$SourceClock;

    invoke-direct {v0, p0, p1}, Ljava/time/Clock$SourceClock;-><init>(Ljava/time/InstantSource;Ljava/time/ZoneId;)V

    return-object v0
.end method
