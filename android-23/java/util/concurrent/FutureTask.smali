.class public Ljava/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/FutureTask$WaitNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x1

.field private static final EXCEPTIONAL:I = 0x3

.field private static final INTERRUPTED:I = 0x6

.field private static final INTERRUPTING:I = 0x5

.field private static final NEW:I = 0x0

.field private static final NORMAL:I = 0x2

.field private static final RUNNER:J

.field private static final STATE:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITERS:J


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private outcome:Ljava/lang/Object;

.field private volatile runner:Ljava/lang/Thread;

.field private volatile state:I

.field private volatile waiters:Ljava/util/concurrent/FutureTask$WaitNode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 458
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@6
    .line 464
    :try_start_0
    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@8
    .line 465
    const-class v3, Ljava/util/concurrent/FutureTask;

    #@a
    const-string/jumbo v4, "state"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 464
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    #@17
    .line 466
    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@19
    .line 467
    const-class v3, Ljava/util/concurrent/FutureTask;

    #@1b
    const-string/jumbo v4, "runner"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v3

    #@22
    .line 466
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    #@28
    .line 468
    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@2a
    .line 469
    const-class v3, Ljava/util/concurrent/FutureTask;

    #@2c
    const-string/jumbo v4, "waiters"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v3

    #@33
    .line 468
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@36
    move-result-wide v2

    #@37
    sput-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 476
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@3b
    .line 35
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@3c
    .line 470
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    #@3d
    .line 471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@3f
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@42
    throw v2
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    #@9
    .line 125
    const/4 v0, 0x0

    #@a
    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@c
    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    if-nez p1, :cond_0

    #@5
    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 107
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    #@d
    .line 108
    const/4 v0, 0x0

    #@e
    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@10
    .line 104
    return-void
.end method

