.class Lcom/android/internal/util/LatencyTracker$Session;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mAction:I

.field private blacklist mEndRtc:J

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mStartRtc:J

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$Dzezij23-uI942iyKn2O1MqIAl0(Lcom/android/internal/util/LatencyTracker$Session;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker$Session;->lambda$begin$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartRtc(Lcom/android/internal/util/LatencyTracker$Session;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    return-wide v0
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    .line 817
    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    .line 820
    iput p1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    .line 821
    iput-object p2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 823
    sget-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 824
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    iget v2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mName:Ljava/lang/String;

    .line 825
    return-void
.end method

.method private synthetic blacklist lambda$begin$0(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "timeoutAction"    # Ljava/lang/Runnable;

    .line 841
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timeout"

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 843
    return-void
.end method


# virtual methods
.method blacklist begin(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "timeoutAction"    # Ljava/lang/Runnable;

    .line 836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v0, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 840
    new-instance v0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/LatencyTracker$Session;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 844
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 845
    const-wide/16 v3, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 846
    return-void
.end method

.method blacklist cancel()V
    .registers 5

    .line 856
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 858
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 860
    return-void
.end method

.method blacklist duration()I
    .registers 5

    .line 863
    iget-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    iget-wide v2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method blacklist end()V
    .registers 5

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 851
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 853
    return-void
.end method

.method blacklist name()Ljava/lang/String;
    .registers 2

    .line 828
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist traceName()Ljava/lang/String;
    .registers 3

    .line 832
    iget v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/LatencyTracker;->-$$Nest$smgetTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
