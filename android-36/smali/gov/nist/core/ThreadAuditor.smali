.class public Lgov/nist/core/ThreadAuditor;
.super Ljava/lang/Object;
.source "ThreadAuditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/core/ThreadAuditor$ThreadHandle;
    }
.end annotation


# instance fields
.field private greylist pingIntervalInMillisecs:J

.field private greylist threadHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lgov/nist/core/ThreadAuditor$ThreadHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    return-void
.end method


# virtual methods
.method public declared-synchronized greylist addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;
    .registers 4

    monitor-enter p0

    .line 105
    :try_start_1
    new-instance v0, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    invoke-direct {v0, p0, p0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;-><init>(Lgov/nist/core/ThreadAuditor;Lgov/nist/core/ThreadAuditor;)V

    .line 106
    .local v0, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    invoke-virtual {p0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 107
    iget-object v1, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 109
    .end local p0    # "this":Lgov/nist/core/ThreadAuditor;
    :cond_15
    monitor-exit p0

    return-object v0

    .line 104
    .end local v0    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public declared-synchronized greylist auditThreads()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 133
    const/4 v0, 0x0

    .line 137
    .local v0, "auditReport":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    .line 140
    .local v2, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    invoke-virtual {v2}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive()Z

    move-result v3

    if-nez v3, :cond_49

    .line 142
    invoke-virtual {v2}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getThread()Ljava/lang/Thread;

    move-result-object v3

    .line 145
    .local v3, "thread":Ljava/lang/Thread;
    if-nez v0, :cond_27

    .line 146
    const-string v4, "Thread Auditor Report:\n"

    move-object v0, v4

    .line 148
    .end local p0    # "this":Lgov/nist/core/ThreadAuditor;
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   Thread ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] has failed to respond to an audit request.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 174
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_49
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->setThreadActive(Z)V
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_50

    .line 175
    .end local v2    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    goto :goto_c

    .line 176
    :cond_4e
    monitor-exit p0

    return-object v0

    .line 132
    .end local v0    # "auditReport":Ljava/lang/String;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public greylist getPingIntervalInMillisecs()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    return-wide v0
.end method

.method public greylist isEnabled()Z
    .registers 5

    .line 98
    iget-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public declared-synchronized greylist ping(Lgov/nist/core/ThreadAuditor$ThreadHandle;)V
    .registers 3
    .param p1, "threadHandle"    # Lgov/nist/core/ThreadAuditor$ThreadHandle;

    monitor-enter p0

    .line 119
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->setThreadActive(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 120
    monitor-exit p0

    return-void

    .line 118
    .end local p0    # "this":Lgov/nist/core/ThreadAuditor;
    .end local p1    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized greylist removeThread(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 115
    monitor-exit p0

    return-void

    .line 113
    .end local p0    # "this":Lgov/nist/core/ThreadAuditor;
    .end local p1    # "thread":Ljava/lang/Thread;
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized greylist reset()V
    .registers 2

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 125
    monitor-exit p0

    return-void

    .line 123
    .end local p0    # "this":Lgov/nist/core/ThreadAuditor;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public greylist setPingIntervalInMillisecs(J)V
    .registers 3
    .param p1, "value"    # J

    .line 93
    iput-wide p1, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    .line 94
    return-void
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 185
    :try_start_1
    const-string v0, "Thread Auditor - List of monitored threads:\n"

    .line 186
    .local v0, "toString":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    .line 189
    .local v2, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3e

    move-object v0, v3

    .line 190
    .end local v2    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    goto :goto_d

    .line 191
    .end local p0    # "this":Lgov/nist/core/ThreadAuditor;
    :cond_3c
    monitor-exit p0

    return-object v0

    .line 184
    .end local v0    # "toString":Ljava/lang/String;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method
