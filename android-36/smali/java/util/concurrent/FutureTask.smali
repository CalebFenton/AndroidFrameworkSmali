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
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o CANCELLED:I = 0x4

.field private static final greylist-max-o COMPLETING:I = 0x1

.field private static final greylist EXCEPTIONAL:I = 0x3

.field private static final greylist-max-o INTERRUPTED:I = 0x6

.field private static final greylist-max-o INTERRUPTING:I = 0x5

.field private static final greylist-max-o NEW:I = 0x0

.field private static final greylist-max-o NORMAL:I = 0x2

.field private static final blacklist RUNNER:Ljava/lang/invoke/VarHandle;

.field private static final blacklist STATE:Ljava/lang/invoke/VarHandle;

.field private static final blacklist WAITERS:Ljava/lang/invoke/VarHandle;


# instance fields
.field private greylist callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private greylist outcome:Ljava/lang/Object;

.field private volatile greylist-max-o runner:Ljava/lang/Thread;

.field private volatile greylist state:I

.field private volatile greylist-max-o waiters:Ljava/util/concurrent/FutureTask$WaitNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 582
    const-class v0, Ljava/util/concurrent/FutureTask;

    :try_start_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 583
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "state"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/FutureTask;->STATE:Ljava/lang/invoke/VarHandle;

    .line 584
    const-string v2, "runner"

    const-class v3, Ljava/lang/Thread;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/FutureTask;->RUNNER:Ljava/lang/invoke/VarHandle;

    .line 585
    const-string v2, "waiters"

    const-class v3, Ljava/util/concurrent/FutureTask$WaitNode;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/FutureTask;->WAITERS:Ljava/lang/invoke/VarHandle;
    :try_end_24
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_24} :catch_28

    .line 588
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 592
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 593
    return-void

    .line 586
    :catch_28
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 154
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-eqz p1, :cond_b

    .line 135
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 137
    return-void

    .line 134
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o awaitDone(ZJ)I
    .registers 14
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 455
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const-wide/16 v0, 0x0

    .line 456
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 457
    .local v2, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v3, 0x0

    .line 459
    .local v3, "queued":Z
    :goto_4
    iget v4, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 460
    .local v4, "s":I
    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    .line 461
    if-eqz v2, :cond_e

    .line 462
    const/4 v5, 0x0

    iput-object v5, v2, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 463
    :cond_e
    return v4

    .line 465
    :cond_f
    if-ne v4, v5, :cond_15

    .line 468
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_6a

    .line 469
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_6b

    .line 473
    const-wide/16 v6, 0x0

    if-nez v2, :cond_2d

    .line 474
    if-eqz p1, :cond_26

    cmp-long v5, p2, v6

    if-gtz v5, :cond_26

    .line 475
    return v4

    .line 476
    :cond_26
    new-instance v5, Ljava/util/concurrent/FutureTask$WaitNode;

    invoke-direct {v5}, Ljava/util/concurrent/FutureTask$WaitNode;-><init>()V

    move-object v2, v5

    .end local v2    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .local v5, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_6a

    .line 478
    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v2    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_2d
    if-nez v3, :cond_3b

    .line 479
    sget-object v5, Ljava/util/concurrent/FutureTask;->WAITERS:Ljava/lang/invoke/VarHandle;

    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    iput-object v6, v2, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    invoke-polymorphic {v5, p0, v6, v2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/FutureTask$WaitNode;Ljava/util/concurrent/FutureTask$WaitNode;)Z

    move-result v3

    goto :goto_6a

    .line 480
    :cond_3b
    if-eqz p1, :cond_67

    .line 482
    cmp-long v8, v0, v6

    if-nez v8, :cond_4d

    .line 483
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 484
    cmp-long v6, v0, v6

    if-nez v6, :cond_4b

    .line 485
    const-wide/16 v0, 0x1

    .line 486
    :cond_4b
    move-wide v6, p2

    .local v6, "parkNanos":J
    goto :goto_5f

    .line 488
    .end local v6    # "parkNanos":J
    :cond_4d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 489
    .local v6, "elapsed":J
    cmp-long v8, v6, p2

    if-ltz v8, :cond_5c

    .line 490
    invoke-direct {p0, v2}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 491
    iget v5, p0, Ljava/util/concurrent/FutureTask;->state:I

    return v5

    .line 493
    :cond_5c
    sub-long v8, p2, v6

    move-wide v6, v8

    .line 496
    .local v6, "parkNanos":J
    :goto_5f
    iget v8, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ge v8, v5, :cond_66

    .line 497
    invoke-static {p0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 498
    .end local v6    # "parkNanos":J
    :cond_66
    goto :goto_6a

    .line 500
    :cond_67
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 501
    .end local v4    # "s":I
    :goto_6a
    goto :goto_4

    .line 470
    .restart local v4    # "s":I
    :cond_6b
    invoke-direct {p0, v2}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 471
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
.end method

.method private greylist-max-o finishCompletion()V
    .registers 5

    .line 416
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    nop

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v1, v0

    .local v1, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 417
    sget-object v0, Ljava/util/concurrent/FutureTask;->WAITERS:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/FutureTask$WaitNode;Ljava/lang/Void;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :goto_10
    iget-object v0, v1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 420
    .local v0, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_19

    .line 421
    iput-object v2, v1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 422
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 424
    :cond_19
    iget-object v3, v1, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 425
    .local v3, "next":Ljava/util/concurrent/FutureTask$WaitNode;
    if-nez v3, :cond_1e

    .line 426
    goto :goto_22

    .line 427
    :cond_1e
    iput-object v2, v1, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 428
    move-object v1, v3

    .line 429
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v3    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_10

    .line 434
    .end local v1    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_22
    :goto_22
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 436
    iput-object v2, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 437
    return-void
.end method

.method private greylist-max-o handlePossibleCancellationInterrupt(I)V
    .registers 4
    .param p1, "s"    # I

    .line 384
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    .line 385
    :goto_3
    iget v1, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ne v1, v0, :cond_b

    .line 386
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_3

    .line 397
    :cond_b
    return-void
.end method

.method private greylist-max-o removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/FutureTask$WaitNode;

    .line 515
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p1, :cond_28

    .line 516
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 519
    :goto_5
    const/4 v0, 0x0

    .local v0, "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v1, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .local v1, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :goto_8
    if-eqz v1, :cond_27

    .line 520
    iget-object v2, v1, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 521
    .local v2, "s":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v3, v1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_12

    .line 522
    move-object v0, v1

    goto :goto_25

    .line 523
    :cond_12
    if-eqz v0, :cond_1b

    .line 524
    iput-object v2, v0, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 525
    iget-object v3, v0, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_25

    .line 526
    goto :goto_5

    .line 528
    :cond_1b
    sget-object v3, Ljava/util/concurrent/FutureTask;->WAITERS:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/FutureTask$WaitNode;Ljava/util/concurrent/FutureTask$WaitNode;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 529
    goto :goto_5

    .line 519
    :cond_25
    :goto_25
    move-object v1, v2

    goto :goto_8

    .line 531
    .end local v0    # "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v1    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v2    # "s":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_27
    nop

    .line 534
    :cond_28
    return-void
.end method

.method private greylist-max-o report(I)Ljava/lang/Object;
    .registers 5
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

    .line 117
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 118
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 119
    return-object v0

    .line 120
    :cond_6
    const/4 v1, 0x4

    if-lt p1, v1, :cond_f

    .line 121
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 122
    :cond_f
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 5
    .param p1, "mayInterruptIfRunning"    # Z

    .line 165
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_39

    sget-object v0, Ljava/util/concurrent/FutureTask;->STATE:Ljava/lang/invoke/VarHandle;

    .line 166
    if-eqz p1, :cond_b

    const/4 v2, 0x5

    goto :goto_c

    :cond_b
    const/4 v2, 0x4

    :goto_c
    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/FutureTask;II)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_39

    .line 169
    :cond_14
    if-eqz p1, :cond_33

    .line 171
    const/4 v0, 0x6

    :try_start_17
    iget-object v1, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 172
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_1e

    .line 173
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_25

    .line 175
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1e
    :try_start_1e
    sget-object v1, Ljava/util/concurrent/FutureTask;->STATE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0, v0}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/FutureTask;I)V

    .line 176
    goto :goto_33

    .line 175
    :catchall_25
    move-exception v1

    sget-object v2, Ljava/util/concurrent/FutureTask;->STATE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, p0, v0}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/FutureTask;I)V

    .line 176
    nop

    .end local p0    # "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .end local p1    # "mayInterruptIfRunning":Z
    throw v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2e

    .line 179
    .restart local p0    # "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .restart local p1    # "mayInterruptIfRunning":Z
    :catchall_2e
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 180
    throw v0

    .line 179
    :cond_33
    :goto_33
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 180
    nop

    .line 181
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_39
    :goto_39
    return v1
