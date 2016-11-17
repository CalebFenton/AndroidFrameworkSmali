.class abstract Landroid/speech/tts/AbstractEventLogger;
.super Ljava/lang/Object;
.source "AbstractEventLogger.java"


# instance fields
.field protected final mCallerPid:I

.field protected final mCallerUid:I

.field private volatile mEngineCompleteTime:J

.field private volatile mEngineStartTime:J

.field private mLogWritten:Z

.field protected mPlaybackStartTime:J

.field protected final mReceivedTime:J

.field private volatile mRequestProcessingStartTime:J

.field protected final mServiceApp:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "callerUid"    # I
    .param p2, "callerPid"    # I
    .param p3, "serviceApp"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 32
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    #@7
    .line 34
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    #@9
    .line 35
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    #@b
    .line 36
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    #@d
    .line 38
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    #@10
    .line 41
    iput p1, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerUid:I

    #@12
    .line 42
    iput p2, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerPid:I

    #@14
    .line 43
    iput-object p3, p0, Landroid/speech/tts/AbstractEventLogger;->mServiceApp:Ljava/lang/String;

    #@16
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    #@1c
    .line 40
    return-void
.end method


# virtual methods
.method protected abstract logFailure(I)V
.end method

.method protected abstract logSuccess(JJJ)V
.end method

.method public onAudioDataWritten()V
    .locals 4

    #@0
    .prologue
    .line 83
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    #@e
    .line 80
    :cond_0
    return-void
.end method

.method public onCompleted(I)V
    .locals 12
    .param p1, "statusCode"    # I

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    .line 93
    iget-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 94
    return-void

    #@7
    .line 96
    :cond_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    #@a
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v8

    #@e
    .line 107
    .local v8, "completionTime":J
    if-nez p1, :cond_1

    #@10
    .line 108
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    #@12
    cmp-long v0, v0, v10

    #@14
    if-nez v0, :cond_2

    #@16
    .line 109
    :cond_1
    invoke-virtual {p0, p1}, Landroid/speech/tts/AbstractEventLogger;->logFailure(I)V

    #@19
    .line 110
    return-void

    #@1a
    .line 108
    :cond_2
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    #@1c
    cmp-long v0, v0, v10

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 113
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    #@22
    iget-wide v10, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    #@24
    sub-long v2, v0, v10

    #@26
    .line 114
    .local v2, "audioLatency":J
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    #@28
    iget-wide v10, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    #@2a
    sub-long v4, v0, v10

    #@2c
    .line 115
    .local v4, "engineLatency":J
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    #@2e
    iget-wide v10, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    #@30
    sub-long v6, v0, v10

    #@32
    .local v6, "engineTotal":J
    move-object v1, p0

    #@33
    .line 116
    invoke-virtual/range {v1 .. v7}, Landroid/speech/tts/AbstractEventLogger;->logSuccess(JJJ)V

    #@36
    .line 92
    return-void
.end method

.method public onEngineComplete()V
    .locals 2

    #@0
    .prologue
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    #@6
    .line 70
    return-void
.end method

.method public onEngineDataReceived()V
    .locals 4

    #@0
    .prologue
    .line 61
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    #@e
    .line 60
    :cond_0
    return-void
.end method

.method public onRequestProcessingStart()V
    .locals 2

    #@0
    .prologue
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    #@6
    .line 52
    return-void
.end method
