.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$ExceptionNode;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static synthetic -get0()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    #@0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 1492
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@5
    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    .line 1493
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    #@9
    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@c
    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    #@e
    .line 1494
    const/16 v2, 0x20

    #@10
    new-array v2, v2, [Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@12
    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@14
    .line 1496
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@17
    move-result-object v2

    #@18
    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@1a
    .line 1497
    const-class v1, Ljava/util/concurrent/ForkJoinTask;

    #@1c
    .line 1498
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@1e
    .line 1499
    const-string/jumbo v3, "status"

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@24
    move-result-object v3

    #@25
    .line 1498
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@28
    move-result-wide v2

    #@29
    sput-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 174
    return-void

    #@2c
    .line 1500
    :catch_0
    move-exception v0

    #@2d
    .line 1501
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@2f
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@32
    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 174
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static adapt(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1431
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    #@5
    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1444
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1457
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    return-object v0
.end method

.method static final cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 470
    .local p0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    #@2
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@4
    if-ltz v1, :cond_0

    #@6
    .line 472
    const/4 v1, 0x0

    #@7
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 469
    :cond_0
    :goto_0
    return-void

    #@b
    .line 473
    :catch_0
    move-exception v0

    #@c
    .local v0, "ignore":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    #@0
    .prologue
    .line 482
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 483
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 484
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 486
    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@b
    .line 487
    .local v6, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v6

    #@c
    add-int/lit8 v7, v7, -0x1

    #@e
    and-int v2, v1, v7

    #@10
    .line 488
    .local v2, "i":I
    aget-object v0, v6, v2

    #@12
    .line 489
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    #@13
    .line 490
    :goto_0
    if-eqz v0, :cond_0

    #@15
    .line 491
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@17
    .line 492
    .local v4, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    if-ne v7, p0, :cond_2

    #@1d
    .line 493
    if-nez v5, :cond_1

    #@1f
    .line 494
    aput-object v4, v6, v2

    #@21
    .line 502
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    #@24
    .line 503
    const/4 v7, 0x0

    #@25
    iput v7, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 505
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2a
    .line 481
    return-void

    #@2b
    .line 496
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    :try_start_1
    iput-object v4, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 504
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v7

    #@2f
    .line 505
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 504
    throw v7

    #@33
    .line 499
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v2    # "i":I
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    move-object v5, v0

    #@34
    .line 500
    .local v5, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    move-object v0, v4

    #@35
    goto :goto_0
.end method

.method private doInvoke()I
    .locals 5

    #@0
    .prologue
    .line 362
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@3
    move-result v0

    #@4
    .local v0, "s":I
    if-gez v0, :cond_0

    #@6
    .end local v0    # "s":I
    :goto_0
    return v0

    #@7
    .line 363
    .restart local v0    # "s":I
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@a
    move-result-object v1

    #@b
    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@d
    if-eqz v3, :cond_1

    #@f
    move-object v2, v1

    #@10
    .line 364
    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@12
    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@14
    iget-object v4, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@16
    invoke-virtual {v3, v4, p0}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    .line 365
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    #@1e
    move-result v0

    #@1f
    goto :goto_0
.end method

.method private doJoin()I
    .locals 5

    #@0
    .prologue
    .line 347
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v0, "s":I
    if-gez v0, :cond_0

    #@4
    move v4, v0

    #@5
    :goto_0
    return v4

    #@6
    .line 348
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v1

    #@a
    .local v1, "t":Ljava/lang/Thread;
    instance-of v4, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@c
    if-eqz v4, :cond_2

    #@e
    move-object v3, v1

    #@f
    .line 349
    check-cast v3, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@11
    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@13
    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 350
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@1c
    move-result v0

    #@1d
    if-gez v0, :cond_1

    #@1f
    move v4, v0

    #@20
    goto :goto_0

    #@21
    .line 351
    :cond_1
    iget-object v4, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@23
    invoke-virtual {v4, v2, p0}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    #@26
    move-result v4

    #@27
    goto :goto_0

    #@28
    .line 352
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    #@2b
    move-result v4

    #@2c
    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 8

    #@0
    .prologue
    .line 570
    .local v6, "x":Ljava/lang/Object;
    :cond_0
    :goto_0
    sget-object v7, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@5
    move-result-object v6

    #@6
    if-eqz v6, :cond_3

    #@8
    .line 571
    instance-of v7, v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@a
    if-eqz v7, :cond_0

    #@c
    move-object v7, v6

    #@d
    .line 572
    check-cast v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@f
    iget v1, v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    #@11
    .line 573
    .local v1, "hashCode":I
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@13
    .line 574
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v5

    #@14
    add-int/lit8 v7, v7, -0x1

    #@16
    and-int v2, v1, v7

    #@18
    .line 575
    .local v2, "i":I
    aget-object v0, v5, v2

    #@1a
    .line 576
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    #@1b
    .line 577
    :goto_1
    if-eqz v0, :cond_0

    #@1d
    .line 578
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@1f
    .line 579
    .local v3, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    if-ne v0, v6, :cond_2

    #@21
    .line 580
    if-nez v4, :cond_1

    #@23
    .line 581
    aput-object v3, v5, v2

    #@25
    goto :goto_0

    #@26
    .line 583
    :cond_1
    iput-object v3, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@28
    goto :goto_0

    #@29
    .line 586
    :cond_2
    move-object v4, v0

    #@2a
    .line 587
    .local v4, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    move-object v0, v3

    #@2b
    goto :goto_1

    #@2c
    .line 569
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "hashCode":I
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 9

    #@0
    .prologue
    .line 279
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@2
    .line 280
    .local v6, "cp":Ljava/util/concurrent/ForkJoinPool;
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@4
    .local v4, "s":I
    if-ltz v4, :cond_3

    #@6
    .line 281
    if-eqz v6, :cond_0

    #@8
    .line 282
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    #@a
    if-eqz v0, :cond_4

    #@c
    move-object v0, p0

    #@d
    .line 283
    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    #@f
    invoke-virtual {v6, v0}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;)I

    #@12
    move-result v4

    #@13
    .line 287
    :cond_0
    :goto_0
    if-ltz v4, :cond_3

    #@15
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@17
    if-ltz v4, :cond_3

    #@19
    .line 288
    const/4 v8, 0x0

    #@1a
    .line 290
    .local v8, "interrupted":Z
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@1c
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@1e
    const/high16 v1, 0x10000

    #@20
    or-int v5, v4, v1

    #@22
    move-object v1, p0

    #@23
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 291
    monitor-enter p0

    #@2a
    .line 292
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    if-ltz v0, :cond_5

    #@2e
    .line 294
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    :goto_1
    monitor-exit p0

    #@32
    .line 303
    :cond_2
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@34
    if-gez v4, :cond_1

    #@36
    .line 304
    if-eqz v8, :cond_3

    #@38
    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@3f
    .line 308
    .end local v8    # "interrupted":Z
    :cond_3
    return v4

    #@40
    .line 284
    :cond_4
    invoke-virtual {v6, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 285
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@49
    move-result v4

    #@4a
    goto :goto_0

    #@4b
    .line 295
    .restart local v8    # "interrupted":Z
    :catch_0
    move-exception v7

    #@4c
    .line 296
    .local v7, "ie":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 300
    .end local v7    # "ie":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 291
    :catchall_0
    move-exception v0

    #@53
    monitor-exit p0

    #@54
    throw v0
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@2
    .line 317
    .local v6, "cp":Ljava/util/concurrent/ForkJoinPool;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 318
    new-instance v0, Ljava/lang/InterruptedException;

    #@a
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@d
    throw v0

    #@e
    .line 319
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@10
    .local v4, "s":I
    if-ltz v4, :cond_1

    #@12
    if-eqz v6, :cond_1

    #@14
    .line 320
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    #@16
    if-eqz v0, :cond_2

    #@18
    move-object v0, p0

    #@19
    .line 321
    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    #@1b
    invoke-virtual {v6, v0}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;)I

    #@1e
    .line 325
    :cond_1
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@20
    if-ltz v4, :cond_4

    #@22
    .line 326
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@24
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@26
    const/high16 v1, 0x10000

    #@28
    or-int v5, v4, v1

    #@2a
    move-object v1, p0

    #@2b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 327
    monitor-enter p0

    #@32
    .line 328
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@34
    if-ltz v0, :cond_3

    #@36
    .line 329
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    :goto_1
    monitor-exit p0

    #@3a
    goto :goto_0

    #@3b
    .line 322
    :cond_2
    invoke-virtual {v6, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 323
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@44
    goto :goto_0

    #@45
    .line 331
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_1

    #@49
    .line 327
    :catchall_0
    move-exception v0

    #@4a
    monitor-exit p0

    #@4b
    throw v0

    #@4c
    .line 335
    :cond_4
    return v4
.end method

.method public static getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 2

    #@0
    .prologue
    .line 1122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 1123
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1124
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@c
    .line 1123
    :goto_0
    return-object v1

    #@d
    .line 1124
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public static getQueuedTaskCount()I
    .locals 3

    #@0
    .prologue
    .line 1166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1167
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    .line 1170
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    #@e
    const/4 v2, 0x0

    #@f
    :goto_1
    return v2

    #@10
    .line 1169
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@13
    move-result-object v0

    #@14
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    #@15
    .line 1170
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    #@18
    move-result v2

    #@19
    goto :goto_1
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    #@0
    .prologue
    .line 1187
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v7, 0x0

    #@1
    .line 524
    iget v5, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@3
    const/high16 v6, -0x10000000

    #@5
    and-int/2addr v5, v6

    #@6
    const/high16 v6, -0x80000000

    #@8
    if-eq v5, v6, :cond_0

    #@a
    .line 525
    return-object v7

    #@b
    .line 526
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v2

    #@f
    .line 528
    .local v2, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@11
    .line 529
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@14
    .line 531
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    #@17
    .line 532
    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@19
    .line 533
    .local v4, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v5, v4

    #@1a
    add-int/lit8 v5, v5, -0x1

    #@1c
    and-int/2addr v5, v2

    #@1d
    aget-object v0, v4, v5

    #@1f
    .line 534
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v0, :cond_1

    #@21
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    if-eq v5, p0, :cond_1

    #@27
    .line 535
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 537
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2d
    .line 540
    if-eqz v0, :cond_2

    #@2f
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    #@31
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    #@33
    .line 541
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    return-object v7

    #@34
    .line 536
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v5

    #@35
    .line 537
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@38
    .line 536
    throw v5

    #@39
    .line 563
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v1    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_3
    return-object v1
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    #@0
    .prologue
    .line 598
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 599
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 601
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 603
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 597
    :cond_0
    return-void

    #@f
    .line 602
    :catchall_0
    move-exception v1

    #@10
    .line 603
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 602
    throw v1
.end method

.method public static helpQuiesce()V
    .locals 4

    #@0
    .prologue
    .line 1083
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v2, :cond_0

    #@8
    move-object v1, v0

    #@9
    .line 1084
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@b
    .line 1085
    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@d
    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@f
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@12
    .line 1081
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-void

    #@13
    .line 1088
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->quiesceCommonPool()V

    #@16
    goto :goto_0
.end method

.method public static inForkJoinPool()Z
    .locals 1

    #@0
    .prologue
    .line 1136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/high16 v7, -0x10000000

    #@2
    const/4 v6, 0x0

    #@3
    .line 781
    instance-of v5, p0, Ljava/util/RandomAccess;

    #@5
    if-eqz v5, :cond_1

    #@7
    instance-of v5, p0, Ljava/util/List;

    #@9
    if-eqz v5, :cond_1

    #@b
    move-object v4, p0

    #@c
    .line 787
    check-cast v4, Ljava/util/List;

    #@e
    .line 788
    .local v4, "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    #@f
    .line 789
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@12
    move-result v5

    #@13
    add-int/lit8 v2, v5, -0x1

    #@15
    .line 790
    .local v2, "last":I
    move v1, v2

    #@16
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    #@18
    .line 791
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    #@1e
    .line 792
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_2

    #@20
    .line 793
    if-nez v0, :cond_0

    #@22
    .line 794
    new-instance v0, Ljava/lang/NullPointerException;

    #@24
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@27
    .line 790
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 782
    .end local v1    # "i":I
    .end local v2    # "last":I
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@2d
    move-result v5

    #@2e
    new-array v5, v5, [Ljava/util/concurrent/ForkJoinTask;

    #@30
    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    check-cast v5, [Ljava/util/concurrent/ForkJoinTask;

    #@36
    invoke-static {v5}, Ljava/util/concurrent/ForkJoinTask;->invokeAll([Ljava/util/concurrent/ForkJoinTask;)V

    #@39
    .line 783
    return-object p0

    #@3a
    .line 796
    .restart local v1    # "i":I
    .restart local v2    # "last":I
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    :cond_2
    if-eqz v1, :cond_3

    #@3c
    .line 797
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@3f
    goto :goto_1

    #@40
    .line 798
    :cond_3
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@43
    move-result v5

    #@44
    if-ge v5, v7, :cond_0

    #@46
    if-nez v0, :cond_0

    #@48
    .line 799
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@4b
    move-result-object v0

    #@4c
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_1

    #@4d
    .line 801
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    const/4 v1, 0x1

    #@4e
    :goto_2
    if-gt v1, v2, :cond_7

    #@50
    .line 802
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v3

    #@54
    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    #@56
    .line 803
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_5

    #@58
    .line 804
    if-eqz v0, :cond_6

    #@5a
    .line 805
    invoke-virtual {v3, v6}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    #@5d
    .line 801
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_2

    #@60
    .line 806
    :cond_6
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@63
    move-result v5

    #@64
    if-ge v5, v7, :cond_5

    #@66
    .line 807
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@69
    move-result-object v0

    #@6a
    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_3

    #@6b
    .line 810
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_7
    if-eqz v0, :cond_8

    #@6d
    .line 811
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    #@70
    .line 812
    :cond_8
    return-object p0
.end method

.method public static invokeAll(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "t1":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p1, "t2":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/high16 v3, -0x10000000

    #@2
    .line 714
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@5
    .line 715
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@8
    move-result v2

    #@9
    and-int v0, v2, v3

    #@b
    .local v0, "s1":I
    if-eq v0, v3, :cond_0

    #@d
    .line 716
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    #@10
    .line 717
    :cond_0
    invoke-direct {p1}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@13
    move-result v2

    #@14
    and-int v1, v2, v3

    #@16
    .local v1, "s2":I
    if-eq v1, v3, :cond_1

    #@18
    .line 718
    invoke-direct {p1, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    #@1b
    .line 712
    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Ljava/util/concurrent/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "tasks":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    const/high16 v6, -0x10000000

    #@2
    const/4 v5, 0x0

    #@3
    .line 737
    const/4 v0, 0x0

    #@4
    .line 738
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v4, p0

    #@5
    add-int/lit8 v2, v4, -0x1

    #@7
    .line 739
    .local v2, "last":I
    move v1, v2

    #@8
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@a
    .line 740
    aget-object v3, p0, v1

    #@c
    .line 741
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_1

    #@e
    .line 742
    if-nez v0, :cond_0

    #@10
    .line 743
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@15
    .line 739
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 745
    :cond_1
    if-eqz v1, :cond_2

    #@1a
    .line 746
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@1d
    goto :goto_1

    #@1e
    .line 747
    :cond_2
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@21
    move-result v4

    #@22
    if-ge v4, v6, :cond_0

    #@24
    if-nez v0, :cond_0

    #@26
    .line 748
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@29
    move-result-object v0

    #@2a
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_1

    #@2b
    .line 750
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    const/4 v1, 0x1

    #@2c
    :goto_2
    if-gt v1, v2, :cond_6

    #@2e
    .line 751
    aget-object v3, p0, v1

    #@30
    .line 752
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_4

    #@32
    .line 753
    if-eqz v0, :cond_5

    #@34
    .line 754
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    #@37
    .line 750
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_2

    #@3a
    .line 755
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@3d
    move-result v4

    #@3e
    if-ge v4, v6, :cond_4

    #@40
    .line 756
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@43
    move-result-object v0

    #@44
    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_3

    #@45
    .line 759
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    if-eqz v0, :cond_7

    #@47
    .line 760
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    #@4a
    .line 736
    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1242
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v1

    #@5
    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 1243
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@b
    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@d
    .line 1246
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    #@f
    :goto_1
    return-object v2

    #@10
    .line 1245
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@13
    move-result-object v0

    #@14
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    #@15
    .line 1246
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->peek()Ljava/util/concurrent/ForkJoinTask;

    #@18
    move-result-object v2

    #@19
    goto :goto_1
.end method

.method protected static pollNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1261
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    #@f
    move-result-object v1

    #@10
    .line 1260
    :goto_0
    return-object v1

    #@11
    .line 1262
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method protected static pollTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v2, :cond_0

    #@8
    move-object v1, v0

    #@9
    .line 1281
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@b
    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@d
    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@f
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;

    #@12
    move-result-object v2

    #@13
    .line 1280
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-object v2

    #@14
    .line 1282
    :cond_0
    const/4 v2, 0x0

    #@15
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1481
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1482
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 1483
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@9
    .line 1484
    check-cast v0, Ljava/lang/Throwable;

    #@b
    .end local v0    # "ex":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    #@e
    .line 1480
    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1
    .param p1, "s"    # I

    #@0
    .prologue
    .line 630
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 631
    new-instance v0, Ljava/util/concurrent/CancellationException;

    #@6
    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 632
    :cond_0
    const/high16 v0, -0x80000000

    #@c
    if-ne p1, v0, :cond_1

    #@e
    .line 633
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    #@15
    .line 629
    :cond_1
    return-void
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 612
    if-eqz p0, :cond_0

    #@2
    .line 613
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    #@5
    .line 611
    :cond_0
    return-void
.end method

.method private setCompletion(I)I
    .locals 6
    .param p1, "completion"    # I

    #@0
    .prologue
    .line 230
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v4, "s":I
    if-gez v4, :cond_1

    #@4
    .line 231
    return v4

    #@5
    .line 232
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@7
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@9
    or-int v5, v4, p1

    #@b
    move-object v1, p0

    #@c
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 233
    ushr-int/lit8 v0, v4, 0x10

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 234
    monitor-enter p0

    #@17
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 235
    :cond_2
    return p1

    #@1c
    .line 234
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 451
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    #@3
    move-result v0

    #@4
    .line 452
    .local v0, "s":I
    const/high16 v1, -0x10000000

    #@6
    and-int/2addr v1, v0

    #@7
    const/high16 v2, -0x80000000

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 453
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    #@e
    .line 454
    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 623
    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1472
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 1473
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@a
    .line 1471
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x40000000    # -2.0f

    #@2
    .line 843
    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@5
    move-result v0

    #@6
    const/high16 v1, -0x10000000

    #@8
    and-int/2addr v0, v1

    #@9
    if-ne v0, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6
    .param p1, "e"    # S
    .param p2, "tag"    # S

    #@0
    .prologue
    .line 1331
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v4, "s":I
    int-to-short v0, v4

    #@3
    if-eq v0, p1, :cond_1

    #@5
    .line 1332
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1333
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@9
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@b
    .line 1334
    const/high16 v1, -0x10000

    #@d
    and-int/2addr v1, v4

    #@e
    const v5, 0xffff

    #@11
    and-int/2addr v5, p2

    #@12
    or-int/2addr v5, v1

    #@13
    move-object v1, p0

    #@14
    .line 1333
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1335
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 923
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 928
    const/high16 v1, -0x10000000

    #@5
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@8
    .line 921
    return-void

    #@9
    .line 924
    :catch_0
    move-exception v0

    #@a
    .line 925
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    #@d
    .line 926
    return-void
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 903
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 904
    instance-of v0, p1, Ljava/lang/Error;

    #@6
    .line 903
    if-eqz v0, :cond_1

    #@8
    .end local p1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    #@b
    .line 902
    return-void

    #@c
    .line 905
    .restart local p1    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@11
    move-object p1, v0

    #@12
    goto :goto_0
.end method

.method final doExec()I
    .locals 4

    #@0
    .prologue
    .line 249
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v2, "s":I
    if-ltz v2, :cond_0

    #@4
    .line 251
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v0

    #@8
    .line 255
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    #@a
    .line 256
    const/high16 v3, -0x10000000

    #@c
    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@f
    move-result v2

    #@10
    .line 258
    .end local v0    # "completed":Z
    :cond_0
    return v2

    #@11
    .line 252
    :catch_0
    move-exception v1

    #@12
    .line 253
    .local v1, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    #@15
    move-result v3

    #@16
    return v3
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 655
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 656
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    #@f
    .line 659
    :goto_0
    return-object p0

    #@10
    .line 658
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@12
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@15
    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .prologue
    .line 956
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v2

    #@4
    instance-of v2, v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 957
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@b
    move-result v1

    #@c
    .line 959
    .local v1, "s":I
    :goto_0
    const/high16 v2, -0x10000000

    #@e
    and-int/2addr v1, v2

    #@f
    const/high16 v2, -0x40000000    # -2.0f

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 960
    new-instance v2, Ljava/util/concurrent/CancellationException;

    #@15
    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@18
    throw v2

    #@19
    .line 957
    .end local v1    # "s":I
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone()I

    #@1c
    move-result v1

    #@1d
    .restart local v1    # "s":I
    goto :goto_0

    #@1e
    .line 961
    :cond_1
    const/high16 v2, -0x80000000

    #@20
    if-ne v1, v2, :cond_2

    #@22
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    #@25
    move-result-object v0

    #@26
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    #@28
    .line 962
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    #@2a
    invoke-direct {v2, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v2

    #@2e
    .line 963
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    return-object v2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 25
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 982
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 983
    new-instance v4, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v4

    #@c
    .line 986
    :cond_0
    move-object/from16 v0, p3

    #@e
    move-wide/from16 v1, p1

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@13
    move-result-wide v20

    #@14
    .line 988
    .local v20, "ns":J
    move-object/from16 v0, p0

    #@16
    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@18
    .local v8, "s":I
    if-ltz v8, :cond_e

    #@1a
    const-wide/16 v4, 0x0

    #@1c
    cmp-long v4, v20, v4

    #@1e
    if-lez v4, :cond_e

    #@20
    .line 989
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@23
    move-result-wide v4

    #@24
    add-long v12, v4, v20

    #@26
    .line 990
    .local v12, "deadline":J
    const/16 v17, 0x0

    #@28
    .line 991
    .local v17, "p":Ljava/util/concurrent/ForkJoinPool;
    const/16 v23, 0x0

    #@2a
    .line 992
    .local v23, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2d
    move-result-object v22

    #@2e
    .line 993
    .local v22, "t":Ljava/lang/Thread;
    move-object/from16 v0, v22

    #@30
    instance-of v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@32
    if-eqz v4, :cond_4

    #@34
    move-object/from16 v24, v22

    #@36
    .line 994
    check-cast v24, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@38
    .line 995
    .local v24, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v24

    #@3a
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@3c
    move-object/from16 v17, v0

    #@3e
    .line 996
    .local v17, "p":Ljava/util/concurrent/ForkJoinPool;
    move-object/from16 v0, v24

    #@40
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@42
    move-object/from16 v23, v0

    #@44
    .line 997
    .local v23, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, v17

    #@46
    move-object/from16 v1, v23

    #@48
    move-object/from16 v2, p0

    #@4a
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpJoinOnce(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V

    #@4d
    .line 1005
    .end local v17    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    const/4 v10, 0x0

    #@4e
    .line 1006
    .local v10, "canBlock":Z
    const/16 v16, 0x0

    #@50
    .line 1008
    .local v16, "interrupted":Z
    :cond_2
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    #@52
    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@54
    if-ltz v8, :cond_b

    #@56
    .line 1009
    if-eqz v23, :cond_6

    #@58
    move-object/from16 v0, v23

    #@5a
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@5c
    if-gez v4, :cond_6

    #@5e
    .line 1010
    invoke-static/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    goto :goto_1

    #@62
    .line 1036
    :catchall_0
    move-exception v4

    #@63
    .line 1037
    if-eqz v17, :cond_3

    #@65
    if-eqz v10, :cond_3

    #@67
    .line 1038
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    #@6a
    .line 1036
    :cond_3
    throw v4

    #@6b
    .line 999
    .end local v10    # "canBlock":Z
    .end local v16    # "interrupted":Z
    .local v17, "p":Ljava/util/concurrent/ForkJoinPool;
    .local v23, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    sget-object v11, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@6d
    .local v11, "cp":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v11, :cond_1

    #@6f
    .line 1000
    move-object/from16 v0, p0

    #@71
    instance-of v4, v0, Ljava/util/concurrent/CountedCompleter;

    #@73
    if-eqz v4, :cond_5

    #@75
    move-object/from16 v4, p0

    #@77
    .line 1001
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    #@79
    invoke-virtual {v11, v4}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;)I

    #@7c
    goto :goto_0

    #@7d
    .line 1002
    :cond_5
    move-object/from16 v0, p0

    #@7f
    invoke-virtual {v11, v0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_1

    #@85
    .line 1003
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@88
    goto :goto_0

    #@89
    .line 1011
    .end local v11    # "cp":Ljava/util/concurrent/ForkJoinPool;
    .end local v17    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v10    # "canBlock":Z
    .restart local v16    # "interrupted":Z
    :cond_6
    if-nez v10, :cond_8

    #@8b
    .line 1012
    if-eqz v17, :cond_7

    #@8d
    :try_start_1
    move-object/from16 v0, v17

    #@8f
    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@91
    move-object/from16 v0, v17

    #@93
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(J)Z

    #@96
    move-result v4

    #@97
    if-eqz v4, :cond_2

    #@99
    .line 1013
    :cond_7
    const/4 v10, 0x1

    #@9a
    goto :goto_1

    #@9b
    .line 1016
    :cond_8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@9d
    move-wide/from16 v0, v20

    #@9f
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@a2
    move-result-wide v18

    #@a3
    .local v18, "ms":J
    const-wide/16 v4, 0x0

    #@a5
    cmp-long v4, v18, v4

    #@a7
    if-lez v4, :cond_a

    #@a9
    .line 1017
    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@ab
    sget-wide v6, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@ad
    const/high16 v5, 0x10000

    #@af
    or-int v9, v8, v5

    #@b1
    move-object/from16 v5, p0

    #@b3
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@b6
    move-result v4

    #@b7
    .line 1016
    if-eqz v4, :cond_a

    #@b9
    .line 1018
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ba
    .line 1019
    :try_start_2
    move-object/from16 v0, p0

    #@bc
    iget v4, v0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@be
    if-ltz v4, :cond_d

    #@c0
    .line 1021
    :try_start_3
    move-object/from16 v0, p0

    #@c2
    move-wide/from16 v1, v18

    #@c4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@c7
    :cond_9
    :goto_2
    :try_start_4
    monitor-exit p0

    #@c8
    .line 1031
    :cond_a
    move-object/from16 v0, p0

    #@ca
    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@cc
    if-ltz v8, :cond_b

    #@ce
    if-nez v16, :cond_b

    #@d0
    .line 1032
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d3
    move-result-wide v4

    #@d4
    sub-long v20, v12, v4

    #@d6
    const-wide/16 v4, 0x0

    #@d8
    cmp-long v4, v20, v4

    #@da
    if-gtz v4, :cond_2

    #@dc
    .line 1037
    .end local v18    # "ms":J
    :cond_b
    if-eqz v17, :cond_c

    #@de
    if-eqz v10, :cond_c

    #@e0
    .line 1038
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    #@e3
    .line 1040
    :cond_c
    if-eqz v16, :cond_e

    #@e5
    .line 1041
    new-instance v4, Ljava/lang/InterruptedException;

    #@e7
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@ea
    throw v4

    #@eb
    .line 1022
    .restart local v18    # "ms":J
    :catch_0
    move-exception v15

    #@ec
    .line 1023
    .local v15, "ie":Ljava/lang/InterruptedException;
    if-nez v17, :cond_9

    #@ee
    .line 1024
    const/16 v16, 0x1

    #@f0
    goto :goto_2

    #@f1
    .line 1028
    .end local v15    # "ie":Ljava/lang/InterruptedException;
    :cond_d
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@f4
    goto :goto_2

    #@f5
    .line 1018
    :catchall_1
    move-exception v4

    #@f6
    :try_start_6
    monitor-exit p0

    #@f7
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@f8
    .line 1043
    .end local v10    # "canBlock":Z
    .end local v12    # "deadline":J
    .end local v16    # "interrupted":Z
    .end local v18    # "ms":J
    .end local v22    # "t":Ljava/lang/Thread;
    :cond_e
    const/high16 v4, -0x10000000

    #@fa
    and-int/2addr v8, v4

    #@fb
    const/high16 v4, -0x10000000

    #@fd
    if-eq v8, v4, :cond_11

    #@ff
    .line 1045
    const/high16 v4, -0x40000000    # -2.0f

    #@101
    if-ne v8, v4, :cond_f

    #@103
    .line 1046
    new-instance v4, Ljava/util/concurrent/CancellationException;

    #@105
    invoke-direct {v4}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@108
    throw v4

    #@109
    .line 1047
    :cond_f
    const/high16 v4, -0x80000000

    #@10b
    if-eq v8, v4, :cond_10

    #@10d
    .line 1048
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    #@10f
    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@112
    throw v4

    #@113
    .line 1049
    :cond_10
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    #@116
    move-result-object v14

    #@117
    .local v14, "ex":Ljava/lang/Throwable;
    if-eqz v14, :cond_11

    #@119
    .line 1050
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    #@11b
    invoke-direct {v4, v14}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@11e
    throw v4

    #@11f
    .line 1052
    .end local v14    # "ex":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    #@122
    move-result-object v4

    #@123
    return-object v4
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    #@2
    .line 882
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@4
    and-int v0, v1, v2

    #@6
    .line 883
    .local v0, "s":I
    if-lt v0, v2, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    return-object v1

    #@a
    .line 884
    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    #@c
    if-ne v0, v1, :cond_1

    #@e
    new-instance v1, Ljava/util/concurrent/CancellationException;

    #@10
    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@13
    goto :goto_0

    #@14
    .line 885
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    #@17
    move-result-object v1

    #@18
    goto :goto_0
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    #@0
    .prologue
    .line 1295
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 460
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    #@2
    .line 690
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@5
    move-result v1

    #@6
    and-int v0, v1, v2

    #@8
    .local v0, "s":I
    if-eq v0, v2, :cond_0

    #@a
    .line 691
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    #@d
    .line 692
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public final isCancelled()Z
    .locals 2

    #@0
    .prologue
    .line 851
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    const/high16 v1, -0x10000000

    #@4
    and-int/2addr v0, v1

    #@5
    const/high16 v1, -0x40000000    # -2.0f

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    #@0
    .prologue
    .line 860
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    const/high16 v1, -0x10000000

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v1, -0x10000000

    #@2
    .line 871
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@4
    and-int/2addr v0, v1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public final isDone()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v0, 0x0

    #@1
    .line 847
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@3
    if-gez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public final join()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    #@2
    .line 675
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@5
    move-result v1

    #@6
    and-int v0, v1, v2

    #@8
    .local v0, "s":I
    if-eq v0, v2, :cond_0

    #@a
    .line 676
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    #@d
    .line 677
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public final quietlyComplete()V
    .locals 1

    #@0
    .prologue
    .line 941
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x10000000

    #@2
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@5
    .line 940
    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    #@0
    .prologue
    .line 1071
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@3
    .line 1070
    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    #@0
    .prologue
    .line 1062
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@3
    .line 1061
    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 421
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v4, "s":I
    if-ltz v4, :cond_1

    #@4
    .line 422
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    .line 423
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 424
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@d
    .line 426
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    #@10
    .line 427
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@12
    .line 428
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v6, v5

    #@13
    add-int/lit8 v6, v6, -0x1

    #@15
    and-int v2, v1, v6

    #@17
    .line 429
    .local v2, "i":I
    aget-object v0, v5, v2

    #@19
    .line 430
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v0, :cond_2

    #@1b
    .line 431
    new-instance v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@1d
    aget-object v7, v5, v2

    #@1f
    invoke-direct {v6, p0, p1, v7}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;)V

    #@22
    aput-object v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 438
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@27
    .line 440
    const/high16 v6, -0x80000000

    #@29
    invoke-direct {p0, v6}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@2c
    move-result v4

    #@2d
    .line 442
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    return v4

    #@2e
    .line 434
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v1    # "h":I
    .restart local v2    # "i":I
    .restart local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    #@31
    move-result-object v6

    #@32
    if-eq v6, p0, :cond_0

    #@34
    .line 429
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 437
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v6

    #@38
    .line 438
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3b
    .line 437
    throw v6
.end method

.method public reinitialize()V
    .locals 2

    #@0
    .prologue
    .line 1108
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    const/high16 v1, -0x10000000

    #@4
    and-int/2addr v0, v1

    #@5
    const/high16 v1, -0x80000000

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 1109
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    #@c
    .line 1107
    :goto_0
    return-void

    #@d
    .line 1111
    :cond_0
    const/4 v0, 0x0

    #@e
    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@10
    goto :goto_0
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 6
    .param p1, "tag"    # S

    #@0
    .prologue
    .line 1308
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@4
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@6
    .line 1309
    .local v4, "s":I
    const/high16 v1, -0x10000

    #@8
    and-int/2addr v1, v4

    #@9
    const v5, 0xffff

    #@c
    and-int/2addr v5, p1

    #@d
    or-int/2addr v5, v1

    #@e
    move-object v1, p0

    #@f
    .line 1308
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1310
    int-to-short v0, v4

    #@16
    return v0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method final trySetSignal()Z
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v0, 0x0

    #@1
    .line 269
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@3
    .line 270
    .local v4, "s":I
    if-ltz v4, :cond_0

    #@5
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@7
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@9
    const/high16 v1, 0x10000

    #@b
    or-int v5, v4, v1

    #@d
    move-object v1, p0

    #@e
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@11
    move-result v0

    #@12
    :cond_0
    return v0
.end method

.method public tryUnfork()Z
    .locals 2

    #@0
    .prologue
    .line 1151
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1152
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@f
    move-result v1

    #@10
    .line 1151
    :goto_0
    return v1

    #@11
    .line 1153
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@16
    move-result v1

    #@17
    goto :goto_0
.end method
