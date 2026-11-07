.class public final Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;
.super Ljava/lang/Object;
.source "JankEndScenarioTime.java"


# instance fields
.field public final blacklist endScenarioTimeNs:J

.field public final blacklist timeoutDelayMs:J


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 5
    .param p1, "uptimeNanos"    # J

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;->timeoutDelayMs:J

    .line 24
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;->endScenarioTimeNs:J

    .line 25
    return-void
.end method

.method public static blacklist endAt(J)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;
    .registers 4
    .param p0, "uptimeNanos"    # J

    .line 17
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    .line 18
    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_8
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;-><init>(J)V

    return-object v0
.end method
