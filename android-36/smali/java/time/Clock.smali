.class public abstract Ljava/time/Clock;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/time/InstantSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/Clock$SystemClock;,
        Ljava/time/Clock$TickClock;,
        Ljava/time/Clock$FixedClock;,
        Ljava/time/Clock$OffsetClock;,
        Ljava/time/Clock$SourceClock;,
        Ljava/time/Clock$SystemInstantSource;
    }
.end annotation


# static fields
.field private static final blacklist OFFSET_SEED:J

.field private static blacklist offset:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    sub-long/2addr v0, v2

    sput-wide v0, Ljava/time/Clock;->OFFSET_SEED:J

    .line 489
    sget-wide v0, Ljava/time/Clock;->OFFSET_SEED:J

    sput-wide v0, Ljava/time/Clock;->offset:J

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method static blacklist currentInstant()Ljava/time/Instant;
    .registers 10

    .line 495
    sget-wide v0, Ljava/time/Clock;->offset:J

    .line 496
    .local v0, "localOffset":J
    invoke-static {v0, v1}, Ljdk/internal/misc/VM;->getNanoTimeAdjustment(J)J

    move-result-wide v2

    .line 498
    .local v2, "adjustment":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_41

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x400

    sub-long v0, v6, v8

    .line 513
    invoke-static {v0, v1}, Ljdk/internal/misc/VM;->getNanoTimeAdjustment(J)J

    move-result-wide v2

    .line 515
    cmp-long v4, v2, v4

    if-eqz v4, :cond_22

    .line 522
    sput-wide v0, Ljava/time/Clock;->offset:J

    goto :goto_41

    .line 518
    :cond_22
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not in range"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 525
    :cond_41
    :goto_41
    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist test-api fixed(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 3
    .param p0, "fixedInstant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 348
    const-string v0, "fixedInstant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/time/Clock$FixedClock;

    invoke-direct {v0, p0, p1}, Ljava/time/Clock$FixedClock;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist test-api offset(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;
    .registers 3
    .param p0, "baseClock"    # Ljava/time/Clock;
    .param p1, "offsetDuration"    # Ljava/time/Duration;

    .line 374
    const-string v0, "baseClock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    const-string v0, "offsetDuration"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {p1, v0}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 377
    return-object p0

    .line 379
    :cond_13
    new-instance v0, Ljava/time/Clock$OffsetClock;

    invoke-direct {v0, p0, p1}, Ljava/time/Clock$OffsetClock;-><init>(Ljava/time/Clock;Ljava/time/Duration;)V

    return-object v0
.end method

.method public static whitelist test-api system(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 202
    const-string v0, "zone"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-ne p0, v0, :cond_c

    .line 204
    sget-object v0, Ljava/time/Clock$SystemClock;->UTC:Ljava/time/Clock$SystemClock;

    return-object v0

    .line 206
    :cond_c
    new-instance v0, Ljava/time/Clock$SystemClock;

    invoke-direct {v0, p0}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist test-api systemDefaultZone()Ljava/time/Clock;
    .registers 2

    .line 183
    new-instance v0, Ljava/time/Clock$SystemClock;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist test-api systemUTC()Ljava/time/Clock;
    .registers 1

    .line 160
    sget-object v0, Ljava/time/Clock$SystemClock;->UTC:Ljava/time/Clock$SystemClock;

    return-object v0
.end method

.method public static whitelist test-api tick(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;
    .registers 8
    .param p0, "baseClock"    # Ljava/time/Clock;
    .param p1, "tickDuration"    # Ljava/time/Duration;

    .line 313
    const-string v0, "baseClock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    const-string v0, "tickDuration"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 318
    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    .line 319
    .local v0, "tickNanos":J
    const-wide/32 v2, 0xf4240

    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    goto :goto_28

    .line 321
    :cond_20
    const-wide/32 v2, 0x3b9aca00

    rem-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    .line 326
    :goto_28
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2f

    .line 327
    return-object p0

    .line 329
    :cond_2f
    new-instance v2, Ljava/time/Clock$TickClock;

    invoke-direct {v2, p0, v0, v1}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v2

    .line 324
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid tick duration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    .end local v0    # "tickNanos":J
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tick duration must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api tickMillis(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 5
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 231
    new-instance v0, Ljava/time/Clock$TickClock;

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method

.method public static whitelist test-api tickMinutes(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 5
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 278
    new-instance v0, Ljava/time/Clock$TickClock;

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    const-wide v2, 0xdf8475800L

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method

.method public static whitelist test-api tickSeconds(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 5
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 255
    new-instance v0, Ljava/time/Clock$TickClock;

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0x3b9aca00

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 461
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api getZone()Ljava/time/ZoneId;
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 475
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api instant()Ljava/time/Instant;
.end method

.method public whitelist test-api millis()J
    .registers 3

    .line 433
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
.end method