.end method

.method protected whitelist test-api done()V
    .registers 1

    .line 270
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    return-void
.end method

.method public whitelist test-api exceptionNow()Ljava/lang/Throwable;
    .registers 3

    .line 226
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/FutureTask$1;->$SwitchMap$java$util$concurrent$Future$State:[I

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->state()Ljava/util/concurrent/Future$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Future$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task has not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task was cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :pswitch_1f
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 231
    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 228
    .end local v0    # "x":Ljava/lang/Object;
    :pswitch_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task completed with a result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 5
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

    .line 188
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 189
    .local v0, "s":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 190
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    .line 191
    :cond_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
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

    .line 199
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p3, :cond_1e

    .line 201
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 202
    .local v0, "s":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_19

    .line 203
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v2

    move v0, v2

    if-le v2, v1, :cond_13

    goto :goto_19

    .line 204
    :cond_13
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 205
    :cond_19
    :goto_19
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 200
    .end local v0    # "s":I
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isCancelled()Z
    .registers 3

    .line 157
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api isDone()Z
    .registers 2

    .line 161
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api resultNow()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 210
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/FutureTask$1;->$SwitchMap$java$util$concurrent$Future$State:[I

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->state()Ljava/util/concurrent/Future$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Future$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task has not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :pswitch_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task was cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :pswitch_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task completed with exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_27
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 214
    .local v0, "result":Ljava/lang/Object;, "TV;"
    return-object v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 308
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_45

    sget-object v0, Ljava/util/concurrent/FutureTask;->RUNNER:Ljava/lang/invoke/VarHandle;

    .line 309
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-polymorphic {v0, p0, v2, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/FutureTask;Ljava/lang/Void;Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_45

    .line 312
    :cond_13
    const/4 v0, 0x5

    :try_start_14
    iget-object v1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 313
    .local v1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v1, :cond_2f

    iget v3, p0, Ljava/util/concurrent/FutureTask;->state:I
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_3a

    if-nez v3, :cond_2f

    .line 317
    :try_start_1c
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_22

    .line 318
    .local v3, "result":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x1

    .line 323
    .local v4, "ran":Z
    goto :goto_2a

    .line 319
    .end local v3    # "result":Ljava/lang/Object;, "TV;"
    .end local v4    # "ran":Z
    :catchall_22
    move-exception v3

    .line 320
    .local v3, "ex":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 321
    .local v4, "result":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 322
    .local v5, "ran":Z
    :try_start_25
    invoke-virtual {p0, v3}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    move-object v3, v4

    move v4, v5

    .line 324
    .end local v5    # "ran":Z
    .local v3, "result":Ljava/lang/Object;, "TV;"
    .local v4, "ran":Z
    :goto_2a
    if-eqz v4, :cond_2f

    .line 325
    invoke-virtual {p0, v3}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_3a

    .line 330
    .end local v1    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v3    # "result":Ljava/lang/Object;, "TV;"
    .end local v4    # "ran":Z
    :cond_2f
    iput-object v2, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 333
    iget v1, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 334
    .local v1, "s":I
    if-lt v1, v0, :cond_38

    .line 335
    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 336
    .end local v1    # "s":I
    :cond_38
    nop

    .line 337
    return-void

    .line 330
    :catchall_3a
    move-exception v1

    iput-object v2, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 333
    iget v2, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 334
    .local v2, "s":I
    if-lt v2, v0, :cond_44

    .line 335
    invoke-direct {p0, v2}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 336
    .end local v2    # "s":I
    :cond_44
    throw v1

    .line 310
    :cond_45
    :goto_45
    return-void
.end method

.method protected whitelist test-api runAndReset()Z
    .registers 8

    .line 349
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_41

    sget-object v0, Ljava/util/concurrent/FutureTask;->RUNNER:Ljava/lang/invoke/VarHandle;

    .line 350
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-polymorphic {v0, p0, v3, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/FutureTask;Ljava/lang/Void;Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_41

    .line 352
    :cond_14
    const/4 v0, 0x0

    .line 353
    .local v0, "ran":Z
    iget v2, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 355
    .local v2, "s":I
    const/4 v4, 0x5

    :try_start_18
    iget-object v5, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_36

    .line 356
    .local v5, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v5, :cond_27

    if-nez v2, :cond_27

    .line 358
    :try_start_1e
    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    .line 359
    const/4 v0, 0x1

    .line 362
    goto :goto_27

    .line 360
    :catchall_23
    move-exception v6

    .line 361
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_24
    invoke-virtual {p0, v6}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_36

    .line 367
    .end local v5    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_27
    :goto_27
    iput-object v3, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 370
    iget v2, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 371
    if-lt v2, v4, :cond_30

    .line 372
    invoke-direct {p0, v2}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 374
    :cond_30
    if-eqz v0, :cond_35

    if-nez v2, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1

    .line 367
    :catchall_36
    move-exception v1

    iput-object v3, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 370
    iget v2, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 371
    if-lt v2, v4, :cond_40

    .line 372
    invoke-direct {p0, v2}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 373
    :cond_40
    throw v1

    .line 351
    .end local v0    # "ran":Z
    .end local v2    # "s":I
    :cond_41
    :goto_41
    return v1
.end method

.method protected whitelist test-api set(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->STATE:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/FutureTask;II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 283
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 284
    sget-object v0, Ljava/util/concurrent/FutureTask;->STATE:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x2

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/FutureTask;I)V

    .line 285
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 287
    :cond_17
    return-void
.end method

.method protected whitelist test-api setException(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 300
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->STATE:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/FutureTask;II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 301
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 302
    sget-object v0, Ljava/util/concurrent/FutureTask;->STATE:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x3

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/FutureTask;I)V

    .line 303
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 305
    :cond_17
    return-void
.end method

.method public whitelist test-api state()Ljava/util/concurrent/Future$State;
    .registers 3

    .line 241
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 242
    .local v0, "s":I
    :goto_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 244
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 245
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    goto :goto_2

    .line 247
    :cond_b
    packed-switch v0, :pswitch_data_1a

    .line 257
    sget-object v1, Ljava/util/concurrent/Future$State;->RUNNING:Ljava/util/concurrent/Future$State;

    return-object v1

    .line 255
    :pswitch_11
    sget-object v1, Ljava/util/concurrent/Future$State;->CANCELLED:Ljava/util/concurrent/Future$State;

    return-object v1

    .line 251
    :pswitch_14
    sget-object v1, Ljava/util/concurrent/Future$State;->FAILED:Ljava/util/concurrent/Future$State;

    return-object v1

    .line 249
    :pswitch_17
    sget-object v1, Ljava/util/concurrent/Future$State;->SUCCESS:Ljava/util/concurrent/Future$State;

    return-object v1

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 550
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    packed-switch v0, :pswitch_data_40

    .line 570
    const-string v0, "[Not completed]"

    .local v0, "status":Ljava/lang/String;
    goto :goto_2a

    .line 560
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_8
    const-string v0, "[Cancelled]"

    .line 561
    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_2a

    .line 555
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Completed exceptionally: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_2a

    .line 552
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_27
    const-string v0, "[Completed normally]"

    .line 553
    .restart local v0    # "status":Ljava/lang/String;
    nop

    .line 573
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_27
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
