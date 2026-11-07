.class public Lcom/android/internal/os/anr/AnrLatencyTracker;
.super Ljava/lang/Object;
.source "AnrLatencyTracker.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/anr/AnrLatencyTracker$EarlyDumpStatus;
    }
.end annotation


# static fields
.field private static final blacklist sNextAnrRecordPlacedOnQueueCookieGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mAMSLockLastTryAcquireStart:J

.field private blacklist mAMSLockTotalContention:J

.field private blacklist mAnrProcessingStartedUptime:J

.field private blacklist mAnrQueueSize:I

.field private blacklist mAnrRecordLastTryAcquireStart:J

.field private blacklist mAnrRecordLockTotalContention:J

.field private final blacklist mAnrRecordPlacedOnQueueCookie:I

.field private blacklist mAnrRecordPlacedOnQueueUptime:J

.field private blacklist mAnrTriggerUptime:J

.field private blacklist mAnrType:I

.field private blacklist mAppNotRespondingStartUptime:J

.field private blacklist mCopyingFirstPidDuration:J

.field private blacklist mCopyingFirstPidStartUptime:J

.field private blacklist mCopyingFirstPidSucceeded:Z

.field private blacklist mCriticalEventLogTotalLatency:J

.field private blacklist mCriticalEventLoglastCallUptime:J

.field private blacklist mCurrentPsiStateLastCallUptime:J

.field private blacklist mCurrentPsiStateTotalLatency:J

.field private blacklist mDumpStackTracesStartUptime:J

.field private final blacklist mDumpedProcessesCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mEarlyDumpExecutorPidCount:J

.field private blacklist mEarlyDumpRequestSubmissionUptime:J

.field private volatile blacklist mEarlyDumpStatus:I

.field private blacklist mEndUptime:J

.field private blacklist mExtraPidsDumpingDuration:J

.field private blacklist mExtraPidsDumpingStartUptime:J

.field private blacklist mFirstPidsDumpingDuration:J

.field private blacklist mFirstPidsDumpingStartUptime:J

.field private blacklist mGlobalLockLastTryAcquireStart:J

.field private blacklist mGlobalLockTotalContention:J

.field private blacklist mIsPushed:Z

.field private blacklist mIsSkipped:Z

.field private blacklist mNativePidsDumpingDuration:J

.field private blacklist mNativePidsDumpingStartUptime:J

.field private blacklist mNotifyAppUnresponsiveDuration:J

.field private blacklist mNotifyAppUnresponsiveStartUptime:J

.field private blacklist mNotifyWindowUnresponsiveDuration:J

.field private blacklist mNotifyWindowUnresponsiveStartUptime:J

.field private blacklist mPidLockLastTryAcquireStart:J

.field private blacklist mPidLockTotalContention:J

.field private blacklist mPreDumpIfLockTooSlowDuration:J

.field private blacklist mPreDumpIfLockTooSlowStartUptime:J

.field private blacklist mProcLockLastTryAcquireStart:J

.field private blacklist mProcLockTotalContention:J

.field private blacklist mProcessCpuTrackerMethodsLastCallUptime:J

.field private blacklist mProcessCpuTrackerMethodsTotalLatency:J

.field private volatile blacklist mTempFileDumpingDuration:J

.field private volatile blacklist mTempFileDumpingStartUptime:J

.field private blacklist mUpdateCpuStatsNowLastCallUptime:J

