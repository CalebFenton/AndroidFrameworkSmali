.class final Lsun/nio/ch/PendingFuture;
.super Ljava/lang/Object;
.source "PendingFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist CANCELLED:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final blacklist attachment:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final blacklist channel:Ljava/nio/channels/AsynchronousChannel;

.field private volatile blacklist context:Ljava/lang/Object;

.field private volatile blacklist exc:Ljava/lang/Throwable;

.field private final blacklist handler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;"
        }
    .end annotation
.end field

.field private volatile blacklist haveResult:Z

.field private blacklist latch:Ljava/util/concurrent/CountDownLatch;

.field private volatile blacklist result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private blacklist timeoutTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    sput-object v0, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/AsynchronousChannel;)V
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousChannel;

    .line 80
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .param p2, "context"    # Ljava/lang/Object;

    .line 84
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;TA;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p3, "attachment":Ljava/lang/Object;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    .line 75
    iput-object p2, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    .line 76
    iput-object p3, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .param p4, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;TA;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p3, "attachment":Ljava/lang/Object;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    .line 65
    iput-object p2, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    .line 66
    iput-object p3, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    .line 67
    iput-object p4, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private blacklist prepareForWait()Z
    .registers 3

    .line 119
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    monitor-enter p0

    .line 120
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-eqz v0, :cond_8

    .line 121
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 123
    :cond_8
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 124
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 125
    :cond_14
    monitor-exit p0

    return v1

    .line 127
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method blacklist attachment()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api cancel(Z)Z
    .registers 5
    .param p1, "mayInterruptIfRunning"    # Z

    .line 227
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    monitor-enter p0

    .line 228
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 229
    monitor-exit p0

    return v1

    .line 232
    :cond_8
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v0

    instance-of v0, v0, Lsun/nio/ch/Cancellable;

    if-eqz v0, :cond_19

    .line 233
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Cancellable;

    invoke-interface {v0, p0}, Lsun/nio/ch/Cancellable;->onCancel(Lsun/nio/ch/PendingFuture;)V

    .line 236
    :cond_19
    sget-object v0, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    iput-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    .line 238
    iget-object v2, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_29

    .line 239
    iget-object v2, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 240
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_40

    .line 243
    if-eqz p1, :cond_36

    .line 245
    :try_start_2c
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/channels/AsynchronousChannel;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_35

    .line 246
    :catch_34
    move-exception v1

    :goto_35
    nop

    .line 250
    :cond_36
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_3f

    .line 251
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 252
    :cond_3f
    return v0

    .line 240
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method blacklist channel()Ljava/nio/channels/AsynchronousChannel;
    .registers 2

    .line 88
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    return-object v0
.end method

.method blacklist exception()Ljava/lang/Throwable;
    .registers 3

    .line 208
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 177
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-nez v0, :cond_f

    .line 178
    invoke-direct {p0}, Lsun/nio/ch/PendingFuture;->prepareForWait()Z

    move-result v0

    .line 179
    .local v0, "needToWait":Z
    if-eqz v0, :cond_f

    .line 180
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 182
    .end local v0    # "needToWait":Z
    :cond_f
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    if-eqz v0, :cond_27

    .line 183
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v0, v1, :cond_1f

    .line 184
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 185
    :cond_1f
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 187
    :cond_27
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 194
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-nez v0, :cond_19

    .line 195
    invoke-direct {p0}, Lsun/nio/ch/PendingFuture;->prepareForWait()Z

    move-result v0

    .line 196
    .local v0, "needToWait":Z
    if-eqz v0, :cond_19

    .line 197
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_19

    :cond_13
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 199
    .end local v0    # "needToWait":Z
    :cond_19
    :goto_19
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    if-eqz v0, :cond_31

    .line 200
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v0, v1, :cond_29

    .line 201
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 202
    :cond_29
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 204
    :cond_31
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getContext()Ljava/lang/Object;
    .registers 2

    .line 104
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist handler()Ljava/nio/channels/CompletionHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    return-object v0
.end method

.method public whitelist test-api isCancelled()Z
    .registers 3

    .line 217
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isDone()Z
    .registers 2

    .line 222
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    return v0
.end method

.method blacklist setContext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/Object;

    .line 100
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method blacklist setFailure(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "x"    # Ljava/lang/Throwable;

    .line 150
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/lang/SecurityException;

    if-nez v0, :cond_e

    .line 151
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 152
    :cond_e
    monitor-enter p0

    .line 153
    :try_start_f
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-eqz v0, :cond_15

    .line 154
    monitor-exit p0

    return-void

    .line 155
    :cond_15
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    .line 157
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_24

    .line 158
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 159
    :cond_24
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2d

    .line 160
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 161
    :cond_2d
    monitor-exit p0

    .line 162
    return-void

    .line 161
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v0
.end method

.method blacklist setResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p1, "res":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 135
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-eqz v0, :cond_7

    .line 136
    monitor-exit p0

    return-void

    .line 137
    :cond_7
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    .line 139
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_16

    .line 140
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 141
    :cond_16
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1f

    .line 142
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 143
    :cond_1f
    monitor-exit p0

    .line 144
    return-void

    .line 143
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method blacklist setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p2, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p1, "res":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_6

    .line 169
    invoke-virtual {p0, p1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;)V

    goto :goto_9

    .line 171
    :cond_6
    invoke-virtual {p0, p2}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    .line 173
    :goto_9
    return-void
.end method

.method blacklist setTimeoutTask(Ljava/util/concurrent/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    monitor-enter p0

    .line 109
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-eqz v0, :cond_a

    .line 110
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_c

    .line 112
    :cond_a
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    .line 114
    :goto_c
    monitor-exit p0

    .line 115
    return-void

    .line 114
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method blacklist value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v0
.end method
