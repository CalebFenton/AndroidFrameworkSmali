.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final greylist-max-o CANCELLED:I = 0x3

.field static final greylist-max-o EXECUTED:I = 0x2

.field static final greylist-max-o SCHEDULED:I = 0x1

.field static final greylist-max-o VIRGIN:I


# instance fields
.field final greylist-max-o lock:Ljava/lang/Object;

.field greylist-max-o nextExecutionTime:J

.field greylist period:J

.field greylist-max-o state:I


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TimerTask;->state:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/TimerTask;->period:J

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist test-api cancel()Z
    .registers 4

    .line 121
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget v1, p0, Ljava/util/TimerTask;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 123
    .local v2, "result":Z
    :goto_a
    const/4 v1, 0x3

    iput v1, p0, Ljava/util/TimerTask;->state:I

    .line 124
    monitor-exit v0

    return v2

    .line 125
    .end local v2    # "result":Z
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public abstract whitelist test-api run()V
.end method

.method public whitelist test-api scheduledExecutionTime()J
    .registers 6

    .line 157
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-wide v1, p0, Ljava/util/TimerTask;->period:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_11

    iget-wide v1, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-wide v3, p0, Ljava/util/TimerTask;->period:J

    add-long/2addr v1, v3

    goto :goto_16

    .line 159
    :cond_11
    iget-wide v1, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-wide v3, p0, Ljava/util/TimerTask;->period:J

    sub-long/2addr v1, v3

    :goto_16
    monitor-exit v0

    .line 158
    return-wide v1

    .line 160
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
