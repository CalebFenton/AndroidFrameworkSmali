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
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist ALLOCATIONSPINLOCK:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final whitelist serialVersionUID:J = 0x4da73f88e6712814L


# instance fields
.field private volatile transient greylist-max-o allocationSpinLock:I

.field private transient greylist-max-o comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final greylist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist notEmpty:Ljava/util/concurrent/locks/Condition;

.field private greylist-max-o q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o queue:[Ljava/lang/Object;

.field private transient greylist-max-o size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1102
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1103
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const-string v2, "allocationSpinLock"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/PriorityBlockingQueue;->ALLOCATIONSPINLOCK:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_12

    .line 1108
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 1109
    return-void

    .line 1106
    :catch_12
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 190
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 191
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 203
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 204
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/Comparator;)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 164
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 169
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 170
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 220
    const/4 v0, 0x1

    if-lt p1, v0, :cond_20

    .line 222
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 223
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 224
    return-void

    .line 221
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 242
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 164
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 169
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 170
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 243
    const/4 v0, 0x1

    .line 244
    .local v0, "heapify":Z
    const/4 v1, 0x1

    .line 245
    .local v1, "screen":Z
    instance-of v2, p1, Ljava/util/SortedSet;

    if-eqz v2, :cond_23

    .line 246
    move-object v2, p1

    check-cast v2, Ljava/util/SortedSet;

    .line 247
    .local v2, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v2}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 248
    const/4 v0, 0x0

    .line 249
    .end local v2    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    goto :goto_3a

    .line 250
    :cond_23
    instance-of v2, p1, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v2, :cond_3a

    .line 251
    move-object v2, p1

    check-cast v2, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 253
    .local v2, "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->comparator()Ljava/util/Comparator;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 254
    const/4 v1, 0x0

    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/concurrent/PriorityBlockingQueue;

    if-ne v3, v4, :cond_3a

    .line 256
    const/4 v0, 0x0

    .line 258
    .end local v2    # "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    :cond_3a
    :goto_3a
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 259
    .local v2, "es":[Ljava/lang/Object;
    array-length v3, v2

    .line 263
    .local v3, "n":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, [Ljava/lang/Object;

    if-eq v4, v5, :cond_4d

    .line 264
    const-class v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 265
    :cond_4d
    if-eqz v1, :cond_67

    const/4 v4, 0x1

    if-eq v3, v4, :cond_56

    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    if-eqz v4, :cond_67

    .line 266
    :cond_56
    array-length v4, v2

    const/4 v5, 0x0

    :goto_58
    if-ge v5, v4, :cond_67

    aget-object v6, v2, v5

    .line 267
    .local v6, "e":Ljava/lang/Object;
    if-eqz v6, :cond_61

    .line 266
    .end local v6    # "e":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 268
    .restart local v6    # "e":Ljava/lang/Object;
    :cond_61
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 270
    .end local v6    # "e":Ljava/lang/Object;
    :cond_67
    invoke-static {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->ensureNonEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 271
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 272
    if-eqz v0, :cond_74

    .line 273
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->heapify()V

    .line 274
    :cond_74
    return-void
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1049
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1050
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1052
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 1053
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 1056
    .local v2, "end":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_68

    if-nez v4, :cond_17

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1058
    :cond_17
    const/4 v4, 0x0

    if-lt v3, v2, :cond_1f

    .line 1059
    nop

    .line 1078
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1059
    return v4

    .line 1063
    :cond_1f
    move v5, v3

    .line 1064
    .local v5, "beg":I
    sub-int v6, v2, v5

    :try_start_22
    invoke-static {v6}, Ljava/util/concurrent/PriorityBlockingQueue;->nBits(I)[J

    move-result-object v6

    .line 1065
    .local v6, "deathRow":[J
    const-wide/16 v7, 0x1

    aput-wide v7, v6, v4

    .line 1066
    add-int/lit8 v3, v5, 0x1

    :goto_2c
    if-ge v3, v2, :cond_3e

    .line 1067
    aget-object v4, v1, v3

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1068
    sub-int v4, v3, v5

    invoke-static {v6, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->setBit([JI)V

    .line 1066
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1069
    :cond_3e
    move v4, v5

    .line 1070
    .local v4, "w":I
    move v3, v5

    :goto_40
    if-ge v3, v2, :cond_54

    .line 1071
    sub-int v7, v3, v5

    invoke-static {v6, v7}, Ljava/util/concurrent/PriorityBlockingQueue;->isClear([JI)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1072
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "w":I
    .local v7, "w":I
    aget-object v8, v1, v3

    aput-object v8, v1, v4

    move v4, v7

    .line 1070
    .end local v7    # "w":I
    .restart local v4    # "w":I
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 1073
    :cond_54
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    move v3, v4

    :goto_57
    if-ge v3, v2, :cond_5f

    .line 1074
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 1073
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 1075
    :cond_5f
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->heapify()V
    :try_end_62
    .catchall {:try_start_22 .. :try_end_62} :catchall_68

    .line 1076
    nop

    .line 1078
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1076
    const/4 v7, 0x1

    return v7

    .line 1078
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "w":I
    .end local v5    # "beg":I
    .end local v6    # "deathRow":[J
    :catchall_68
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1079
    throw v1
.end method

.method private greylist dequeue()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 323
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v0, v0, v2

    move-object v3, v0

    .local v3, "result":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_23

    .line 325
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    move v4, v0

    .local v4, "n":I
    aget-object v0, v1, v0

    .line 326
    .local v0, "x":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    aput-object v5, v1, v4

    .line 327
    if-lez v4, :cond_23

    .line 329
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    move-object v6, v5

    .local v6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v5, :cond_20

    .line 330
    invoke-static {v2, v0, v1, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    goto :goto_23

    .line 332
    :cond_20
    invoke-static {v2, v0, v1, v4, v6}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 335
    .end local v0    # "x":Ljava/lang/Object;, "TE;"
    .end local v4    # "n":I
    .end local v6    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :cond_23
    :goto_23
    return-object v3
.end method

.method private static blacklist ensureNonEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .param p0, "es"    # [Ljava/lang/Object;

    .line 278
    array-length v0, p0

    if-lez v0, :cond_5

    move-object v0, p0

    goto :goto_8

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    :goto_8
    return-object v0
.end method

.method private greylist-max-o heapify()V
    .registers 6

    .line 430
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 431
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v1, "n":I
    ushr-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 433
    .local v2, "i":I
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    move-object v4, v3

    .local v4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v3, :cond_17

    .line 434
    :goto_d
    if-ltz v2, :cond_21

    .line 435
    aget-object v3, v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 434
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 437
    :cond_17
    :goto_17
    if-ltz v2, :cond_21

    .line 438
    aget-object v3, v0, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 437
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 439
    :cond_21
    return-void
.end method

.method private greylist-max-o indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 602
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    if-eqz p1, :cond_15

    .line 603
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 604
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_15

    .line 605
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 606
    return v1

    .line 604
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 608
    .end local v0    # "es":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist isClear([JI)Z
    .registers 6
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 1044
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

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1024
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1032
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist nBits(I)[J
    .registers 2
    .param p0, "n"    # I

    .line 1038
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 924
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 925
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    .line 926
    .local v1, "sz":I
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v2

    const-class v3, [Ljava/lang/Object;

    invoke-interface {v2, p1, v3, v1}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 927
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 928
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 929
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    .line 931
    nop

    .end local v1    # "sz":I
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 932
    nop

    .line 933
    return-void

    .line 931
    :catchall_2e
    move-exception v1

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 932
    throw v1
.end method

.method private greylist-max-o removeAt(I)V
    .registers 7
    .param p1, "i"    # I

    .line 615
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 616
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 617
    .local v1, "n":I
    const/4 v2, 0x0

    if-ne v1, p1, :cond_c

    .line 618
    aput-object v2, v0, p1

    goto :goto_29

    .line 620
    :cond_c
    aget-object v3, v0, v1

    .line 621
    .local v3, "moved":Ljava/lang/Object;, "TE;"
    aput-object v2, v0, v1

    .line 623
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    move-object v4, v2

    .local v4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v2, :cond_19

    .line 624
    invoke-static {p1, v3, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    goto :goto_1c

    .line 626
    :cond_19
    invoke-static {p1, v3, v0, v1, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 627
    :goto_1c
    aget-object v2, v0, p1

    if-ne v2, v3, :cond_29

    .line 628
    if-nez v4, :cond_26

    .line 629
    invoke-static {p1, v3, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_29

    .line 631
    :cond_26
    invoke-static {p1, v3, v0, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 634
    .end local v3    # "moved":Ljava/lang/Object;, "TE;"
    .end local v4    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :cond_29
    :goto_29
    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 635
    return-void
.end method

.method private static blacklist setBit([JI)V
    .registers 7
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 1041
    shr-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1042
    return-void
.end method

.method private static greylist-max-o siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V
    .registers 11
    .param p0, "k"    # I
    .param p2, "es"    # [Ljava/lang/Object;
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

    .line 389
    .local p1, "x":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 390
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    ushr-int/lit8 v1, p3, 0x1

    .line 391
    .local v1, "half":I
    :goto_5
    if-ge p0, v1, :cond_2a

    .line 392
    shl-int/lit8 v2, p0, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 393
    .local v2, "child":I
    aget-object v3, p2, v2

    .line 394
    .local v3, "c":Ljava/lang/Object;
    add-int/lit8 v4, v2, 0x1

    .line 395
    .local v4, "right":I
    if-ge v4, p3, :cond_1f

    move-object v5, v3

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, p2, v4

    .line 396
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1f

    .line 397
    move v2, v4

    aget-object v3, p2, v4

    .line 398
    :cond_1f
    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_26

    .line 399
    goto :goto_2a

    .line 400
    :cond_26
    aput-object v3, p2, p0

    .line 401
    move p0, v2

    .line 402
    .end local v2    # "child":I
    .end local v3    # "c":Ljava/lang/Object;
    .end local v4    # "right":I
    goto :goto_5

    .line 403
    :cond_2a
    :goto_2a
    aput-object v0, p2, p0

    .line 404
    return-void
.end method

.method private static greylist-max-o siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V
    .registers 10
    .param p0, "k"    # I
    .param p2, "es"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 409
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    ushr-int/lit8 v0, p3, 0x1

    .line 410
    .local v0, "half":I
    :goto_2
    if-ge p0, v0, :cond_24

    .line 411
    shl-int/lit8 v1, p0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 412
    .local v1, "child":I
    aget-object v2, p2, v1

    .line 413
    .local v2, "c":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    .line 414
    .local v3, "right":I
    if-ge v3, p3, :cond_19

    aget-object v4, p2, v3

    invoke-interface {p4, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_19

    .line 415
    move v1, v3

    aget-object v2, p2, v3

    .line 416
    :cond_19
    invoke-interface {p4, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_20

    .line 417
    goto :goto_24

    .line 418
    :cond_20
    aput-object v2, p2, p0

    .line 419
    move p0, v1

    .line 420
    .end local v1    # "child":I
    .end local v2    # "c":Ljava/lang/Object;
    .end local v3    # "right":I
    goto :goto_2

    .line 421
    :cond_24
    :goto_24
    aput-object p1, p2, p0

    .line 422
    return-void
.end method

.method private static greylist-max-o siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p0, "k"    # I
    .param p2, "es"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 352
    .local p1, "x":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 353
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :goto_3
    if-lez p0, :cond_16

    .line 354
    add-int/lit8 v1, p0, -0x1

    ushr-int/lit8 v1, v1, 0x1

    .line 355
    .local v1, "parent":I
    aget-object v2, p2, v1

    .line 356
    .local v2, "e":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_12

    .line 357
    goto :goto_16

    .line 358
    :cond_12
    aput-object v2, p2, p0

    .line 359
    move p0, v1

    .line 360
    .end local v1    # "parent":I
    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_3

    .line 361
    :cond_16
    :goto_16
    aput-object v0, p2, p0

    .line 362
    return-void
.end method

.method private static greylist-max-o siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 7
    .param p0, "k"    # I
    .param p2, "es"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 366
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    :goto_1
    if-lez p0, :cond_14

    .line 367
    add-int/lit8 v0, p0, -0x1

    ushr-int/lit8 v0, v0, 0x1

    .line 368
    .local v0, "parent":I
    aget-object v1, p2, v0

    .line 369
    .local v1, "e":Ljava/lang/Object;
    invoke-interface {p3, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_10

    .line 370
    goto :goto_14

    .line 371
    :cond_10
    aput-object v1, p2, p0

    .line 372
    move p0, v0

    .line 373
    .end local v0    # "parent":I
    .end local v1    # "e":Ljava/lang/Object;
    goto :goto_1

    .line 374
    :cond_14
    :goto_14
    aput-object p1, p2, p0

    .line 375
    return-void
.end method

.method private greylist-max-o tryGrow([Ljava/lang/Object;I)V
    .registers 8
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "oldCap"    # I

    .line 291
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "newArray":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    const/4 v2, 0x0

    if-nez v1, :cond_31

    sget-object v1, Ljava/util/concurrent/PriorityBlockingQueue;->ALLOCATIONSPINLOCK:Ljava/lang/invoke/VarHandle;

    .line 294
    const/4 v3, 0x1

    invoke-polymorphic {v1, p0, v2, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/PriorityBlockingQueue;II)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 296
    const/16 v1, 0x40

    if-ge p2, v1, :cond_1c

    .line 297
    add-int/lit8 v1, p2, 0x2

    goto :goto_1e

    .line 298
    :cond_1c
    shr-int/lit8 v1, p2, 0x1

    :goto_1e
    nop

    .line 299
    .local v1, "growth":I
    :try_start_1f
    invoke-static {p2, v3, v1}, Ljdk/internal/util/ArraysSupport;->newLength(III)I

    move-result v3

    .line 300
    .local v3, "newCap":I
    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    if-ne v4, p1, :cond_2a

    .line 301
    new-array v4, v3, [Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    move-object v0, v4

    .line 303
    .end local v1    # "growth":I
    .end local v3    # "newCap":I
    :cond_2a
    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    .line 304
    goto :goto_31

    .line 303
    :catchall_2d
    move-exception v1

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    .line 304
    throw v1

    .line 306
    :cond_31
    :goto_31
    if-nez v0, :cond_36

    .line 307
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 308
    :cond_36
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 309
    if-eqz v0, :cond_46

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    if-ne v1, p1, :cond_46

    .line 310
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 311
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    :cond_46
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 905
    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/util/PriorityQueue;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 906
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 907
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_27

    .line 909
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 910
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 911
    nop

    .line 912
    return-void

    .line 909
    :catchall_27
    move-exception v1

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 910
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 911
    throw v1
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 452
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 6

    .line 746
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 747
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 749
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 750
    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v3, "n":I
    :goto_a
    if-ge v2, v3, :cond_12

    .line 751
    const/4 v4, 0x0

    aput-object v4, v1, v2

    .line 750
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 752
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_12
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1a

    .line 754
    .end local v1    # "es":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 755
    nop

    .line 756
    return-void

    .line 754
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 755
    throw v1
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 579
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 692
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 693
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 695
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_13

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 697
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 695
    return v1

    .line 697
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 698
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

    .line 712
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 8
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 722
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    if-eq p1, p0, :cond_2e

    .line 725
    const/4 v0, 0x0

    if-gtz p2, :cond_9

    .line 726
    return v0

    .line 727
    :cond_9
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 728
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 730
    :try_start_e
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 731
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_24

    .line 732
    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_29

    .line 731
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 735
    .end local v3    # "i":I
    :cond_24
    nop

    .line 737
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 735
    return v2

    .line 737
    .end local v2    # "n":I
    :catchall_29
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 738
    throw v0

    .line 724
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1086
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1088
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1090
    :try_start_8
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 1091
    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v3, "n":I
    :goto_d
    if-ge v2, v3, :cond_17

    .line 1092
    aget-object v4, v1, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_1c

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1094
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1095
    nop

    .line 1096
    return-void

    .line 1094
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1095
    throw v1
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

    .line 844
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;

    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue$Itr;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 467
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_35

    .line 469
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 470
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    :goto_7
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    move v2, v1

    .local v2, "n":I
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    move-object v4, v3

    .local v4, "es":[Ljava/lang/Object;
    array-length v3, v3

    move v5, v3

    .local v5, "cap":I
    if-lt v1, v3, :cond_15

    .line 474
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/PriorityBlockingQueue;->tryGrow([Ljava/lang/Object;I)V

    goto :goto_7

    .line 477
    :cond_15
    :try_start_15
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    move-object v3, v1

    .local v3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1e

    .line 478
    invoke-static {v2, p1, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_21

    .line 480
    :cond_1e
    invoke-static {v2, p1, v4, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 481
    :goto_21
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 482
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_30

    .line 484
    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 485
    nop

    .line 486
    const/4 v1, 0x1

    return v1

    .line 484
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 485
    throw v1

    .line 468
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "n":I
    .end local v4    # "es":[Ljava/lang/Object;
    .end local v5    # "cap":I
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
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

    .line 519
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 560
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 561
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 563
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 565
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    return-object v1

    .line 565
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 566
    throw v1
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 523
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 524
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 526
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 528
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 526
    return-object v1

    .line 528
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 529
    throw v1
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
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

    .line 546
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 547
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 548
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 551
    :goto_9
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .local v4, "result":Ljava/lang/Object;, "TE;"
    if-nez v3, :cond_1e

    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-lez v3, :cond_1e

    .line 552
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_23

    move-wide v0, v5

    goto :goto_9

    .line 554
    :cond_1e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 555
    nop

    .line 556
    return-object v4

    .line 554
    .end local v4    # "result":Ljava/lang/Object;, "TE;"
    :catchall_23
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 555
    throw v3
.end method

.method public whitelist test-api put(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 500
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 2

    .line 598
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 649
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 650
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 652
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1b

    .line 653
    .local v1, "i":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 654
    nop

    .line 658
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 654
    const/4 v2, 0x0

    return v2

    .line 655
    :cond_12
    :try_start_12
    invoke-direct {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 656
    nop

    .line 658
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 656
    const/4 v2, 0x1

    return v2

    .line 658
    .end local v1    # "i":I
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 659
    throw v1
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

    .line 1023
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method blacklist removeEq(Ljava/lang/Object;)V
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 668
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 669
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 671
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 672
    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v3, "n":I
    :goto_a
    if-ge v2, v3, :cond_17

    .line 673
    aget-object v4, v1, v2

    if-ne p1, v4, :cond_14

    .line 674
    invoke-direct {p0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1c

    .line 675
    goto :goto_17

    .line 672
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 679
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_17
    :goto_17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 680
    nop

    .line 681
    return-void

    .line 679
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 680
    throw v1
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

    .line 1015
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

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

    .line 1031
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 583
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 584
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 586
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 588
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 586
    return v1

    .line 588
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 589
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

    .line 1008
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;)V

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

    .line 533
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 534
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 537
    :goto_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_12

    .line 538
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    goto :goto_5

    .line 540
    :cond_12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 541
    nop

    .line 542
    return-object v2

    .line 540
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 541
    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 4

    .line 772
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 773
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 775
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    .line 777
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 775
    return-object v1

    .line 777
    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 778
    throw v1
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 818
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 819
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 821
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 822
    .local v1, "n":I
    array-length v2, p1

    if-ge v2, v1, :cond_1a

    .line 824
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2b

    .line 830
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 824
    return-object v2

    .line 825
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    array-length v2, p1

    if-le v2, v1, :cond_26

    .line 827
    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2b

    .line 828
    :cond_26
    nop

    .line 830
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 828
    return-object p1

    .line 830
    .end local v1    # "n":I
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 831
    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 702
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
