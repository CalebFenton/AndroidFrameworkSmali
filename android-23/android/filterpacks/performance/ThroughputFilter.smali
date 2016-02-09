.class public Landroid/filterpacks/performance/ThroughputFilter;
.super Landroid/filterfw/core/Filter;
.source "ThroughputFilter.java"


# instance fields
.field private mLastTime:J

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mPeriod:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "period"
    .end annotation
.end field

.field private mPeriodFrameCount:I

.field private mTotalFrameCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 34
    const/4 v0, 0x5

    #@5
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    #@7
    .line 36
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    #@b
    .line 38
    iput v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    #@d
    .line 39
    iput v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    #@f
    .line 43
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 60
    return-object p2
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 65
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    #@3
    .line 66
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    #@5
    .line 67
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    #@9
    .line 64
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 73
    const-string/jumbo v7, "frame"

    #@3
    invoke-virtual {p0, v7}, Landroid/filterpacks/performance/ThroughputFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v2

    #@7
    .line 74
    .local v2, "input":Landroid/filterfw/core/Frame;
    const-string/jumbo v7, "frame"

    #@a
    invoke-virtual {p0, v7, v2}, Landroid/filterpacks/performance/ThroughputFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@d
    .line 77
    iget v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    #@f
    add-int/lit8 v7, v7, 0x1

    #@11
    iput v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    #@13
    .line 78
    iget v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    #@15
    add-int/lit8 v7, v7, 0x1

    #@17
    iput v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    #@19
    .line 81
    iget-wide v8, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    #@1b
    const-wide/16 v10, 0x0

    #@1d
    cmp-long v7, v8, v10

    #@1f
    if-nez v7, :cond_0

    #@21
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@24
    move-result-wide v8

    #@25
    iput-wide v8, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    #@27
    .line 84
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2a
    move-result-wide v0

    #@2b
    .line 87
    .local v0, "curTime":J
    iget-wide v8, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    #@2d
    sub-long v8, v0, v8

    #@2f
    iget v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    #@31
    mul-int/lit16 v7, v7, 0x3e8

    #@33
    int-to-long v10, v7

    #@34
    cmp-long v7, v8, v10

    #@36
    if-ltz v7, :cond_1

    #@38
    .line 88
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3b
    move-result-object v3

    #@3c
    .line 89
    .local v3, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@3f
    move-result v7

    #@40
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@43
    move-result v8

    #@44
    mul-int v4, v7, v8

    #@46
    .line 90
    .local v4, "pixelCount":I
    new-instance v5, Landroid/filterpacks/performance/Throughput;

    #@48
    iget v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    #@4a
    .line 91
    iget v8, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    #@4c
    .line 92
    iget v9, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    #@4e
    .line 90
    invoke-direct {v5, v7, v8, v9, v4}, Landroid/filterpacks/performance/Throughput;-><init>(IIII)V

    #@51
    .line 94
    .local v5, "throughput":Landroid/filterpacks/performance/Throughput;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@54
    move-result-object v7

    #@55
    iget-object v8, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@57
    invoke-virtual {v7, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@5a
    move-result-object v6

    #@5b
    .line 95
    .local v6, "throughputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v6, v5}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    #@5e
    .line 96
    const-string/jumbo v7, "throughput"

    #@61
    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/performance/ThroughputFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@64
    .line 97
    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    #@66
    .line 98
    const/4 v7, 0x0

    #@67
    iput v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    #@69
    .line 71
    .end local v3    # "inputFormat":Landroid/filterfw/core/FrameFormat;
    .end local v4    # "pixelCount":I
    .end local v5    # "throughput":Landroid/filterpacks/performance/Throughput;
    .end local v6    # "throughputFrame":Landroid/filterfw/core/Frame;
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 50
    const-string/jumbo v0, "frame"

    #@3
    invoke-virtual {p0, v0}, Landroid/filterpacks/performance/ThroughputFilter;->addInputPort(Ljava/lang/String;)V

    #@6
    .line 53
    const-class v0, Landroid/filterpacks/performance/Throughput;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@f
    .line 54
    const-string/jumbo v0, "frame"

    #@12
    const-string/jumbo v1, "frame"

    #@15
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/performance/ThroughputFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 55
    const-string/jumbo v0, "throughput"

    #@1b
    iget-object v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@1d
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/performance/ThroughputFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@20
    .line 48
    return-void
.end method
