.class public Landroid/net/util/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private mStartTimeMs:J

.field private mStopTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isStarted()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isStopped()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public isStarted()Z
    .locals 4

    #@0
    .prologue
    .line 30
    iget-wide v0, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isStopped()Z
    .locals 4

    #@0
    .prologue
    .line 34
    iget-wide v0, p0, Landroid/net/util/Stopwatch;->mStopTimeMs:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public lap()J
    .locals 4

    #@0
    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isRunning()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    iget-wide v2, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    #@c
    sub-long/2addr v0, v2

    #@d
    return-wide v0

    #@e
    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->stop()J

    #@11
    move-result-wide v0

    #@12
    return-wide v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 72
    iput-wide v0, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    #@4
    .line 73
    iput-wide v0, p0, Landroid/net/util/Stopwatch;->mStopTimeMs:J

    #@6
    .line 71
    return-void
.end method

.method public start()Landroid/net/util/Stopwatch;
    .locals 2

    #@0
    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isStarted()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    #@c
    .line 48
    :cond_0
    return-object p0
.end method

.method public stop()J
    .locals 4

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isRunning()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/net/util/Stopwatch;->mStopTimeMs:J

    #@c
    .line 57
    :cond_0
    iget-wide v0, p0, Landroid/net/util/Stopwatch;->mStopTimeMs:J

    #@e
    iget-wide v2, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    #@10
    sub-long/2addr v0, v2

    #@11
    return-wide v0
.end method
