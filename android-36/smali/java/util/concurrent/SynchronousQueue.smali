.class public Ljava/util/concurrent/SynchronousQueue;
.super Ljava/util/AbstractQueue;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$Transferer;,
        Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$WaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field private final transient blacklist fair:Z

.field private greylist-max-o qlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final transient greylist-max-o transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue$Transferer<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

.field private greylist-max-o waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 240
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    .line 241
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 3
    .param p1, "fair"    # Z

    .line 249
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 250
    iput-boolean p1, p0, Ljava/util/concurrent/SynchronousQueue;->fair:Z

    .line 251
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$Transferer;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    .line 252
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 3

    .line 586
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    instance-of v1, v1, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/SynchronousQueue;->fair:Z

    if-eqz v0, :cond_1b

    .line 569
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 570
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 571
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    goto :goto_30

    .line 574
    :cond_1b
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 575
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 576
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 578
    :goto_30
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 579
    return-void
.end method

.method private blacklist xfer(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "nanos"    # J

    .line 232
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    .line 233
    .local v0, "x":Ljava/util/concurrent/SynchronousQueue$Transferer;, "Ljava/util/concurrent/SynchronousQueue$Transferer<TE;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/SynchronousQueue;->fair:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->xferLifo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    :goto_f
    return-object v1
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 388
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 398
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 420
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 514
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    if-eq p1, p0, :cond_14

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "n":I
    :goto_6
    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_13

    .line 519
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 520
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_13
    return v0

    .line 516
    .end local v0    # "n":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 6
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 530
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    if-eq p1, p0, :cond_16

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "n":I
    :goto_6
    if-ge v0, p2, :cond_15

    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_15

    .line 535
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 536
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_15
    return v0

    .line 532
    .end local v0    # "n":I
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 360
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 463
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 301
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/SynchronousQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 282
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 284
    .local v0, "nanos":J
    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/SynchronousQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    .line 285
    const/4 v2, 0x1

    return v2

    .line 286
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 287
    const/4 v2, 0x0

    return v2

    .line 288
    :cond_1d
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 453
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 350
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
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

    .line 335
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 336
    .local v0, "nanos":J
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/util/concurrent/SynchronousQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "e":Ljava/lang/Object;
    if-nez v2, :cond_1f

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1f

    .line 338
    :cond_19
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 337
    :cond_1f
    :goto_1f
    return-object v3
.end method

.method public whitelist test-api put(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 262
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_18

    .line 264
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/SynchronousQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 265
    return-void

    .line 266
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 268
    :cond_18
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 2

    .line 380
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 409
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 431
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 442
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 370
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api take()Ljava/lang/Object;
    .registers 4
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

    .line 315
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_17

    .line 316
    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 317
    return-object v1

    .line 318
    :cond_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 320
    .end local v1    # "e":Ljava/lang/Object;
    :cond_17
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 482
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
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

    .line 494
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    if-lez v0, :cond_7

    .line 495
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 496
    :cond_7
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 504
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const-string v0, "[]"

    return-object v0
.end method
