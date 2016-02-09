.class public Ljava/util/concurrent/ArrayBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itrs;,
        Ljava/util/concurrent/ArrayBlockingQueue$Itr;
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
    .line 193
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    #@4
    .line 192
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z

    #@0
    .prologue
    .line 206
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 95
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@6
    .line 207
    if-gtz p1, :cond_0

    #@8
    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v0

    #@e
    .line 209
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@12
    .line 210
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@14
    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    #@17
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@19
    .line 211
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@21
    .line 212
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@29
    .line 206
    return-void
.end method

.method public constructor <init>(IZLjava/util/Collection;)V
    .locals 7
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
    .line 233
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p3, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    #@3
    .line 235
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 236
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@8
    .line 238
    const/4 v3, 0x0

    #@9
    .line 240
    .local v3, "i":I
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
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
    if-eqz v6, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .line 241
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@1a
    new-instance v6, Ljava/lang/NullPointerException;

    #@1c
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@1f
    throw v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    .line 244
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v2

    #@21
    .local v2, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v3, v4

    #@22
    .line 245
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_1
    :try_start_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@24
    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@27
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    .line 249
    .end local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v6

    #@29
    .line 250
    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 249
    throw v6

    #@2d
    .line 242
    .end local v3    # "i":I
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v4    # "i":I
    :cond_0
    :try_start_3
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2f
    add-int/lit8 v3, v4, 0x1

    #@31
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :try_start_4
    aput-object v0, v6, v4
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@33
    move v4, v3

    #@34
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@35
    .line 247
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    :try_start_5
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@37
    .line 248
    if-ne v4, p1, :cond_2

    #@39
    const/4 v6, 0x0

    #@3a
    :goto_3
    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3c
    .line 250
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3f
    .line 232
    return-void

    #@40
    :cond_2
    move v6, v4

    #@41
    .line 248
    goto :goto_3

    #@42
    .line 249
    :catchall_1
    move-exception v6

    #@43
    move v3, v4

    #@44
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    #@45
    .line 244
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    #@46
    .restart local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
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
    .line 135
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@3
    .line 137
    .local v0, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@5
    aget-object v1, v0, v2

    #@7
    .line 138
    .local v1, "x":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@9
    aput-object v3, v0, v2

    #@b
    .line 139
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
    .line 140
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@1d
    .line 141
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 142
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@23
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    #@26
    .line 143
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@28
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@2b
    .line 144
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
    .line 121
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@2
    .line 122
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@4
    aput-object p1, v0, v1

    #@6
    .line 123
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
    .line 124
    :cond_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@18
    .line 125
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1d
    .line 118
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
    .line 266
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
    .line 615
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@2
    .line 616
    .local v1, "items":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@4
    .line 617
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@7
    .line 619
    :try_start_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@9
    .line 620
    .local v2, "k":I
    if-lez v2, :cond_3

    #@b
    .line 621
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@d
    .line 622
    .local v4, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@f
    .line 624
    .local v0, "i":I
    :cond_0
    const/4 v5, 0x0

    #@10
    aput-object v5, v1, v0

    #@12
    .line 625
    add-int/lit8 v0, v0, 0x1

    #@14
    array-length v5, v1

    #@15
    if-ne v0, v5, :cond_1

    #@17
    const/4 v0, 0x0

    #@18
    .line 626
    :cond_1
    if-ne v0, v4, :cond_0

    #@1a
    .line 627
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@1c
    .line 628
    const/4 v5, 0x0

    #@1d
    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@1f
    .line 629
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@21
    if-eqz v5, :cond_2

    #@23
    .line 630
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@25
    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    #@28
    .line 631
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
    .line 632
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@34
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 631
    add-int/lit8 v2, v2, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 635
    .end local v0    # "i":I
    .end local v4    # "putIndex":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3d
    .line 614
    return-void

    #@3e
    .line 634
    .end local v2    # "k":I
    :catchall_0
    move-exception v5

    #@3f
    .line 635
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@42
    .line 634
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
    .line 479
    if-nez p1, :cond_0

    #@3
    return v5

    #@4
    .line 480
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 481
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 483
    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@b
    if-lez v4, :cond_4

    #@d
    .line 484
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@f
    .line 485
    .local v1, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@11
    .line 486
    .local v3, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@13
    .line 488
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
    .line 489
    const/4 v4, 0x1

    #@1c
    .line 495
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 489
    return v4

    #@20
    .line 490
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
    .line 491
    :cond_3
    if-ne v0, v3, :cond_1

    #@28
    .line 495
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 493
    return v5

    #@2c
    .line 494
    :catchall_0
    move-exception v4

    #@2d
    .line 495
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 494
    throw v4
