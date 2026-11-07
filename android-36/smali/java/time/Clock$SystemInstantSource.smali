.class final Ljava/time/Clock$SystemInstantSource;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/time/InstantSource;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SystemInstantSource"
.end annotation


# static fields
.field static final blacklist INSTANCE:Ljava/time/Clock$SystemInstantSource;

.field private static final whitelist serialVersionUID:J = 0x2f09a08cc2cL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 538
    new-instance v0, Ljava/time/Clock$SystemInstantSource;

    invoke-direct {v0}, Ljava/time/Clock$SystemInstantSource;-><init>()V

    sput-object v0, Ljava/time/Clock$SystemInstantSource;->INSTANCE:Ljava/time/Clock$SystemInstantSource;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 574
    sget-object v0, Ljava/time/Clock$SystemInstantSource;->INSTANCE:Ljava/time/Clock$SystemInstantSource;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 562
    instance-of v0, p1, Ljava/time/Clock$SystemInstantSource;

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 566
    const-class v0, Ljava/time/Clock$SystemInstantSource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 2

    .line 558
    invoke-static {}, Ljava/time/Clock;->currentInstant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api millis()J
    .registers 3

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 570
    const-string v0, "SystemInstantSource"

    return-object v0
.end method

.method public whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 544
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    return-object v0
.end method
