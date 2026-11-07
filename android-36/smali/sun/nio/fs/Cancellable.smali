.class abstract Lsun/nio/fs/Cancellable;
.super Ljava/lang/Object;
.source "Cancellable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# instance fields
.field private blacklist completed:Z

.field private blacklist exception:Ljava/lang/Throwable;

.field private final blacklist lock:Ljava/lang/Object;

.field private final blacklist pollingAddress:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/Cancellable;->unsafe:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    .line 49
    sget-object v0, Lsun/nio/fs/Cancellable;->unsafe:Ljdk/internal/misc/Unsafe;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    .line 50
    sget-object v0, Lsun/nio/fs/Cancellable;->unsafe:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 51
    return-void
.end method

.method private blacklist exception()Ljava/lang/Throwable;
    .registers 3

    .line 87
    iget-object v0, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lsun/nio/fs/Cancellable;->exception:Ljava/lang/Throwable;

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static blacklist runInterruptibly(Lsun/nio/fs/Cancellable;)V
    .registers 5
    .param p0, "task"    # Lsun/nio/fs/Cancellable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "cancelledByInterrupt":Z
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 125
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    .line 129
    :goto_12
    goto :goto_9

    .line 126
    :catch_13
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 128
    invoke-virtual {p0}, Lsun/nio/fs/Cancellable;->cancel()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_12

    .line 131
    :cond_19
    if-eqz v1, :cond_22

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 133
    :cond_22
    invoke-direct {p0}, Lsun/nio/fs/Cancellable;->exception()Ljava/lang/Throwable;

    move-result-object v2

    .line 134
    .local v2, "exc":Ljava/lang/Throwable;
    if-nez v2, :cond_29

    .line 136
    return-void

    .line 135
    :cond_29
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected blacklist addressToPollForCancel()J
    .registers 3

    .line 58
    iget-wide v0, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    return-wide v0
.end method

.method final blacklist cancel()V
    .registers 7

    .line 75
    iget-object v0, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/fs/Cancellable;->completed:Z

    if-nez v1, :cond_13

    .line 77
    sget-object v1, Lsun/nio/fs/Cancellable;->unsafe:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    invoke-virtual {p0}, Lsun/nio/fs/Cancellable;->cancelValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 79
    :cond_13
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected blacklist cancelValue()I
    .registers 2

    .line 67
    const v0, 0x7fffffff

    return v0
.end method

.method abstract blacklist implRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final whitelist test-api run()V
    .registers 6

    .line 95
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/fs/Cancellable;->implRun()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    .line 101
    iget-object v1, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_7
    iput-boolean v0, p0, Lsun/nio/fs/Cancellable;->completed:Z

    .line 103
    sget-object v0, Lsun/nio/fs/Cancellable;->unsafe:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    invoke-virtual {v0, v2, v3}, Ljdk/internal/misc/Unsafe;->freeMemory(J)V

    .line 104
    monitor-exit v1

    .line 105
    :goto_11
    goto :goto_2a

    .line 104
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0

    .line 96
    :catchall_15
    move-exception v1

    .line 97
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_16
    iget-object v2, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_31

    .line 98
    :try_start_19
    iput-object v1, p0, Lsun/nio/fs/Cancellable;->exception:Ljava/lang/Throwable;

    .line 99
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2e

    .line 101
    .end local v1    # "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    :try_start_1f
    iput-boolean v0, p0, Lsun/nio/fs/Cancellable;->completed:Z

    .line 103
    sget-object v0, Lsun/nio/fs/Cancellable;->unsafe:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->freeMemory(J)V

    .line 104
    monitor-exit v3

    goto :goto_11

    .line 106
    :goto_2a
    return-void

    .line 104
    :catchall_2b
    move-exception v0

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v0

    .line 99
    .restart local v1    # "t":Ljava/lang/Throwable;
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local p0    # "this":Lsun/nio/fs/Cancellable;
    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 101
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lsun/nio/fs/Cancellable;
    :catchall_31
    move-exception v1

    iget-object v2, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_35
    iput-boolean v0, p0, Lsun/nio/fs/Cancellable;->completed:Z

    .line 103
    sget-object v0, Lsun/nio/fs/Cancellable;->unsafe:Ljdk/internal/misc/Unsafe;

    iget-wide v3, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    invoke-virtual {v0, v3, v4}, Ljdk/internal/misc/Unsafe;->freeMemory(J)V

    .line 104
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_40

    .line 105
    throw v1

    .line 104
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method
