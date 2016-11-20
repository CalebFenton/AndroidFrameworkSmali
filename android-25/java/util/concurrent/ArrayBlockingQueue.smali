.class public Ljava/util/concurrent/ArrayBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itr;,
        Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xb59ce4be1ef907aL


# instance fields
.field count:I

.field final items:[Ljava/lang/Object;

.field transient itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field putIndex:I

.field takeIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 196
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    #@4
    .line 195
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z

    #@0
    .prologue
    .line 209
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 210
    if-gtz p1, :cond_0

    #@5
    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 212
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    #@d
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@f
    .line 213
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@11
    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    #@14
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 214
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1e
    .line 215
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@26
    .line 209
    return-void
.end method

.method public constructor <init>(IZLjava/util/Collection;)V
    .locals 8
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 236
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p3, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    #@3
    .line 238
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 239
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@8
    .line 241
    const/4 v3, 0x0

    #@9
    .line 243
    .local v3, "i":I
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    .local v1, "e$iterator":Ljava/util/Iterator;
    move v4, v3

    #@e
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .line 244
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    add-int/lit8 v3, v4, 0x1

    #@1c
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :try_start_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v7

    #@20
    aput-object v7, v6, v4
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    move v4, v3

    #@23
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@24
    .line 245
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :catch_0
    move-exception v2

    #@25
    .line 246
    .local v2, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@27
    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2a
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2b
    .line 250
    .end local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v6

    #@2c
    .line 251
    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 250
    throw v6

    #@30
    .line 248
    .end local v3    # "i":I
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v4    # "i":I
    :cond_0
    :try_start_4
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@32
    .line 249
    if-ne v4, p1, :cond_1

    #@34
    const/4 v6, 0x0

    #@35
    :goto_3
    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@37
    .line 251
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3a
    .line 235
    return-void

    #@3b
    :cond_1
    move v6, v4

    #@3c
    .line 249
    goto :goto_3

    #@3d
    .line 250
    :catchall_1
    move-exception v6

    #@3e
    move v3, v4

    #@3f
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    #@40
    .line 245
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v2

    #@41
    .restart local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v3, v4

    #@42
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 138
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@3
    .line 140
    .local v0, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@5
    aget-object v1, v0, v2

    #@7
    .line 141
    .local v1, "x":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@9
    aput-object v3, v0, v2

    #@b
    .line 142
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@11
    array-length v3, v0

    #@12
    if-ne v2, v3, :cond_0

    #@14
    const/4 v2, 0x0

    #@15
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@17
    .line 143
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@1d
    .line 144
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 145
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@23
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    #@26
    .line 146
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@28
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@2b
    .line 147
    return-object v1
.end method

.method private enqueue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@2
    .line 125
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@4
    aput-object p1, v0, v1

    #@6
    .line 126
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@c
    array-length v2, v0

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v1, 0x0

    #@10
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@12
    .line 127
    :cond_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@18
    .line 128
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1d
    .line 121
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 267
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public clear()V
    .locals 6

    #@0
    .prologue
    .line 596
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 597
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 599
    :try_start_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@7
    .line 600
    .local v2, "k":I
    if-lez v2, :cond_3

    #@9
    .line 601
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@b
    .line 602
    .local v1, "items":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@d
    .line 603
    .local v4, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@f
    .line 605
    .local v0, "i":I
    :cond_0
    const/4 v5, 0x0

    #@10
    aput-object v5, v1, v0

    #@12
    .line 606
    add-int/lit8 v0, v0, 0x1

    #@14
    array-length v5, v1

    #@15
    if-ne v0, v5, :cond_1

    #@17
    const/4 v0, 0x0

    #@18
    .line 607
    :cond_1
    if-ne v0, v4, :cond_0

    #@1a
    .line 608
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@1c
    .line 609
    const/4 v5, 0x0

    #@1d
    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@1f
    .line 610
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@21
    if-eqz v5, :cond_2

    #@23
    .line 611
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@25
    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    #@28
    .line 612
    :cond_2
    :goto_0
    if-lez v2, :cond_3

    #@2a
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@2c
    invoke-virtual {v3, v5}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_3

    #@32
    .line 613
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@34
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 612
    add-int/lit8 v2, v2, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 616
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v4    # "putIndex":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3d
    .line 595
    return-void

    #@3e
    .line 615
    .end local v2    # "k":I
    :catchall_0
    move-exception v5

    #@3f
    .line 616
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@42
    .line 615
    throw v5
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 480
    if-nez p1, :cond_0

    #@3
    return v5

    #@4
    .line 481
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 482
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 484
    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@b
    if-lez v4, :cond_4

    #@d
    .line 485
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@f
    .line 486
    .local v1, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@11
    .line 487
    .local v3, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@13
    .line 489
    .local v0, "i":I
    :cond_1
    aget-object v4, v1, v0

    #@15
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 490
    const/4 v4, 0x1

    #@1c
    .line 496
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 490
    return v4

    #@20
    .line 491
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@22
    :try_start_1
    array-length v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    if-ne v0, v4, :cond_3

    #@25
    const/4 v0, 0x0

    #@26
    .line 492
    :cond_3
    if-ne v0, v3, :cond_1

    #@28
    .line 496
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 494
    return v5

    #@2c
    .line 495
    :catchall_0
    move-exception v4

    #@2d
    .line 496
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 495
    throw v4
.end method

.method final dec(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 106
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    if-nez p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@4
    array-length p1, v0

    #@5
    .end local p1    # "i":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@7
    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 627
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 8
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
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v6, 0x0

    #@1
    .line 637
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 638
    if-ne p1, p0, :cond_0

    #@6
    .line 639
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v6

    #@c
    .line 640
    :cond_0
    if-gtz p2, :cond_1

    #@e
    .line 641
    return v6

    #@f
    .line 642
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@11
    .line 643
    .local v1, "items":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    .line 644
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@16
    .line 646
    :try_start_0
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@18
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v3

    #@1c
    .line 647
    .local v3, "n":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 648
    .local v4, "take":I
    const/4 v0, 0x0

    #@1f
    .line 650
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@21
    .line 652
    :try_start_1
    aget-object v5, v1, v4

    #@23
    .line 653
    .local v5, "x":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@26
    .line 654
    const/4 v6, 0x0

    #@27
    aput-object v6, v1, v4

    #@29
    .line 655
    add-int/lit8 v4, v4, 0x1

    #@2b
    array-length v6, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2c
    if-ne v4, v6, :cond_2

    #@2e
    const/4 v4, 0x0

    #@2f
    .line 656
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 661
    .end local v5    # "x":Ljava/lang/Object;, "TE;"
    :cond_3
    if-lez v0, :cond_6

    #@34
    .line 662
    :try_start_2
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@36
    sub-int/2addr v6, v0

    #@37
    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@39
    .line 663
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@3b
    .line 664
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@3d
    if-eqz v6, :cond_4

    #@3f
    .line 665
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@41
    if-nez v6, :cond_5

    #@43
    .line 666
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@45
    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    #@48
    .line 670
    :cond_4
    :goto_1
    if-lez v0, :cond_6

    #@4a
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@4c
    invoke-virtual {v2, v6}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_6

    #@52
    .line 671
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@54
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@57
    .line 670
    add-int/lit8 v0, v0, -0x1

    #@59
    goto :goto_1

    #@5a
    .line 667
    :cond_5
    if-le v0, v4, :cond_4

    #@5c
    .line 668
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@5e
    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    goto :goto_1

    #@62
    .line 674
    .end local v0    # "i":I
    .end local v3    # "n":I
    .end local v4    # "take":I
    :catchall_0
    move-exception v6

    #@63
    .line 675
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@66
    .line 674
    throw v6

    #@67
    .line 675
    .restart local v0    # "i":I
    .restart local v3    # "n":I
    .restart local v4    # "take":I
    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@6a
    .line 658
    return v3

    #@6b
    .line 659
    :catchall_1
    move-exception v6

    #@6c
    .line 661
    if-lez v0, :cond_9

    #@6e
    .line 662
    :try_start_3
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@70
    sub-int/2addr v7, v0

    #@71
    iput v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@73
    .line 663
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@75
    .line 664
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@77
    if-eqz v7, :cond_7

    #@79
    .line 665
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@7b
    if-nez v7, :cond_8

    #@7d
    .line 666
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@7f
    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    #@82
    .line 670
    :cond_7
    :goto_2
    if-lez v0, :cond_9

    #@84
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@86
    invoke-virtual {v2, v7}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    #@89
    move-result v7

    #@8a
    if-eqz v7, :cond_9

    #@8c
    .line 671
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@8e
    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@91
    .line 670
    add-int/lit8 v0, v0, -0x1

    #@93
    goto :goto_2

    #@94
    .line 667
    :cond_8
    if-le v0, v4, :cond_7

    #@96
    .line 668
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@98
    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    #@9b
    goto :goto_2

    #@9c
    .line 659
    :cond_9
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method final itemAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 689
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    #@5
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 280
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 281
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 282
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@8
    .line 284
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@a
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@c
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 285
    const/4 v1, 0x0

    #@10
    .line 291
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 285
    return v1

    #@14
    .line 287
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    .line 288
    const/4 v1, 0x1

    #@18
    .line 291
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1b
    .line 288
    return v1

    #@1c
    .line 290
    :catchall_0
    move-exception v1

    #@1d
    .line 291
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 290
    throw v1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
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

    #@0
    .prologue
    .line 326
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 327
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@6
    move-result-wide v2

    #@7
    .line 328
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@9
    .line 329
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@c
    .line 331
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@e
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@10
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-ne v1, v4, :cond_1

    #@13
    .line 332
    const-wide/16 v4, 0x0

    #@15
    cmp-long v1, v2, v4

    #@17
    if-gtz v1, :cond_0

    #@19
    .line 333
    const/4 v1, 0x0

    #@1a
    .line 339
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 333
    return v1

    #@1e
    .line 334
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@20
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@23
    move-result-wide v2

    #@24
    goto :goto_0

    #@25
    .line 336
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 337
    const/4 v1, 0x1

    #@29
    .line 339
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 337
    return v1

    #@2d
    .line 338
    :catchall_0
    move-exception v1

    #@2e
    .line 339
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@31
    .line 338
    throw v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 382
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 383
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 385
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@7
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    .line 387
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 385
    return-object v1

    #@f
    .line 386
    :catchall_0
    move-exception v1

    #@10
    .line 387
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 386
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 344
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 345
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 347
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    .line 349
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 347
    return-object v1

    #@e
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v1

    #@12
    goto :goto_0

    #@13
    .line 348
    :catchall_0
    move-exception v1

    #@14
    .line 349
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 348
    throw v1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
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
    .line 366
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v2

    #@4
    .line 367
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 368
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@9
    .line 370
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v1, :cond_1

    #@d
    .line 371
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-gtz v1, :cond_0

    #@13
    .line 372
    const/4 v1, 0x0

    #@14
    .line 377
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 372
    return-object v1

    #@18
    .line 373
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@1d
    move-result-wide v2

    #@1e
    goto :goto_0

    #@1f
    .line 375
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result-object v1

    #@23
    .line 377
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 375
    return-object v1

    #@27
    .line 376
    :catchall_0
    move-exception v1

    #@28
    .line 377
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 376
    throw v1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 3
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

    #@0
    .prologue
    .line 303
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 304
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 305
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@8
    .line 307
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@a
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@c
    array-length v2, v2

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 308
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 310
    :catchall_0
    move-exception v1

    #@16
    .line 311
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 310
    throw v1

    #@1a
    .line 309
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 311
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 302
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    #@0
    .prologue
    .line 422
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 423
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 425
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@7
    array-length v1, v1

    #@8
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    sub-int/2addr v1, v2

    #@b
    .line 427
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 425
    return v1

    #@f
    .line 426
    :catchall_0
    move-exception v1

    #@10
    .line 427
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 426
    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 449
    if-nez p1, :cond_0

    #@3
    return v5

    #@4
    .line 450
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 451
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 453
    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@b
    if-lez v4, :cond_4

    #@d
    .line 454
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@f
    .line 455
    .local v1, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@11
    .line 456
    .local v3, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@13
    .line 458
    .local v0, "i":I
    :cond_1
    aget-object v4, v1, v0

    #@15
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 459
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 460
    const/4 v4, 0x1

    #@1f
    .line 467
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 460
    return v4

    #@23
    .line 462
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@25
    :try_start_1
    array-length v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    if-ne v0, v4, :cond_3

    #@28
    const/4 v0, 0x0

    #@29
    .line 463
    :cond_3
    if-ne v0, v3, :cond_1

    #@2b
    .line 467
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2e
    .line 465
    return v5

    #@2f
    .line 466
    :catchall_0
    move-exception v4

    #@30
    .line 467
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@33
    .line 466
    throw v4
.end method

.method removeAt(I)V
    .locals 6
    .param p1, "removeIndex"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 159
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@3
    .line 160
    .local v1, "items":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@5
    if-ne p1, v4, :cond_2

    #@7
    .line 162
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@9
    aput-object v5, v1, v4

    #@b
    .line 163
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@d
    add-int/lit8 v4, v4, 0x1

    #@f
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@11
    array-length v5, v1

    #@12
    if-ne v4, v5, :cond_0

    #@14
    const/4 v4, 0x0

    #@15
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@17
    .line 164
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@19
    add-int/lit8 v4, v4, -0x1

    #@1b
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@1d
    .line 165
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 166
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@23
    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    #@26
    .line 185
    :cond_1
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@28
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@2b
    .line 155
    return-void

    #@2c
    .line 171
    :cond_2
    move v0, p1

    #@2d
    .local v0, "i":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@2f
    .line 172
    .local v3, "putIndex":I
    :goto_1
    move v2, v0

    #@30
    .line 173
    .local v2, "pred":I
    add-int/lit8 v0, v0, 0x1

    #@32
    array-length v4, v1

    #@33
    if-ne v0, v4, :cond_3

    #@35
    const/4 v0, 0x0

    #@36
    .line 174
    :cond_3
    if-ne v0, v3, :cond_4

    #@38
    .line 175
    aput-object v5, v1, v2

    #@3a
    .line 176
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@3c
    .line 181
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@3e
    add-int/lit8 v4, v4, -0x1

    #@40
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@42
    .line 182
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@44
    if-eqz v4, :cond_1

    #@46
    .line 183
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@48
    invoke-virtual {v4, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->removedAt(I)V

    #@4b
    goto :goto_0

    #@4c
    .line 179
    :cond_4
    aget-object v4, v1, v0

    #@4e
    aput-object v4, v1, v2

    #@50
    goto :goto_1
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 399
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 400
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 402
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 404
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 402
    return v1

    #@b
    .line 403
    :catchall_0
    move-exception v1

    #@c
    .line 404
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 403
    throw v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1335
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/16 v0, 0x1110

    #@2
    .line 1334
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 2
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
    .line 354
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 355
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@5
    .line 357
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@7
    if-nez v1, :cond_0

    #@9
    .line 358
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@b
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    goto :goto_0

    #@f
    .line 360
    :catchall_0
    move-exception v1

    #@10
    .line 361
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 360
    throw v1

    #@14
    .line 359
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v1

    #@18
    .line 361
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1b
    .line 359
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .line 514
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 515
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 517
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@7
    .line 518
    .local v2, "items":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@9
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@b
    add-int v1, v4, v5

    #@d
    .line 519
    .local v1, "end":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@f
    invoke-static {v2, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 520
    .local v0, "a":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@15
    if-eq v1, v4, :cond_0

    #@17
    .line 521
    array-length v4, v2

    #@18
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@1a
    sub-int/2addr v4, v5

    #@1b
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@1d
    const/4 v6, 0x0

    #@1e
    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 524
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 522
    return-object v0

    #@25
    .line 523
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "end":I
    .end local v2    # "items":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    #@26
    .line 524
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 523
    throw v4
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 565
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 566
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 568
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@7
    .line 569
    .local v2, "items":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@9
    .line 570
    .local v0, "count":I
    array-length v4, v2

    #@a
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@c
    sub-int/2addr v4, v5

    #@d
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v1

    #@11
    .line 571
    .local v1, "firstLeg":I
    array-length v4, p1

    #@12
    if-ge v4, v0, :cond_2

    #@14
    .line 572
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@16
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@18
    add-int/2addr v5, v0

    #@19
    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v6

    #@1d
    .line 572
    invoke-static {v2, v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    #@20
    move-result-object p1

    #@21
    .line 579
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    #@23
    .line 580
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@25
    const/4 v5, 0x0

    #@26
    invoke-static {v2, v5, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 583
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 581
    return-object p1

    #@2d
    .line 575
    :cond_2
    :try_start_1
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-static {v2, v4, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@33
    .line 576
    array-length v4, p1

    #@34
    if-le v4, v0, :cond_0

    #@36
    .line 577
    const/4 v4, 0x0

    #@37
    aput-object v4, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 582
    .end local v0    # "count":I
    .end local v1    # "firstLeg":I
    .end local v2    # "items":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    #@3b
    .line 583
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3e
    .line 582
    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 588
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
