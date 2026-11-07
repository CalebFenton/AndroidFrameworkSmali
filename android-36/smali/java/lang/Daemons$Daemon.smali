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
.field private greylist-max-o name:Ljava/lang/String;

.field private greylist thread:Ljava/lang/Thread;


# direct methods
.method protected constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Ljava/lang/Daemons$Daemon;->name:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_e

    .end local p0    # "this":Ljava/lang/Daemons$Daemon;
    :cond_c
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :goto_e
    monitor-exit p0

    return-object v0

    .line 205
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized greylist-max-o interrupt()V
    .registers 2

    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Ljava/lang/Daemons$Daemon;->interrupt(Ljava/lang/Thread;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 162
    monitor-exit p0

    return-void

    .line 160
    .end local p0    # "this":Ljava/lang/Daemons$Daemon;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized greylist-max-o interrupt(Ljava/lang/Thread;)V
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;

    monitor-enter p0

    .line 165
    if-eqz p1, :cond_a

    .line 168
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 169
    monitor-exit p0

    return-void

    .line 164
    .end local p0    # "this":Ljava/lang/Daemons$Daemon;
    .end local p1    # "thread":Ljava/lang/Thread;
    :catchall_8
    move-exception p1

    goto :goto_12

    .line 166
    .restart local p1    # "thread":Ljava/lang/Thread;
    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    .end local p1    # "thread":Ljava/lang/Thread;
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_8

    throw p1
.end method

.method protected declared-synchronized greylist isRunning()Z
    .registers 2

    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 157
    .end local p0    # "this":Ljava/lang/Daemons$Daemon;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final whitelist test-api run()V
    .registers 4

    .line 123
    invoke-static {}, Ljava/lang/Daemons;->-$$Nest$sfgetpostZygoteFork()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 128
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    invoke-static {}, Ldalvik/system/VMRuntime;->setSystemDaemonThreadPriority()V

    .line 130
    :cond_c
    invoke-static {}, Ljava/lang/Daemons;->-$$Nest$sfgetzygoteStartLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 132
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Daemons$Daemon;->runInternal()V

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority0(I)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_21

    .line 143
    nop

    .line 144
    return-void

    .line 138
    :catchall_21
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncaught exception in system thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/Daemons$Daemon;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    throw v0
.end method

.method public abstract greylist-max-o runInternal()V
.end method

.method public declared-synchronized greylist start()V
    .registers 2

    monitor-enter p0

    .line 109
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Daemons$Daemon;->startInternal()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 110
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Ljava/lang/Daemons$Daemon;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public greylist-max-o startInternal()V
    .registers 4

    .line 113
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_20

    .line 116
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    iget-object v2, p0, Ljava/lang/Daemons$Daemon;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    .line 117
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 118
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setSystemDaemon(Z)V

    .line 119
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void

    .line 114
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist stop()V
    .registers 4

    .line 181
    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    .line 183
    .local v0, "threadToStop":Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    .line 184
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1c

    .line 185
    if-eqz v0, :cond_14

    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/Daemons$Daemon;->interrupt(Ljava/lang/Thread;)V

    .line 191
    :goto_c
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_f} :catch_10

    .line 192
    return-void

    .line 194
    :catch_10
    move-exception v1

    goto :goto_13

    .line 193
    :catch_12
    move-exception v1

    .line 196
    :goto_13
    goto :goto_c

    .line 186
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not running"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    .end local v0    # "threadToStop":Ljava/lang/Thread;
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
