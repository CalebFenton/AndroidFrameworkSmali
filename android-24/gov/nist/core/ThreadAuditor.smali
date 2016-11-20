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
.field private pingIntervalInMillisecs:J

.field private threadHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Lgov/nist/core/ThreadAuditor$ThreadHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    #@a
    .line 28
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    #@e
    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    new-instance v0, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@3
    invoke-direct {v0, p0, p0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;-><init>(Lgov/nist/core/ThreadAuditor;Lgov/nist/core/ThreadAuditor;)V

    #@6
    .line 106
    .local v0, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    invoke-virtual {p0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 107
    iget-object v1, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    #@e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 109
    return-object v0

    #@17
    .end local v0    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method public declared-synchronized auditThreads()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 133
    const/4 v0, 0x0

    #@2
    .line 137
    .local v0, "auditReport":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    #@4
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .line 138
    .end local v0    # "auditReport":Ljava/lang/String;
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_2

    #@12
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@18
    .line 140
    .local v3, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive()Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 142
    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getThread()Ljava/lang/Thread;

    #@21
    move-result-object v2

    #@22
    .line 145
    .local v2, "thread":Ljava/lang/Thread;
    if-nez v0, :cond_0

    #@24
    .line 146
    const-string/jumbo v0, "Thread Auditor Report:\n"

    #@27
    .line 148
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, "   Thread ["

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v5, "] has failed to respond to an audit request.\n"

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .line 174
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1
    const/4 v4, 0x0

    #@4b
    invoke-virtual {v3, v4}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->setThreadActive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    .end local v3    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v4

    #@50
    monitor-exit p0

    #@51
    throw v4

    #@52
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :cond_2
    monitor-exit p0

    #@53
    .line 176
    return-object v0
.end method

.method public getPingIntervalInMillisecs()J
    .locals 2

    #@0
    .prologue
    .line 88
    iget-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    #@2
    return-wide v0
.end method

.method public isEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 98
    iget-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public declared-synchronized ping(Lgov/nist/core/ThreadAuditor$ThreadHandle;)V
    .locals 1
    .param p1, "threadHandle"    # Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 119
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-virtual {p1, v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->setThreadActive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 118
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized removeThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 114
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 113
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 124
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    #@3
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 123
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public setPingIntervalInMillisecs(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 93
    iput-wide p1, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    #@2
    .line 92
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 185
    :try_start_0
    const-string/jumbo v2, "Thread Auditor - List of monitored threads:\n"

    #@4
    .line 186
    .local v2, "toString":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    #@6
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .line 187
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@1a
    .line 189
    .local v1, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, "   "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v1}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, "\n"

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    move-result-object v2

    #@3d
    goto :goto_0

    #@3e
    .end local v1    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_0
    monitor-exit p0

    #@3f
    .line 191
    return-object v2

    #@40
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    .end local v2    # "toString":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@41
    monitor-exit p0

    #@42
    throw v3
.end method
