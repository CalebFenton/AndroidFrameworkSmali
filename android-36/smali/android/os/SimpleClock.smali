.class public abstract Landroid/os/SimpleClock;
.super Ljava/time/Clock;
.source "SimpleClock.java"


# instance fields
.field private final greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/time/ZoneId;)V
    .registers 2
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 27
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/os/SimpleClock;->zone:Ljava/time/ZoneId;

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 33
    iget-object v0, p0, Landroid/os/SimpleClock;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist test-api instant()Ljava/time/Instant;
    .registers 3

    .line 51
    invoke-virtual {p0}, Landroid/os/SimpleClock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api millis()J
.end method

.method public whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 38
    new-instance v0, Landroid/os/SimpleClock$1;

    invoke-direct {v0, p0, p1}, Landroid/os/SimpleClock$1;-><init>(Landroid/os/SimpleClock;Ljava/time/ZoneId;)V

    return-object v0
.end method