.method private awaitDone(ZJ)I
    .locals 14
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const-wide/16 v12, 0x0

    #@2
    .line 376
    .local v12, "startTime":J
    const/4 v5, 0x0

    #@3
    .line 377
    .local v5, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v10, 0x0

    #@4
    .line 379
    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_0
    :goto_0
    iget v11, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@6
    .line 380
    .local v11, "s":I
    const/4 v0, 0x1

    #@7
    if-le v11, v0, :cond_2

    #@9
    .line 381
    if-eqz v5, :cond_1

    #@b
    .line 382
    const/4 v0, 0x0

    #@c
    iput-object v0, v5, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    #@e
    .line 383
    :cond_1
    return v11

    #@f
    .line 385
    :cond_2
    const/4 v0, 0x1

    #@10
    if-ne v11, v0, :cond_3

    #@12
    .line 388
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@15
    goto :goto_0

    #@16
    .line 389
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_4

    #@1c
    .line 390
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    #@1f
    .line 391
    new-instance v0, Ljava/lang/InterruptedException;

    #@21
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@24
    throw v0

    #@25
    .line 393
    :cond_4
    if-nez v5, :cond_6

    #@27
    .line 394
    if-eqz p1, :cond_5

    #@29
    const-wide/16 v0, 0x0

    #@2b
    cmp-long v0, p2, v0

    #@2d
    if-gtz v0, :cond_5

    #@2f
    .line 395
    return v11

    #@30
    .line 396
    :cond_5
    new-instance v5, Ljava/util/concurrent/FutureTask$WaitNode;

    #@32
    invoke-direct {v5}, Ljava/util/concurrent/FutureTask$WaitNode;-><init>()V

    #@35
    .local v5, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_0

    #@36
    .line 398
    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_6
    if-nez v10, :cond_7

    #@38
    .line 399
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@3a
    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    #@3c
    .line 400
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    #@3e
    iput-object v4, v5, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    #@40
    move-object v1, p0

    #@41
    .line 399
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@44
    move-result v10

    #@45
    .local v10, "queued":Z
    goto :goto_0

    #@46
    .line 401
    .end local v10    # "queued":Z
    :cond_7
    if-eqz p1, :cond_b

    #@48
    .line 403
    const-wide/16 v0, 0x0

    #@4a
    cmp-long v0, v12, v0

    #@4c
    if-nez v0, :cond_9

    #@4e
    .line 404
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@51
    move-result-wide v12

    #@52
    .line 405
    const-wide/16 v0, 0x0

    #@54
    cmp-long v0, v12, v0

    #@56
    if-nez v0, :cond_8

    #@58
    .line 406
    const-wide/16 v12, 0x1

    #@5a
    .line 407
    :cond_8
    move-wide/from16 v8, p2

    #@5c
    .line 417
    .local v8, "parkNanos":J
    :goto_1
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@5e
    const/4 v1, 0x1

    #@5f
    if-ge v0, v1, :cond_0

    #@61
    .line 418
    invoke-static {p0, v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@64
    goto :goto_0

    #@65
    .line 409
    .end local v8    # "parkNanos":J
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@68
    move-result-wide v0

    #@69
    sub-long v6, v0, v12

    #@6b
    .line 410
    .local v6, "elapsed":J
    cmp-long v0, v6, p2

    #@6d
    if-ltz v0, :cond_a

    #@6f
    .line 411
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    #@72
    .line 412
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@74
    return v0

    #@75
    .line 414
    :cond_a
    sub-long v8, p2, v6

    #@77
    .restart local v8    # "parkNanos":J
    goto :goto_1

    #@78
    .line 421
    .end local v6    # "elapsed":J
    .end local v8    # "parkNanos":J
    :cond_b
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@7b
    goto :goto_0
.end method

.method private finishCompletion()V
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v5, 0x0

    #@1
    .line 336
    :cond_0
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    #@3
    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    if-eqz v4, :cond_2

    #@5
    .line 337
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@7
    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    #@9
    move-object v1, p0

    #@a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 339
    :goto_0
    iget-object v7, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    #@12
    .line 340
    .local v7, "t":Ljava/lang/Thread;
    if-eqz v7, :cond_1

    #@14
    .line 341
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    #@16
    .line 342
    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@19
    .line 344
    :cond_1
    iget-object v6, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    #@1b
    .line 345
    .local v6, "next":Ljava/util/concurrent/FutureTask$WaitNode;
    if-nez v6, :cond_3

    #@1d
    .line 354
    .end local v6    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v7    # "t":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->done()V

    #@20
    .line 356
    iput-object v5, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    #@22
    .line 334
    return-void

    #@23
    .line 347
    .restart local v6    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v7    # "t":Ljava/lang/Thread;
    :cond_3
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    #@25
    .line 348
    move-object v4, v6

    #@26
    goto :goto_0
.end method

.method private handlePossibleCancellationInterrupt(I)V
    .locals 2
    .param p1, "s"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x5

    #@1
    .line 304
    if-ne p1, v1, :cond_0

    #@3
    .line 305
    :goto_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 306
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@a
    goto :goto_0

    #@b
    .line 301
    :cond_0
    return-void
.end method

.method private removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V
    .locals 7
    .param p1, "node"    # Ljava/util/concurrent/FutureTask$WaitNode;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v0, 0x0

    #@1
    .line 436
    if-eqz p1, :cond_3

    #@3
    .line 437
    iput-object v0, p1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    #@5
    .line 440
    :goto_0
    const/4 v6, 0x0

    #@6
    .local v6, "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    #@8
    .end local v6    # "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :goto_1
    if-eqz v4, :cond_3

    #@a
    .line 441
    iget-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    #@c
    .line 442
    .local v5, "s":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v0, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 443
    move-object v6, v4

    #@11
    .line 440
    :cond_0
    move-object v4, v5

    #@12
    goto :goto_1

    #@13
    .line 444
    :cond_1
    if-eqz v6, :cond_2

    #@15
    .line 445
    iput-object v5, v6, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    #@17
    .line 446
    iget-object v0, v6, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    #@19
    if-nez v0, :cond_0

    #@1b
    goto :goto_0

    #@1c
    .line 449
    :cond_2
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@1e
    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    #@20
    move-object v1, p0

    #@21
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_0

    #@27
    goto :goto_0

    #@28
    .line 435
    .end local v4    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v5    # "s":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_3
    return-void
.end method

.method private report(I)Ljava/lang/Object;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    #@2
    .line 90
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 91
    return-object v0

    #@6
    .line 92
    :cond_0
    const/4 v1, 0x4

    #@7
    if-lt p1, v1, :cond_1

    #@9
    .line 93
    new-instance v1, Ljava/util/concurrent/CancellationException;

    #@b
    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@e
    throw v1

    #@f
    .line 94
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    #@11
    check-cast v0, Ljava/lang/Throwable;

    #@13
    .end local v0    # "x":Ljava/lang/Object;
    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 7
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v4, 0x0

    #@1
    .line 137
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@3
    if-nez v0, :cond_1

    #@5
    .line 138
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@7
    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    #@9
    .line 139
    if-eqz p1, :cond_0

    #@b
    const/4 v5, 0x5

    #@c
    :goto_0
    move-object v1, p0

    #@d
    .line 138
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@10
    move-result v0

    #@11
    .line 137
    :goto_1
    if-nez v0, :cond_2

    #@13
    .line 140
    return v4

    #@14
    .line 139
    :cond_0
    const/4 v5, 0x4

    #@15
    goto :goto_0

    #@16
    :cond_1
    move v0, v4

    #@17
    .line 137
    goto :goto_1

    #@18
    .line 142
    :cond_2
    if-eqz p1, :cond_4

    #@1a
    .line 144
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    #@1c
    .line 145
    .local v6, "t":Ljava/lang/Thread;
    if-eqz v6, :cond_3

    #@1e
    .line 146
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 148
    :cond_3
    :try_start_1
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@23
    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    #@25
    const/4 v1, 0x6

    #@26
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    .line 152
    .end local v6    # "t":Ljava/lang/Thread;
    :cond_4
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    #@2c
    .line 154
    const/4 v0, 0x1

    #@2d
    return v0

    #@2e
    .line 147
    :catchall_0
    move-exception v0

    #@2f
    .line 148
    :try_start_2
    sget-object v1, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@31
    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    #@33
    const/4 v4, 0x6

    #@34
    invoke-virtual {v1, p0, v2, v3, v4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@37
    .line 147
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@38
    .line 151
    :catchall_1
    move-exception v0

    #@39
    .line 152
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    #@3c
    .line 151
    throw v0
.end method

.method protected done()V
    .locals 0

    #@0
    .prologue
    .line 190
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 4
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
    .line 161
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@2
    .line 162
    .local v0, "s":I
    const/4 v1, 0x1

    #@3
    if-gt v0, v1, :cond_0

    #@5
    .line 163
    const/4 v1, 0x0

    #@6
    const-wide/16 v2, 0x0

    #@8
    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    #@b
    move-result v0

    #@c
    .line 164
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
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
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x1

    #@1
    .line 172
    if-nez p3, :cond_0

    #@3
    .line 173
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 174
    :cond_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@b
    .line 175
    .local v0, "s":I
    if-gt v0, v1, :cond_1

    #@d
    .line 176
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@10
    move-result-wide v2

    #@11
    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    #@14
    move-result v0

    #@15
    if-gt v0, v1, :cond_1

    #@17
    .line 177
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    #@19
    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@1c
    throw v1

    #@1d
    .line 178
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public isCancelled()Z
    .locals 2

    #@0
    .prologue
    .line 129
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@2
    const/4 v1, 0x4

    #@3
    if-lt v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isDone()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v0, 0x0

    #@1
    .line 133
    iget v1, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public run()V
    .locals 12

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    #@1
    const/4 v4, 0x0

    #@2
    .line 228
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@4
    if-nez v0, :cond_2

    #@6
    .line 229
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@8
    sget-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    #@a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@d
    move-result-object v5

    #@e
    move-object v1, p0

    #@f
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 232
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    #@17
    .line 233
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_0

    #@19
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 237
    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result-object v9

    #@21
    .line 238
    .local v9, "result":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x1

    #@22
    .line 244
    .end local v9    # "result":Ljava/lang/Object;, "TV;"
    .local v8, "ran":Z
    :goto_0
    if-eqz v8, :cond_0

    #@24
    .line 245
    :try_start_2
    invoke-virtual {p0, v9}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    .line 250
    .end local v8    # "ran":Z
    :cond_0
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    #@29
    .line 253
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@2b
    .line 254
    .local v10, "s":I
    if-lt v10, v11, :cond_1

    #@2d
    .line 255
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    #@30
    .line 227
    :cond_1
    return-void

    #@31
    .line 230
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v10    # "s":I
    :cond_2
    return-void

    #@32
    .line 239
    .restart local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :catch_0
    move-exception v7

    #@33
    .line 240
    .local v7, "ex":Ljava/lang/Throwable;
    const/4 v9, 0x0

    #@34
    .line 241
    .restart local v9    # "result":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    #@35
    .line 242
    .restart local v8    # "ran":Z
    :try_start_3
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 247
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v8    # "ran":Z
    .end local v9    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    #@3a
    .line 250
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    #@3c
    .line 253
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@3e
    .line 254
    .restart local v10    # "s":I
    if-lt v10, v11, :cond_3

    #@40
    .line 255
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    #@43
    .line 247
    :cond_3
    throw v0
.end method

.method protected runAndReset()Z
    .locals 12

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 269
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@5
    if-nez v0, :cond_2

    #@7
    .line 270
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@9
    sget-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    #@b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@e
    move-result-object v5

    #@f
    move-object v1, p0

    #@10
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 272
    const/4 v8, 0x0

    #@17
    .line 273
    .local v8, "ran":Z
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@19
    .line 275
    .local v9, "s":I
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 276
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_0

    #@1d
    if-nez v9, :cond_0

    #@1f
    .line 278
    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 279
    const/4 v8, 0x1

    #@23
    .line 287
    :cond_0
    :goto_0
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    #@25
    .line 290
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@27
    .line 291
    if-lt v9, v11, :cond_1

    #@29
    .line 292
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    #@2c
    .line 294
    :cond_1
    if-eqz v8, :cond_4

    #@2e
    if-nez v9, :cond_4

    #@30
    const/4 v0, 0x1

    #@31
    :goto_1
    return v0

    #@32
    .line 271
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v8    # "ran":Z
    .end local v9    # "s":I
    :cond_2
    return v10

    #@33
    .line 280
    .restart local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .restart local v8    # "ran":Z
    .restart local v9    # "s":I
    :catch_0
    move-exception v7

    #@34
    .line 281
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 284
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    #@39
    .line 287
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    #@3b
    .line 290
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    #@3d
    .line 291
    if-lt v9, v11, :cond_3

    #@3f
    .line 292
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    #@42
    .line 284
    :cond_3
    throw v0

    #@43
    .restart local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :cond_4
    move v0, v10

    #@44
    .line 294
    goto :goto_1
.end method

.method protected set(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 202
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 203
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    #@f
    .line 204
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@11
    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    #@13
    const/4 v1, 0x2

    #@14
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@17
    .line 205
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    #@1a
    .line 201
    :cond_0
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 220
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 221
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    #@f
    .line 222
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    #@11
    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    #@13
    const/4 v1, 0x3

    #@14
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@17
    .line 223
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    #@1a
    .line 219
    :cond_0
    return-void
.end method
