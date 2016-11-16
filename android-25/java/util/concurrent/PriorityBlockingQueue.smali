.class public Ljava/util/concurrent/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/PriorityBlockingQueue$Itr;,
        Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
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
.field private static final ALLOCATIONSPINLOCK:J

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final U:Lsun/misc/Unsafe;

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
    .line 984
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/PriorityBlockingQueue;->U:Lsun/misc/Unsafe;

    #@6
    .line 988
    :try_start_0
    sget-object v1, Ljava/util/concurrent/PriorityBlockingQueue;->U:Lsun/misc/Unsafe;

    #@8
    .line 989
    const-class v2, Ljava/util/concurrent/PriorityBlockingQueue;

    #@a
    const-string/jumbo v3, "allocationSpinLock"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 988
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/PriorityBlockingQueue;->ALLOCATIONSPINLOCK:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 80
    return-void

    #@18
    .line 990
    :catch_0
    move-exception v0

    #@19
    .line 991
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 162
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/16 v0, 0xb

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    #@6
    .line 161
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 175
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    #@4
    .line 174
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
    .line 190
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 192
    const/4 v0, 0x1

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 194
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@11
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    .line 195
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1b
    .line 196
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@1d
    .line 197
    new-array v0, p1, [Ljava/lang/Object;

    #@1f
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@21
    .line 191
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
    .line 216
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 217
    new-instance v7, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 218
    iget-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@f
    move-result-object v7

    #@10
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@12
    .line 219
    const/4 v1, 0x1

    #@13
    .line 220
    .local v1, "heapify":Z
    const/4 v5, 0x1

    #@14
    .line 221
    .local v5, "screen":Z
    instance-of v7, p1, Ljava/util/SortedSet;

    #@16
    if-eqz v7, :cond_3

    #@18
    move-object v6, p1

    #@19
    .line 222
    check-cast v6, Ljava/util/SortedSet;

    #@1b
    .line 223
    .local v6, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v6}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@1e
    move-result-object v7

    #@1f
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@21
    .line 224
    const/4 v1, 0x0

    #@22
    .line 234
    .end local v6    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    .line 235
    .local v0, "a":[Ljava/lang/Object;
    array-length v3, v0

    #@27
    .line 237
    .local v3, "n":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2a
    move-result-object v7

    #@2b
    const-class v8, [Ljava/lang/Object;

    #@2d
    if-eq v7, v8, :cond_1

    #@2f
    .line 238
    const-class v7, [Ljava/lang/Object;

    #@31
    invoke-static {v0, v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    .line 239
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
    .line 240
    :cond_2
    const/4 v2, 0x0

    #@3f
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    #@41
    .line 241
    aget-object v7, v0, v2

    #@43
    if-nez v7, :cond_4

    #@45
    .line 242
    new-instance v7, Ljava/lang/NullPointerException;

    #@47
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@4a
    throw v7

    #@4b
    .line 226
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
    .line 228
    check-cast v4, Ljava/util/concurrent/PriorityBlockingQueue;

    #@52
    .line 229
    .local v4, "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->comparator()Ljava/util/Comparator;

    #@55
    move-result-object v7

    #@56
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@58
    .line 230
    const/4 v5, 0x0

    #@59
    .line 231
    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->getClass()Ljava/lang/Class;

    #@5c
    move-result-object v7

    #@5d
    const-class v8, Ljava/util/concurrent/PriorityBlockingQueue;

    #@5f
    if-ne v7, v8, :cond_0

    #@61
    .line 232
    const/4 v1, 0x0

    #@62
    goto :goto_0

    #@63
    .line 240
    .end local v4    # "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_1

    #@66
    .line 244
    .end local v2    # "i":I
    :cond_5
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@68
    .line 245
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@6a
    .line 246
    if-eqz v1, :cond_6

    #@6c
    .line 247
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->heapify()V

    #@6f
    .line 216
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
    .line 293
    iget v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@4
    add-int/lit8 v2, v5, -0x1

    #@6
    .line 294
    .local v2, "n":I
    if-gez v2, :cond_0

    #@8
    .line 295
    return-object v7

    #@9
    .line 297
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@b
    .line 298
    .local v0, "array":[Ljava/lang/Object;
    aget-object v3, v0, v6

    #@d
    .line 299
    .local v3, "result":Ljava/lang/Object;, "TE;"
    aget-object v4, v0, v2

    #@f
    .line 300
    .local v4, "x":Ljava/lang/Object;, "TE;"
    aput-object v7, v0, v2

    #@11
    .line 301
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@13
    .line 302
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1

    #@15
    .line 303
    invoke-static {v6, v4, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    #@18
    .line 306
    :goto_0
    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@1a
    .line 307
    return-object v3

    #@1b
    .line 305
    :cond_1
    invoke-static {v6, v4, v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    #@1e
    goto :goto_0
.end method

.method private heapify()V
    .locals 6

    #@0
    .prologue
    .line 408
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@2
    .line 409
    .local v0, "array":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@4
    .line 410
    .local v4, "n":I
    ushr-int/lit8 v5, v4, 0x1

    #@6
    add-int/lit8 v2, v5, -0x1

    #@8
    .line 411
    .local v2, "half":I
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@a
    .line 412
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_0

    #@c
    .line 413
    move v3, v2

    #@d
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@f
    .line 414
    aget-object v5, v0, v3

    #@11
    invoke-static {v3, v5, v0, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    #@14
    .line 413
    add-int/lit8 v3, v3, -0x1

    #@16
    goto :goto_0

    #@17
    .line 417
    .end local v3    # "i":I
    :cond_0
    move v3, v2

    #@18
    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_1

    #@1a
    .line 418
    aget-object v5, v0, v3

    #@1c
    invoke-static {v3, v5, v0, v4, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    #@1f
    .line 417
    add-int/lit8 v3, v3, -0x1

    #@21
    goto :goto_1

    #@22
    .line 407
    :cond_1
    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 583
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 584
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@4
    .line 585
    .local v0, "array":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@6
    .line 586
    .local v2, "n":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@9
    .line 587
    aget-object v3, v0, v1

    #@b
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 588
    return v1

    #@12
    .line 586
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 590
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
    .line 895
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 896
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
    .line 897
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@10
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@16
    .line 898
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@18
    invoke-virtual {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 900
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@1d
    .line 893
    return-void

    #@1e
    .line 899
    :catchall_0
    move-exception v0

    #@1f
    .line 900
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@21
    .line 899
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
    .line 597
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@3
    .line 598
    .local v0, "array":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@5
    add-int/lit8 v3, v4, -0x1

    #@7
    .line 599
    .local v3, "n":I
    if-ne v3, p1, :cond_1

    #@9
    .line 600
    aput-object v5, v0, p1

    #@b
    .line 616
    :cond_0
    :goto_0
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@d
    .line 596
    return-void

    #@e
    .line 602
    :cond_1
    aget-object v2, v0, v3

    #@10
    .line 603
    .local v2, "moved":Ljava/lang/Object;, "TE;"
    aput-object v5, v0, v3

    #@12
    .line 604
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@14
    .line 605
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_2

    #@16
    .line 606
    invoke-static {p1, v2, v0, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    #@19
    .line 609
    :goto_1
    aget-object v4, v0, p1

    #@1b
    if-ne v4, v2, :cond_0

    #@1d
    .line 610
    if-nez v1, :cond_3

    #@1f
    .line 611
    invoke-static {p1, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    #@22
    goto :goto_0

    #@23
    .line 608
    :cond_2
    invoke-static {p1, v2, v0, v3, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    #@26
    goto :goto_1

    #@27
    .line 613
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
    .line 364
    .local p1, "x":Ljava/lang/Object;, "TT;"
    if-lez p3, :cond_2

    #@2
    move-object v3, p1

    #@3
    .line 365
    check-cast v3, Ljava/lang/Comparable;

    #@5
    .line 366
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    ushr-int/lit8 v2, p3, 0x1

    #@7
    .line 367
    .local v2, "half":I
    :goto_0
    if-ge p0, v2, :cond_1

    #@9
    .line 368
    shl-int/lit8 v5, p0, 0x1

    #@b
    add-int/lit8 v1, v5, 0x1

    #@d
    .line 369
    .local v1, "child":I
    aget-object v0, p2, v1

    #@f
    .line 370
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v4, v1, 0x1

    #@11
    .line 371
    .local v4, "right":I
    if-ge v4, p3, :cond_0

    #@13
    move-object v5, v0

    #@14
    .line 372
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
    .line 373
    move v1, v4

    #@1f
    aget-object v0, p2, v4

    #@21
    .line 374
    :cond_0
    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@24
    move-result v5

    #@25
    if-gtz v5, :cond_3

    #@27
    .line 379
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v4    # "right":I
    :cond_1
    aput-object v3, p2, p0

    #@29
    .line 363
    .end local v2    # "half":I
    .end local v3    # "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :cond_2
    return-void

    #@2a
    .line 376
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v2    # "half":I
    .restart local v3    # "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .restart local v4    # "right":I
    :cond_3
    aput-object v0, p2, p0

    #@2c
    .line 377
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
    .line 386
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-lez p3, :cond_2

    #@2
    .line 387
    ushr-int/lit8 v2, p3, 0x1

    #@4
    .line 388
    .local v2, "half":I
    :goto_0
    if-ge p0, v2, :cond_1

    #@6
    .line 389
    shl-int/lit8 v4, p0, 0x1

    #@8
    add-int/lit8 v1, v4, 0x1

    #@a
    .line 390
    .local v1, "child":I
    aget-object v0, p2, v1

    #@c
    .line 391
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    #@e
    .line 392
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
    .line 393
    move v1, v3

    #@19
    aget-object v0, p2, v3

    #@1b
    .line 394
    :cond_0
    invoke-interface {p4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1e
    move-result v4

    #@1f
    if-gtz v4, :cond_3

    #@21
    .line 399
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v3    # "right":I
    :cond_1
    aput-object p1, p2, p0

    #@23
    .line 385
    .end local v2    # "half":I
    :cond_2
    return-void

    #@24
    .line 396
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v2    # "half":I
    .restart local v3    # "right":I
    :cond_3
    aput-object v0, p2, p0

    #@26
    .line 397
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
    .line 327
    check-cast v1, Ljava/lang/Comparable;

    #@3
    .line 328
    .local v1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :goto_0
    if-lez p0, :cond_0

    #@5
    .line 329
    add-int/lit8 v3, p0, -0x1

    #@7
    ushr-int/lit8 v2, v3, 0x1

    #@9
    .line 330
    .local v2, "parent":I
    aget-object v0, p2, v2

    #@b
    .line 331
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@e
    move-result v3

    #@f
    if-ltz v3, :cond_1

    #@11
    .line 336
    .end local v0    # "e":Ljava/lang/Object;
    .end local v2    # "parent":I
    :cond_0
    aput-object v1, p2, p0

    #@13
    .line 326
    return-void

    #@14
    .line 333
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v2    # "parent":I
    :cond_1
    aput-object v0, p2, p0

    #@16
    .line 334
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
    .line 341
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_0
    if-lez p0, :cond_0

    #@2
    .line 342
    add-int/lit8 v2, p0, -0x1

    #@4
    ushr-int/lit8 v1, v2, 0x1

    #@6
    .line 343
    .local v1, "parent":I
    aget-object v0, p2, v1

    #@8
    .line 344
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@b
    move-result v2

    #@c
    if-ltz v2, :cond_1

    #@e
    .line 349
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "parent":I
    :cond_0
    aput-object p1, p2, p0

    #@10
    .line 340
    return-void

    #@11
    .line 346
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v1    # "parent":I
    :cond_1
    aput-object v0, p2, p0

    #@13
    .line 347
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
    .line 260
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@9
    .line 261
    const/4 v7, 0x0

    #@a
    .line 262
    .local v7, "newArray":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    #@c
    if-nez v0, :cond_5

    #@e
    .line 263
    sget-object v0, Ljava/util/concurrent/PriorityBlockingQueue;->U:Lsun/misc/Unsafe;

    #@10
    sget-wide v2, Ljava/util/concurrent/PriorityBlockingQueue;->ALLOCATIONSPINLOCK:J

    #@12
    const/4 v5, 0x1

    #@13
    move-object v1, p0

    #@14
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@17
    move-result v0

    #@18
    .line 262
    if-eqz v0, :cond_5

    #@1a
    .line 265
    const/16 v0, 0x40

    #@1c
    if-ge p2, v0, :cond_1

    #@1e
    .line 266
    add-int/lit8 v0, p2, 0x2

    #@20
    .line 265
    :goto_0
    add-int v8, p2, v0

    #@22
    .line 268
    .local v8, "newCap":I
    sub-int v0, v8, v9

    #@24
    if-lez v0, :cond_3

    #@26
    .line 269
    add-int/lit8 v6, p2, 0x1

    #@28
    .line 270
    .local v6, "minCap":I
    if-ltz v6, :cond_0

    #@2a
    if-le v6, v9, :cond_2

    #@2c
    .line 271
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
    .line 276
    .end local v6    # "minCap":I
    :catchall_0
    move-exception v0

    #@33
    .line 277
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    #@35
    .line 276
    throw v0

    #@36
    .line 267
    .end local v8    # "newCap":I
    :cond_1
    shr-int/lit8 v0, p2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 272
    .restart local v6    # "minCap":I
    .restart local v8    # "newCap":I
    :cond_2
    const v8, 0x7ffffff7

    #@3c
    .line 274
    .end local v6    # "minCap":I
    :cond_3
    if-le v8, p2, :cond_4

    #@3e
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@40
    if-ne v0, p1, :cond_4

    #@42
    .line 275
    new-array v7, v8, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    .line 277
    .end local v7    # "newArray":[Ljava/lang/Object;
    :cond_4
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    #@46
    .line 280
    .end local v8    # "newCap":I
    :cond_5
    if-nez v7, :cond_6

    #@48
    .line 281
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@4b
    .line 282
    :cond_6
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@4d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@50
    .line 283
    if-eqz v7, :cond_7

    #@52
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@54
    if-ne v0, p1, :cond_7

    #@56
    .line 284
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@58
    .line 285
    invoke-static {p1, v4, v7, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5b
    .line 259
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
    .line 873
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 876
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
    .line 877
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@18
    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    #@1b
    .line 878
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 880
    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@20
    .line 881
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 872
    return-void

    #@26
    .line 879
    :catchall_0
    move-exception v0

    #@27
    .line 880
    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    #@29
    .line 881
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2e
    .line 879
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
    .line 433
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
    .line 727
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 728
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 730
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@7
    .line 731
    .local v0, "array":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@9
    .line 732
    .local v3, "n":I
    const/4 v4, 0x0

    #@a
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@c
    .line 733
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@f
    .line 734
    const/4 v4, 0x0

    #@10
    aput-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 733
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 736
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 726
    return-void

    #@19
    .line 735
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    #@1a
    .line 736
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 735
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
    .line 560
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
    .line 672
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 673
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 675
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
    .line 677
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@10
    .line 675
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0

    #@13
    .line 676
    :catchall_0
    move-exception v1

    #@14
    .line 677
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 676
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
    .line 692
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
    .line 702
    if-nez p1, :cond_0

    #@3
    .line 703
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 704
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 705
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v3

    #@11
    .line 706
    :cond_1
    if-gtz p2, :cond_2

    #@13
    .line 707
    return v3

    #@14
    .line 708
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 709
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@19
    .line 711
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@1b
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v2

    #@1f
    .line 712
    .local v2, "n":I
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@22
    .line 713
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@24
    const/4 v4, 0x0

    #@25
    aget-object v3, v3, v4

    #@27
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@2a
    .line 714
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 712
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 718
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@33
    .line 716
    return v2

    #@34
    .line 717
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@35
    .line 718
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@38
    .line 717
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
    .line 826
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
    .line 448
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 449
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 450
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 451
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@d
    .line 454
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
    .line 455
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->tryGrow([Ljava/lang/Object;I)V

    #@17
    goto :goto_0

    #@18
    .line 457
    :cond_1
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    #@1a
    .line 458
    .local v2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v2, :cond_2

    #@1c
    .line 459
    invoke-static {v4, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    #@1f
    .line 462
    :goto_1
    add-int/lit8 v5, v4, 0x1

    #@21
    iput v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@23
    .line 463
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@25
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 465
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 467
    const/4 v5, 0x1

    #@2c
    return v5

    #@2d
    .line 461
    :cond_2
    :try_start_1
    invoke-static {v4, p1, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_1

    #@31
    .line 464
    .end local v2    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :catchall_0
    move-exception v5

    #@32
    .line 465
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 464
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
    .line 500
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
    .line 541
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 542
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 544
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    .line 546
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 544
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
    .line 545
    :catchall_0
    move-exception v1

    #@15
    .line 546
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 545
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
    .line 504
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 505
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 507
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .line 509
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@c
    .line 507
    return-object v1

    #@d
    .line 508
    :catchall_0
    move-exception v1

    #@e
    .line 509
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@11
    .line 508
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
    .line 527
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v2

    #@4
    .line 528
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 529
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@9
    .line 532
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
    .line 533
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
    .line 535
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 537
    return-object v1

    #@20
    .line 534
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    #@21
    .line 535
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 534
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
    .line 481
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    #@3
    .line 480
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    #@0
    .prologue
    .line 579
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
    .line 631
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 632
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 634
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 635
    .local v0, "i":I
    const/4 v2, -0x1

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 636
    const/4 v2, 0x0

    #@d
    .line 640
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@10
    .line 636
    return v2

    #@11
    .line 637
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 638
    const/4 v2, 0x1

    #@15
    .line 640
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 638
    return v2

    #@19
    .line 639
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    #@1a
    .line 640
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 639
    throw v2
.end method

.method removeEQ(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 648
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 649
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 651
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    #@7
    .line 652
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
    .line 653
    aget-object v4, v0, v1

    #@e
    if-ne p1, v4, :cond_1

    #@10
    .line 654
    invoke-direct {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 659
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@16
    .line 647
    return-void

    #@17
    .line 652
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 658
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    #@1b
    .line 659
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 658
    throw v4
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 564
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 565
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 567
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 569
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 567
    return v1

    #@b
    .line 568
    :catchall_0
    move-exception v1

    #@c
    .line 569
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 568
    throw v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 980
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, -0x1

    #@5
    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    #@8
    return-object v0
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
    .line 514
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 515
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@5
    .line 518
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    #@b
    .line 519
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 520
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    #@12
    .line 521
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 520
    throw v2

    #@16
    .line 521
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 523
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 754
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 755
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 757
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
    .line 759
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@10
    .line 757
    return-object v1

    #@11
    .line 758
    :catchall_0
    move-exception v1

    #@12
    .line 759
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 758
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
    .line 800
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 801
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 803
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    #@7
    .line 804
    .local v1, "n":I
    array-length v2, p1

    #@8
    if-ge v2, v1, :cond_0

    #@a
    .line 806
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
    .line 812
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 806
    return-object v2

    #@1a
    .line 807
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
    .line 808
    array-length v2, p1

    #@22
    if-le v2, v1, :cond_1

    #@24
    .line 809
    const/4 v2, 0x0

    #@25
    aput-object v2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 812
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2a
    .line 810
    return-object p1

    #@2b
    .line 811
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    #@2c
    .line 812
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 811
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 682
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
