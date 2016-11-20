.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava/util/concurrent/ForkJoinTask$ExceptionNode;,
        Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;
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
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 1491
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@6
    .line 1495
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@b
    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    .line 1496
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    #@f
    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@12
    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    #@14
    .line 1497
    const/16 v1, 0x20

    #@16
    new-array v1, v1, [Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@18
    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@1a
    .line 1499
    :try_start_0
    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@1c
    .line 1500
    const-class v2, Ljava/util/concurrent/ForkJoinTask;

    #@1e
    const-string/jumbo v3, "status"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@24
    move-result-object v2

    #@25
    .line 1499
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@28
    move-result-wide v2

    #@29
    sput-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 179
    return-void

    #@2c
    .line 1501
    :catch_0
    move-exception v0

    #@2d
    .line 1502
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@2f
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@32
    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 179
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
    .line 1426
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
    .line 1440
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
    .line 1454
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
    .line 479
    .local p0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    #@2
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@4
    if-ltz v1, :cond_0

    #@6
    .line 481
    const/4 v1, 0x0

    #@7
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 478
    :cond_0
    :goto_0
    return-void

    #@b
    .line 482
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
    .line 491
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 492
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 493
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 495
    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@b
    .line 496
    .local v6, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v6

    #@c
    add-int/lit8 v7, v7, -0x1

    #@e
    and-int v2, v1, v7

    #@10
    .line 497
    .local v2, "i":I
    aget-object v0, v6, v2

    #@12
    .line 498
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    #@13
    .line 499
    :goto_0
    if-eqz v0, :cond_0

    #@15
    .line 500
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@17
    .line 501
    .local v4, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    if-ne v7, p0, :cond_2

    #@1d
    .line 502
    if-nez v5, :cond_1

    #@1f
    .line 503
    aput-object v4, v6, v2

    #@21
    .line 511
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    #@24
    .line 512
    const/4 v7, 0x0

    #@25
    iput v7, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 514
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2a
    .line 490
    return-void

    #@2b
    .line 505
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    :try_start_1
    iput-object v4, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 513
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v7

    #@2f
    .line 514
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 513
    throw v7

    #@33
    .line 508
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v2    # "i":I
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    move-object v5, v0

    #@34
    .line 509
    .local v5, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    move-object v0, v4

    #@35
    goto :goto_0
.end method

.method private doInvoke()I
    .locals 8

    #@0
    .prologue
    .line 368
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
    .line 369
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
    .line 370
    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@12
    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@14
    .line 371
    iget-object v4, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@16
    const-wide/16 v6, 0x0

    #@18
    .line 370
    invoke-virtual {v3, v4, p0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    #@1b
    move-result v0

    #@1c
    goto :goto_0

    #@1d
    .line 372
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    #@20
    move-result v0

    #@21
    goto :goto_0
.end method

.method private doJoin()I
    .locals 8

    #@0
    .prologue
    .line 353
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
    .line 354
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
    .line 355
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
    .line 356
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
    .line 357
    :cond_1
    iget-object v4, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@23
    const-wide/16 v6, 0x0

    #@25
    invoke-virtual {v4, v2, p0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    #@28
    move-result v4

    #@29
    goto :goto_0

    #@2a
    .line 358
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    #@2d
    move-result v4

    #@2e
    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 8

    #@0
    .prologue
    .line 575
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
    .line 576
    instance-of v7, v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@a
    if-eqz v7, :cond_0

    #@c
    move-object v7, v6

    #@d
    .line 577
    check-cast v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@f
    iget v1, v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    #@11
    .line 578
    .local v1, "hashCode":I
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@13
    .line 579
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v5

    #@14
    add-int/lit8 v7, v7, -0x1

    #@16
    and-int v2, v1, v7

    #@18
    .line 580
    .local v2, "i":I
    aget-object v0, v5, v2

    #@1a
    .line 581
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    #@1b
    .line 582
    :goto_1
    if-eqz v0, :cond_0

    #@1d
    .line 583
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@1f
    .line 584
    .local v3, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    if-ne v0, v6, :cond_2

    #@21
    .line 585
    if-nez v4, :cond_1

    #@23
    .line 586
    aput-object v3, v5, v2

    #@25
    goto :goto_0

    #@26
    .line 588
    :cond_1
    iput-object v3, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@28
    goto :goto_0

    #@29
    .line 591
    :cond_2
    move-object v4, v0

    #@2a
    .line 592
    .local v4, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    move-object v0, v3

    #@2b
    goto :goto_1

    #@2c
    .line 574
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
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v4, 0x0

    #@1
    .line 290
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    #@3
    if-eqz v0, :cond_4

    #@5
    .line 291
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@7
    move-object v0, p0

    #@8
    .line 292
    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    #@a
    .line 291
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    #@d
    move-result v4

    #@e
    .line 294
    .local v4, "s":I
    :cond_0
    :goto_0
    if-ltz v4, :cond_3

    #@10
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@12
    if-ltz v4, :cond_3

    #@14
    .line 295
    const/4 v7, 0x0

    #@15
    .line 297
    .local v7, "interrupted":Z
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@17
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@19
    const/high16 v1, 0x10000

    #@1b
    or-int v5, v4, v1

    #@1d
    move-object v1, p0

    #@1e
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 298
    monitor-enter p0

    #@25
    .line 299
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    if-ltz v0, :cond_5

    #@29
    .line 301
    const-wide/16 v0, 0x0

    #@2b
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    :goto_1
    monitor-exit p0

    #@2f
    .line 310
    :cond_2
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@31
    if-gez v4, :cond_1

    #@33
    .line 311
    if-eqz v7, :cond_3

    #@35
    .line 312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@3c
    .line 314
    .end local v7    # "interrupted":Z
    :cond_3
    return v4

    #@3d
    .line 293
    .end local v4    # "s":I
    :cond_4
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@3f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_0

    #@45
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@48
    move-result v4

    #@49
    goto :goto_0

    #@4a
    .line 302
    .restart local v4    # "s":I
    .restart local v7    # "interrupted":Z
    :catch_0
    move-exception v6

    #@4b
    .line 303
    .local v6, "ie":Ljava/lang/InterruptedException;
    const/4 v7, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 307
    .end local v6    # "ie":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    goto :goto_1

    #@51
    .line 298
    :catchall_0
    move-exception v0

    #@52
    monitor-exit p0

    #@53
    throw v0
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v1, 0x0

    #@1
    .line 322
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 323
    new-instance v0, Ljava/lang/InterruptedException;

    #@9
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@c
    throw v0

    #@d
    .line 324
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@f
    .local v4, "s":I
    if-ltz v4, :cond_5

    #@11
    .line 325
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 326
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@17
    move-object v0, p0

    #@18
    .line 327
    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    #@1a
    .line 326
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    #@1d
    move-result v4

    #@1e
    .line 325
    :goto_0
    if-ltz v4, :cond_5

    #@20
    .line 330
    :cond_1
    :goto_1
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@22
    if-ltz v4, :cond_5

    #@24
    .line 331
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@26
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@28
    const/high16 v1, 0x10000

    #@2a
    or-int v5, v4, v1

    #@2c
    move-object v1, p0

    #@2d
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 332
    monitor-enter p0

    #@34
    .line 333
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@36
    if-ltz v0, :cond_4

    #@38
    .line 334
    const-wide/16 v0, 0x0

    #@3a
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :goto_2
    monitor-exit p0

    #@3e
    goto :goto_1

    #@3f
    .line 328
    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@41
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_3

    #@47
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@4a
    move-result v4

    #@4b
    goto :goto_0

    #@4c
    :cond_3
    move v4, v1

    #@4d
    .line 329
    goto :goto_0

    #@4e
    .line 336
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_2

    #@52
    .line 332
    :catchall_0
    move-exception v0

    #@53
    monitor-exit p0

    #@54
    throw v0

    #@55
    .line 341
    :cond_5
    return v4
.end method

.method public static getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 2

    #@0
    .prologue
    .line 1101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 1102
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1103
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@c
    .line 1102
    :goto_0
    return-object v1

    #@d
    .line 1103
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
    .line 1145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1146
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    .line 1149
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    #@e
    const/4 v2, 0x0

    #@f
    :goto_1
    return v2

    #@10
    .line 1148
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
    .line 1149
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
    .line 1166
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 15

    #@0
    .prologue
    .line 533
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v3

    #@4
    .line 535
    .local v3, "h":I
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 536
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 538
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    #@c
    .line 539
    sget-object v8, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@e
    .line 540
    .local v8, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v10, v8

    #@f
    add-int/lit8 v10, v10, -0x1

    #@11
    and-int/2addr v10, v3

    #@12
    aget-object v1, v8, v10

    #@14
    .line 541
    .local v1, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v1, :cond_0

    #@16
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    #@19
    move-result-object v10

    #@1a
    if-eq v10, p0, :cond_0

    #@1c
    .line 542
    iget-object v1, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 544
    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 547
    if-eqz v1, :cond_1

    #@24
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    #@26
    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_2

    #@28
    .line 548
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    const/4 v10, 0x0

    #@29
    return-object v10

    #@2a
    .line 543
    .end local v1    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v8    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v10

    #@2b
    .line 544
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2e
    .line 543
    throw v10

    #@2f
    .line 549
    .restart local v1    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v2    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    iget-wide v10, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    #@31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@34
    move-result-object v12

    #@35
    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    #@38
    move-result-wide v12

    #@39
    cmp-long v10, v10, v12

    #@3b
    if-eqz v10, :cond_6

    #@3d
    .line 551
    const/4 v6, 0x0

    #@3e
    .line 553
    .local v6, "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v10}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    #@45
    move-result-object v11

    #@46
    const/4 v10, 0x0

    #@47
    array-length v12, v11

    #@48
    .end local v6    # "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_1
    if-ge v10, v12, :cond_5

    #@4a
    aget-object v0, v11, v10

    #@4c
    .line 554
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@4f
    move-result-object v7

    #@50
    .line 555
    .local v7, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v13, v7

    #@51
    if-nez v13, :cond_4

    #@53
    .line 556
    move-object v6, v0

    #@54
    .line 553
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@56
    goto :goto_1

    #@57
    .line 557
    :cond_4
    array-length v13, v7

    #@58
    const/4 v14, 0x1

    #@59
    if-ne v13, v14, :cond_3

    #@5b
    const/4 v13, 0x0

    #@5c
    aget-object v13, v7, v13

    #@5e
    const-class v14, Ljava/lang/Throwable;

    #@60
    if-ne v13, v14, :cond_3

    #@62
    .line 558
    const/4 v10, 0x1

    #@63
    new-array v10, v10, [Ljava/lang/Object;

    #@65
    const/4 v11, 0x0

    #@66
    aput-object v2, v10, v11

    #@68
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    move-result-object v10

    #@6c
    check-cast v10, Ljava/lang/Throwable;

    #@6e
    return-object v10

    #@6f
    .line 560
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    if-eqz v6, :cond_6

    #@71
    .line 561
    const/4 v10, 0x0

    #@72
    new-array v10, v10, [Ljava/lang/Object;

    #@74
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v9

    #@78
    check-cast v9, Ljava/lang/Throwable;

    #@7a
    .line 562
    .local v9, "wx":Ljava/lang/Throwable;
    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@7d
    .line 563
    return-object v9

    #@7e
    .line 565
    .end local v9    # "wx":Ljava/lang/Throwable;
    :catch_0
    move-exception v4

    #@7f
    .line 568
    :cond_6
    return-object v2
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    #@0
    .prologue
    .line 603
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 604
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 606
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 608
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 602
    :cond_0
    return-void

    #@f
    .line 607
    :catchall_0
    move-exception v1

    #@10
    .line 608
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 607
    throw v1
.end method

.method public static helpQuiesce()V
    .locals 4

    #@0
    .prologue
    .line 1060
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
    .line 1061
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@b
    .line 1062
    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@d
    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@f
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@12
    .line 1058
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-void

    #@13
    .line 1065
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->quiesceCommonPool()V

    #@16
    goto :goto_0
.end method

.method public static inForkJoinPool()Z
    .locals 1

    #@0
    .prologue
    .line 1115
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
    .line 789
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
    .line 795
    check-cast v4, Ljava/util/List;

    #@e
    .line 796
    .local v4, "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    #@f
    .line 797
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@12
    move-result v5

    #@13
    add-int/lit8 v2, v5, -0x1

    #@15
    .line 798
    .local v2, "last":I
    move v1, v2

    #@16
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    #@18
    .line 799
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    #@1e
    .line 800
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_2

    #@20
    .line 801
    if-nez v0, :cond_0

    #@22
    .line 802
    new-instance v0, Ljava/lang/NullPointerException;

    #@24
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@27
    .line 798
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 790
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
    .line 791
    return-object p0

    #@3a
    .line 804
    .restart local v1    # "i":I
    .restart local v2    # "last":I
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    :cond_2
    if-eqz v1, :cond_3

    #@3c
    .line 805
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@3f
    goto :goto_1

    #@40
    .line 806
    :cond_3
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@43
    move-result v5

    #@44
    if-ge v5, v7, :cond_0

    #@46
    if-nez v0, :cond_0

    #@48
    .line 807
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@4b
    move-result-object v0

    #@4c
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_1

    #@4d
    .line 809
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    const/4 v1, 0x1

    #@4e
    :goto_2
    if-gt v1, v2, :cond_7

    #@50
    .line 810
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v3

    #@54
    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    #@56
    .line 811
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_5

    #@58
    .line 812
    if-eqz v0, :cond_6

    #@5a
    .line 813
    invoke-virtual {v3, v6}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    #@5d
    .line 809
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_2

    #@60
    .line 814
    :cond_6
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@63
    move-result v5

    #@64
    if-ge v5, v7, :cond_5

    #@66
    .line 815
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@69
    move-result-object v0

    #@6a
    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_3

    #@6b
    .line 818
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_7
    if-eqz v0, :cond_8

    #@6d
    .line 819
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    #@70
    .line 820
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
    .line 721
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@5
    .line 722
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@8
    move-result v2

    #@9
    and-int v0, v2, v3

    #@b
    .local v0, "s1":I
    if-eq v0, v3, :cond_0

    #@d
    .line 723
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    #@10
    .line 724
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
    .line 725
    invoke-direct {p1, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    #@1b
    .line 719
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
    .line 744
    const/4 v0, 0x0

    #@4
    .line 745
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v4, p0

    #@5
    add-int/lit8 v2, v4, -0x1

    #@7
    .line 746
    .local v2, "last":I
    move v1, v2

    #@8
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@a
    .line 747
    aget-object v3, p0, v1

    #@c
    .line 748
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_1

    #@e
    .line 749
    if-nez v0, :cond_0

    #@10
    .line 750
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@15
    .line 746
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 752
    :cond_1
    if-eqz v1, :cond_2

    #@1a
    .line 753
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@1d
    goto :goto_1

    #@1e
    .line 754
    :cond_2
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@21
    move-result v4

    #@22
    if-ge v4, v6, :cond_0

    #@24
    if-nez v0, :cond_0

    #@26
    .line 755
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@29
    move-result-object v0

    #@2a
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_1

    #@2b
    .line 757
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    const/4 v1, 0x1

    #@2c
    :goto_2
    if-gt v1, v2, :cond_6

    #@2e
    .line 758
    aget-object v3, p0, v1

    #@30
    .line 759
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_4

    #@32
    .line 760
    if-eqz v0, :cond_5

    #@34
    .line 761
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    #@37
    .line 757
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_2

    #@3a
    .line 762
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@3d
    move-result v4

    #@3e
    if-ge v4, v6, :cond_4

    #@40
    .line 763
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@43
    move-result-object v0

    #@44
    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_3

    #@45
    .line 766
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    if-eqz v0, :cond_7

    #@47
    .line 767
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    #@4a
    .line 743
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
    .line 1221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v1

    #@5
    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 1222
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@b
    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@d
    .line 1225
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    #@f
    :goto_1
    return-object v2

    #@10
    .line 1224
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
    .line 1225
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
    .line 1239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1240
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    #@f
    move-result-object v1

    #@10
    .line 1239
    :goto_0
    return-object v1

    #@11
    .line 1241
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method protected static pollSubmission()Ljava/util/concurrent/ForkJoinTask;
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
    .line 1279
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1280
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool;->pollSubmission()Ljava/util/concurrent/ForkJoinTask;

    #@f
    move-result-object v1

    #@10
    .line 1279
    :goto_0
    return-object v1

    #@11
    .line 1280
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
    .line 1259
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
    .line 1260
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
    .line 1259
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-object v2

    #@14
    .line 1261
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
    .line 1484
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1485
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 1486
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@9
    .line 1487
    check-cast v0, Ljava/lang/Throwable;

    #@b
    .end local v0    # "ex":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    #@e
    .line 1483
    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1
    .param p1, "s"    # I

    #@0
    .prologue
    .line 637
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 638
    new-instance v0, Ljava/util/concurrent/CancellationException;

    #@6
    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 639
    :cond_0
    const/high16 v0, -0x80000000

    #@c
    if-ne p1, v0, :cond_1

    #@e
    .line 640
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    #@15
    .line 636
    :cond_1
    return-void
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 617
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    #@3
    .line 616
    return-void
.end method

.method private setCompletion(I)I
    .locals 6
    .param p1, "completion"    # I

    #@0
    .prologue
    .line 235
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v4, "s":I
    if-gez v4, :cond_1

    #@4
    .line 236
    return v4

    #@5
    .line 237
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
    .line 238
    ushr-int/lit8 v0, v4, 0x10

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 239
    monitor-enter p0

    #@17
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 240
    :cond_2
    return p1

    #@1c
    .line 239
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
    .line 460
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    #@3
    move-result v0

    #@4
    .line 461
    .local v0, "s":I
    const/high16 v1, -0x10000000

    #@6
    and-int/2addr v1, v0

    #@7
    const/high16 v2, -0x80000000

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 462
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    #@e
    .line 463
    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 2
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
    .line 627
    if-eqz p0, :cond_0

    #@2
    .line 628
    throw p0

    #@3
    .line 630
    :cond_0
    new-instance v0, Ljava/lang/Error;

    #@5
    const-string/jumbo v1, "Unknown Exception"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
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
    .line 1471
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 1472
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@a
    .line 1470
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
    .line 851
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
    .param p1, "expect"    # S
    .param p2, "update"    # S

    #@0
    .prologue
    .line 1326
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v4, "s":I
    int-to-short v0, v4

    #@3
    if-eq v0, p1, :cond_1

    #@5
    .line 1327
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1328
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@9
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@b
    .line 1329
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
    .line 1328
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1330
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
    .line 931
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 936
    const/high16 v1, -0x10000000

    #@5
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@8
    .line 929
    return-void

    #@9
    .line 932
    :catch_0
    move-exception v0

    #@a
    .line 933
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    #@d
    .line 934
    return-void
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 911
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 912
    instance-of v0, p1, Ljava/lang/Error;

    #@6
    .line 911
    if-eqz v0, :cond_1

    #@8
    .end local p1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    #@b
    .line 910
    return-void

    #@c
    .line 913
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
    .line 254
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v2, "s":I
    if-ltz v2, :cond_0

    #@4
    .line 256
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v0

    #@8
    .line 260
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    #@a
    .line 261
    const/high16 v3, -0x10000000

    #@c
    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@f
    move-result v2

    #@10
    .line 263
    .end local v0    # "completed":Z
    :cond_0
    return v2

    #@11
    .line 257
    :catch_0
    move-exception v1

    #@12
    .line 258
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
    .line 662
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
    .line 663
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    #@f
    .line 666
    :goto_0
    return-object p0

    #@10
    .line 665
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
    .line 963
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    instance-of v1, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 964
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@b
    move-result v0

    #@c
    .line 965
    .local v0, "s":I
    :goto_0
    const/high16 v1, -0x10000000

    #@e
    and-int/2addr v0, v1

    #@f
    const/high16 v1, -0x40000000    # -2.0f

    #@11
    if-ne v0, v1, :cond_1

    #@13
    .line 966
    new-instance v1, Ljava/util/concurrent/CancellationException;

    #@15
    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@18
    throw v1

    #@19
    .line 964
    .end local v0    # "s":I
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone()I

    #@1c
    move-result v0

    #@1d
    goto :goto_0

    #@1e
    .line 967
    .restart local v0    # "s":I
    :cond_1
    const/high16 v1, -0x80000000

    #@20
    if-ne v0, v1, :cond_2

    #@22
    .line 968
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    #@24
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v1

    #@2c
    .line 969
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 23
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
    .line 989
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    move-object/from16 v0, p3

    #@2
    move-wide/from16 v1, p1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@7
    move-result-wide v16

    #@8
    .line 990
    .local v16, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 991
    new-instance v4, Ljava/lang/InterruptedException;

    #@10
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@13
    throw v4

    #@14
    .line 992
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@18
    .local v8, "s":I
    if-ltz v8, :cond_1

    #@1a
    const-wide/16 v4, 0x0

    #@1c
    cmp-long v4, v16, v4

    #@1e
    if-lez v4, :cond_1

    #@20
    .line 993
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@23
    move-result-wide v4

    #@24
    add-long v10, v4, v16

    #@26
    .line 994
    .local v10, "d":J
    const-wide/16 v4, 0x0

    #@28
    cmp-long v4, v10, v4

    #@2a
    if-nez v4, :cond_3

    #@2c
    const-wide/16 v12, 0x1

    #@2e
    .line 995
    .local v12, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@31
    move-result-object v20

    #@32
    .line 996
    .local v20, "t":Ljava/lang/Thread;
    move-object/from16 v0, v20

    #@34
    instance-of v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@36
    if-eqz v4, :cond_4

    #@38
    move-object/from16 v21, v20

    #@3a
    .line 997
    check-cast v21, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@3c
    .line 998
    .local v21, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v21

    #@3e
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@40
    move-object/from16 v0, v21

    #@42
    iget-object v5, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@44
    move-object/from16 v0, p0

    #@46
    invoke-virtual {v4, v5, v0, v12, v13}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    #@49
    move-result v8

    #@4a
    .line 1020
    .end local v10    # "d":J
    .end local v12    # "deadline":J
    .end local v20    # "t":Ljava/lang/Thread;
    .end local v21    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    if-ltz v8, :cond_2

    #@4c
    .line 1021
    move-object/from16 v0, p0

    #@4e
    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@50
    .line 1022
    :cond_2
    const/high16 v4, -0x10000000

    #@52
    and-int/2addr v8, v4

    #@53
    const/high16 v4, -0x10000000

    #@55
    if-eq v8, v4, :cond_b

    #@57
    .line 1023
    const/high16 v4, -0x40000000    # -2.0f

    #@59
    if-ne v8, v4, :cond_9

    #@5b
    .line 1024
    new-instance v4, Ljava/util/concurrent/CancellationException;

    #@5d
    invoke-direct {v4}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@60
    throw v4

    #@61
    .line 994
    .restart local v10    # "d":J
    :cond_3
    move-wide v12, v10

    #@62
    .restart local v12    # "deadline":J
    goto :goto_0

    #@63
    .line 1000
    .restart local v20    # "t":Ljava/lang/Thread;
    :cond_4
    move-object/from16 v0, p0

    #@65
    instance-of v4, v0, Ljava/util/concurrent/CountedCompleter;

    #@67
    if-eqz v4, :cond_6

    #@69
    .line 1001
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@6b
    move-object/from16 v4, p0

    #@6d
    .line 1002
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    #@6f
    const/4 v6, 0x0

    #@70
    .line 1001
    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    #@73
    move-result v8

    #@74
    .line 1000
    :goto_1
    if-ltz v8, :cond_1

    #@76
    .line 1006
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    #@78
    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@7a
    if-ltz v8, :cond_1

    #@7c
    .line 1007
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@7f
    move-result-wide v4

    #@80
    sub-long v18, v12, v4

    #@82
    .local v18, "ns":J
    const-wide/16 v4, 0x0

    #@84
    cmp-long v4, v18, v4

    #@86
    if-lez v4, :cond_1

    #@88
    .line 1008
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@8a
    move-wide/from16 v0, v18

    #@8c
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@8f
    move-result-wide v14

    #@90
    .local v14, "ms":J
    const-wide/16 v4, 0x0

    #@92
    cmp-long v4, v14, v4

    #@94
    if-lez v4, :cond_5

    #@96
    .line 1009
    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@98
    sget-wide v6, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@9a
    const/high16 v5, 0x10000

    #@9c
    or-int v9, v8, v5

    #@9e
    move-object/from16 v5, p0

    #@a0
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a3
    move-result v4

    #@a4
    .line 1008
    if-eqz v4, :cond_5

    #@a6
    .line 1010
    monitor-enter p0

    #@a7
    .line 1011
    :try_start_0
    move-object/from16 v0, p0

    #@a9
    iget v4, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@ab
    if-ltz v4, :cond_8

    #@ad
    .line 1012
    move-object/from16 v0, p0

    #@af
    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b2
    :goto_3
    monitor-exit p0

    #@b3
    goto :goto_2

    #@b4
    .line 1003
    .end local v14    # "ms":J
    .end local v18    # "ns":J
    :cond_6
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@b6
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@bb
    move-result v4

    #@bc
    if-eqz v4, :cond_7

    #@be
    .line 1004
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@c1
    move-result v8

    #@c2
    goto :goto_1

    #@c3
    :cond_7
    const/4 v8, 0x0

    #@c4
    goto :goto_1

    #@c5
    .line 1014
    .restart local v14    # "ms":J
    .restart local v18    # "ns":J
    :cond_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c8
    goto :goto_3

    #@c9
    .line 1010
    :catchall_0
    move-exception v4

    #@ca
    monitor-exit p0

    #@cb
    throw v4

    #@cc
    .line 1025
    .end local v10    # "d":J
    .end local v12    # "deadline":J
    .end local v14    # "ms":J
    .end local v18    # "ns":J
    .end local v20    # "t":Ljava/lang/Thread;
    :cond_9
    const/high16 v4, -0x80000000

    #@ce
    if-eq v8, v4, :cond_a

    #@d0
    .line 1026
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    #@d2
    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@d5
    throw v4

    #@d6
    .line 1027
    :cond_a
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    #@d8
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    #@db
    move-result-object v5

    #@dc
    invoke-direct {v4, v5}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@df
    throw v4

    #@e0
    .line 1029
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    #@e3
    move-result-object v4

    #@e4
    return-object v4
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    #@2
    .line 890
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@4
    and-int v0, v1, v2

    #@6
    .line 891
    .local v0, "s":I
    if-lt v0, v2, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    return-object v1

    #@a
    .line 892
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
    .line 893
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
    .line 1292
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
    .line 469
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    return-void
.end method

.method final internalWait(J)V
    .locals 7
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 274
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v4, "s":I
    if-ltz v4, :cond_0

    #@4
    .line 275
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@8
    const/high16 v1, 0x10000

    #@a
    or-int v5, v4, v1

    #@c
    move-object v1, p0

    #@d
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@10
    move-result v0

    #@11
    .line 274
    if-eqz v0, :cond_0

    #@13
    .line 276
    monitor-enter p0

    #@14
    .line 277
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    if-ltz v0, :cond_1

    #@18
    .line 278
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    :goto_0
    monitor-exit p0

    #@1c
    .line 272
    :cond_0
    return-void

    #@1d
    .line 278
    :catch_0
    move-exception v6

    #@1e
    .local v6, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    #@1f
    .line 280
    .end local v6    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 276
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
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
    .line 697
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@5
    move-result v1

    #@6
    and-int v0, v1, v2

    #@8
    .local v0, "s":I
    if-eq v0, v2, :cond_0

    #@a
    .line 698
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    #@d
    .line 699
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
    .line 859
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
    .line 868
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
    .line 879
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
    .line 855
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
    .line 682
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@5
    move-result v1

    #@6
    and-int v0, v1, v2

    #@8
    .local v0, "s":I
    if-eq v0, v2, :cond_0

    #@a
    .line 683
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    #@d
    .line 684
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
    .line 948
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x10000000

    #@2
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@5
    .line 947
    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    #@0
    .prologue
    .line 1048
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    #@3
    .line 1047
    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    #@0
    .prologue
    .line 1039
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    #@3
    .line 1038
    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 9
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 429
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@2
    .local v4, "s":I
    if-ltz v4, :cond_1

    #@4
    .line 430
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    .line 431
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 432
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@d
    .line 434
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    #@10
    .line 435
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@12
    .line 436
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v6, v5

    #@13
    add-int/lit8 v6, v6, -0x1

    #@15
    and-int v2, v1, v6

    #@17
    .line 437
    .local v2, "i":I
    aget-object v0, v5, v2

    #@19
    .line 438
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v0, :cond_2

    #@1b
    .line 439
    new-instance v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@1d
    aget-object v7, v5, v2

    #@1f
    .line 440
    sget-object v8, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    #@21
    .line 439
    invoke-direct {v6, p0, p1, v7, v8}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V

    #@24
    aput-object v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 447
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 449
    const/high16 v6, -0x80000000

    #@2b
    invoke-direct {p0, v6}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    #@2e
    move-result v4

    #@2f
    .line 451
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    return v4

    #@30
    .line 443
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v1    # "h":I
    .restart local v2    # "i":I
    .restart local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    if-eq v6, p0, :cond_0

    #@36
    .line 437
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 446
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v6

    #@3a
    .line 447
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3d
    .line 446
    throw v6
.end method

.method public reinitialize()V
    .locals 2

    #@0
    .prologue
    .line 1085
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
    .line 1086
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    #@c
    .line 1084
    :goto_0
    return-void

    #@d
    .line 1088
    :cond_0
    const/4 v0, 0x0

    #@e
    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@10
    goto :goto_0
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 6
    .param p1, "newValue"    # S

    #@0
    .prologue
    .line 1304
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    #@4
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@6
    .line 1305
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
    .line 1304
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1306
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

.method public tryUnfork()Z
    .locals 2

    #@0
    .prologue
    .line 1130
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
    .line 1131
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@f
    move-result v1

    #@10
    .line 1130
    :goto_0
    return v1

    #@11
    .line 1132
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
