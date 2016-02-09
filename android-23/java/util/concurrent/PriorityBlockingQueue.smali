.class public Ljava/util/concurrent/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/PriorityBlockingQueue$Itr;
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
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final allocationSpinLockOffset:J

.field private static final serialVersionUID:J = 0x4da73f88e6712814L


# instance fields
.field private volatile transient allocationSpinLock:I

.field private transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient queue:[Ljava/lang/Object;

.field private transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 914
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/PriorityBlockingQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 915
    const-class v1, Ljava/util/concurrent/PriorityBlockingQueue;

    #@8
    .line 916
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/PriorityBlockingQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@a
    .line 917
    const-string/jumbo v3, "allocationSpinLock"

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 916
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLockOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 70
    return-void

    #@18
    .line 918
    :catch_0
    move-exception v0

    #@19
    .line 919
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@1b
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v2
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/16 v0, 0xb

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    #@6
    .line 151
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 165
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    #@4
    .line 164
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 180
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 182
    const/4 v0, 0x1

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 184
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@11
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    .line 185
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1b
    .line 186
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@1d
    .line 187
    new-array v0, p1, [Ljava/lang/Object;

    #@1f
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@21
    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 207
    new-instance v7, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 208
    iget-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@f
    move-result-object v7

    #@10
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@12
    .line 209
    const/4 v1, 0x1

    #@13
    .line 210
    .local v1, "heapify":Z
    const/4 v5, 0x1

    #@14
    .line 211
    .local v5, "screen":Z
    instance-of v7, p1, Ljava/util/SortedSet;

    #@16
    if-eqz v7, :cond_3

    #@18
    move-object v6, p1

    #@19
    .line 212
    check-cast v6, Ljava/util/SortedSet;

    #@1b
    .line 213
    .local v6, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v6}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@1e
    move-result-object v7

    #@1f
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@21
    .line 214
    const/4 v1, 0x0

    #@22
    .line 224
    .end local v6    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    .line 225
    .local v0, "a":[Ljava/lang/Object;
    array-length v3, v0

    #@27
    .line 227
    .local v3, "n":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2a
    move-result-object v7

    #@2b
    const-class v8, [Ljava/lang/Object;

    #@2d
    if-eq v7, v8, :cond_1

    #@2f
    .line 228
    const-class v7, [Ljava/lang/Object;

    #@31
    invoke-static {v0, v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    .line 229
    :cond_1
    if-eqz v5, :cond_5

    #@37
    const/4 v7, 0x1

    #@38
    if-eq v3, v7, :cond_2

    #@3a
    iget-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@3c
    if-eqz v7, :cond_5

    #@3e
    .line 230
    :cond_2
    const/4 v2, 0x0

    #@3f
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    #@41
    .line 231
    aget-object v7, v0, v2

    #@43
    if-nez v7, :cond_4

    #@45
    .line 232
    new-instance v7, Ljava/lang/NullPointerException;

    #@47
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@4a
    throw v7

    #@4b
    .line 216
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    instance-of v7, p1, Ljava/util/concurrent/PriorityBlockingQueue;

    #@4d
    if-eqz v7, :cond_0

    #@4f
    move-object v4, p1

    #@50
    .line 218
    check-cast v4, Ljava/util/concurrent/PriorityBlockingQueue;

    #@52
    .line 219
    .local v4, "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->comparator()Ljava/util/Comparator;

    #@55
    move-result-object v7

    #@56
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@58
    .line 220
    const/4 v5, 0x0

    #@59
    .line 221
    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->getClass()Ljava/lang/Class;

    #@5c
    move-result-object v7

    #@5d
    const-class v8, Ljava/util/concurrent/PriorityBlockingQueue;

    #@5f
    if-ne v7, v8, :cond_0

    #@61
    .line 222
    const/4 v1, 0x0

    #@62
    goto :goto_0

    #@63
    .line 230
    .end local v4    # "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_1

    #@66
    .line 234
    .end local v2    # "i":I
    :cond_5
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@68
    .line 235
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@6a
    .line 236
    if-eqz v1, :cond_6

    #@6c
    .line 237
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->heapify()V

    #@6f
    .line 206
    :cond_6
    return-void
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 284
    iget v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@4
    add-int/lit8 v2, v5, -0x1

    #@6
    .line 285
    .local v2, "n":I
    if-gez v2, :cond_0

    #@8
    .line 286
    return-object v7

    #@9
    .line 288
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@b
    .line 289
    .local v0, "array":[Ljava/lang/Object;
    aget-object v3, v0, v6

    #@d
    .line 290
    .local v3, "result":Ljava/lang/Object;, "TE;"
    aget-object v4, v0, v2

    #@f
    .line 291
    .local v4, "x":Ljava/lang/Object;, "TE;"
    aput-object v7, v0, v2

    #@11
    .line 292
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@13
    .line 293
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1

    #@15
    .line 294
    invoke-static {v6, v4, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    #@18
    .line 297
    :goto_0
    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@1a
    .line 298
    return-object v3

    #@1b
    .line 296
    :cond_1
    invoke-static {v6, v4, v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    #@1e
    goto :goto_0
.end method

.method private heapify()V
    .locals 6

    #@0
    .prologue
    .line 399
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@2
    .line 400
    .local v0, "array":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@4
    .line 401
    .local v4, "n":I
    ushr-int/lit8 v5, v4, 0x1

    #@6
    add-int/lit8 v2, v5, -0x1

    #@8
    .line 402
    .local v2, "half":I
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@a
    .line 403
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_0

    #@c
    .line 404
    move v3, v2

    #@d
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@f
    .line 405
    aget-object v5, v0, v3

    #@11
    invoke-static {v3, v5, v0, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    #@14
    .line 404
    add-int/lit8 v3, v3, -0x1

    #@16
    goto :goto_0

    #@17
    .line 408
    .end local v3    # "i":I
    :cond_0
    move v3, v2

    #@18
    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_1

    #@1a
    .line 409
    aget-object v5, v0, v3

    #@1c
    invoke-static {v3, v5, v0, v4, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    #@1f
    .line 408
    add-int/lit8 v3, v3, -0x1

    #@21
    goto :goto_1

    #@22
    .line 398
    :cond_1
    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 574
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 575
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@4
    .line 576
    .local v0, "array":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@6
    .line 577
    .local v2, "n":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@9
    .line 578
    aget-object v3, v0, v1

    #@b
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 579
    return v1

    #@12
    .line 577
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 581
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v3, -0x1

    #@16
    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 900
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 901
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@6
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    #@9
    move-result v0

    #@a
    new-array v0, v0, [Ljava/lang/Object;

    #@c
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@e
    .line 902
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@10
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@16
    .line 903
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@18
    invoke-virtual {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 905
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@1d
    .line 898
    return-void

    #@1e
    .line 904
    :catchall_0
    move-exception v0

    #@1f
    .line 905
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@21
    .line 904
    throw v0
.end method

.method private removeAt(I)V
    .locals 6
    .param p1, "i"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 588
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@3
    .line 589
    .local v0, "array":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@5
    add-int/lit8 v3, v4, -0x1

    #@7
    .line 590
    .local v3, "n":I
    if-ne v3, p1, :cond_1

    #@9
    .line 591
    aput-object v5, v0, p1

    #@b
    .line 607
    :cond_0
    :goto_0
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@d
    .line 587
    return-void

    #@e
    .line 593
    :cond_1
    aget-object v2, v0, v3

    #@10
    .line 594
    .local v2, "moved":Ljava/lang/Object;, "TE;"
    aput-object v5, v0, v3

    #@12
    .line 595
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@14
    .line 596
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_2

    #@16
    .line 597
    invoke-static {p1, v2, v0, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    #@19
    .line 600
    :goto_1
    aget-object v4, v0, p1

    #@1b
    if-ne v4, v2, :cond_0

    #@1d
    .line 601
    if-nez v1, :cond_3

    #@1f
    .line 602
    invoke-static {p1, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    #@22
    goto :goto_0

    #@23
    .line 599
    :cond_2
    invoke-static {p1, v2, v0, v3, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    #@26
    goto :goto_1

    #@27
    .line 604
    :cond_3
    invoke-static {p1, v2, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    #@2a
    goto :goto_0
.end method

.method private static siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V
    .locals 7
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 355
    .local p1, "x":Ljava/lang/Object;, "TT;"
    if-lez p3, :cond_2

    #@2
    move-object v3, p1

    #@3
    .line 356
    check-cast v3, Ljava/lang/Comparable;

    #@5
    .line 357
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    ushr-int/lit8 v2, p3, 0x1

    #@7
    .line 358
    .local v2, "half":I
    :goto_0
    if-ge p0, v2, :cond_1

    #@9
    .line 359
    shl-int/lit8 v5, p0, 0x1

    #@b
    add-int/lit8 v1, v5, 0x1

    #@d
    .line 360
    .local v1, "child":I
    aget-object v0, p2, v1

    #@f
    .line 361
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v4, v1, 0x1

    #@11
    .line 362
    .local v4, "right":I
    if-ge v4, p3, :cond_0

    #@13
    move-object v5, v0

    #@14
    .line 363
    check-cast v5, Ljava/lang/Comparable;

    #@16
    aget-object v6, p2, v4

    #@18
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@1b
    move-result v5

    #@1c
    if-lez v5, :cond_0

    #@1e
    .line 364
    move v1, v4

    #@1f
    aget-object v0, p2, v4

    #@21
    .line 365
    :cond_0
    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@24
    move-result v5

    #@25
    if-gtz v5, :cond_3

    #@27
    .line 370
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v4    # "right":I
    :cond_1
    aput-object v3, p2, p0

    #@29
    .line 354
    .end local v2    # "half":I
    .end local v3    # "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :cond_2
    return-void

    #@2a
    .line 367
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v2    # "half":I
    .restart local v3    # "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .restart local v4    # "right":I
    :cond_3
    aput-object v0, p2, p0

    #@2c
    .line 368
    move p0, v1

    #@2d
    goto :goto_0
.end method

.method private static siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V
    .locals 5
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 377
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-lez p3, :cond_2

    #@2
    .line 378
    ushr-int/lit8 v2, p3, 0x1

    #@4
    .line 379
    .local v2, "half":I
    :goto_0
    if-ge p0, v2, :cond_1

    #@6
    .line 380
    shl-int/lit8 v4, p0, 0x1

    #@8
    add-int/lit8 v1, v4, 0x1

    #@a
    .line 381
    .local v1, "child":I
    aget-object v0, p2, v1

    #@c
    .line 382
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    #@e
    .line 383
    .local v3, "right":I
    if-ge v3, p3, :cond_0

    #@10
    aget-object v4, p2, v3

    #@12
    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@15
    move-result v4

    #@16
    if-lez v4, :cond_0

    #@18
    .line 384
    move v1, v3

    #@19
    aget-object v0, p2, v3

    #@1b
    .line 385
    :cond_0
    invoke-interface {p4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1e
    move-result v4

    #@1f
    if-gtz v4, :cond_3

    #@21
    .line 390
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v3    # "right":I
    :cond_1
    aput-object p1, p2, p0

    #@23
    .line 376
    .end local v2    # "half":I
    :cond_2
    return-void

    #@24
    .line 387
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v2    # "half":I
    .restart local v3    # "right":I
    :cond_3
    aput-object v0, p2, p0

    #@26
    .line 388
    move p0, v1

    #@27
    goto :goto_0
.end method

.method private static siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "x":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    #@1
    .line 318
    check-cast v1, Ljava/lang/Comparable;

    #@3
    .line 319
    .local v1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :goto_0
    if-lez p0, :cond_0

    #@5
    .line 320
    add-int/lit8 v3, p0, -0x1

    #@7
    ushr-int/lit8 v2, v3, 0x1

    #@9
    .line 321
    .local v2, "parent":I
    aget-object v0, p2, v2

    #@b
    .line 322
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@e
    move-result v3

    #@f
    if-ltz v3, :cond_1

    #@11
    .line 327
    .end local v0    # "e":Ljava/lang/Object;
    .end local v2    # "parent":I
    :cond_0
    aput-object v1, p2, p0

    #@13
    .line 317
    return-void

    #@14
    .line 324
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v2    # "parent":I
    :cond_1
    aput-object v0, p2, p0

    #@16
    .line 325
    move p0, v2

    #@17
    goto :goto_0
.end method

.method private static siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 3
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 332
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_0
    if-lez p0, :cond_0

    #@2
    .line 333
    add-int/lit8 v2, p0, -0x1

    #@4
    ushr-int/lit8 v1, v2, 0x1

    #@6
    .line 334
    .local v1, "parent":I
    aget-object v0, p2, v1

    #@8
    .line 335
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@b
    move-result v2

    #@c
    if-ltz v2, :cond_1

    #@e
    .line 340
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "parent":I
    :cond_0
    aput-object p1, p2, p0

    #@10
    .line 331
    return-void

    #@11
    .line 337
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v1    # "parent":I
    :cond_1
    aput-object v0, p2, p0

    #@13
    .line 338
    move p0, v1

    #@14
    goto :goto_0
.end method

.method private tryGrow([Ljava/lang/Object;I)V
    .locals 10
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "oldCap"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v9, 0x7ffffff7

    #@3
    const/4 v4, 0x0

    #@4
    .line 250
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@9
    .line 251
    const/4 v7, 0x0

    #@a
    .line 252
    .local v7, "newArray":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    #@c
    if-nez v0, :cond_5

    #@e
    .line 253
    sget-object v0, Ljava/util/concurrent/PriorityBlockingQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@10
    sget-wide v2, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLockOffset:J

    #@12
    .line 254
    const/4 v5, 0x1

    #@13
    move-object v1, p0

    #@14
    .line 253
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@17
    move-result v0

    #@18
    .line 252
    if-eqz v0, :cond_5

    #@1a
    .line 256
    const/16 v0, 0x40

    #@1c
    if-ge p2, v0, :cond_1

    #@1e
    .line 257
    add-int/lit8 v0, p2, 0x2

    #@20
    .line 256
    :goto_0
    add-int v8, p2, v0

    #@22
    .line 259
    .local v8, "newCap":I
    sub-int v0, v8, v9

    #@24
    if-lez v0, :cond_3

    #@26
    .line 260
    add-int/lit8 v6, p2, 0x1

    #@28
    .line 261
    .local v6, "minCap":I
    if-ltz v6, :cond_0

    #@2a
    if-le v6, v9, :cond_2

    #@2c
    .line 262
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    #@2e
    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    #@31
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 267
    .end local v6    # "minCap":I
    :catchall_0
    move-exception v0

    #@33
    .line 268
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    #@35
    .line 267
    throw v0

    #@36
    .line 258
    .end local v8    # "newCap":I
    :cond_1
    shr-int/lit8 v0, p2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 263
    .restart local v6    # "minCap":I
    .restart local v8    # "newCap":I
    :cond_2
    const v8, 0x7ffffff7

    #@3c
    .line 265
    .end local v6    # "minCap":I
    :cond_3
    if-le v8, p2, :cond_4

    #@3e
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@40
    if-ne v0, p1, :cond_4

    #@42
    .line 266
    new-array v7, v8, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    .line 268
    .end local v7    # "newArray":[Ljava/lang/Object;
    :cond_4
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    #@46
    .line 271
    .end local v8    # "newCap":I
    :cond_5
    if-nez v7, :cond_6

    #@48
    .line 272
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@4b
    .line 273
    :cond_6
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@4d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@50
    .line 274
    if-eqz v7, :cond_7

    #@52
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@54
    if-ne v0, p1, :cond_7

    #@56
    .line 275
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@58
    .line 276
    invoke-static {p1, v4, v7, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5b
    .line 249
    :cond_7
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 882
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 885
    :try_start_0
    new-instance v0, Ljava/util/PriorityQueue;

    #@8
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@a
    const/4 v2, 0x1

    #@b
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v1

    #@f
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@11
    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@14
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@16
    .line 886
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@18
    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    #@1b
    .line 887
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 889
    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@20
    .line 890
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 881
    return-void

    #@26
    .line 888
    :catchall_0
    move-exception v0

    #@27
    .line 889
    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@29
    .line 890
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2e
    .line 888
    throw v0
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
    .line 424
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public clear()V
    .locals 5

    #@0
    .prologue
    .line 758
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 759
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 761
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@7
    .line 762
    .local v0, "array":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@9
    .line 763
    .local v3, "n":I
    const/4 v4, 0x0

    #@a
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@c
    .line 764
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@f
    .line 765
    const/4 v4, 0x0

    #@10
    aput-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 764
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 767
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 757
    return-void

    #@19
    .line 766
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    #@1a
    .line 767
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 766
    throw v4
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 663
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 664
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 666
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    const/4 v2, -0x1

    #@a
    if-eq v1, v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    .line 668
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@10
    .line 666
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0

    #@13
    .line 667
    :catchall_0
    move-exception v1

    #@14
    .line 668
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 667
    throw v1
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
    .line 723
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 5
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
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v3, 0x0

    #@1
    .line 733
    if-nez p1, :cond_0

    #@3
    .line 734
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 735
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 736
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v3

    #@11
    .line 737
    :cond_1
    if-gtz p2, :cond_2

    #@13
    .line 738
    return v3

    #@14
    .line 739
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 740
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@19
    .line 742
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@1b
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v2

    #@1f
    .line 743
    .local v2, "n":I
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@22
    .line 744
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@24
    const/4 v4, 0x0

    #@25
    aget-object v3, v3, v4

    #@27
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@2a
    .line 745
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 743
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 749
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@33
    .line 747
    return v2

    #@34
    .line 748
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@35
    .line 749
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@38
    .line 748
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
    .line 838
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;

    #@2
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue$Itr;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V

    #@9
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 439
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 440
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 441
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 442
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@d
    .line 445
    :goto_0
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@f
    .local v4, "n":I
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@11
    .local v0, "array":[Ljava/lang/Object;
    array-length v1, v0

    #@12
    .local v1, "cap":I
    if-lt v4, v1, :cond_1

    #@14
    .line 446
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->tryGrow([Ljava/lang/Object;I)V

    #@17
    goto :goto_0

    #@18
    .line 448
    :cond_1
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@1a
    .line 449
    .local v2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v2, :cond_2

    #@1c
    .line 450
    invoke-static {v4, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    #@1f
    .line 453
    :goto_1
    add-int/lit8 v5, v4, 0x1

    #@21
    iput v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@23
    .line 454
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@25
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 456
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 458
    const/4 v5, 0x1

    #@2c
    return v5

    #@2d
    .line 452
    :cond_2
    :try_start_1
    invoke-static {v4, p1, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_1

    #@31
    .line 455
    .end local v2    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :catchall_0
    move-exception v5

    #@32
    .line 456
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 455
    throw v5
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
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
    .line 491
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 532
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 533
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 535
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    .line 537
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 535
    return-object v1

    #@e
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@10
    const/4 v2, 0x0

    #@11
    aget-object v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    goto :goto_0

    #@14
    .line 536
    :catchall_0
    move-exception v1

    #@15
    .line 537
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 536
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
    .line 495
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 496
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 498
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .line 500
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@c
    .line 498
    return-object v1

    #@d
    .line 499
    :catchall_0
    move-exception v1

    #@e
    .line 500
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@11
    .line 499
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
    .line 518
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v2

    #@4
    .line 519
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 520
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@9
    .line 523
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    #@f
    const-wide/16 v4, 0x0

    #@11
    cmp-long v4, v2, v4

    #@13
    if-lez v4, :cond_0

    #@15
    .line 524
    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@17
    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-wide v2

    #@1b
    goto :goto_0

    #@1c
    .line 526
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 528
    return-object v1

    #@20
    .line 525
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    #@21
    .line 526
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 525
    throw v4
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 472
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    #@3
    .line 471
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    #@0
    .prologue
    .line 570
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 622
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 623
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 625
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 626
    .local v0, "i":I
    const/4 v2, -0x1

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 627
    const/4 v2, 0x0

    #@d
    .line 631
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@10
    .line 627
    return v2

    #@11
    .line 628
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 629
    const/4 v2, 0x1

    #@15
    .line 631
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 629
    return v2

    #@19
    .line 630
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    #@1a
    .line 631
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 630
    throw v2
.end method

.method removeEQ(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 639
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 640
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 642
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@7
    .line 643
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@a
    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    .line 644
    aget-object v4, v0, v1

    #@e
    if-ne p1, v4, :cond_1

    #@10
    .line 645
    invoke-direct {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 650
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@16
    .line 638
    return-void

    #@17
    .line 643
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 649
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    #@1b
    .line 650
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 649
    throw v4
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 555
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 556
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 558
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 560
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 558
    return v1

    #@b
    .line 559
    :catchall_0
    move-exception v1

    #@c
    .line 560
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 559
    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 3
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
    .line 505
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 506
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@5
    .line 509
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    #@b
    .line 510
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 511
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    #@12
    .line 512
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 511
    throw v2

    #@16
    .line 512
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 514
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 686
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 687
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 689
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@7
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@9
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    .line 691
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@10
    .line 689
    return-object v1

    #@11
    .line 690
    :catchall_0
    move-exception v1

    #@12
    .line 691
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 690
    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 808
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 809
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 811
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@7
    .line 812
    .local v1, "n":I
    array-length v2, p1

    #@8
    if-ge v2, v1, :cond_0

    #@a
    .line 814
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@c
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v4

    #@12
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v2

    #@16
    .line 820
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 814
    return-object v2

    #@1a
    .line 815
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@1c
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 816
    array-length v2, p1

    #@22
    if-le v2, v1, :cond_1

    #@24
    .line 817
    const/4 v2, 0x0

    #@25
    aput-object v2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 820
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2a
    .line 818
    return-object p1

    #@2b
    .line 819
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    #@2c
    .line 820
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 819
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 696
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 697
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 699
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@7
    .line 700
    .local v3, "n":I
    if-nez v3, :cond_0

    #@9
    .line 701
    const-string/jumbo v5, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 712
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 701
    return-object v5

    #@10
    .line 702
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 703
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x5b

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 704
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@1d
    .line 705
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@1f
    aget-object v0, v5, v1

    #@21
    .line 706
    .local v0, "e":Ljava/lang/Object;
    if-ne v0, p0, :cond_1

    #@23
    const-string/jumbo v0, "(this Collection)"

    #@26
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    .line 707
    add-int/lit8 v5, v3, -0x1

    #@2b
    if-eq v1, v5, :cond_2

    #@2d
    .line 708
    const/16 v5, 0x2c

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    const/16 v6, 0x20

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 704
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 710
    :cond_3
    const/16 v5, 0x5d

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    move-result-object v5

    #@45
    .line 712
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@48
    .line 710
    return-object v5

    #@49
    .line 711
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    #@4a
    .line 712
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@4d
    .line 711
    throw v5
.end method
