.class final Ljava/util/concurrent/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final blacklist ABASE:J

.field private static final blacklist ACCESS:J

.field private static final greylist-max-o ASHIFT:I

.field private static final blacklist PHASE:J

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;


# instance fields
.field volatile blacklist access:I

.field greylist-max-o array:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field greylist-max-o base:I

.field greylist-max-o config:I

.field greylist-max-o nsteals:I

.field final greylist-max-o owner:Ljava/util/concurrent/ForkJoinWorkerThread;

.field volatile blacklist phase:I

.field volatile blacklist source:I

.field greylist-max-o stackPred:I

.field greylist-max-o top:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 1472
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    .line 1473
    const-class v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1474
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/concurrent/ForkJoinPool$WorkQueue;>;"
    sget-object v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    const-string v2, "access"

    invoke-virtual {v1, v0, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ACCESS:J

    .line 1475
    sget-object v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    const-string v2, "phase"

    invoke-virtual {v1, v0, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    .line 1476
    const-class v1, [Ljava/util/concurrent/ForkJoinTask;

    .line 1477
    .local v1, "aklass":Ljava/lang/Class;, "Ljava/lang/Class<[Ljava/util/concurrent/ForkJoinTask;>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, v1}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:J

    .line 1478
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, v1}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    .line 1479
    .local v2, "scale":I
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    sput v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    .line 1480
    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    if-nez v3, :cond_3b

    .line 1482
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/concurrent/ForkJoinPool$WorkQueue;>;"
    .end local v1    # "aklass":Ljava/lang/Class;, "Ljava/lang/Class<[Ljava/util/concurrent/ForkJoinTask;>;"
    .end local v2    # "scale":I
    return-void

    .line 1481
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/concurrent/ForkJoinPool$WorkQueue;>;"
    .restart local v1    # "aklass":Ljava/lang/Class;, "Ljava/lang/Class<[Ljava/util/concurrent/ForkJoinTask;>;"
    .restart local v2    # "scale":I
    :cond_3b
    new-instance v3, Ljava/lang/Error;

    const-string v4, "array index scale not a power of two"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/ForkJoinWorkerThread;I)V
    .registers 4
    .param p1, "owner"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p2, "config"    # I

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1109
    iput p2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1110
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1111
    return-void
.end method

.method static blacklist casSlotToNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z
    .registers 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;I",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1090
    .local p0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p2, "c":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v1, v3

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:J

    add-long v2, v1, v3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    .end local p0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local p2    # "c":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v4, "c":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static blacklist getAndClearSlot([Ljava/util/concurrent/ForkJoinTask;I)Ljava/util/concurrent/ForkJoinTask;
    .registers 7
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;I)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1085
    .local p0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v1, v3

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:J

    add-long/2addr v1, v3

    .line 1086
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->getAndSetReference(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 1085
    return-object v0
.end method


# virtual methods
.method final blacklist forcePhaseActive()V
    .registers 5

    .line 1094
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    const v3, 0x7fffffff

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->getAndBitwiseAndInt(Ljava/lang/Object;JI)I

    .line 1095
    return-void
.end method

.method final blacklist getAndSetAccess(I)I
    .registers 5
    .param p1, "v"    # I

    .line 1097
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ACCESS:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method final greylist-max-o getPoolIndex()I
    .registers 3

    .line 1117
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final blacklist helpAsyncBlocker(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .registers 10
    .param p1, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;

    .line 1421
    if-eqz p1, :cond_50

    .line 1423
    :goto_2
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1424
    .local v0, "b":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v2, v1

    .local v2, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_50

    array-length v1, v2

    move v3, v1

    .local v3, "cap":I
    if-lez v1, :cond_50

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v1, :cond_12

    .line 1425
    goto :goto_50

    .line 1426
    :cond_12
    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .local v1, "k":I
    add-int/lit8 v4, v0, 0x1

    .local v4, "nb":I
    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v4

    .line 1427
    .local v5, "nk":I
    aget-object v6, v2, v1

    .line 1428
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v7}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 1429
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v7, v0, :cond_26

    .line 1430
    goto :goto_4f

    .line 1431
    :cond_26
    invoke-interface {p1}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1432
    goto :goto_50

    .line 1433
    :cond_2d
    aget-object v7, v2, v1

    if-eq v7, v6, :cond_32

    .line 1434
    goto :goto_4f

    .line 1435
    :cond_32
    if-eqz v6, :cond_4a

    .line 1436
    instance-of v7, v6, Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;

    if-nez v7, :cond_39

    .line 1438
    goto :goto_50

    .line 1439
    :cond_39
    invoke-static {v2, v1, v6}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->casSlotToNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 1440
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1441
    sget-object v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v7}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 1442
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_4f

    .line 1445
    :cond_4a
    aget-object v7, v2, v5

    if-nez v7, :cond_4f

    .line 1446
    goto :goto_50

    .line 1447
    .end local v0    # "b":I
    .end local v1    # "k":I
    .end local v2    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "cap":I
    .end local v4    # "nb":I
    .end local v5    # "nk":I
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4f
    :goto_4f
    goto :goto_2

    .line 1449
    :cond_50
    :goto_50
    return-void
