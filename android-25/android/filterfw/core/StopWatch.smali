.class Landroid/filterfw/core/StopWatch;
.super Ljava/lang/Object;
.source "StopWatchMap.java"


# instance fields
.field private STOP_WATCH_LOGGING_PERIOD:I

.field private TAG:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumCalls:I

.field private mStartTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    const/16 v0, 0xc8

    #@5
    iput v0, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    #@7
    .line 29
    const-string/jumbo v0, "MFF"

    #@a
    iput-object v0, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    #@c
    .line 37
    iput-object p1, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    #@e
    .line 38
    const-wide/16 v0, -0x1

    #@10
    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    #@12
    .line 39
    const-wide/16 v0, 0x0

    #@14
    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    #@16
    .line 40
    const/4 v0, 0x0

    #@17
    iput v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    #@19
    .line 36
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    #@0
    .prologue
    .line 44
    iget-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    .line 46
    const-string/jumbo v1, "Calling start with StopWatch already running"

    #@d
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 48
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    #@17
    .line 43
    return-void
.end method

.method public stop()V
    .locals 9

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 52
    iget-wide v2, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    #@5
    cmp-long v2, v2, v6

    #@7
    if-nez v2, :cond_0

    #@9
    .line 53
    new-instance v2, Ljava/lang/RuntimeException;

    #@b
    .line 54
    const-string/jumbo v3, "Calling stop with StopWatch already stopped"

    #@e
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 56
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15
    move-result-wide v0

    #@16
    .line 57
    .local v0, "stopTime":J
    iget-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    #@18
    iget-wide v4, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    #@1a
    sub-long v4, v0, v4

    #@1c
    add-long/2addr v2, v4

    #@1d
    iput-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    #@1f
    .line 58
    iget v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    iput v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    #@25
    .line 59
    iput-wide v6, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    #@27
    .line 60
    iget v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    #@29
    iget v3, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    #@2b
    rem-int/2addr v2, v3

    #@2c
    if-nez v2, :cond_1

    #@2e
    .line 61
    iget-object v2, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "AVG ms/call "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    iget-object v4, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    const-string/jumbo v4, ": "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    .line 62
    const-string/jumbo v4, "%.1f"

    #@4c
    const/4 v5, 0x1

    #@4d
    new-array v5, v5, [Ljava/lang/Object;

    #@4f
    iget-wide v6, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    #@51
    long-to-float v6, v6

    #@52
    const/high16 v7, 0x3f800000    # 1.0f

    #@54
    mul-float/2addr v6, v7

    #@55
    iget v7, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    #@57
    int-to-float v7, v7

    #@58
    div-float/2addr v6, v7

    #@59
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5c
    move-result-object v6

    #@5d
    aput-object v6, v5, v8

    #@5f
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 63
    const-wide/16 v2, 0x0

    #@70
    iput-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    #@72
    .line 64
    iput v8, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    #@74
    .line 51
    :cond_1
    return-void
.end method
