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
.field private static final sQueueNextUnenqueued:Ljava/lang/ref/Reference;

.field public static unenqueued:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private tail:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    new-instance v0, Ljava/lang/ref/PhantomReference;

    #@3
    invoke-direct {v0, v1, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@6
    sput-object v0, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    #@8
    .line 257
    sput-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@a
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@6
    .line 47
    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@8
    .line 49
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@f
    .line 54
    return-void
.end method

.method static add(Ljava/lang/ref/Reference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 260
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const-class v2, Ljava/lang/ref/ReferenceQueue;

    #@2
    monitor-enter v2

    #@3
    .line 261
    :try_start_0
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 262
    sput-object p0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@9
    .line 277
    :goto_0
    const-class v1, Ljava/lang/ref/ReferenceQueue;

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 259
    return-void

    #@10
    .line 265
    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@12
    .line 266
    .local v0, "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_1
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@14
    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@16
    if-eq v1, v3, :cond_1

    #@18
    .line 267
    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@1a
    goto :goto_1

    #@1b
    .line 270
    :cond_1
    iput-object p0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@1d
    .line 271
    move-object v0, p0

    #@1e
    .line 272
    :goto_2
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@20
    if-eq v1, p0, :cond_2

    #@22
    .line 273
    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@24
    goto :goto_2

    #@25
    .line 275
    :cond_2
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@27
    iput-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 260
    .end local v0    # "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method private enqueueLocked(Ljava/lang/ref/Reference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    const/4 v2, 0x1

    #@1
    .line 66
    iget-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 67
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 70
    :cond_0
    instance-of v1, p1, Lsun/misc/Cleaner;

    #@9
    if-eqz v1, :cond_1

    #@b
    move-object v0, p1

    #@c
    .line 74
    check-cast v0, Lsun/misc/Cleaner;

    #@e
    .line 75
    .local v0, "cl":Lsun/misc/Cleaner;
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    #@11
    .line 79
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    #@13
    iput-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@15
    .line 80
    return v2

    #@16
    .line 83
    .end local v0    # "cl":Lsun/misc/Cleaner;
    :cond_1
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 84
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@1c
    .line 88
    :goto_0
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@1e
    .line 89
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@20
    iput-object p1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@22
    .line 90
    return v2

    #@23
    .line 86
    :cond_2
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@25
    iput-object p1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@27
    goto :goto_0
.end method

.method public static enqueuePending(Ljava/lang/ref/Reference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    move-object v2, p0

    #@1
    .line 220
    .local v2, "start":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_0
    iget-object v1, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@3
    .line 221
    .local v1, "queue":Ljava/lang/ref/ReferenceQueue;
    if-nez v1, :cond_1

    #@5
    .line 222
    iget-object v0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@7
    .line 227
    .local v0, "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@9
    .line 228
    move-object p0, v0

    #@a
    .line 249
    :goto_0
    if-ne p0, v2, :cond_0

    #@c
    .line 217
    return-void

    #@d
    .line 234
    .end local v0    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    iget-object v4, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@f
    monitor-enter v4

    #@10
    .line 236
    :cond_2
    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@12
    .line 242
    .restart local v0    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@14
    .line 243
    invoke-direct {v1, p0}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    #@17
    .line 244
    move-object p0, v0

    #@18
    .line 245
    if-eq v0, v2, :cond_3

    #@1a
    iget-object v3, v0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@1c
    if-eq v3, v1, :cond_2

    #@1e
    .line 246
    :cond_3
    iget-object v3, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@20
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v4

    #@24
    goto :goto_0

    #@25
    .line 234
    .end local v0    # "next":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :catchall_0
    move-exception v3

    #@26
    monitor-exit v4

    #@27
    throw v3
.end method

.method private reallyPollLocked()Ljava/lang/ref/Reference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 122
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 123
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@7
    .line 124
    .local v0, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@9
    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 125
    iput-object v3, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@f
    .line 126
    iput-object v3, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@11
    .line 133
    :goto_0
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    #@13
    iput-object v1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@15
    .line 134
    return-object v0

    #@16
    .line 128
    :cond_0
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@18
    iget-object v1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@1a
    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@1c
    goto :goto_0

    #@1d
    .line 137
    .end local v0    # "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :cond_1
    return-object v3
.end method


# virtual methods
.method enqueue(Ljava/lang/ref/Reference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 112
    :try_start_0
    invoke-direct {p0, p1}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 113
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 114
    const/4 v0, 0x1

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 116
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 111
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method isEnqueued(Ljava/lang/ref/Reference;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    const/4 v0, 0x0

    #@1
    .line 98
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 99
    :try_start_0
    iget-object v2, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v2, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@a
    sget-object v3, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-eq v2, v3, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 98
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public poll()Ljava/lang/ref/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 149
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 150
    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    .line 151
    return-object v2

    #@a
    .line 153
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result-object v0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 149
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public remove()Ljava/lang/ref/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(J)Ljava/lang/ref/Reference;
    .locals 13
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v6, 0x0

    #@2
    cmp-long v3, p1, v6

    #@4
    if-gez v3, :cond_0

    #@6
    .line 181
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v6, "Negative timeout value"

    #@b
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 183
    :cond_0
    iget-object v6, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@11
    monitor-enter v6

    #@12
    .line 184
    :try_start_0
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v2

    #@16
    .line 185
    .local v2, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-eqz v2, :cond_1

    #@18
    monitor-exit v6

    #@19
    return-object v2

    #@1a
    .line 186
    :cond_1
    const-wide/16 v8, 0x0

    #@1c
    cmp-long v3, p1, v8

    #@1e
    if-nez v3, :cond_3

    #@20
    const-wide/16 v4, 0x0

    #@22
    .line 188
    .local v4, "start":J
    :cond_2
    :goto_0
    :try_start_1
    iget-object v3, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    #@24
    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    #@27
    .line 189
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v2

    #@2b
    .line 190
    if-eqz v2, :cond_4

    #@2d
    monitor-exit v6

    #@2e
    return-object v2

    #@2f
    .line 186
    .end local v4    # "start":J
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@32
    move-result-wide v4

    #@33
    .restart local v4    # "start":J
    goto :goto_0

    #@34
    .line 191
    :cond_4
    const-wide/16 v8, 0x0

    #@36
    cmp-long v3, p1, v8

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3d
    move-result-wide v0

    #@3e
    .line 193
    .local v0, "end":J
    sub-long v8, v0, v4

    #@40
    const-wide/32 v10, 0xf4240

    #@43
    div-long/2addr v8, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    sub-long/2addr p1, v8

    #@45
    .line 194
    const-wide/16 v8, 0x0

    #@47
    cmp-long v3, p1, v8

    #@49
    if-gtz v3, :cond_5

    #@4b
    const/4 v3, 0x0

    #@4c
    monitor-exit v6

    #@4d
    return-object v3

    #@4e
    .line 195
    :cond_5
    move-wide v4, v0

    #@4f
    goto :goto_0

    #@50
    .line 183
    .end local v0    # "end":J
    .end local v2    # "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    .end local v4    # "start":J
    :catchall_0
    move-exception v3

    #@51
    monitor-exit v6

    #@52
    throw v3
.end method
