.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final CANCELLED:I = 0x3

.field static final EXECUTED:I = 0x2

.field static final SCHEDULED:I = 0x1

.field static final VIRGIN:I


# instance fields
.field final lock:Ljava/lang/Object;

.field nextExecutionTime:J

.field period:J

.field state:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@a
    .line 45
    const/4 v0, 0x0

    #@b
    iput v0, p0, Ljava/util/TimerTask;->state:I

    #@d
    .line 81
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Ljava/util/TimerTask;->period:J

    #@11
    .line 86
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    #@0
    .prologue
    .line 117
    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 118
    :try_start_0
    iget v1, p0, Ljava/util/TimerTask;->state:I

    #@5
    const/4 v3, 0x1

    #@6
    if-ne v1, v3, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 119
    .local v0, "result":Z
    :goto_0
    const/4 v1, 0x3

    #@a
    iput v1, p0, Ljava/util/TimerTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 120
    return v0

    #@e
    .line 118
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "result":Z
    goto :goto_0

    #@10
    .line 117
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .locals 6

    #@0
    .prologue
    .line 153
    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 154
    :try_start_0
    iget-wide v0, p0, Ljava/util/TimerTask;->period:J

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v0, v0, v4

    #@9
    if-gez v0, :cond_0

    #@b
    iget-wide v0, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    #@d
    iget-wide v4, p0, Ljava/util/TimerTask;->period:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    add-long/2addr v0, v4

    #@10
    :goto_0
    monitor-exit v2

    #@11
    return-wide v0

    #@12
    .line 155
    :cond_0
    :try_start_1
    iget-wide v0, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    #@14
    iget-wide v4, p0, Ljava/util/TimerTask;->period:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    sub-long/2addr v0, v4

    #@17
    goto :goto_0

    #@18
    .line 153
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v2

    #@1a
    throw v0
.end method
