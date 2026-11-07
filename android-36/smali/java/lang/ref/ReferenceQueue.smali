.class public Ljava/lang/ref/ReferenceQueue;
.super Ljava/lang/Object;
.source "ReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static blacklist currentTarget:Ljava/lang/Object;

.field private static final greylist-max-o sQueueNextUnenqueued:Ljava/lang/ref/Reference;

.field public static greylist-max-o unenqueued:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o tail:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Ljava/lang/ref/PhantomReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sput-object v0, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    .line 54
    sput-object v1, Ljava/lang/ref/ReferenceQueue;->currentTarget:Ljava/lang/Object;

    .line 286
    sput-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 59
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 49
    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method static greylist-max-r add(Ljava/lang/ref/Reference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)V"
        }
    .end annotation

    .line 289
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const-class v0, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v0

    .line 290
    :try_start_3
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v1, :cond_a

    .line 291
    sput-object p0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    goto :goto_25

    .line 294
    :cond_a
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    .line 295
    .local v1, "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_c
    iget-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-eq v2, v3, :cond_16

    .line 296
    iget-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    move-object v1, v2

    goto :goto_c

    .line 299
    :cond_16
    iput-object p0, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 300
    move-object v1, p0

    .line 301
    :goto_19
    iget-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    if-eq v2, p0, :cond_21

    .line 302
    iget-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    move-object v1, v2

    goto :goto_19

    .line 304
    :cond_21
    sget-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    iput-object v2, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 306
    .end local v1    # "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_25
    const-class v1, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private greylist-max-o enqueueLocked(Ljava/lang/ref/Reference;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v0, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_6

    .line 72
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_6
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-nez v0, :cond_d

    .line 77
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    goto :goto_11

    .line 79
    :cond_d
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object p1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 81
    :goto_11
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 82
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object p1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist enqueuePending(Ljava/lang/ref/Reference;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 8
    .param p1, "progressCounter"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .line 237
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    move-object v0, p0

    .line 239
    .local v0, "start":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    iget-object v1, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 240
    .local v1, "queue":Ljava/lang/ref/ReferenceQueue;
    if-eqz v1, :cond_32

    invoke-static {v1}, Lsun/misc/Cleaner;->isCleanerQueue(Ljava/lang/ref/ReferenceQueue;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_32

    .line 256
    :cond_c
    sput-object v1, Ljava/lang/ref/ReferenceQueue;->currentTarget:Ljava/lang/Object;

    .line 262
    const/16 v2, 0x64

    .line 263
    .local v2, "MAX_ITERS":I
    const/4 v3, 0x0

    .line 264
    .local v3, "i":I
    iget-object v4, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 267
    :cond_14
    :try_start_14
    iget-object v5, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 268
    .local v5, "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 269
    invoke-direct {v1, p0}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    .line 270
    move-object p0, v5

    .line 271
    .end local v5    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eq p0, v0, :cond_28

    iget-object v5, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-ne v5, v1, :cond_28

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x64

    if-lt v3, v5, :cond_14

    .line 272
    :cond_28
    iget-object v5, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 273
    monitor-exit v4

    goto :goto_46

    :catchall_2f
    move-exception v5

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_2f

    throw v5

    .line 241
    .end local v2    # "MAX_ITERS":I
    .end local v3    # "i":I
    :cond_32
    :goto_32
    iget-object v2, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 245
    .local v2, "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 246
    if-eqz v1, :cond_44

    .line 248
    move-object v3, p0

    check-cast v3, Lsun/misc/Cleaner;

    .line 249
    .local v3, "cl":Lsun/misc/Cleaner;
    sput-object v3, Ljava/lang/ref/ReferenceQueue;->currentTarget:Ljava/lang/Object;

    .line 250
    invoke-virtual {v3}, Lsun/misc/Cleaner;->clean()V

    .line 252
    sget-object v4, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v4, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 254
    .end local v3    # "cl":Lsun/misc/Cleaner;
    :cond_44
    nop

    .line 255
    .end local p0    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .local v2, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    move-object p0, v2

    .line 275
    .end local v2    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .restart local p0    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_46
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 276
    .end local v1    # "queue":Ljava/lang/ref/ReferenceQueue;
    if-ne p0, v0, :cond_1

    .line 277
    const/4 v1, 0x0

    sput-object v1, Ljava/lang/ref/ReferenceQueue;->currentTarget:Ljava/lang/Object;

    .line 278
    invoke-static {}, Lsun/misc/Cleaner;->checkCleanerQueueEmpty()V

    .line 279
    return-void
.end method

.method public static blacklist getCurrentTarget()Ljava/lang/Object;
    .registers 2

    .line 93
    sget-object v0, Ljava/lang/ref/ReferenceQueue;->currentTarget:Ljava/lang/Object;

    instance-of v1, v0, Lsun/misc/Cleaner;

    if-eqz v1, :cond_d

    check-cast v0, Lsun/misc/Cleaner;

    .line 96
    .local v0, "cleaner":Lsun/misc/Cleaner;
    invoke-virtual {v0}, Lsun/misc/Cleaner;->getThunk()Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 98
    .end local v0    # "cleaner":Lsun/misc/Cleaner;
    :cond_d
    sget-object v0, Ljava/lang/ref/ReferenceQueue;->currentTarget:Ljava/lang/Object;

    return-object v0
.end method

.method private greylist-max-o reallyPollLocked()Ljava/lang/ref/Reference;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 145
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 146
    .local v0, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v3, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-ne v2, v3, :cond_12

    .line 147
    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 148
    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    goto :goto_18

    .line 150
    :cond_12
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 155
    :goto_18
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 156
    return-object v0

    .line 159
    .end local v0    # "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :cond_1d
    return-object v1
.end method


# virtual methods
.method greylist-max-o enqueue(Ljava/lang/ref/Reference;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    instance-of v1, p1, Lsun/misc/Cleaner;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    move-object v1, p1

    check-cast v1, Lsun/misc/Cleaner;

    .line 126
    .local v1, "cl":Lsun/misc/Cleaner;
    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    .line 130
    sget-object v3, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v3, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 131
    monitor-exit v0

    return v2

    .line 134
    .end local v1    # "cl":Lsun/misc/Cleaner;
    :cond_14
    invoke-direct {p0, p1}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 135
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 136
    monitor-exit v0

    return v2

    .line 138
    :cond_21
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 139
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method greylist-max-o isEnqueued(Ljava/lang/ref/Reference;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 107
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_f

    iget-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    sget-object v2, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 109
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api poll()Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_3
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 173
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist test-api remove()Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 228
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(J)Ljava/lang/ref/Reference;
    .registers 15
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 199
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_44

    .line 202
    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_9
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;

    move-result-object v3

    .line 204
    .local v3, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-eqz v3, :cond_11

    monitor-exit v2

    return-object v3

    .line 205
    :cond_11
    cmp-long v4, p1, v0

    if-nez v4, :cond_17

    move-wide v4, v0

    goto :goto_1b

    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 207
    .local v4, "start":J
    :cond_1b
    :goto_1b
    iget-object v6, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v6, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 208
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;

    move-result-object v6

    move-object v3, v6

    .line 209
    if-eqz v3, :cond_29

    monitor-exit v2

    return-object v3

    .line 210
    :cond_29
    cmp-long v6, p1, v0

    if-eqz v6, :cond_1b

    .line 211
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 212
    .local v6, "end":J
    sub-long v8, v6, v4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    sub-long/2addr p1, v8

    .line 213
    cmp-long v8, p1, v0

    if-gtz v8, :cond_3f

    monitor-exit v2

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_3f
    move-wide v4, v6

    .line 215
    .end local v6    # "end":J
    goto :goto_1b

    .line 217
    .end local v3    # "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    .end local v4    # "start":J
    :catchall_41
    move-exception v0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_41

    throw v0

    .line 200
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative timeout value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
