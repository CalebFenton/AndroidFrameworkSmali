.class Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
.super Ljava/lang/Object;
.source "MessageLoop.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INVALID_THREAD_ID:J = -0x1L


# instance fields
.field private blacklist mLoopFailed:Z

.field private blacklist mLoopRunning:Z

.field private blacklist mPriorInterruptedIOException:Ljava/io/InterruptedIOException;

.field private blacklist mPriorRuntimeException:Ljava/lang/RuntimeException;

.field private final blacklist mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mThreadId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 19
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mThreadId:J

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 43
    return-void
.end method

.method private blacklist calledOnValidThread()Z
    .registers 7

    .line 46
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mThreadId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mThreadId:J

    .line 48
    return v1

    .line 50
    :cond_14
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method private blacklist take(ZJ)Ljava/lang/Runnable;
    .registers 7
    .param p1, "useTimeout"    # Z
    .param p2, "timeoutNano"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "task":Ljava/lang/Runnable;
    if-nez p1, :cond_c

    .line 64
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .end local v0    # "task":Ljava/lang/Runnable;
    .local v1, "task":Ljava/lang/Runnable;
    goto :goto_16

    .line 67
    .end local v1    # "task":Ljava/lang/Runnable;
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_c
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p2, p3, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_16} :catch_20

    .line 73
    .end local v0    # "task":Ljava/lang/Runnable;
    .restart local v1    # "task":Ljava/lang/Runnable;
    :goto_16
    nop

    .line 74
    if-eqz v1, :cond_1a

    .line 78
    return-object v1

    .line 76
    :cond_1a
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 69
    .end local v1    # "task":Ljava/lang/Runnable;
    .restart local v0    # "task":Ljava/lang/Runnable;
    :catch_20
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 71
    .local v2, "exception":Ljava/io/InterruptedIOException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 72
    throw v2
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 151
    if-eqz p1, :cond_10

    .line 155
    :try_start_2
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_7} :catch_9

    .line 160
    nop

    .line 161
    return-void

    .line 156
    :catch_9
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist hasLoopFailed()Z
    .registers 2

    .line 170
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopFailed:Z

    return v0
.end method

.method public blacklist isRunning()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    return v0
.end method

.method public blacklist loop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->loop(I)V

    .line 87
    return-void
.end method

.method public blacklist loop(I)V
    .registers 13
    .param p1, "timeoutMilli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const-string v0, "Cronet MessageLoop#loop"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 97
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    nop

    .line 99
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 100
    .local v1, "startNano":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 101
    .local v3, "timeoutNano":J
    iget-boolean v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopFailed:Z

    if-eqz v5, :cond_22

    .line 102
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mPriorInterruptedIOException:Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_1f

    .line 103
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mPriorInterruptedIOException:Ljava/io/InterruptedIOException;

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .end local p1    # "timeoutMilli":I
    throw v5

    .line 105
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .restart local p1    # "timeoutMilli":I
    :cond_1f
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mPriorRuntimeException:Ljava/lang/RuntimeException;

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .end local p1    # "timeoutMilli":I
    throw v5

    .line 108
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .restart local p1    # "timeoutMilli":I
    :cond_22
    iget-boolean v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    if-nez v5, :cond_75

    .line 111
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    .line 112
    :goto_29
    iget-boolean v6, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_7d

    if-eqz v6, :cond_6f

    .line 115
    const/4 v6, 0x0

    if-nez p1, :cond_37

    .line 116
    const-wide/16 v7, 0x0

    :try_start_32
    invoke-direct {p0, v6, v7, v8}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->take(ZJ)Ljava/lang/Runnable;

    move-result-object v7

    .local v7, "runnable":Ljava/lang/Runnable;
    goto :goto_42

    .line 118
    .end local v7    # "runnable":Ljava/lang/Runnable;
    :cond_37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v3, v7

    add-long/2addr v7, v1

    invoke-direct {p0, v5, v7, v8}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->take(ZJ)Ljava/lang/Runnable;

    move-result-object v7

    .line 120
    .restart local v7    # "runnable":Ljava/lang/Runnable;
    :goto_42
    const-string v8, "Cronet MessageLoop#loop running task"

    .line 121
    invoke-static {v8}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v8
    :try_end_48
    .catch Ljava/io/InterruptedIOException; {:try_start_32 .. :try_end_48} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_48} :catch_5d
    .catchall {:try_start_32 .. :try_end_48} :catchall_7d

    .line 122
    .local v8, "taskTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_48
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_51

    .line 123
    if-eqz v8, :cond_50

    :try_start_4d
    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_50
    .catch Ljava/io/InterruptedIOException; {:try_start_4d .. :try_end_50} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_50} :catch_5d
    .catchall {:try_start_4d .. :try_end_50} :catchall_7d

    .line 134
    .end local v7    # "runnable":Ljava/lang/Runnable;
    .end local v8    # "taskTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_50
    goto :goto_29

    .line 120
    .restart local v7    # "runnable":Ljava/lang/Runnable;
    .restart local v8    # "taskTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_51
    move-exception v9

    if-eqz v8, :cond_5c

    :try_start_54
    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v10

    :try_start_59
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v1    # "startNano":J
    .end local v3    # "timeoutNano":J
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .end local p1    # "timeoutMilli":I
    :cond_5c
    :goto_5c
    throw v9
    :try_end_5d
    .catch Ljava/io/InterruptedIOException; {:try_start_59 .. :try_end_5d} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_5d} :catch_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_7d

    .line 129
    .end local v7    # "runnable":Ljava/lang/Runnable;
    .end local v8    # "taskTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v1    # "startNano":J
    .restart local v3    # "timeoutNano":J
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .restart local p1    # "timeoutMilli":I
    :catch_5d
    move-exception v7

    .line 130
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_5e
    iput-boolean v6, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    .line 131
    iput-boolean v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopFailed:Z

    .line 132
    iput-object v7, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mPriorRuntimeException:Ljava/lang/RuntimeException;

    .line 133
    nop

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .end local p1    # "timeoutMilli":I
    throw v7

    .line 124
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .restart local p1    # "timeoutMilli":I
    :catch_66
    move-exception v7

    .line 125
    .local v7, "e":Ljava/io/InterruptedIOException;
    iput-boolean v6, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    .line 126
    iput-boolean v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopFailed:Z

    .line 127
    iput-object v7, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mPriorInterruptedIOException:Ljava/io/InterruptedIOException;

    .line 128
    nop

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .end local p1    # "timeoutMilli":I
    throw v7
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_7d

    .line 136
    .end local v1    # "startNano":J
    .end local v3    # "timeoutNano":J
    .end local v7    # "e":Ljava/io/InterruptedIOException;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .restart local p1    # "timeoutMilli":I
    :cond_6f
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 137
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_74
    return-void

    .line 109
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v1    # "startNano":J
    .restart local v3    # "timeoutNano":J
    :cond_75
    :try_start_75
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot run loop when it is already running."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .end local p1    # "timeoutMilli":I
    throw v5
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7d

    .line 96
    .end local v1    # "startNano":J
    .end local v3    # "timeoutNano":J
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .restart local p1    # "timeoutMilli":I
    :catchall_7d
    move-exception v1

    if-eqz v0, :cond_88

    :try_start_80
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_88
    :goto_88
    throw v1
.end method

.method public blacklist quit()V
    .registers 2

    .line 144
    nop

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    .line 146
    return-void
.end method
