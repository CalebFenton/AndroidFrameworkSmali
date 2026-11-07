.class final Ljava/time/Clock$SystemClock;
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
    name = "SystemClock"
.end annotation


# static fields
.field static final blacklist UTC:Ljava/time/Clock$SystemClock;

.field private static final whitelist serialVersionUID:J = 0x5d8b8814510769ebL


# instance fields
.field private final greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 586
    new-instance v0, Ljava/time/Clock$SystemClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Ljava/time/Clock$SystemClock;->UTC:Ljava/time/Clock$SystemClock;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/ZoneId;)V
    .registers 2
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 590
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 591
    iput-object p1, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    .line 592
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 616
    instance-of v0, p1, Ljava/time/Clock$SystemClock;

    if-eqz v0, :cond_10

    .line 617
    iget-object v0, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    move-object v1, p1

    check-cast v1, Ljava/time/Clock$SystemClock;

    iget-object v1, v1, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 619
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 595
    iget-object v0, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 623
    iget-object v0, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 2

    .line 612
    invoke-static {}, Ljava/time/Clock$SystemClock;->currentInstant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api millis()J
    .registers 3

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

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
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 599
    iget-object v0, p0, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 600
    return-object p0

    .line 602
    :cond_9
    new-instance v0, Ljava/time/Clock$SystemClock;

    invoke-direct {v0, p1}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method
