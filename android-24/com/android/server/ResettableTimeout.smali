.class abstract Lcom/android/server/ResettableTimeout;
.super Ljava/lang/Object;
.source "ResettableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ResettableTimeout$T;
    }
.end annotation


# instance fields
.field private mLock:Landroid/os/ConditionVariable;

.field private volatile mOffAt:J

.field private volatile mOffCalled:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ResettableTimeout;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/ResettableTimeout;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    #@2
    return-object p1
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 123
    new-instance v0, Landroid/os/ConditionVariable;

    #@5
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    #@a
    .line 29
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 85
    monitor-enter p0

    #@1
    .line 86
    const-wide/16 v0, 0x0

    #@3
    :try_start_0
    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    #@5
    .line 87
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 88
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    #@b
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@e
    .line 89
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    #@11
    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    #@13
    if-nez v0, :cond_1

    #@15
    .line 92
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    #@18
    .line 93
    invoke-virtual {p0}, Lcom/android/server/ResettableTimeout;->off()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_1
    monitor-exit p0

    #@1c
    .line 83
    return-void

    #@1d
    .line 85
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public go(J)V
    .locals 5
    .param p1, "milliseconds"    # J

    #@0
    .prologue
    .line 54
    monitor-enter p0

    #@1
    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v2

    #@5
    add-long/2addr v2, p1

    #@6
    iput-wide v2, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    #@8
    .line 64
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 65
    const/4 v0, 0x0

    #@d
    .line 66
    .local v0, "alreadyOn":Z
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    #@f
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    #@12
    .line 67
    new-instance v1, Lcom/android/server/ResettableTimeout$T;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-direct {v1, p0, v2}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$T;)V

    #@18
    iput-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    #@1a
    .line 68
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    #@1c
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@1f
    .line 69
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    #@21
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    #@24
    .line 70
    const/4 v1, 0x0

    #@25
    iput-boolean v1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    #@27
    .line 76
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/ResettableTimeout;->on(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 52
    return-void

    #@2c
    .line 72
    .end local v0    # "alreadyOn":Z
    :cond_0
    const/4 v0, 0x1

    #@2d
    .line 74
    .restart local v0    # "alreadyOn":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    #@2f
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 54
    .end local v0    # "alreadyOn":Z
    :catchall_0
    move-exception v1

    #@34
    monitor-exit p0

    #@35
    throw v1
.end method

.method public abstract off()V
.end method

.method public abstract on(Z)V
.end method
