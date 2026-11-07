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
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0xb59ce4be1ef907aL


# instance fields
.field greylist-max-o count:I

.field final greylist-max-o items:[Ljava/lang/Object;

.field transient greylist-max-o itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itrs;"
        }
    .end annotation
.end field

.field final greylist-max-o lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist-max-o notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final greylist-max-o notFull:Ljava/util/concurrent/locks/Condition;

.field greylist-max-o putIndex:I

.field greylist-max-o takeIndex:I


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 257
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 258
    return-void
.end method

.method public constructor whitelist test-api <init>(IZ)V
    .registers 4
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z

    .line 270
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 271
    if-lez p1, :cond_21

    .line 273
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 275
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 276
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 277
    return-void

    .line 272
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(IZLjava/util/Collection;)V
    .registers 11
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 297
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p3, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 299
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 300
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 302
    :try_start_8
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_3d

    .line 303
    .local v1, "items":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 305
    .local v2, "i":I
    :try_start_b
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4
    :try_end_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_19} :catch_34
    .catchall {:try_start_b .. :try_end_19} :catchall_3d

    .line 306
    .local v4, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    :try_start_1b
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2
    :try_end_21
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1b .. :try_end_21} :catch_23
    .catchall {:try_start_1b .. :try_end_21} :catchall_3d

    move v2, v5

    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_f

    .line 307
    :catch_23
    move-exception v2

    goto :goto_37

    .line 309
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_25
    nop

    .line 310
    :try_start_26
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 311
    if-ne v2, p1, :cond_2c

    const/4 v3, 0x0

    goto :goto_2d

    :cond_2c
    move v3, v2

    :goto_2d
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_3d

    .line 313
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    nop

    .line 315
    return-void

    .line 307
    .restart local v1    # "items":[Ljava/lang/Object;
    .restart local v2    # "i":I
    :catch_34
    move-exception v3

    move v5, v2

    move-object v2, v3

    .line 308
    .local v2, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5    # "i":I
    :goto_37
    :try_start_37
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .end local p1    # "capacity":I
    .end local p2    # "fair":Z
    .end local p3    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    throw v3
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3d

    .line 313
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "i":I
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .restart local p1    # "capacity":I
    .restart local p2    # "fair":Z
    .restart local p3    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    throw v1
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1494
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1495
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1497
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-nez v1, :cond_3b

    .line 1498
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-lez v1, :cond_35

    .line 1499
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 1501
    .local v1, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v2, "i":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 1502
    .local v3, "end":I
    if-ge v2, v3, :cond_17

    move v4, v3

    goto :goto_18

    :cond_17
    array-length v4, v1

    .line 1504
    .local v4, "to":I
    :goto_18
    if-ge v2, v4, :cond_2f

    .line 1505
    invoke-static {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1506
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->bulkRemoveModified(Ljava/util/function/Predicate;I)Z

    move-result v5
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_44

    .line 1513
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1506
    return v5

    .line 1504
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1507
    :cond_2f
    if-ne v4, v3, :cond_32

    goto :goto_35

    .line 1503
    :cond_32
    const/4 v2, 0x0

    move v4, v3

    goto :goto_18

    .line 1510
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "to":I
    :cond_35
    :goto_35
    nop

    .line 1513
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1510
    const/4 v1, 0x0

    return v1

    .line 1513
    :cond_3b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1514
    nop

    .line 1517
    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v1

    return v1

    .line 1513
    :catchall_44
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1514
    throw v1
.end method

.method private blacklist bulkRemoveModified(Ljava/util/function/Predicate;I)Z
    .registers 13
    .param p2, "beg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;I)Z"
        }
    .end annotation

    .line 1551
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 1552
    .local v0, "es":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    .line 1553
    .local v1, "capacity":I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 1554
    .local v2, "end":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-direct {p0, p2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->distanceNonEmpty(II)I

    move-result v3

    invoke-static {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->nBits(I)[J

    move-result-object v3

    .line 1555
    .local v3, "deathRow":[J
    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    aput-wide v5, v3, v4

    .line 1556
    add-int/lit8 v4, p2, 0x1

    .local v4, "i":I
    if-gt v4, v2, :cond_1c

    move v5, v2

    goto :goto_1d

    :cond_1c
    array-length v5, v0

    .local v5, "to":I
    :goto_1d
    move v6, p2

    .line 1558
    .local v6, "k":I
    :goto_1e
    if-ge v4, v5, :cond_32

    .line 1559
    invoke-static {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1560
    sub-int v7, v4, v6

    invoke-static {v3, v7}, Ljava/util/concurrent/ArrayBlockingQueue;->setBit([JI)V

    .line 1558
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1561
    :cond_32
    if-ne v5, v2, :cond_84

    .line 1564
    .end local v4    # "i":I
    .end local v5    # "to":I
    .end local v6    # "k":I
    move v4, p2

    .line 1565
    .local v4, "w":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    if-gt v5, v2, :cond_3b

    move v6, v2

    goto :goto_3c

    :cond_3b
    array-length v6, v0

    .local v6, "to":I
    :goto_3c
    move v7, p2

    .line 1568
    .local v7, "k":I
    :goto_3d
    if-ge v5, v6, :cond_51

    .line 1569
    sub-int v8, v5, v7

    invoke-static {v3, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->isClear([JI)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 1570
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "w":I
    .local v8, "w":I
    aget-object v9, v0, v5

    aput-object v9, v0, v4

    move v4, v8

    .line 1568
    .end local v8    # "w":I
    .restart local v4    # "w":I
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 1571
    :cond_51
    if-ne v6, v2, :cond_54

    goto :goto_72

    .line 1573
    :cond_54
    const/4 v5, 0x0

    move v6, v2

    sub-int/2addr v7, v1

    :goto_57
    if-ge v5, v6, :cond_6d

    if-ge v4, v1, :cond_6d

    .line 1574
    sub-int v8, v5, v7

    invoke-static {v3, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->isClear([JI)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 1575
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "w":I
    .restart local v8    # "w":I
    aget-object v9, v0, v5

    aput-object v9, v0, v4

    move v4, v8

    .line 1573
    .end local v8    # "w":I
    .restart local v4    # "w":I
    :cond_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 1576
    :cond_6d
    if-lt v5, v6, :cond_82

    .line 1577
    if-ne v4, v1, :cond_72

    const/4 v4, 0x0

    .line 1581
    .end local v5    # "i":I
    .end local v6    # "to":I
    .end local v7    # "k":I
    :cond_72
    :goto_72
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    invoke-direct {p0, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->distanceNonEmpty(II)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 1582
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-static {v0, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->circularClear([Ljava/lang/Object;II)V

    .line 1583
    const/4 v5, 0x1

    return v5

    .line 1566
    .restart local v5    # "i":I
    .restart local v6    # "to":I
    .restart local v7    # "k":I
    :cond_82
    const/4 v4, 0x0

    goto :goto_3d

    .line 1557
    .end local v7    # "k":I
    .local v4, "i":I
    .local v5, "to":I
    .local v6, "k":I
    :cond_84
    const/4 v4, 0x0

    move v5, v2

    sub-int/2addr v6, v1

    goto :goto_1e
.end method

.method private static blacklist circularClear([Ljava/lang/Object;II)V
    .registers 5
    .param p0, "items"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "end"    # I

    .line 685
    if-ge p1, p2, :cond_4

    move v0, p2

    goto :goto_5

    :cond_4
    array-length v0, p0

    .line 687
    .local v0, "to":I
    :goto_5
    if-ge p1, v0, :cond_d

    const/4 v1, 0x0

    aput-object v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 688
    :cond_d
    if-ne v0, p2, :cond_10

    .line 690
    .end local v0    # "to":I
    return-void

    .line 686
    .restart local v0    # "to":I
    :cond_10
    const/4 p1, 0x0

    move v0, p2

    goto :goto_5
.end method

.method static final blacklist dec(II)I
    .registers 2
    .param p0, "i"    # I
    .param p1, "modulus"    # I

    .line 154
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_6

    add-int/lit8 p0, p1, -0x1

    .line 155
    :cond_6
    return p0
.end method

.method private greylist-max-o dequeue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 198
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 200
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v1, v0, v1

    .line 201
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 202
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    array-length v3, v0

    if-ne v2, v3, :cond_17

    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 203
    :cond_17
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 204
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v2, :cond_26

    .line 205
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    .line 206
    :cond_26
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 207
    return-object v1
.end method

.method private blacklist distanceNonEmpty(II)I
    .registers 4
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 1537
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    sub-int v0, p2, p1

    move p2, v0

    if-gtz v0, :cond_9

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr p2, v0

    .line 1538
    :cond_9
    return p2
.end method

.method private greylist-max-o enqueue(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 184
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    aput-object p1, v0, v1

    .line 185
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    array-length v2, v0

    if-ne v1, v2, :cond_12

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 186
    :cond_12
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 187
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 188
    return-void
.end method

.method static final blacklist inc(II)I
    .registers 2
    .param p0, "i"    # I
    .param p1, "modulus"    # I

    .line 145
    add-int/lit8 p0, p0, 0x1

    if-lt p0, p1, :cond_5

    const/4 p0, 0x0

    .line 146
    :cond_5
    return p0
.end method

.method private blacklist invariantsSatisfied()Z
    .registers 4

    .line 1607
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    .line 1608
    .local v0, "capacity":I
    if-lez v0, :cond_5a

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 1609
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-ne v1, v2, :cond_5a

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    or-int/2addr v1, v2

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    or-int/2addr v1, v2

    if-ltz v1, :cond_5a

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-ge v1, v0, :cond_5a

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ge v1, v0, :cond_5a

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-gt v1, v0, :cond_5a

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    sub-int/2addr v1, v2

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v1, v2

    rem-int/2addr v1, v0

    if-nez v1, :cond_5a

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-eqz v1, :cond_3c

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_5a

    :cond_3c
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-eq v1, v0, :cond_48

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    aget-object v1, v1, v2

    if-nez v1, :cond_5a

    :cond_48
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-eqz v1, :cond_58

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 1617
    invoke-static {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(II)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_5a

    :cond_58
    const/4 v1, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    .line 1608
    :goto_5b
    return v1
.end method

.method private static blacklist isClear([JI)Z
    .registers 6
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 1529
    shr-int/lit8 v0, p1, 0x6

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static blacklist itemAt([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .param p0, "items"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 172
    aget-object v0, p0, p1

    return-object v0
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1481
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1489
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist nBits(I)[J
    .registers 2
    .param p0, "n"    # I

    .line 1523
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1633
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1635
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->invariantsSatisfied()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1637
    return-void

    .line 1636
    :cond_a
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "invariants violated"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist setBit([JI)V
    .registers 7
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 1526
    shr-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1527
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 329
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist checkInvariants()V
    .registers 6

    .line 1590
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->invariantsSatisfied()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1598
    return-void

    .line 1591
    :cond_7
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1593
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 1594
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1591
    const-string v1, "takeIndex=%d putIndex=%d count=%d capacity=%d items=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, "detail":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1596
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist test-api clear()V
    .registers 6

    .line 660
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 661
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 664
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    move v2, v1

    .local v2, "k":I
    if-lez v1, :cond_35

    .line 665
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-static {v1, v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->circularClear([Ljava/lang/Object;II)V

    .line 666
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 667
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 668
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v1, :cond_23

    .line 669
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    .line 670
    :cond_23
    :goto_23
    if-lez v2, :cond_35

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 671
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_3a

    .line 670
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 674
    .end local v2    # "k":I
    :cond_35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 675
    nop

    .line 676
    return-void

    .line 674
    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 675
    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 543
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 544
    :cond_4
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 545
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 547
    :try_start_9
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-lez v2, :cond_31

    .line 548
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 549
    .local v2, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v3, "i":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 550
    .local v4, "end":I
    if-ge v3, v4, :cond_17

    move v5, v4

    goto :goto_18

    :cond_17
    array-length v5, v2

    .line 552
    .local v5, "to":I
    :goto_18
    if-ge v3, v5, :cond_2b

    .line 553
    aget-object v6, v2, v3

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_36

    if-eqz v6, :cond_28

    .line 554
    nop

    .line 560
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    const/4 v0, 0x1

    return v0

    .line 552
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 555
    :cond_2b
    if-ne v5, v4, :cond_2e

    goto :goto_31

    .line 551
    :cond_2e
    const/4 v3, 0x0

    move v5, v4

    goto :goto_18

    .line 558
    .end local v2    # "items":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "end":I
    .end local v5    # "to":I
    :cond_31
    :goto_31
    nop

    .line 560
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 558
    return v0

    .line 560
    :catchall_36
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 561
    throw v0
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

    .line 699
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 10
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 709
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    if-eq p1, p0, :cond_9a

    .line 712
    if-gtz p2, :cond_9

    .line 713
    const/4 v0, 0x0

    return v0

    .line 714
    :cond_9
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 715
    .local v0, "items":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 716
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 718
    :try_start_10
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 719
    .local v2, "n":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_95

    .line 720
    .local v3, "take":I
    const/4 v4, 0x0

    .line 722
    .local v4, "i":I
    :goto_19
    if-ge v4, v2, :cond_60

    .line 724
    :try_start_1b
    aget-object v5, v0, v3

    .line 725
    .local v5, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 726
    const/4 v6, 0x0

    aput-object v6, v0, v3

    .line 727
    add-int/lit8 v3, v3, 0x1

    array-length v6, v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2d

    if-ne v3, v6, :cond_29

    const/4 v3, 0x0

    .line 728
    :cond_29
    nop

    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    .line 729
    goto :goto_19

    .line 733
    :catchall_2d
    move-exception v5

    if-lez v4, :cond_5e

    .line 734
    :try_start_30
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v6, v4

    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 735
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 736
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v6, :cond_4c

    .line 737
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v6, :cond_45

    .line 738
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    goto :goto_4c

    .line 739
    :cond_45
    if-le v4, v3, :cond_4c

    .line 740
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    .line 742
    :cond_4c
    :goto_4c
    if-lez v4, :cond_5e

    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 743
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 742
    add-int/lit8 v4, v4, -0x1

    goto :goto_4c

    .line 745
    :cond_5e
    nop

    .end local v0    # "items":[Ljava/lang/Object;
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    .end local p2    # "maxElements":I
    throw v5

    .line 730
    .restart local v0    # "items":[Ljava/lang/Object;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    .restart local p2    # "maxElements":I
    :cond_60
    nop

    .line 733
    if-lez v4, :cond_91

    .line 734
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v5, v4

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 735
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 736
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v5, :cond_7f

    .line 737
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v5, :cond_78

    .line 738
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    goto :goto_7f

    .line 739
    :cond_78
    if-le v4, v3, :cond_7f

    .line 740
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    .line 742
    :cond_7f
    :goto_7f
    if-lez v4, :cond_91

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 743
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_8e
    .catchall {:try_start_30 .. :try_end_8e} :catchall_95

    .line 742
    add-int/lit8 v4, v4, -0x1

    goto :goto_7f

    .line 747
    :cond_91
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 730
    return v2

    .line 747
    .end local v2    # "n":I
    .end local v3    # "take":I
    .end local v4    # "i":I
    :catchall_95
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 748
    throw v2

    .line 711
    .end local v0    # "items":[Ljava/lang/Object;
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1449
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1451
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1453
    :try_start_8
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-lez v1, :cond_29

    .line 1454
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 1455
    .local v1, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v2, "i":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 1456
    .local v3, "end":I
    if-ge v2, v3, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    array-length v4, v1

    .line 1458
    .local v4, "to":I
    :goto_17
    if-ge v2, v4, :cond_23

    .line 1459
    invoke-static {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2e

    .line 1458
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1460
    :cond_23
    if-ne v4, v3, :cond_26

    goto :goto_29

    .line 1457
    :cond_26
    const/4 v2, 0x0

    move v4, v3

    goto :goto_17

    .line 1464
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "to":I
    :cond_29
    :goto_29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1465
    nop

    .line 1466
    return-void

    .line 1464
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1465
    throw v1
.end method

.method final greylist-max-o itemAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 163
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
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

    .line 761
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 342
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 344
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 346
    :try_start_8
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1e

    if-ne v1, v2, :cond_15

    .line 347
    nop

    .line 353
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 347
    const/4 v1, 0x0

    return v1

    .line 349
    :cond_15
    :try_start_15
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1e

    .line 350
    nop

    .line 353
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 350
    const/4 v1, 0x1

    return v1

    .line 353
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 354
    throw v1
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 10
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

    .line 388
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 390
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 391
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 393
    :goto_c
    :try_start_c
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v4, v4
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_30

    if-ne v3, v4, :cond_27

    .line 394
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1f

    .line 395
    nop

    .line 401
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 395
    const/4 v3, 0x0

    return v3

    .line 396
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3

    move-wide v0, v3

    goto :goto_c

    .line 398
    :cond_27
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_30

    .line 399
    nop

    .line 401
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 399
    const/4 v3, 0x1

    return v3

    .line 401
    :catchall_30
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    throw v3
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 444
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 445
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 447
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 449
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 447
    return-object v1

    .line 449
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 450
    throw v1
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 406
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 407
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 409
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 411
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 409
    return-object v1

    .line 411
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 412
    throw v1
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
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

    .line 428
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 429
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 430
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 432
    :goto_9
    :try_start_9
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_29

    if-nez v3, :cond_21

    .line 433
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_19

    .line 434
    nop

    .line 439
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 434
    const/4 v3, 0x0

    return-object v3

    .line 435
    :cond_19
    :try_start_19
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3

    move-wide v0, v3

    goto :goto_9

    .line 437
    :cond_21
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_29

    .line 439
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 437
    return-object v3

    .line 439
    :catchall_29
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 440
    throw v3
.end method

.method public whitelist test-api put(Ljava/lang/Object;)V
    .registers 5
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

    .line 365
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 367
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 369
    :goto_8
    :try_start_8
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_15

    .line 370
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_8

    .line 371
    :cond_15
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 373
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 374
    nop

    .line 375
    return-void

    .line 373
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 374
    throw v1
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 4

    .line 484
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 485
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    sub-int/2addr v1, v2

    .line 489
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 487
    return v1

    .line 489
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 490
    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 511
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 512
    :cond_4
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 513
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 515
    :try_start_9
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-lez v2, :cond_34

    .line 516
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 517
    .local v2, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v3, "i":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 518
    .local v4, "end":I
    if-ge v3, v4, :cond_17

    move v5, v4

    goto :goto_18

    :cond_17
    array-length v5, v2

    .line 520
    .local v5, "to":I
    :goto_18
    if-ge v3, v5, :cond_2e

    .line 521
    aget-object v6, v2, v3

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 522
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_39

    .line 523
    nop

    .line 530
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 523
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 525
    :cond_2e
    if-ne v5, v4, :cond_31

    goto :goto_34

    .line 519
    :cond_31
    const/4 v3, 0x0

    move v5, v4

    goto :goto_18

    .line 528
    .end local v2    # "items":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "end":I
    .end local v5    # "to":I
    :cond_34
    :goto_34
    nop

    .line 530
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 528
    return v0

    .line 530
    :catchall_39
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 531
    throw v0
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

    .line 1480
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o removeAt(I)V
    .registers 8
    .param p1, "removeIndex"    # I

    .line 220
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 221
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_27

    .line 223
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aput-object v2, v0, v1

    .line 224
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    array-length v2, v0

    if-ne v1, v2, :cond_17

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 225
    :cond_17
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 226
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v1, :cond_47

    .line 227
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    goto :goto_47

    .line 232
    :cond_27
    move v1, p1

    .local v1, "i":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 233
    .local v3, "putIndex":I
    :goto_2a
    move v4, v1

    .line 234
    .local v4, "pred":I
    add-int/lit8 v1, v1, 0x1

    array-length v5, v0

    if-ne v1, v5, :cond_31

    const/4 v1, 0x0

    .line 235
    :cond_31
    if-ne v1, v3, :cond_4d

    .line 236
    aput-object v2, v0, v4

    .line 237
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 238
    nop

    .line 242
    .end local v1    # "i":I
    .end local v3    # "putIndex":I
    .end local v4    # "pred":I
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 243
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v1, :cond_47

    .line 244
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->removedAt(I)V

    .line 246
    :cond_47
    :goto_47
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 247
    return-void

    .line 240
    .restart local v1    # "i":I
    .restart local v3    # "putIndex":I
    .restart local v4    # "pred":I
    :cond_4d
    aget-object v5, v0, v1

    aput-object v5, v0, v4

    .line 241
    .end local v4    # "pred":I
    goto :goto_2a
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1472
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

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

    .line 1488
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 461
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 462
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 464
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 466
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 464
    return v1

    .line 466
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 467
    throw v1
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

    .line 1439
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    nop

    .line 1440
    const/16 v0, 0x1110

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    .line 1439
    return-object v0
.end method

.method public whitelist test-api take()Ljava/lang/Object;
    .registers 3
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

    .line 416
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 417
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 419
    :goto_5
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v1, :cond_f

    .line 420
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5

    .line 421
    :cond_f
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 423
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 421
    return-object v1

    .line 423
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 424
    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 8

    .line 578
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 579
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 581
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 582
    .local v1, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/2addr v2, v3

    .line 583
    .local v2, "end":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    .line 584
    .local v3, "a":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-eq v2, v4, :cond_20

    .line 585
    array-length v4, v1

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    const/4 v6, 0x0

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 586
    :cond_20
    nop

    .line 588
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 586
    return-object v3

    .line 588
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v2    # "end":I
    .end local v3    # "a":[Ljava/lang/Object;
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 589
    throw v1
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 629
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 630
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 632
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 633
    .local v1, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 634
    .local v2, "count":I
    array-length v3, v1

    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 635
    .local v3, "firstLeg":I
    array-length v4, p1

    const/4 v5, 0x0

    if-ge v4, v2, :cond_24

    .line 636
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    add-int/2addr v6, v2

    .line 637
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 636
    invoke-static {v1, v4, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    goto :goto_2f

    .line 639
    :cond_24
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-static {v1, v4, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    array-length v4, p1

    if-le v4, v2, :cond_2f

    .line 641
    const/4 v4, 0x0

    aput-object v4, p1, v2

    .line 643
    :cond_2f
    :goto_2f
    if-ge v3, v2, :cond_36

    .line 644
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-static {v1, v5, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3b

    .line 645
    :cond_36
    nop

    .line 647
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 645
    return-object p1

    .line 647
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v2    # "count":I
    .end local v3    # "firstLeg":I
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 648
    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 652
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