.end method

.method final dec(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 103
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
    .line 646
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
    .line 656
    if-nez p1, :cond_0

    #@3
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v6

    #@9
    .line 657
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 658
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v6

    #@11
    .line 659
    :cond_1
    if-gtz p2, :cond_2

    #@13
    .line 660
    return v6

    #@14
    .line 661
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@16
    .line 662
    .local v1, "items":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 663
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@1b
    .line 665
    :try_start_0
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@1d
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    #@20
    move-result v3

    #@21
    .line 666
    .local v3, "n":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 667
    .local v4, "take":I
    const/4 v0, 0x0

    #@24
    .line 669
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    #@26
    .line 671
    :try_start_1
    aget-object v5, v1, v4

    #@28
    .line 672
    .local v5, "x":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@2b
    .line 673
    const/4 v6, 0x0

    #@2c
    aput-object v6, v1, v4

    #@2e
    .line 674
    add-int/lit8 v4, v4, 0x1

    #@30
    array-length v6, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@31
    if-ne v4, v6, :cond_3

    #@33
    const/4 v4, 0x0

    #@34
    .line 675
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 680
    .end local v5    # "x":Ljava/lang/Object;, "TE;"
    :cond_4
    if-lez v0, :cond_7

    #@39
    .line 681
    :try_start_2
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@3b
    sub-int/2addr v6, v0

    #@3c
    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@3e
    .line 682
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@40
    .line 683
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@42
    if-eqz v6, :cond_5

    #@44
    .line 684
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@46
    if-nez v6, :cond_6

    #@48
    .line 685
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@4a
    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    #@4d
    .line 689
    :cond_5
    :goto_1
    if-lez v0, :cond_7

    #@4f
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@51
    invoke-virtual {v2, v6}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_7

    #@57
    .line 690
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@59
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@5c
    .line 689
    add-int/lit8 v0, v0, -0x1

    #@5e
    goto :goto_1

    #@5f
    .line 686
    :cond_6
    if-le v0, v4, :cond_5

    #@61
    .line 687
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@63
    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    goto :goto_1

    #@67
    .line 693
    .end local v0    # "i":I
    .end local v3    # "n":I
    .end local v4    # "take":I
    :catchall_0
    move-exception v6

    #@68
    .line 694
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@6b
    .line 693
    throw v6

    #@6c
    .line 694
    .restart local v0    # "i":I
    .restart local v3    # "n":I
    .restart local v4    # "take":I
    :cond_7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@6f
    .line 677
    return v3

    #@70
    .line 678
    :catchall_1
    move-exception v6

    #@71
    .line 680
    if-lez v0, :cond_a

    #@73
    .line 681
    :try_start_3
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@75
    sub-int/2addr v7, v0

    #@76
    iput v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@78
    .line 682
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@7a
    .line 683
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@7c
    if-eqz v7, :cond_8

    #@7e
    .line 684
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@80
    if-nez v7, :cond_9

    #@82
    .line 685
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@84
    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    #@87
    .line 689
    :cond_8
    :goto_2
    if-lez v0, :cond_a

    #@89
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@8b
    invoke-virtual {v2, v7}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    #@8e
    move-result v7

    #@8f
    if-eqz v7, :cond_a

    #@91
    .line 690
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@93
    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@96
    .line 689
    add-int/lit8 v0, v0, -0x1

    #@98
    goto :goto_2

    #@99
    .line 686
    :cond_9
    if-le v0, v4, :cond_8

    #@9b
    .line 687
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@9d
    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    #@a0
    goto :goto_2

    #@a1
    .line 678
    :cond_a
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
    .line 111
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
    .line 708
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
    .line 279
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 280
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 281
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@d
    .line 283
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@f
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@11
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 284
    const/4 v1, 0x0

    #@15
    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 284
    return v1

    #@19
    .line 286
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 287
    const/4 v1, 0x1

    #@1d
    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 287
    return v1

    #@21
    .line 289
    :catchall_0
    move-exception v1

    #@22
    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 289
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
    .line 325
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 326
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@b
    move-result-wide v2

    #@c
    .line 327
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    .line 328
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@11
    .line 330
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@13
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@15
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    if-ne v1, v4, :cond_2

    #@18
    .line 331
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-gtz v1, :cond_1

    #@1e
    .line 332
    const/4 v1, 0x0

    #@1f
    .line 338
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 332
    return v1

    #@23
    .line 333
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@25
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@28
    move-result-wide v2

    #@29
    goto :goto_0

    #@2a
    .line 335
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 336
    const/4 v1, 0x1

    #@2e
    .line 338
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@31
    .line 336
    return v1

    #@32
    .line 337
    :catchall_0
    move-exception v1

    #@33
    .line 338
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@36
    .line 337
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
    .line 381
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 382
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 384
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@7
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    .line 386
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 384
    return-object v1

    #@f
    .line 385
    :catchall_0
    move-exception v1

    #@10
    .line 386
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 385
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
    .line 343
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 344
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 346
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    .line 348
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 346
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
    .line 347
    :catchall_0
    move-exception v1

    #@14
    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 347
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
    .line 365
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v2

    #@4
    .line 366
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 367
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@9
    .line 369
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v1, :cond_1

    #@d
    .line 370
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-gtz v1, :cond_0

    #@13
    .line 371
    const/4 v1, 0x0

    #@14
    .line 376
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 371
    return-object v1

    #@18
    .line 372
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
    .line 374
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result-object v1

    #@23
    .line 376
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 374
    return-object v1

    #@27
    .line 375
    :catchall_0
    move-exception v1

    #@28
    .line 376
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 375
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
    .line 302
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 303
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 304
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@d
    .line 306
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@f
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@11
    array-length v2, v2

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 307
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@16
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    goto :goto_0

    #@1a
    .line 309
    :catchall_0
    move-exception v1

    #@1b
    .line 310
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 309
    throw v1

    #@1f
    .line 308
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 310
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 301
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    #@0
    .prologue
    .line 421
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 422
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 424
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
    .line 426
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 424
    return v1

    #@f
    .line 425
    :catchall_0
    move-exception v1

    #@10
    .line 426
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 425
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
    .line 448
    if-nez p1, :cond_0

    #@3
    return v5

    #@4
    .line 449
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 450
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 452
    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@b
    if-lez v4, :cond_4

    #@d
    .line 453
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@f
    .line 454
    .local v1, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@11
    .line 455
    .local v3, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@13
    .line 457
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
    .line 458
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 459
    const/4 v4, 0x1

    #@1f
    .line 466
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 459
    return v4

    #@23
    .line 461
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
    .line 462
    :cond_3
    if-ne v0, v3, :cond_1

    #@2b
    .line 466
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2e
    .line 464
    return v5

    #@2f
    .line 465
    :catchall_0
    move-exception v4

    #@30
    .line 466
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@33
    .line 465
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
    .line 156
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@3
    .line 157
    .local v1, "items":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@5
    if-ne p1, v4, :cond_2

    #@7
    .line 159
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@9
    aput-object v5, v1, v4

    #@b
    .line 160
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
    .line 161
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@19
    add-int/lit8 v4, v4, -0x1

    #@1b
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@1d
    .line 162
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 163
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@23
    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    #@26
    .line 182
    :cond_1
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@28
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@2b
    .line 152
    return-void

    #@2c
    .line 168
    :cond_2
    move v0, p1

    #@2d
    .local v0, "i":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@2f
    .line 169
    .local v3, "putIndex":I
    :goto_1
    move v2, v0

    #@30
    .line 170
    .local v2, "pred":I
    add-int/lit8 v0, v0, 0x1

    #@32
    array-length v4, v1

    #@33
    if-ne v0, v4, :cond_3

    #@35
    const/4 v0, 0x0

    #@36
    .line 171
    :cond_3
    if-ne v0, v3, :cond_4

    #@38
    .line 172
    aput-object v5, v1, v2

    #@3a
    .line 173
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@3c
    .line 178
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@3e
    add-int/lit8 v4, v4, -0x1

    #@40
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@42
    .line 179
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@44
    if-eqz v4, :cond_1

    #@46
    .line 180
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@48
    invoke-virtual {v4, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->removedAt(I)V

    #@4b
    goto :goto_0

    #@4c
    .line 176
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
    .line 398
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 399
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 401
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 403
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 401
    return v1

    #@b
    .line 402
    :catchall_0
    move-exception v1

    #@c
    .line 403
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 402
    throw v1
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
    .line 353
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 354
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@5
    .line 356
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@7
    if-nez v1, :cond_0

    #@9
    .line 357
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@b
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    goto :goto_0

    #@f
    .line 359
    :catchall_0
    move-exception v1

    #@10
    .line 360
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 359
    throw v1

    #@14
    .line 358
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v1

    #@18
    .line 360
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1b
    .line 358
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .line 513
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 514
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 516
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@7
    .line 517
    .local v2, "items":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@9
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@b
    add-int v1, v4, v5

    #@d
    .line 518
    .local v1, "end":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@f
    invoke-static {v2, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 519
    .local v0, "a":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@15
    if-eq v1, v4, :cond_0

    #@17
    .line 520
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
    .line 523
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 521
    return-object v0

    #@25
    .line 522
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "end":I
    .end local v2    # "items":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    #@26
    .line 523
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 522
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
    .line 564
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 565
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 567
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@7
    .line 568
    .local v2, "items":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@9
    .line 569
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
    .line 570
    .local v1, "firstLeg":I
    array-length v4, p1

    #@12
    if-ge v4, v0, :cond_2

    #@14
    .line 571
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@16
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@18
    add-int/2addr v5, v0

    #@19
    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v6

    #@1d
    .line 571
    invoke-static {v2, v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    #@20
    move-result-object p1

    #@21
    .line 578
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    #@23
    .line 579
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    #@25
    const/4 v5, 0x0

    #@26
    invoke-static {v2, v5, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 582
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 580
    return-object p1

    #@2d
    .line 574
    :cond_2
    :try_start_1
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-static {v2, v4, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@33
    .line 575
    array-length v4, p1

    #@34
    if-le v4, v0, :cond_0

    #@36
    .line 576
    const/4 v4, 0x0

    #@37
    aput-object v4, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 581
    .end local v0    # "count":I
    .end local v1    # "firstLeg":I
    .end local v2    # "items":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    #@3b
    .line 582
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3e
    .line 581
    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 587
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 588
    .local v4, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 590
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@7
    .line 591
    .local v3, "k":I
    if-nez v3, :cond_0

    #@9
    .line 592
    const-string/jumbo v6, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 606
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 592
    return-object v6

    #@10
    .line 594
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    #@12
    .line 595
    .local v2, "items":[Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    .line 596
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/16 v6, 0x5b

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 597
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@1e
    .line 598
    .local v1, "i":I
    :cond_1
    :goto_0
    aget-object v0, v2, v1

    #@20
    .line 599
    .local v0, "e":Ljava/lang/Object;
    if-ne v0, p0, :cond_2

    #@22
    const-string/jumbo v0, "(this Collection)"

    #@25
    .end local v0    # "e":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    .line 600
    add-int/lit8 v3, v3, -0x1

    #@2a
    if-nez v3, :cond_3

    #@2c
    .line 601
    const/16 v6, 0x5d

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    move-result-object v6

    #@36
    .line 606
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@39
    .line 601
    return-object v6

    #@3a
    .line 602
    :cond_3
    const/16 v6, 0x2c

    #@3c
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    const/16 v7, 0x20

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 603
    add-int/lit8 v1, v1, 0x1

    #@47
    array-length v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    if-ne v1, v6, :cond_1

    #@4a
    const/4 v1, 0x0

    #@4b
    goto :goto_0

    #@4c
    .line 605
    .end local v1    # "i":I
    .end local v2    # "items":[Ljava/lang/Object;
    .end local v3    # "k":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    #@4d
    .line 606
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@50
    .line 605
    throw v6
.end method
