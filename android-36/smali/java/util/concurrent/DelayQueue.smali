.class public Ljava/util/concurrent/DelayQueue;
.super Ljava/util/AbstractQueue;
.source "DelayQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/DelayQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/util/concurrent/Delayed;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o available:Ljava/util/concurrent/locks/Condition;

.field private greylist-max-o leader:Ljava/lang/Thread;

.field private final transient greylist-max-o lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist-max-o q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 134
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    .line 129
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    .line 134
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    .line 129
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    .line 145
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->addAll(Ljava/util/Collection;)Z

    .line 146
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api add(Ljava/util/concurrent/Delayed;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 156
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 410
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 411
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 413
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    .line 415
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 416
    throw v1
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 370
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/DelayQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 11
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 380
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    if-eq p1, p0, :cond_3d

    .line 383
    if-gtz p2, :cond_9

    .line 384
    const/4 v0, 0x0

    return v0

    .line 385
    :cond_9
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 386
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 388
    const/4 v1, 0x0

    .line 392
    .local v1, "n":I
    :goto_f
    if-ge v1, p2, :cond_38

    :try_start_11
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    .line 391
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;

    move-object v3, v2

    .local v3, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v2, :cond_38

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 392
    invoke-interface {v3, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_38

    .line 393
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_33

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 399
    .end local v1    # "n":I
    .end local v3    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 400
    throw v1

    .line 397
    .restart local v1    # "n":I
    :cond_38
    nop

    .line 399
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 397
    return v1

    .line 382
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "n":I
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 540
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/DelayQueue$Itr;

    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/DelayQueue$Itr;-><init>(Ljava/util/concurrent/DelayQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api offer(Ljava/util/concurrent/Delayed;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 167
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 168
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 170
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1a

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    .line 173
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    .line 175
    :cond_1a
    nop

    .line 177
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    const/4 v1, 0x1

    return v1

    .line 177
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    throw v1
.end method

.method public whitelist test-api offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .line 203
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api peek()Ljava/lang/Object;
    .registers 2

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->peek()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peek()Ljava/util/concurrent/Delayed;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 344
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 345
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 347
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Delayed;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    .line 349
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 347
    return-object v1

    .line 349
    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 350
    throw v1
.end method

.method public bridge synthetic whitelist test-api poll()Ljava/lang/Object;
    .registers 2

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/DelayQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api poll()Ljava/util/concurrent/Delayed;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 215
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 216
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Delayed;

    .line 219
    .local v1, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v1, :cond_25

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    goto :goto_25

    .line 221
    :cond_1c
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    goto :goto_26

    .line 220
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .line 223
    :goto_26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    return-object v2

    .line 223
    .end local v1    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    throw v1
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;
    .registers 21
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 281
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 282
    .local v5, "nanos":J
    iget-object v7, v1, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 283
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 286
    :goto_f
    :try_start_f
    iget-object v0, v1, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_b3

    .line 287
    .local v0, "first":Ljava/util/concurrent/Delayed;, "TE;"
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-nez v0, :cond_3f

    .line 288
    cmp-long v8, v5, v8

    if-gtz v8, :cond_36

    .line 289
    nop

    .line 315
    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v8, :cond_32

    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v8}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_32

    .line 316
    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 317
    :cond_32
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 289
    return-object v10

    .line 291
    :cond_36
    :try_start_36
    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v8

    move-wide v5, v8

    .end local v5    # "nanos":J
    .local v8, "nanos":J
    goto/16 :goto_b1

    .line 293
    .end local v8    # "nanos":J
    .restart local v5    # "nanos":J
    :cond_3f
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 294
    .local v11, "delay":J
    cmp-long v13, v11, v8

    if-gtz v13, :cond_66

    .line 295
    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v8}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Delayed;
    :try_end_51
    .catchall {:try_start_36 .. :try_end_51} :catchall_b3

    .line 315
    iget-object v9, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v9, :cond_62

    iget-object v9, v1, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_62

    .line 316
    iget-object v9, v1, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 317
    :cond_62
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 295
    return-object v8

    .line 296
    :cond_66
    cmp-long v8, v5, v8

    if-gtz v8, :cond_80

    .line 297
    nop

    .line 315
    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v8, :cond_7c

    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v8}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7c

    .line 316
    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 317
    :cond_7c
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 297
    return-object v10

    .line 298
    :cond_80
    const/4 v8, 0x0

    .line 299
    .end local v0    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .local v8, "first":Ljava/util/concurrent/Delayed;, "TE;"
    cmp-long v0, v5, v11

    if-ltz v0, :cond_aa

    :try_start_85
    iget-object v0, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-eqz v0, :cond_8a

    goto :goto_aa

    .line 302
    :cond_8a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v9, v0

    .line 303
    .local v9, "thisThread":Ljava/lang/Thread;
    iput-object v9, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_b3

    .line 305
    :try_start_91
    iget-object v0, v1, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v11, v12}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v13
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_a1

    .line 306
    .local v13, "timeLeft":J
    sub-long v15, v11, v13

    sub-long/2addr v5, v15

    .line 308
    .end local v13    # "timeLeft":J
    :try_start_9a
    iget-object v0, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v0, v9, :cond_b1

    .line 309
    iput-object v10, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    goto :goto_b1

    .line 308
    :catchall_a1
    move-exception v0

    iget-object v13, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v13, v9, :cond_a8

    .line 309
    iput-object v10, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    .line 310
    :cond_a8
    nop

    .end local v5    # "nanos":J
    .end local v7    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0

    .line 300
    .end local v9    # "thisThread":Ljava/lang/Thread;
    .restart local v5    # "nanos":J
    .restart local v7    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_aa
    :goto_aa
    iget-object v0, v1, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v9
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_b3

    move-wide v5, v9

    .line 313
    .end local v8    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .end local v11    # "delay":J
    :cond_b1
    :goto_b1
    goto/16 :goto_f

    .line 315
    :catchall_b3
    move-exception v0

    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v8, :cond_c5

    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v8}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c5

    .line 316
    iget-object v8, v1, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 317
    :cond_c5
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 318
    throw v0
