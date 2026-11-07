.class Landroid/os/SystemClock$1;
.super Landroid/os/SimpleClock;
.source "SystemClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SystemClock;->uptimeClock()Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/time/ZoneId;)V
    .registers 2
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 238
    invoke-direct {p0, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api millis()J
    .registers 3

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
