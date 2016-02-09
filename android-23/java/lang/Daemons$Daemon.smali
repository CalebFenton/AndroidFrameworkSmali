.class abstract Ljava/lang/Daemons$Daemon;
.super Ljava/lang/Object;
.source "Daemons.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Daemon"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Ljava/lang/Daemons$Daemon;->name:Ljava/lang/String;

    #@5
    .line 64
    return-void
.end method


# virtual methods
.method public declared-synchronized getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 126
    :try_start_0
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    #@7
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    :goto_0
    monitor-exit p0

    #@c
    return-object v0

    #@d
    :cond_0
    :try_start_1
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized interrupt()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 88
    :try_start_0
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/Daemons$Daemon;->interrupt(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 87
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized interrupt(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 92
    if-nez p1, :cond_0

    #@3
    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string/jumbo v1, "not running"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 95
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 91
    return-void
.end method

.method protected declared-synchronized isRunning()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 84
    :try_start_0
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public abstract run()V
.end method

.method public declared-synchronized start()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 69
    :try_start_0
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "already running"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 72
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    #@13
    sget-object v1, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    #@15
    iget-object v2, p0, Ljava/lang/Daemons$Daemon;->name:Ljava/lang/String;

    #@17
    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1a
    iput-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    #@1c
    .line 73
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    #@1e
    const/4 v1, 0x1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@22
    .line 74
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    #@24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 68
    return-void
.end method

.method public stop()V
    .locals 4

    #@0
    .prologue
    .line 104
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    iget-object v1, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    #@3
    .line 106
    .local v1, "threadToStop":Ljava/lang/Thread;
    const/4 v2, 0x0

    #@4
    iput-object v2, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 108
    if-nez v1, :cond_0

    #@9
    .line 109
    new-instance v2, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v3, "not running"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 104
    .end local v1    # "threadToStop":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    #@13
    monitor-exit p0

    #@14
    throw v2

    #@15
    .line 111
    .restart local v1    # "threadToStop":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/Daemons$Daemon;->interrupt(Ljava/lang/Thread;)V

    #@18
    .line 114
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@1b
    .line 115
    return-void

    #@1c
    .line 116
    :catch_0
    move-exception v0

    #@1d
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
