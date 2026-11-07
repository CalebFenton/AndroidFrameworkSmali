.class public Landroid/filterpacks/performance/ThroughputFilter;
.super Landroid/filterfw/core/Filter;
.source "ThroughputFilter.java"


# instance fields
.field private blacklist mLastTime:J

.field private blacklist mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private blacklist mPeriod:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "period"
    .end annotation
.end field

.field private blacklist mPeriodFrameCount:I

.field private blacklist mTotalFrameCount:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 39
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 60
    return-object p2
.end method

.method public blacklist open(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 66
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 68
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 73
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/performance/ThroughputFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 74
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/performance/ThroughputFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 77
    iget v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 78
    iget v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 81
    iget-wide v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_23

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 84
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 87
    .local v2, "curTime":J
    iget-wide v4, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    sub-long v4, v2, v4

    iget v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_64

    .line 88
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 89
    .local v0, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 90
    .local v4, "pixelCount":I
    new-instance v5, Landroid/filterpacks/performance/Throughput;

    iget v6, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    iget v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    iget v8, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/filterpacks/performance/Throughput;-><init>(IIII)V

    .line 94
    .local v5, "throughput":Landroid/filterpacks/performance/Throughput;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 95
    .local v6, "throughputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v6, v5}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v7, "throughput"

    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/performance/ThroughputFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 97
    iput-wide v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 98
    const/4 v7, 0x0

    iput v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 100
    .end local v0    # "inputFormat":Landroid/filterfw/core/FrameFormat;
    .end local v4    # "pixelCount":I
    .end local v5    # "throughput":Landroid/filterpacks/performance/Throughput;
    .end local v6    # "throughputFrame":Landroid/filterfw/core/Frame;
    :cond_64
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 4

    .line 50
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/performance/ThroughputFilter;->addInputPort(Ljava/lang/String;)V

    .line 53
    const-class v1, Landroid/filterpacks/performance/Throughput;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 54
    invoke-virtual {p0, v0, v0}, Landroid/filterpacks/performance/ThroughputFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "throughput"

    iget-object v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/performance/ThroughputFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 56
    return-void
.end method
