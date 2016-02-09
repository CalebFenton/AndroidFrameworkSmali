.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field cancelled:Z

.field fixedRate:Z

.field final lock:Ljava/lang/Object;

.field period:J

.field private scheduledTime:J

.field when:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@a
    .line 80
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 8

    #@0
    .prologue
    .line 92
    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 93
    :try_start_0
    iget-boolean v1, p0, Ljava/util/TimerTask;->cancelled:Z

    #@5
    if-nez v1, :cond_0

    #@7
    iget-wide v4, p0, Ljava/util/TimerTask;->when:J

    #@9
    const-wide/16 v6, 0x0

    #@b
    cmp-long v1, v4, v6

    #@d
    if-lez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 94
    .local v0, "willRun":Z
    :goto_0
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Ljava/util/TimerTask;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 95
    return v0

    #@15
    .line 93
    .end local v0    # "willRun":Z
    :cond_0
    const/4 v0, 0x0

    #@16
    .restart local v0    # "willRun":Z
    goto :goto_0

    #@17
    .line 92
    .end local v0    # "willRun":Z
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
.end method

.method getWhen()J
    .locals 4

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 52
    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->when:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-wide v2

    #@7
    .line 51
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method isScheduled()Z
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 72
    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 73
    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->when:J

    #@8
    cmp-long v2, v2, v4

    #@a
    if-gtz v2, :cond_0

    #@c
    iget-wide v2, p0, Ljava/util/TimerTask;->scheduledTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    cmp-long v2, v2, v4

    #@10
    if-lez v2, :cond_1

    #@12
    :cond_0
    :goto_0
    monitor-exit v1

    #@13
    return v0

    #@14
    :cond_1
    const/4 v0, 0x0

    #@15
    goto :goto_0

    #@16
    .line 72
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .locals 4

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 108
    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->scheduledTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-wide v2

    #@7
    .line 107
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method setScheduledTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 61
    :try_start_0
    iput-wide p1, p0, Ljava/util/TimerTask;->scheduledTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 59
    return-void

    #@7
    .line 60
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
