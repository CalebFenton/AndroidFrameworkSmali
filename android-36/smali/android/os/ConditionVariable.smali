.class public Landroid/os/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile greylist-max-o mCondition:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 43
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist block()V
    .registers 2

    .line 95
    monitor-enter p0

    .line 96
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 98
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 101
    :goto_8
    goto :goto_1

    .line 100
    :catch_9
    move-exception v0

    goto :goto_8

    .line 103
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method

.method public whitelist block(J)Z
    .registers 9
    .param p1, "timeoutMs"    # J

    .line 123
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_29

    .line 124
    monitor-enter p0

    .line 125
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 126
    .local v0, "now":J
    add-long v2, v0, p1

    .line 127
    .local v2, "end":J
    :goto_d
    iget-boolean v4, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_26

    if-nez v4, :cond_22

    cmp-long v4, v0, v2

    if-gez v4, :cond_22

    .line 129
    sub-long v4, v2, v0

    :try_start_17
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_26

    .line 132
    goto :goto_1c

    .line 131
    :catch_1b
    move-exception v4

    .line 133
    :goto_1c
    :try_start_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_d

    .line 135
    :cond_22
    iget-boolean v4, p0, Landroid/os/ConditionVariable;->mCondition:Z

    monitor-exit p0

    return v4

    .line 136
    .end local v0    # "now":J
    .end local v2    # "end":J
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v0

    .line 138
    :cond_29
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist close()V
    .registers 2

    .line 82
    monitor-enter p0

    .line 83
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public whitelist open()V
    .registers 3

    .line 65
    monitor-enter p0

    .line 66
    :try_start_1
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 67
    .local v0, "old":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 68
    if-nez v0, :cond_b

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 71
    .end local v0    # "old":Z
    :cond_b
    monitor-exit p0

    .line 72
    return-void

    .line 71
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
