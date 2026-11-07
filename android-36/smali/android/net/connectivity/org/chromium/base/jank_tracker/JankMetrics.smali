.class Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
.super Ljava/lang/Object;
.source "JankMetrics.java"


# instance fields
.field public final blacklist durationsNs:[J

.field public final blacklist isJanky:[Z

.field public final blacklist missedVsyncs:[I

.field public final blacklist timestampsNs:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    .line 19
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    .line 20
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->missedVsyncs:[I

    .line 21
    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->isJanky:[Z

    .line 22
    return-void
.end method

.method public constructor blacklist <init>([J[J[I)V
    .registers 5
    .param p1, "timestampsNs"    # [J
    .param p2, "durationsNs"    # [J
    .param p3, "missedVsyncs"    # [I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    .line 26
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    .line 27
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->missedVsyncs:[I

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->isJanky:[Z

    .line 29
    return-void
.end method