.field private blacklist mUpdateCpuStatsNowTotalLatency:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->sNextAnrRecordPlacedOnQueueCookieGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .registers 8
    .param p1, "timeoutKind"    # I
    .param p2, "anrTriggerUptime"    # J

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    .line 81
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    .line 83
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    .line 85
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    .line 88
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    .line 90
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    .line 92
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    .line 94
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    .line 96
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    .line 100
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpedProcessesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    .line 105
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingDuration:J

    .line 107
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidDuration:J

    .line 108
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpRequestSubmissionUptime:J

    .line 109
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpExecutorPidCount:J

    .line 112
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingDuration:J

    .line 114
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingDuration:J

    .line 116
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingDuration:J

    .line 118
    iput-boolean v3, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsPushed:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsSkipped:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidSucceeded:Z

    .line 123
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowDuration:J

    .line 125
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveDuration:J

    .line 127
    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveDuration:J

    .line 129
    sget-object v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->sNextAnrRecordPlacedOnQueueCookieGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueCookie:I

    .line 133
    iput-wide p2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    .line 134
    invoke-static {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->timeoutKindToAnrType(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrType:I

    .line 136
    return-void
.end method

.method private blacklist anrSkipped(Ljava/lang/String;)V
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnrSkipped@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsSkipped:Z

    .line 603
    return-void
.end method

.method private static blacklist timeoutKindToAnrType(I)I
    .registers 2
    .param p0, "timeoutKind"    # I

    .line 534
    packed-switch p0, :pswitch_data_16

    .line 552
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 550
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 548
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 546
    :pswitch_a
    const/4 v0, 0x6

    return v0

    .line 544
    :pswitch_c
    const/4 v0, 0x2

    return v0

    .line 542
    :pswitch_e
    const/4 v0, 0x3

    return v0

    .line 540
    :pswitch_10
    const/4 v0, 0x1

    return v0

    .line 538
    :pswitch_12
    const/4 v0, 0x5

    return v0

    .line 536
    :pswitch_14
    const/4 v0, 0x4

    return v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public blacklist anrProcessingEnded()V
    .registers 3

    .line 181
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->close()V

    .line 183
    return-void
.end method

.method public blacklist anrProcessingStarted()V
    .registers 5

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    .line 173
    const-string v0, "anrRecordPlacedOnQueue"

    iget v1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueCookie:I

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 175
    const-string v0, "anrProcessing"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 177
    return-void
.end method

.method public blacklist anrRecordPlacingOnQueueWithSize(I)V
    .registers 6
    .param p1, "queueSize"    # I

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    .line 162
    const-string v0, "anrRecordPlacedOnQueue"

    iget v1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueCookie:I

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 164
    iput p1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrQueueSize:I

    .line 167
    add-int/lit8 v0, p1, 0x1

    const-string v1, "anrRecordsQueueSize"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 168
    return-void
.end method

.method public blacklist anrRecordsQueueSizeWhenPopped(I)V
    .registers 5
    .param p1, "queueSize"    # I

    .line 409
    const-wide/16 v0, 0x40

    const-string v2, "anrRecordsQueueSize"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 410
    return-void
.end method

.method public blacklist anrSkippedDumpStackTraces()V
    .registers 2

    .line 430
    const-string v0, "dumpStackTraces"

    invoke-direct {p0, v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkipped(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public blacklist anrSkippedProcessErrorStateRecordAppNotResponding()V
    .registers 2

    .line 425
    const-string v0, "appNotResponding"

    invoke-direct {p0, v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkipped(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public blacklist appNotRespondingEnded()V
    .registers 3

    .line 147
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 148
    return-void
.end method

.method public blacklist appNotRespondingStarted()V
    .registers 4

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    .line 141
    const-wide/16 v0, 0x40

    const-string v2, "AnrHelper#appNotResponding()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 143
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 526
    iget-boolean v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsSkipped:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsPushed:Z

    if-nez v0, :cond_14

    .line 527
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEndUptime:J

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->pushAtom()V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsPushed:Z

    .line 531
    :cond_14
    return-void
.end method

.method public blacklist copyingFirstPidEnded(Z)V
    .registers 6
    .param p1, "copySucceeded"    # Z

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidDuration:J

    .line 291
    iput-boolean p1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidSucceeded:Z

    .line 292
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 293
    return-void
.end method

.method public blacklist copyingFirstPidStarted()V
    .registers 4

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidStartUptime:J

    .line 285
    const-wide/16 v0, 0x40

    const-string v2, "copyingFirstPid"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 286
    return-void
.end method

.method public blacklist criticalEventLogEnded()V
    .registers 7

    .line 243
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLoglastCallUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    .line 245
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 246
    return-void
.end method

.method public blacklist criticalEventLogStarted()V
    .registers 4

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLoglastCallUptime:J

    .line 238
    const-wide/16 v0, 0x40

    const-string v2, "criticalEventLog"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 239
    return-void
.end method

.method public blacklist currentPsiStateCalled()V
    .registers 4

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateLastCallUptime:J

    .line 213
    const-wide/16 v0, 0x40

    const-string v2, "currentPsiState()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 214
    return-void
.end method

.method public blacklist currentPsiStateReturned()V
    .registers 7

    .line 218
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateLastCallUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    .line 219
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 220
    return-void
.end method

.method public blacklist dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;
    .registers 7

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DurationsV5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpStackTracesStartUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrQueueSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 497
    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_ba

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    goto :goto_bc

    .line 498
    :cond_ba
    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidStartUptime:J

    :goto_bc
    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpStackTracesStartUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingStartUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpRequestSubmissionUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpExecutorPidCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    iget-boolean v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidSucceeded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    return-object v0
.end method

.method public blacklist dumpStackTracesEnded()V
    .registers 3

    .line 194
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 195
    return-void
.end method

.method public blacklist dumpStackTracesStarted()V
    .registers 4

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpStackTracesStartUptime:J

    .line 188
    const-wide/16 v0, 0x40

    const-string v2, "dumpStackTraces()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 190
    return-void
.end method

.method public blacklist dumpStackTracesTempFileCreationFailed()V
    .registers 4

    .line 312
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    .line 313
    const-wide/16 v0, 0x40

    const-string v2, "dumpStackTracesTempFileCreationFailed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 314
    return-void
.end method

.method public blacklist dumpStackTracesTempFileEnded()V
    .registers 5

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingDuration:J

    .line 304
    iget v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 305
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    .line 307
    :cond_11
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 308
    return-void
.end method

.method public blacklist dumpStackTracesTempFileStarted()V
    .registers 4

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingStartUptime:J

    .line 298
    const-wide/16 v0, 0x40

    const-string v2, "dumpStackTracesTempFile"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 299
    return-void
.end method

.method public blacklist dumpStackTracesTempFileTimedOut()V
    .registers 4

    .line 318
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    .line 319
    const-wide/16 v0, 0x40

    const-string v2, "dumpStackTracesTempFileTimedOut"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 320
    return-void
.end method

.method public blacklist dumpingExtraPidsEnded()V
    .registers 5

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingDuration:J

    .line 343
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 344
    return-void
.end method

.method public blacklist dumpingExtraPidsStarted()V
    .registers 4

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingStartUptime:J

    .line 337
    const-wide/16 v0, 0x40

    const-string v2, "dumpingExtraPids"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 338
    return-void
.end method

.method public blacklist dumpingFirstPidsEnded()V
    .registers 5

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingDuration:J

    .line 278
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 279
    return-void
.end method

.method public blacklist dumpingFirstPidsStarted()V
    .registers 4

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    .line 272
    const-wide/16 v0, 0x40

    const-string v2, "dumpingFirstPids"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 273
    return-void
.end method

.method public blacklist dumpingNativePidsEnded()V
    .registers 5

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingDuration:J

    .line 331
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 332
    return-void
.end method

.method public blacklist dumpingNativePidsStarted()V
    .registers 4

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingStartUptime:J

    .line 325
    const-wide/16 v0, 0x40

    const-string v2, "dumpingNativePids"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 326
    return-void
.end method

.method public blacklist dumpingPidEnded()V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpedProcessesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 266
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 267
    return-void
.end method

.method public blacklist dumpingPidStarted(I)V
    .registers 5
    .param p1, "pid"    # I

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpingPid#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 261
    return-void
.end method

.method public blacklist earlyDumpRequestSubmittedWithSize(I)V
    .registers 4
    .param p1, "currentProcessedPidCount"    # I

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpRequestSubmissionUptime:J

    .line 156
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpExecutorPidCount:J

    .line 157
    return-void
.end method

.method public blacklist getUptimeMillis()J
    .registers 3

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist nativePidCollectionEnded()V
    .registers 3

    .line 255
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 256
    return-void
.end method

.method public blacklist nativePidCollectionStarted()V
    .registers 4

    .line 250
    const-wide/16 v0, 0x40

    const-string v2, "nativePidCollection"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 251
    return-void
.end method

.method public blacklist notifyAppUnresponsiveEnded()V
    .registers 5

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveDuration:J

    .line 442
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 443
    return-void
.end method

.method public blacklist notifyAppUnresponsiveStarted()V
    .registers 4

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveStartUptime:J

    .line 436
    const-wide/16 v0, 0x40

    const-string v2, "notifyAppUnresponsive()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 437
    return-void
.end method

.method public blacklist notifyWindowUnresponsiveEnded()V
    .registers 5

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveDuration:J

    .line 455
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 456
    return-void
.end method

.method public blacklist notifyWindowUnresponsiveStarted()V
    .registers 4

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveStartUptime:J

    .line 448
    const-wide/16 v0, 0x40

    const-string v2, "notifyWindowUnresponsive()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 449
    return-void
.end method

.method public blacklist preDumpIfLockTooSlowEnded()V
    .registers 7

    .line 419
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowDuration:J

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowStartUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowDuration:J

    .line 421
    return-void
.end method

.method public blacklist preDumpIfLockTooSlowStarted()V
    .registers 3

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowStartUptime:J

    .line 415
    return-void
.end method

.method public blacklist processCpuTrackerMethodsCalled()V
    .registers 4

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsLastCallUptime:J

    .line 225
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "processCpuTracker"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 226
    return-void
.end method

.method public blacklist processCpuTrackerMethodsReturned()V
    .registers 7

    .line 230
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsLastCallUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    .line 232
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 233
    return-void
.end method

.method public blacklist pushAtom()V
    .registers 42

    .line 565
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEndUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    sub-long v6, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    sub-long v8, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    sub-long v10, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    sub-long v12, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    sub-long v14, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpStackTracesStartUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    sub-long v16, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingDuration:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingDuration:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingDuration:J

    add-long v18, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    move-wide/from16 v34, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    iget v5, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrQueueSize:I

    move-wide/from16 v36, v1

    iget v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrType:I

    iget-object v2, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpedProcessesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 597
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    .line 565
    move/from16 v38, v5

    const/16 v5, 0x204

    move/from16 v39, v1

    move-wide/from16 v22, v3

    invoke-static/range {v5 .. v40}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJJJJJJJJJJJJJJIII)V

    .line 598
    return-void
.end method

.method public blacklist updateCpuStatsNowCalled()V
    .registers 4

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowLastCallUptime:J

    .line 200
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "updateCpuStatsNow()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 201
    return-void
.end method

.method public blacklist updateCpuStatsNowReturned()V
    .registers 7

    .line 205
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowLastCallUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    .line 207
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 208
    return-void
.end method

.method public blacklist waitingOnAMSLockEnded()V
    .registers 7

    .line 378
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    .line 379
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    return-void
.end method

.method public blacklist waitingOnAMSLockStarted()V
    .registers 4

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockLastTryAcquireStart:J

    .line 373
    const-wide/16 v0, 0x40

    const-string v2, "AMSLockContention"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 374
    return-void
.end method

.method public blacklist waitingOnAnrRecordLockEnded()V
    .registers 7

    .line 402
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    .line 404
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 405
    return-void
.end method

.method public blacklist waitingOnAnrRecordLockStarted()V
    .registers 4

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLastTryAcquireStart:J

    .line 397
    const-wide/16 v0, 0x40

    const-string v2, "anrRecordLockContention"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 398
    return-void
.end method

.method public blacklist waitingOnGlobalLockEnded()V
    .registers 7

    .line 354
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    .line 355
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    return-void
.end method

.method public blacklist waitingOnGlobalLockStarted()V
    .registers 4

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockLastTryAcquireStart:J

    .line 349
    const-wide/16 v0, 0x40

    const-string v2, "globalLock"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 350
    return-void
.end method

.method public blacklist waitingOnPidLockEnded()V
    .registers 7

    .line 366
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    .line 367
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 368
    return-void
.end method

.method public blacklist waitingOnPidLockStarted()V
    .registers 4

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockLastTryAcquireStart:J

    .line 361
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "pidLockContention"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 362
    return-void
.end method

.method public blacklist waitingOnProcLockEnded()V
    .registers 7

    .line 390
    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    .line 391
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 392
    return-void
.end method

.method public blacklist waitingOnProcLockStarted()V
    .registers 4

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockLastTryAcquireStart:J

    .line 385
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "procLockContention"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 386
    return-void
.end method
