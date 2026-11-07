.class final Lsun/nio/ch/EPollPort;
.super Lsun/nio/ch/Port;
.source "EPollPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/EPollPort$Event;,
        Lsun/nio/ch/EPollPort$EventHandlerTask;
    }
.end annotation


# static fields
.field private static final blacklist ENOENT:I = 0x2

.field private static final blacklist MAX_EPOLL_EVENTS:I = 0x200


# instance fields
.field private final blacklist EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

.field private final blacklist NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

.field private final blacklist address:J

.field private blacklist closed:Z

.field private final blacklist epfd:I

.field private final blacklist queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lsun/nio/ch/EPollPort$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist sp:[I

.field private final blacklist wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetEXECUTE_TASK_OR_SHUTDOWN(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/EPollPort;->EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetNEED_TO_POLL(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetaddress(Lsun/nio/ch/EPollPort;)J
    .registers 3

    iget-wide v0, p0, Lsun/nio/ch/EPollPort;->address:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetepfd(Lsun/nio/ch/EPollPort;)I
    .registers 1

    iget p0, p0, Lsun/nio/ch/EPollPort;->epfd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetqueue(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsp(Lsun/nio/ch/EPollPort;)[I
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwakeupCount(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mimplClose(Lsun/nio/ch/EPollPort;)V
    .registers 1

    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->implClose()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdrain1(I)V
    .registers 1

    invoke-static {p0}, Lsun/nio/ch/EPollPort;->drain1(I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .registers 8
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .param p2, "pool"    # Lsun/nio/ch/ThreadPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/Port;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v0, Lsun/nio/ch/EPollPort$Event;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/ch/EPollPort$Event;-><init>(Lsun/nio/ch/Port$PollableChannel;I)V

    iput-object v0, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    .line 81
    new-instance v0, Lsun/nio/ch/EPollPort$Event;

    invoke-direct {v0, v1, v2}, Lsun/nio/ch/EPollPort$Event;-><init>(Lsun/nio/ch/Port$PollableChannel;I)V

    iput-object v0, p0, Lsun/nio/ch/EPollPort;->EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

    .line 89
    invoke-static {}, Lsun/nio/ch/EPoll;->epollCreate()I

    move-result v0

    iput v0, p0, Lsun/nio/ch/EPollPort;->epfd:I

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 94
    .local v0, "sv":[I
    :try_start_23
    invoke-static {v0}, Lsun/nio/ch/EPollPort;->socketpair([I)V

    .line 96
    iget v1, p0, Lsun/nio/ch/EPollPort;->epfd:I

    aget v2, v0, v2

    sget-short v3, Lsun/nio/ch/Net;->POLLIN:S

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_4a

    .line 100
    nop

    .line 101
    iput-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    .line 104
    const/16 v1, 0x200

    invoke-static {v1}, Lsun/nio/ch/EPoll;->allocatePollArray(I)J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/EPollPort;->address:J

    .line 108
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 109
    iget-object v1, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 110
    return-void

    .line 97
    :catch_4a
    move-exception v1

    .line 98
    .local v1, "x":Ljava/io/IOException;
    iget v2, p0, Lsun/nio/ch/EPollPort;->epfd:I

    invoke-static {v2}, Lsun/nio/ch/EPollPort;->close0(I)V

    .line 99
    throw v1
.end method

.method private static native blacklist close0(I)V
.end method

.method private static native blacklist drain1(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist implClose()V
    .registers 4

    .line 121
    monitor-enter p0

    .line 122
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z

    if-eqz v0, :cond_7

    .line 123
    monitor-exit p0

    return-void

    .line 124
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z

    .line 125
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_25

    .line 126
    iget-wide v1, p0, Lsun/nio/ch/EPollPort;->address:J

    invoke-static {v1, v2}, Lsun/nio/ch/EPoll;->freePollArray(J)V

    .line 127
    iget-object v1, p0, Lsun/nio/ch/EPollPort;->sp:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lsun/nio/ch/EPollPort;->close0(I)V

    .line 128
    iget-object v1, p0, Lsun/nio/ch/EPollPort;->sp:[I

    aget v0, v1, v0

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->close0(I)V

    .line 129
    iget v0, p0, Lsun/nio/ch/EPollPort;->epfd:I

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->close0(I)V

    .line 130
    return-void

    .line 125
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private static native blacklist interrupt(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist socketpair([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist wakeup()V
    .registers 3

    .line 133
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 136
    :try_start_9
    iget-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    aget v0, v0, v1

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->interrupt(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11

    .line 139
    goto :goto_18

    .line 137
    :catch_11
    move-exception v0

    .line 138
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 141
    .end local v0    # "x":Ljava/io/IOException;
    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method blacklist executeOnHandlerTask(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 145
    monitor-enter p0

    .line 146
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z

    if-nez v0, :cond_d

    .line 148
    invoke-virtual {p0, p1}, Lsun/nio/ch/EPollPort;->offerTask(Ljava/lang/Runnable;)V

    .line 149
    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->wakeup()V

    .line 150
    monitor-exit p0

    .line 151
    return-void

    .line 147
    :cond_d
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/EPollPort;
    .end local p1    # "task":Ljava/lang/Runnable;
    throw v0

    .line 150
    .restart local p0    # "this":Lsun/nio/ch/EPollPort;
    .restart local p1    # "task":Ljava/lang/Runnable;
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method blacklist shutdownHandlerTasks()V
    .registers 3

    .line 159
    invoke-virtual {p0}, Lsun/nio/ch/EPollPort;->threadCount()I

    move-result v0

    .line 160
    .local v0, "nThreads":I
    if-nez v0, :cond_a

    .line 161
    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->implClose()V

    goto :goto_14

    .line 164
    :cond_a
    :goto_a
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "nThreads":I
    .local v1, "nThreads":I
    if-lez v0, :cond_13

    .line 165
    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->wakeup()V

    move v0, v1

    goto :goto_a

    .line 164
    :cond_13
    move v0, v1

    .line 168
    .end local v1    # "nThreads":I
    .restart local v0    # "nThreads":I
    :goto_14
    return-void
.end method

.method blacklist start()Lsun/nio/ch/EPollPort;
    .registers 3

    .line 113
    new-instance v0, Lsun/nio/ch/EPollPort$EventHandlerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/nio/ch/EPollPort$EventHandlerTask;-><init>(Lsun/nio/ch/EPollPort;Lsun/nio/ch/EPollPort-IA;)V

    invoke-virtual {p0, v0}, Lsun/nio/ch/EPollPort;->startThreads(Ljava/lang/Runnable;)V

    .line 114
    return-object p0
.end method

.method blacklist startPoll(II)V
    .registers 7
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .line 174
    iget v0, p0, Lsun/nio/ch/EPollPort;->epfd:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int v2, p2, v1

    const/4 v3, 0x3

    invoke-static {v0, v3, p1, v2}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I

    move-result v0

    .line 175
    .local v0, "err":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    .line 176
    iget v2, p0, Lsun/nio/ch/EPollPort;->epfd:I

    const/4 v3, 0x1

    or-int/2addr v1, p2

    invoke-static {v2, v3, p1, v1}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I

    move-result v0

    .line 177
    :cond_16
    if-nez v0, :cond_19

    .line 179
    return-void

    .line 178
    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
