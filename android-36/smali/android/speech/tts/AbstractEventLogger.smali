.class abstract Landroid/speech/tts/AbstractEventLogger;
.super Ljava/lang/Object;
.source "AbstractEventLogger.java"


# instance fields
.field protected final greylist-max-o mCallerPid:I

.field protected final greylist-max-o mCallerUid:I

.field private volatile greylist-max-o mEngineCompleteTime:J

.field private volatile greylist-max-o mEngineStartTime:J

.field private greylist-max-o mLogWritten:Z

.field protected greylist-max-o mPlaybackStartTime:J

.field protected final greylist-max-o mReceivedTime:J

.field private volatile greylist-max-o mRequestProcessingStartTime:J

.field protected final greylist-max-o mServiceApp:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(IILjava/lang/String;)V
    .registers 6
    .param p1, "callerUid"    # I
    .param p2, "callerPid"    # I
    .param p3, "serviceApp"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 34
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 35
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 36
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 41
    iput p1, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerUid:I

    .line 42
    iput p2, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerPid:I

    .line 43
    iput-object p3, p0, Landroid/speech/tts/AbstractEventLogger;->mServiceApp:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o logFailure(I)V
.end method

.method protected abstract greylist-max-o logSuccess(JJJ)V
.end method

.method public greylist-max-o onAudioDataWritten()V
    .registers 5

    .line 83
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 86
    :cond_e
    return-void
.end method

.method public greylist-max-o onCompleted(I)V
    .registers 15
    .param p1, "statusCode"    # I

    .line 93
    iget-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    if-eqz v0, :cond_5

    .line 94
    return-void

    .line 96
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 107
    .local v0, "completionTime":J
    if-nez p1, :cond_34

    iget-wide v2, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    iget-wide v2, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    goto :goto_34

    .line 113
    :cond_1d
    iget-wide v2, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    iget-wide v4, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    sub-long v7, v2, v4

    .line 114
    .local v7, "audioLatency":J
    iget-wide v2, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    iget-wide v4, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    sub-long v9, v2, v4

    .line 115
    .local v9, "engineLatency":J
    iget-wide v2, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    iget-wide v4, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    sub-long v11, v2, v4

    .line 116
    .local v11, "engineTotal":J
    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Landroid/speech/tts/AbstractEventLogger;->logSuccess(JJJ)V

    .line 117
    return-void

    .line 109
    .end local v7    # "audioLatency":J
    .end local v9    # "engineLatency":J
    .end local v11    # "engineTotal":J
    :cond_34
    :goto_34
    invoke-virtual {p0, p1}, Landroid/speech/tts/AbstractEventLogger;->logFailure(I)V

    .line 110
    return-void
.end method

.method public greylist-max-o onEngineComplete()V
    .registers 3

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 72
    return-void
.end method

.method public greylist-max-o onEngineDataReceived()V
    .registers 5

    .line 61
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 64
    :cond_e
    return-void
.end method

.method public greylist-max-o onRequestProcessingStart()V
    .registers 3

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 54
    return-void
.end method
