.class public Landroid/os/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    #@6
    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-boolean p1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    #@5
    .line 50
    return-void
.end method


# virtual methods
.method public block()V
    .locals 2

    #@0
    .prologue
    .line 94
    monitor-enter p0

    #@1
    .line 95
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 97
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 99
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@b
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    #@c
    .line 92
    return-void

    #@d
    .line 94
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

.method public block(J)Z
    .locals 9
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 122
    const-wide/16 v6, 0x0

    #@2
    cmp-long v1, p1, v6

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 123
    monitor-enter p0

    #@7
    .line 124
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a
    move-result-wide v4

    #@b
    .line 125
    .local v4, "now":J
    add-long v2, v4, p1

    #@d
    .line 126
    .local v2, "end":J
    :goto_0
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    if-nez v1, :cond_0

    #@11
    cmp-long v1, v4, v2

    #@13
    if-gez v1, :cond_0

    #@15
    .line 128
    sub-long v6, v2, v4

    #@17
    :try_start_1
    invoke-virtual {p0, v6, v7}, Landroid/os/ConditionVariable;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 132
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d
    move-result-wide v4

    #@1e
    goto :goto_0

    #@1f
    .line 130
    :catch_0
    move-exception v0

    #@20
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@21
    .line 134
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return v1

    #@25
    .line 123
    .end local v2    # "end":J
    .end local v4    # "now":J
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1

    #@28
    .line 137
    :cond_1
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    #@2b
    .line 138
    const/4 v1, 0x1

    #@2c
    return v1
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 81
    monitor-enter p0

    #@1
    .line 82
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 79
    return-void

    #@6
    .line 81
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public open()V
    .locals 2

    #@0
    .prologue
    .line 64
    monitor-enter p0

    #@1
    .line 65
    :try_start_0
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    #@3
    .line 66
    .local v0, "old":Z
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    #@6
    .line 67
    if-nez v0, :cond_0

    #@8
    .line 68
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :cond_0
    monitor-exit p0

    #@c
    .line 62
    return-void

    #@d
    .line 64
    .end local v0    # "old":Z
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method
