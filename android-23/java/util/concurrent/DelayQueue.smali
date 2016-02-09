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
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final available:Ljava/util/concurrent/locks/Condition;

.field private leader:Ljava/lang/Thread;

.field private final transient lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 76
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 46
    new-instance v0, Ljava/util/PriorityQueue;

    #@c
    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@11
    .line 71
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@19
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 46
    new-instance v0, Ljava/util/PriorityQueue;

    #@c
    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@11
    .line 71
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@19
    .line 87
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->addAll(Ljava/util/Collection;)Z

    #@1c
    .line 86
    return-void
.end method

.method private peekExpired()Ljava/util/concurrent/Delayed;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 297
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@3
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/concurrent/Delayed;

    #@9
    .line 298
    .local v0, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v0, :cond_0

    #@b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@d
    invoke-interface {v0, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@10
    move-result-wide v2

    #@11
    const-wide/16 v4, 0x0

    #@13
    cmp-long v2, v2, v4

    #@15
    if-lez v2, :cond_1

    #@17
    :cond_0
    move-object v0, v1

    #@18
    .end local v0    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public add(Ljava/util/concurrent/Delayed;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 363
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 364
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 366
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 368
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 362
    return-void

    #@e
    .line 367
    :catchall_0
    move-exception v1

    #@f
    .line 368
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@12
    .line 367
    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 309
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 310
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 311
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 312
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v3

    #@10
    .line 313
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@12
    .line 314
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@15
    .line 316
    const/4 v2, 0x0

    #@16
    .line 317
    .local v2, "n":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/DelayQueue;->peekExpired()Ljava/util/concurrent/Delayed;

    #@19
    move-result-object v0

    #@1a
    .local v0, "e":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v0, :cond_2

    #@1c
    .line 318
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1f
    .line 319
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@21
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 320
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 324
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2a
    .line 322
    return v2

    #@2b
    .line 323
    .end local v0    # "e":Ljava/util/concurrent/Delayed;, "TE;"
    :catchall_0
    move-exception v3

    #@2c
    .line 324
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 323
    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v3, 0x0

    #@1
    .line 335
    if-nez p1, :cond_0

    #@3
    .line 336
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 337
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 338
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v3

    #@11
    .line 339
    :cond_1
    if-gtz p2, :cond_2

    #@13
    .line 340
    return v3

    #@14
    .line 341
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 342
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@19
    .line 344
    const/4 v2, 0x0

    #@1a
    .line 345
    .local v2, "n":I
    :goto_0
    if-ge v2, p2, :cond_3

    #@1c
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/DelayQueue;->peekExpired()Ljava/util/concurrent/Delayed;

    #@1f
    move-result-object v0

    #@20
    .local v0, "e":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v0, :cond_3

    #@22
    .line 346
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@25
    .line 347
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@27
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 348
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 352
    .end local v0    # "e":Ljava/util/concurrent/Delayed;, "TE;"
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 350
    return v2

    #@31
    .line 351
    :catchall_0
    move-exception v3

    #@32
    .line 352
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 351
    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 497
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/DelayQueue$Itr;

    #@2
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/DelayQueue$Itr;-><init>(Ljava/util/concurrent/DelayQueue;[Ljava/lang/Object;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 108
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public offer(Ljava/util/concurrent/Delayed;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 109
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 110
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 112
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    #@a
    .line 113
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@c
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    if-ne v1, p1, :cond_0

    #@12
    .line 114
    const/4 v1, 0x0

    #@13
    iput-object v1, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@15
    .line 115
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@17
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 117
    :cond_0
    const/4 v1, 0x1

    #@1b
    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 117
    return v1

    #@1f
    .line 118
    :catchall_0
    move-exception v1

    #@20
    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 118
    throw v1
.end method

.method public offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 145
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 271
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->peek()Ljava/util/concurrent/Delayed;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public peek()Ljava/util/concurrent/Delayed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 272
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 273
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 275
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/util/concurrent/Delayed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 277
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@10
    .line 275
    return-object v1

    #@11
    .line 276
    :catchall_0
    move-exception v1

    #@12
    .line 277
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 276
    throw v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 155
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/DelayQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public poll()Ljava/util/concurrent/Delayed;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    const/4 v6, 0x0

    #@1
    .line 156
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 157
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 159
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@8
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/concurrent/Delayed;

    #@e
    .line 160
    .local v0, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v0, :cond_0

    #@10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@12
    invoke-interface {v0, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-wide v2

    #@16
    const-wide/16 v4, 0x0

    #@18
    cmp-long v2, v2, v4

    #@1a
    if-lez v2, :cond_1

    #@1c
    .line 165
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 161
    return-object v6

    #@20
    .line 163
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@22
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 165
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 163
    return-object v2

    #@2c
    .line 164
    .end local v0    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :catchall_0
    move-exception v2

    #@2d
    .line 165
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 164
    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;
    .locals 17
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

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    move-object/from16 v0, p3

    #@2
    move-wide/from16 v1, p1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@7
    move-result-wide v8

    #@8
    .line 222
    .local v8, "nanos":J
    move-object/from16 v0, p0

    #@a
    iget-object v7, v0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    .line 223
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@f
    .line 226
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@11
    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@13
    invoke-virtual {v11}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@16
    move-result-object v6

    #@17
    check-cast v6, Ljava/util/concurrent/Delayed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 227
    .local v6, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-nez v6, :cond_3

    #@1b
    .line 228
    const-wide/16 v14, 0x0

    #@1d
    cmp-long v11, v8, v14

    #@1f
    if-gtz v11, :cond_2

    #@21
    .line 229
    const/4 v11, 0x0

    #@22
    .line 255
    move-object/from16 v0, p0

    #@24
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@26
    if-nez v14, :cond_1

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@2c
    invoke-virtual {v14}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@2f
    move-result-object v14

    #@30
    if-eqz v14, :cond_1

    #@32
    .line 256
    move-object/from16 v0, p0

    #@34
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@36
    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@39
    .line 257
    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3c
    .line 229
    return-object v11

    #@3d
    .line 231
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@3f
    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@41
    invoke-interface {v11, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@44
    move-result-wide v8

    #@45
    goto :goto_0

    #@46
    .line 233
    :cond_3
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@48
    invoke-interface {v6, v11}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@4b
    move-result-wide v4

    #@4c
    .line 234
    .local v4, "delay":J
    const-wide/16 v14, 0x0

    #@4e
    cmp-long v11, v4, v14

    #@50
    if-gtz v11, :cond_5

    #@52
    .line 235
    move-object/from16 v0, p0

    #@54
    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@56
    invoke-virtual {v11}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    #@59
    move-result-object v11

    #@5a
    check-cast v11, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 255
    move-object/from16 v0, p0

    #@5e
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@60
    if-nez v14, :cond_4

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@66
    invoke-virtual {v14}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@69
    move-result-object v14

    #@6a
    if-eqz v14, :cond_4

    #@6c
    .line 256
    move-object/from16 v0, p0

    #@6e
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@70
    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@73
    .line 257
    :cond_4
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@76
    .line 235
    return-object v11

    #@77
    .line 236
    :cond_5
    const-wide/16 v14, 0x0

    #@79
    cmp-long v11, v8, v14

    #@7b
    if-gtz v11, :cond_7

    #@7d
    .line 237
    const/4 v11, 0x0

    #@7e
    .line 255
    move-object/from16 v0, p0

    #@80
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@82
    if-nez v14, :cond_6

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@88
    invoke-virtual {v14}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@8b
    move-result-object v14

    #@8c
    if-eqz v14, :cond_6

    #@8e
    .line 256
    move-object/from16 v0, p0

    #@90
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@92
    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@95
    .line 257
    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@98
    .line 237
    return-object v11

    #@99
    .line 238
    :cond_7
    const/4 v6, 0x0

    #@9a
    .line 239
    .local v6, "first":Ljava/util/concurrent/Delayed;, "TE;"
    cmp-long v11, v8, v4

    #@9c
    if-ltz v11, :cond_8

    #@9e
    :try_start_2
    move-object/from16 v0, p0

    #@a0
    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@a2
    if-eqz v11, :cond_9

    #@a4
    .line 240
    :cond_8
    move-object/from16 v0, p0

    #@a6
    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@a8
    invoke-interface {v11, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@ab
    move-result-wide v8

    #@ac
    goto/16 :goto_0

    #@ae
    .line 242
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b1
    move-result-object v10

    #@b2
    .line 243
    .local v10, "thisThread":Ljava/lang/Thread;
    move-object/from16 v0, p0

    #@b4
    iput-object v10, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b6
    .line 245
    :try_start_3
    move-object/from16 v0, p0

    #@b8
    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@ba
    invoke-interface {v11, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@bd
    move-result-wide v12

    #@be
    .line 246
    .local v12, "timeLeft":J
    sub-long v14, v4, v12

    #@c0
    sub-long/2addr v8, v14

    #@c1
    .line 248
    :try_start_4
    move-object/from16 v0, p0

    #@c3
    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@c5
    if-ne v11, v10, :cond_0

    #@c7
    .line 249
    const/4 v11, 0x0

    #@c8
    move-object/from16 v0, p0

    #@ca
    iput-object v11, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@cc
    goto/16 :goto_0

    #@ce
    .line 254
    .end local v4    # "delay":J
    .end local v6    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .end local v10    # "thisThread":Ljava/lang/Thread;
    .end local v12    # "timeLeft":J
    :catchall_0
    move-exception v11

    #@cf
    .line 255
    move-object/from16 v0, p0

    #@d1
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@d3
    if-nez v14, :cond_a

    #@d5
    move-object/from16 v0, p0

    #@d7
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@d9
    invoke-virtual {v14}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@dc
    move-result-object v14

    #@dd
    if-eqz v14, :cond_a

    #@df
    .line 256
    move-object/from16 v0, p0

    #@e1
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@e3
    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@e6
    .line 257
    :cond_a
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e9
    .line 254
    throw v11

    #@ea
    .line 247
    .restart local v4    # "delay":J
    .restart local v6    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .restart local v10    # "thisThread":Ljava/lang/Thread;
    :catchall_1
    move-exception v11

    #@eb
    .line 248
    :try_start_5
    move-object/from16 v0, p0

    #@ed
    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@ef
    if-ne v14, v10, :cond_b

    #@f1
    .line 249
    const/4 v14, 0x0

    #@f2
    move-object/from16 v0, p0

    #@f4
    iput-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@f6
    .line 247
    :cond_b
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->put(Ljava/util/concurrent/Delayed;)V

    #@5
    return-void
.end method

.method public put(Ljava/util/concurrent/Delayed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 131
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    #@3
    .line 130
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    #@0
    .prologue
    .line 379
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 455
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 456
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 458
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    .line 460
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 458
    return v1

    #@f
    .line 459
    :catchall_0
    move-exception v1

    #@10
    .line 460
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 459
    throw v1
.end method

.method removeEQ(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 468
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 469
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 471
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 472
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    if-ne p1, v2, :cond_0

    #@17
    .line 473
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 478
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 467
    return-void

    #@1e
    .line 477
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :catchall_0
    move-exception v2

    #@1f
    .line 478
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 477
    throw v2
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 282
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 283
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 285
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    .line 287
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 285
    return v1

    #@f
    .line 286
    :catchall_0
    move-exception v1

    #@10
    .line 287
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 286
    throw v1
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->take()Ljava/util/concurrent/Delayed;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public take()Ljava/util/concurrent/Delayed;
    .locals 8
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

    #@0
    .prologue
    .line 177
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 178
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@5
    .line 181
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/util/concurrent/Delayed;

    #@d
    .line 182
    .local v2, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-nez v2, :cond_2

    #@f
    .line 183
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@11
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 203
    .end local v2    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :catchall_0
    move-exception v5

    #@16
    .line 204
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@18
    if-nez v6, :cond_1

    #@1a
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@1c
    invoke-virtual {v6}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@1f
    move-result-object v6

    #@20
    if-eqz v6, :cond_1

    #@22
    .line 205
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@24
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@27
    .line 206
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2a
    .line 203
    throw v5

    #@2b
    .line 185
    .restart local v2    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :cond_2
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@2d
    invoke-interface {v2, v5}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@30
    move-result-wide v0

    #@31
    .line 186
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    #@33
    cmp-long v5, v0, v6

    #@35
    if-gtz v5, :cond_4

    #@37
    .line 187
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@39
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    #@3c
    move-result-object v5

    #@3d
    check-cast v5, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 204
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@41
    if-nez v6, :cond_3

    #@43
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@45
    invoke-virtual {v6}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    #@48
    move-result-object v6

    #@49
    if-eqz v6, :cond_3

    #@4b
    .line 205
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@4d
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@50
    .line 206
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@53
    .line 187
    return-object v5

    #@54
    .line 188
    :cond_4
    const/4 v2, 0x0

    #@55
    .line 189
    .local v2, "first":Ljava/util/concurrent/Delayed;, "TE;"
    :try_start_2
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@57
    if-eqz v5, :cond_5

    #@59
    .line 190
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@5b
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    #@5e
    goto :goto_0

    #@5f
    .line 192
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@62
    move-result-object v4

    #@63
    .line 193
    .local v4, "thisThread":Ljava/lang/Thread;
    iput-object v4, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .line 195
    :try_start_3
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    #@67
    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6a
    .line 197
    :try_start_4
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@6c
    if-ne v5, v4, :cond_0

    #@6e
    .line 198
    const/4 v5, 0x0

    #@6f
    iput-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@71
    goto :goto_0

    #@72
    .line 196
    :catchall_1
    move-exception v5

    #@73
    .line 197
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@75
    if-ne v6, v4, :cond_6

    #@77
    .line 198
    const/4 v6, 0x0

    #@78
    iput-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    #@7a
    .line 196
    :cond_6
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 396
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 397
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 399
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    .line 401
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 399
    return-object v1

    #@f
    .line 400
    :catchall_0
    move-exception v1

    #@10
    .line 401
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 400
    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 441
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 442
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 444
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    .line 446
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 444
    return-object v1

    #@f
    .line 445
    :catchall_0
    move-exception v1

    #@10
    .line 446
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 445
    throw v1
.end method