.end method

.method public bridge synthetic whitelist test-api put(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->put(Ljava/util/concurrent/Delayed;)V

    return-void
.end method

.method public whitelist test-api put(Ljava/util/concurrent/Delayed;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    .line 190
    return-void
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 2

    .line 426
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public bridge synthetic whitelist test-api remove()Ljava/lang/Object;
    .registers 2

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->remove()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()Ljava/util/concurrent/Delayed;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 331
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-super {p0}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 502
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 503
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 505
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 507
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 505
    return v1

    .line 507
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    throw v1
.end method

.method greylist-max-o removeEQ(Ljava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 515
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 516
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 518
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_b

    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    .line 521
    nop

    .line 525
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 526
    nop

    .line 527
    return-void

    .line 525
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 526
    throw v1
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 354
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 355
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 357
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 359
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 357
    return v1

    .line 359
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    throw v1
.end method

.method public bridge synthetic whitelist test-api take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->take()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api take()Ljava/util/concurrent/Delayed;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 236
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 237
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 240
    :goto_5
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Delayed;

    .line 241
    .local v1, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-nez v1, :cond_15

    .line 242
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5b

    .line 244
    :cond_15
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 245
    .local v2, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3e

    .line 246
    iget-object v4, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Delayed;
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_65

    .line 263
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v5, :cond_3a

    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 264
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 265
    :cond_3a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 246
    return-object v4

    .line 247
    :cond_3e
    const/4 v1, 0x0

    .line 248
    :try_start_3f
    iget-object v4, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-eqz v4, :cond_49

    .line 249
    iget-object v4, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5b

    .line 251
    :cond_49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 252
    .local v4, "thisThread":Ljava/lang/Thread;
    iput-object v4, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_65

    .line 254
    const/4 v5, 0x0

    :try_start_50
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_5c

    .line 256
    :try_start_55
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v6, v4, :cond_5b

    .line 257
    iput-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    .line 261
    .end local v1    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .end local v2    # "delay":J
    .end local v4    # "thisThread":Ljava/lang/Thread;
    :cond_5b
    :goto_5b
    goto :goto_5

    .line 256
    .restart local v1    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .restart local v2    # "delay":J
    .restart local v4    # "thisThread":Ljava/lang/Thread;
    :catchall_5c
    move-exception v6

    iget-object v7, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v7, v4, :cond_63

    .line 257
    iput-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    .line 258
    :cond_63
    nop

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    throw v6
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_65

    .line 263
    .end local v1    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .end local v2    # "delay":J
    .end local v4    # "thisThread":Ljava/lang/Thread;
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    :catchall_65
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v2, :cond_77

    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 264
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 265
    :cond_77
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 266
    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 443
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 444
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 446
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 448
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 446
    return-object v1

    .line 448
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 449
    throw v1
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 488
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 489
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 491
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 493
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    return-object v1

    .line 493
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    throw v1
.end method