.end method

.method final blacklist helpComplete(Ljava/util/concurrent/ForkJoinTask;ZI)I
    .registers 14
    .param p2, "owned"    # Z
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;ZI)I"
        }
    .end annotation

    .line 1380
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v0, 0x0

    .line 1381
    .local v0, "status":I
    if-eqz p1, :cond_60

    .line 1385
    :goto_3
    iget v1, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v0, v1

    if-gez v1, :cond_9

    .line 1386
    return v0

    .line 1387
    :cond_9
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v2, v1

    .local v2, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_5e

    array-length v1, v2

    move v3, v1

    .local v3, "cap":I
    if-lez v1, :cond_5e

    add-int/lit8 v1, v3, -0x1

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v5, v4

    .local v5, "p":I
    const/4 v6, 0x1

    sub-int/2addr v4, v6

    move v7, v4

    .local v7, "s":I
    and-int/2addr v1, v4

    move v4, v1

    .local v4, "k":I
    aget-object v1, v2, v1

    move-object v8, v1

    .local v8, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_5e

    instance-of v1, v8, Ljava/util/concurrent/CountedCompleter;

    if-nez v1, :cond_26

    .line 1390
    goto :goto_5e

    .line 1391
    :cond_26
    move-object v1, v8

    check-cast v1, Ljava/util/concurrent/CountedCompleter;

    .line 1392
    .local v1, "f":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_29
    if-ne v1, p1, :cond_58

    .line 1393
    nop

    .line 1397
    .end local v1    # "f":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-nez p2, :cond_35

    invoke-virtual {p0, v6}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndSetAccess(I)I

    move-result v1

    if-eqz v1, :cond_35

    .line 1398
    goto :goto_5e

    .line 1399
    :cond_35
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v1, v5, :cond_54

    aget-object v1, v2, v4

    if-ne v1, v8, :cond_54

    invoke-static {v2, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndClearSlot([Ljava/util/concurrent/ForkJoinTask;I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    if-nez v1, :cond_44

    goto :goto_54

    .line 1403
    :cond_44
    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1404
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->releaseAccess()V

    .line 1405
    invoke-virtual {v8}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1406
    if-eqz p3, :cond_53

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_53

    .line 1407
    goto :goto_5e

    .line 1408
    .end local v2    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "cap":I
    .end local v4    # "k":I
    .end local v5    # "p":I
    .end local v7    # "s":I
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_53
    goto :goto_3

    .line 1400
    .restart local v2    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v3    # "cap":I
    .restart local v4    # "k":I
    .restart local v5    # "p":I
    .restart local v7    # "s":I
    .restart local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_54
    :goto_54
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1401
    goto :goto_5e

    .line 1394
    .restart local v1    # "f":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_58
    iget-object v9, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v1, v9

    if-nez v9, :cond_29

    .line 1395
    nop

    .line 1409
    .end local v1    # "f":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v2    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "cap":I
    .end local v4    # "k":I
    .end local v5    # "p":I
    .end local v7    # "s":I
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_5e
    :goto_5e
    iget v0, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 1411
    :cond_60
    return v0
.end method

.method final greylist-max-o isApparentlyUnblocked()Z
    .registers 5

    .line 1458
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v1, v0

    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v0, :cond_1e

    .line 1459
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    move-object v2, v0

    .local v2, "s":Ljava/lang/Thread$State;
    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_1e

    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v2, v0, :cond_1e

    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v2, v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    .end local v1    # "wt":Ljava/lang/Thread;
    .end local v2    # "s":Ljava/lang/Thread$State;
    :cond_1e
    const/4 v0, 0x0

    .line 1458
    :goto_1f
    return v0
.end method

.method final greylist-max-o nextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1207
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method final blacklist nextLocalTask(I)Ljava/util/concurrent/ForkJoinTask;
    .registers 11
    .param p1, "fifo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1176
    const/4 v0, 0x0

    .line 1177
    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 1178
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v2, "p":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "s":I
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1179
    .local v4, "b":I
    sub-int v5, v2, v4

    if-lez v5, :cond_50

    if-eqz v1, :cond_50

    array-length v5, v1

    move v6, v5

    .local v6, "cap":I
    if-lez v5, :cond_50

    .line 1181
    :goto_13
    if-eqz p1, :cond_3f

    add-int/lit8 v5, v4, 0x1

    move v7, v5

    .local v7, "nb":I
    if-ne v5, v2, :cond_1b

    goto :goto_3f

    .line 1186
    :cond_1b
    add-int/lit8 v5, v6, -0x1

    and-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndClearSlot([Ljava/util/concurrent/ForkJoinTask;I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v5

    move-object v0, v5

    if-eqz v5, :cond_28

    .line 1187
    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1188
    goto :goto_4b

    .line 1191
    :cond_28
    :goto_28
    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v8, v5

    .end local v4    # "b":I
    .local v8, "b":I
    if-ne v4, v5, :cond_37

    .line 1192
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 1193
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    move v4, v8

    goto :goto_28

    .line 1196
    :cond_37
    sub-int v4, v2, v8

    if-gtz v4, :cond_3d

    move v4, v8

    goto :goto_4b

    :cond_3d
    move v4, v8

    goto :goto_13

    .line 1182
    .end local v7    # "nb":I
    .end local v8    # "b":I
    .restart local v4    # "b":I
    :cond_3f
    :goto_3f
    add-int/lit8 v5, v6, -0x1

    and-int/2addr v5, v3

    invoke-static {v1, v5}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndClearSlot([Ljava/util/concurrent/ForkJoinTask;I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v5

    move-object v0, v5

    if-eqz v5, :cond_4b

    .line 1183
    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1197
    :cond_4b
    :goto_4b
    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v5}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 1199
    .end local v6    # "cap":I
    :cond_50
    return-object v0
.end method

.method final greylist-max-o peek()Ljava/util/concurrent/ForkJoinTask;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1236
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 1237
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .local v1, "cfg":I
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v2, "p":I
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1238
    .local v3, "b":I
    if-eq v2, v3, :cond_2d

    if-eqz v0, :cond_2d

    array-length v4, v0

    move v5, v4

    .local v5, "cap":I
    if-lez v4, :cond_2d

    .line 1239
    const/high16 v4, 0x10000

    and-int/2addr v4, v1

    if-nez v4, :cond_1d

    .line 1240
    add-int/lit8 v4, v5, -0x1

    add-int/lit8 v6, v2, -0x1

    and-int/2addr v4, v6

    aget-object v4, v0, v4

    return-object v4

    .line 1243
    :cond_1d
    :goto_1d
    sub-int v4, v2, v3

    if-lez v4, :cond_2d

    .line 1244
    add-int/lit8 v4, v5, -0x1

    and-int/2addr v4, v3

    aget-object v4, v0, v4

    move-object v6, v4

    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_2a

    .line 1245
    return-object v6

    .line 1243
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1249
    .end local v5    # "cap":I
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_2d
    const/4 v4, 0x0

    return-object v4
.end method

.method final blacklist poll(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinTask;
    .registers 11
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1259
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1261
    .local v0, "b":I
    :goto_2
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v2, v1

    .local v2, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_4f

    array-length v1, v2

    move v3, v1

    .local v3, "cap":I
    if-gtz v1, :cond_c

    .line 1262
    goto :goto_4f

    .line 1263
    :cond_c
    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .local v1, "k":I
    add-int/lit8 v4, v0, 0x1

    .local v4, "nb":I
    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v4

    .line 1264
    .local v5, "nk":I
    aget-object v6, v2, v1

    .line 1265
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v7}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 1266
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v8, v7

    .end local v0    # "b":I
    .local v8, "b":I
    if-eq v0, v7, :cond_21

    .line 1267
    goto :goto_4d

    .line 1268
    :cond_21
    if-eqz v6, :cond_3a

    invoke-static {v2, v1, v6}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->casSlotToNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1269
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1270
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 1271
    if-eqz p1, :cond_39

    aget-object v0, v2, v5

    if-eqz v0, :cond_39

    .line 1272
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 1273
    :cond_39
    return-object v6

    .line 1275
    :cond_3a
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v0, v2, :cond_4d

    aget-object v0, v2, v1

    if-eqz v0, :cond_43

    .line 1276
    goto :goto_4d

    .line 1277
    :cond_43
    aget-object v0, v2, v5

    if-nez v0, :cond_4d

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v8

    if-gtz v0, :cond_4d

    .line 1278
    goto :goto_4f

    .line 1279
    .end local v1    # "k":I
    .end local v2    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "cap":I
    .end local v4    # "nb":I
    .end local v5    # "nk":I
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4d
    :goto_4d
    move v0, v8

    goto :goto_2

    .line 1280
    .end local v8    # "b":I
    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    return-object v0
.end method

.method final blacklist push(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool;Z)V
    .registers 16
    .param p2, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p3, "signalIfEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/util/concurrent/ForkJoinPool;",
            "Z)V"
        }
    .end annotation

    .line 1138
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v0, 0x0

    .line 1139
    .local v0, "resize":Z
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v1, "s":I
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1140
    .local v2, "b":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v4, v3

    .local v4, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_64

    array-length v3, v4

    move v5, v3

    .local v5, "cap":I
    if-lez v3, :cond_64

    .line 1141
    add-int/lit8 v3, v5, -0x1

    move v6, v3

    .local v6, "m":I
    sub-int v7, v1, v2

    const/4 v8, 0x0

    if-ne v3, v7, :cond_4d

    .line 1142
    const/4 v0, 0x1

    .line 1143
    const/high16 v3, 0x1000000

    if-ge v5, v3, :cond_22

    shl-int/lit8 v3, v5, 0x2

    goto :goto_24

    :cond_22
    shl-int/lit8 v3, v5, 0x1

    .line 1146
    .local v3, "newCap":I
    :goto_24
    :try_start_24
    new-array v7, v3, [Ljava/util/concurrent/ForkJoinTask;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_40

    .line 1152
    .local v7, "newArray":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    nop

    .line 1153
    if-lez v3, :cond_3d

    .line 1154
    add-int/lit8 v9, v3, -0x1

    .local v9, "newMask":I
    move v10, v1

    .line 1156
    .local v10, "k":I
    :goto_2c
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "k":I
    .local v11, "k":I
    and-int/2addr v10, v9

    aput-object p1, v7, v10

    .line 1157
    and-int v10, v11, v6

    invoke-static {v4, v10}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndClearSlot([Ljava/util/concurrent/ForkJoinTask;I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v10

    move-object p1, v10

    if-nez v10, :cond_3b

    goto :goto_3d

    :cond_3b
    move v10, v11

    goto :goto_2c

    .line 1159
    .end local v9    # "newMask":I
    .end local v11    # "k":I
    :cond_3d
    :goto_3d
    iput-object v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 1160
    .end local v3    # "newCap":I
    .end local v7    # "newArray":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_51

    .line 1147
    .restart local v3    # "newCap":I
    :catchall_40
    move-exception v7

    .line 1148
    .local v7, "ex":Ljava/lang/Throwable;
    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1149
    iput v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1150
    new-instance v8, Ljava/util/concurrent/RejectedExecutionException;

    const-string v9, "Queue capacity exceeded"

    invoke-direct {v8, v9}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1162
    .end local v3    # "newCap":I
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_4d
    and-int v3, v6, v1

    aput-object p1, v4, v3

    .line 1163
    :goto_51
    invoke-virtual {p0, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndSetAccess(I)I

    .line 1164
    if-nez v0, :cond_5f

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v3, v6

    aget-object v3, v4, v3

    if-nez v3, :cond_64

    if-eqz p3, :cond_64

    :cond_5f
    if-eqz p2, :cond_64

    .line 1166
    invoke-virtual {p2}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 1168
    .end local v5    # "cap":I
    .end local v6    # "m":I
    :cond_64
    return-void
.end method

.method final greylist-max-o queueSize()I
    .registers 4

    .line 1124
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1125
    .local v0, "unused":I
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method final blacklist releaseAccess()V
    .registers 5

    .line 1100
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ACCESS:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putIntRelease(Ljava/lang/Object;JI)V

    .line 1101
    return-void
.end method

.method final blacklist setClearThreadLocals()V
    .registers 3

    .line 1468
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1469
    return-void
.end method

.method final blacklist topLevelExec(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .registers 7
    .param p2, "src"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")V"
        }
    .end annotation

    .line 1320
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .local v0, "cfg":I
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    .local v1, "fifo":I
    const/4 v2, 0x1

    .line 1321
    .local v2, "nstolen":I
    :cond_6
    :goto_6
    if-eqz p1, :cond_1e

    .line 1322
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1323
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v3

    move-object p1, v3

    if-nez v3, :cond_6

    if-eqz p2, :cond_6

    .line 1324
    invoke-virtual {p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryPoll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v3

    move-object p1, v3

    if-eqz v3, :cond_6

    .line 1325
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1327
    :cond_1e
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1328
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1329
    const/high16 v3, 0x40000

    and-int/2addr v3, v0

    if-eqz v3, :cond_32

    .line 1330
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {v3}, Ljava/util/concurrent/ThreadLocalRandom;->eraseThreadLocals(Ljava/lang/Thread;)V

    .line 1331
    :cond_32
    return-void
.end method

.method final blacklist tryPoll()Ljava/util/concurrent/ForkJoinTask;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1289
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1290
    .local v0, "b":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v2, v1

    .local v2, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_36

    array-length v1, v2

    move v3, v1

    .local v3, "cap":I
    if-lez v1, :cond_36

    .line 1292
    :goto_b
    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .local v1, "k":I
    add-int/lit8 v4, v0, 0x1

    .line 1293
    .local v4, "nb":I
    aget-object v5, v2, v1

    .line 1294
    .local v5, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v6}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 1295
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v7, v6

    .end local v0    # "b":I
    .local v7, "b":I
    if-eq v0, v6, :cond_1d

    .line 1296
    goto :goto_34

    .line 1297
    :cond_1d
    if-eqz v5, :cond_2d

    .line 1298
    invoke-static {v2, v1, v5}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->casSlotToNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1299
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1300
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 1301
    return-object v5

    .line 1305
    :cond_2d
    aget-object v0, v2, v1

    if-nez v0, :cond_34

    .line 1306
    nop

    .line 1309
    .end local v1    # "k":I
    .end local v3    # "cap":I
    .end local v4    # "nb":I
    .end local v5    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_32
    move v0, v7

    goto :goto_36

    .line 1307
    .restart local v3    # "cap":I
    :cond_34
    :goto_34
    move v0, v7

    goto :goto_b

    .line 1309
    .end local v3    # "cap":I
    .end local v7    # "b":I
    .restart local v0    # "b":I
    :cond_36
    :goto_36
    const/4 v1, 0x0

    return-object v1
.end method

.method final blacklist tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;Z)I
    .registers 15
    .param p2, "owned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;Z)I"
        }
    .end annotation

    .line 1339
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 1340
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v1, "p":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "s":I
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v3, v1, v3

    .line 1341
    .local v3, "d":I
    const/4 v4, 0x0

    if-eqz p1, :cond_6b

    if-lez v3, :cond_6b

    if-eqz v0, :cond_6b

    array-length v5, v0

    move v6, v5

    .local v6, "cap":I
    if-lez v5, :cond_6b

    .line 1342
    add-int/lit8 v5, v6, -0x1

    .local v5, "m":I
    move v7, v2

    .line 1344
    .local v7, "i":I
    :goto_18
    and-int v8, v7, v5

    move v9, v8

    .local v9, "k":I
    aget-object v8, v0, v8

    move-object v10, v8

    .local v10, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-ne v8, p1, :cond_61

    .line 1345
    if-nez p2, :cond_2a

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndSetAccess(I)I

    move-result v8

    if-eqz v8, :cond_2a

    .line 1346
    goto :goto_6b

    .line 1347
    :cond_2a
    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v8, v1, :cond_5e

    aget-object v8, v0, v9

    if-ne v8, p1, :cond_5e

    .line 1348
    invoke-static {v0, v9}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndClearSlot([Ljava/util/concurrent/ForkJoinTask;I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v8

    if-nez v8, :cond_39

    goto :goto_5e

    .line 1353
    :cond_39
    if-eq v7, v2, :cond_44

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v7, v4, :cond_44

    .line 1354
    add-int/lit8 v4, v7, 0x1

    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    goto :goto_56

    .line 1356
    :cond_44
    move v4, v7

    .local v4, "j":I
    :goto_45
    if-eq v4, v2, :cond_54

    .line 1357
    and-int v8, v4, v5

    add-int/lit8 v4, v4, 0x1

    and-int v11, v4, v5

    invoke-static {v0, v11}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndClearSlot([Ljava/util/concurrent/ForkJoinTask;I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v11

    aput-object v11, v0, v8

    goto :goto_45

    .line 1358
    .end local v4    # "j":I
    :cond_54
    iput v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1360
    :goto_56
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->releaseAccess()V

    .line 1361
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v4

    return v4

    .line 1349
    :cond_5e
    :goto_5e
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1350
    goto :goto_6b

    .line 1364
    :cond_61
    if-eqz v10, :cond_6b

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_68

    .line 1365
    goto :goto_6b

    .line 1342
    .end local v9    # "k":I
    .end local v10    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_68
    add-int/lit8 v7, v7, -0x1

    goto :goto_18

    .line 1368
    .end local v5    # "m":I
    .end local v6    # "cap":I
    .end local v7    # "i":I
    :cond_6b
    :goto_6b
    return v4
.end method

.method final blacklist tryUnpush(Ljava/util/concurrent/ForkJoinTask;Z)Z
    .registers 11
    .param p2, "owned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;Z)Z"
        }
    .end annotation

    .line 1214
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 1215
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1216
    .local v1, "p":I
    const/4 v2, 0x0

    if-eqz p1, :cond_3b

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v3, v1, :cond_3b

    if-eqz v0, :cond_3b

    array-length v3, v0

    move v4, v3

    .local v4, "cap":I
    if-lez v3, :cond_3b

    add-int/lit8 v3, v4, -0x1

    add-int/lit8 v5, v1, -0x1

    move v6, v5

    .local v6, "s":I
    and-int/2addr v3, v5

    move v5, v3

    .local v5, "k":I
    aget-object v3, v0, v3

    if-ne v3, p1, :cond_3b

    .line 1218
    const/4 v3, 0x1

    if-nez p2, :cond_25

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndSetAccess(I)I

    move-result v7

    if-nez v7, :cond_3b

    .line 1219
    :cond_25
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v7, v1, :cond_39

    aget-object v7, v0, v5

    if-ne v7, p1, :cond_39

    .line 1220
    invoke-static {v0, v5}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndClearSlot([Ljava/util/concurrent/ForkJoinTask;I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v7

    if-nez v7, :cond_34

    goto :goto_39

    .line 1223
    :cond_34
    iput v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1224
    iput v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1225
    return v3

    .line 1221
    :cond_39
    :goto_39
    iput v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1229
    .end local v4    # "cap":I
    .end local v5    # "k":I
    .end local v6    # "s":I
    :cond_3b
    return v2
.end method
