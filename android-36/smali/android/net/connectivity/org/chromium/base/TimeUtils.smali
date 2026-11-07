.class public Landroid/net/connectivity/org/chromium/base/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;,
        Landroid/net/connectivity/org/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;,
        Landroid/net/connectivity/org/chromium/base/TimeUtils$ElapsedRealtimeNanosTimer;,
        Landroid/net/connectivity/org/chromium/base/TimeUtils$ElapsedRealtimeMillisTimer;,
        Landroid/net/connectivity/org/chromium/base/TimeUtils$UptimeMillisTimer;
    }
.end annotation


# static fields
.field public static final blacklist MILLISECONDS_PER_DAY:J = 0x5265c00L

.field public static final blacklist MILLISECONDS_PER_MINUTE:J = 0xea60L

.field public static final blacklist MILLISECONDS_PER_YEAR:J = 0x757b12c00L

.field public static final blacklist NANOSECONDS_PER_MICROSECOND:J = 0x3e8L

.field public static final blacklist NANOSECONDS_PER_MILLISECOND:J = 0xf4240L

.field public static final blacklist SECONDS_PER_DAY:J = 0x15180L

.field public static final blacklist SECONDS_PER_HOUR:J = 0xe10L

.field public static final blacklist SECONDS_PER_MINUTE:J = 0x3cL

.field static blacklist sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist currentThreadTimeMillis()J
    .registers 2

    .line 155
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    if-eqz v0, :cond_b

    .line 156
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 158
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist currentTimeMillis()J
    .registers 2

    .line 103
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    if-eqz v0, :cond_b

    .line 104
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 106
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist elapsedRealtimeMillis()J
    .registers 4

    .line 142
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    if-eqz v0, :cond_f

    .line 143
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0

    .line 145
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist elapsedRealtimeNanos()J
    .registers 2

    .line 129
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    if-eqz v0, :cond_b

    .line 130
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0

    .line 132
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist uptimeMillis()J
    .registers 2

    .line 116
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    if-eqz v0, :cond_b

    .line 117
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TimeUtils;->sFakeClock:Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 119
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
