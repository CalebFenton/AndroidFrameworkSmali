.class public abstract Landroid/os/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CountDownTimer$1;
    }
.end annotation


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method static synthetic -get0(Landroid/os/CountDownTimer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/os/CountDownTimer;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Landroid/os/CountDownTimer;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    #@2
    return-wide v0
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    #@6
    .line 114
    new-instance v0, Landroid/os/CountDownTimer$1;

    #@8
    invoke-direct {v0, p0}, Landroid/os/CountDownTimer$1;-><init>(Landroid/os/CountDownTimer;)V

    #@b
    iput-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    #@d
    .line 71
    iput-wide p1, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    #@f
    .line 72
    iput-wide p3, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    #@11
    .line 70
    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 79
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    #@4
    .line 80
    iget-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 78
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Landroid/os/CountDownTimer;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 87
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    #@4
    .line 88
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-gtz v0, :cond_0

    #@c
    .line 89
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 90
    return-object p0

    #@11
    .line 92
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v0

    #@15
    iget-wide v2, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    #@17
    add-long/2addr v0, v2

    #@18
    iput-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    #@1a
    .line 93
    iget-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    #@1c
    iget-object v1, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    #@1e
    const/4 v2, 0x1

    #@1f
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit p0

    #@27
    .line 94
    return-object p0

    #@28
    :catchall_0
    move-exception v0

    #@29
    monitor-exit p0

    #@2a
    throw v0
.end method
