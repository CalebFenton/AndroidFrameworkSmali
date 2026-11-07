.class public Ljava/util/concurrent/SubmissionPublisher;
.super Ljava/lang/Object;
.source "SubmissionPublisher.java"

# interfaces
.implements Ljava/util/concurrent/Flow$Publisher;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;,
        Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;,
        Ljava/util/concurrent/SubmissionPublisher$ThreadPerTaskExecutor;,
        Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Flow$Publisher<",
        "TT;>;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final blacklist ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final blacklist BUFFER_CAPACITY_LIMIT:I = 0x40000000

.field static final blacklist INITIAL_CAPACITY:I = 0x20


# instance fields
.field blacklist clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile blacklist closed:Z

.field volatile blacklist closedException:Ljava/lang/Throwable;

.field final blacklist executor:Ljava/util/concurrent/Executor;

.field final blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final blacklist maxBufferCapacity:I

.field final blacklist onNextHandler:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "-",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field blacklist owner:Ljava/lang/Thread;

.field blacklist subscribed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 214
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    .line 215
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    goto :goto_11

    :cond_c
    new-instance v0, Ljava/util/concurrent/SubmissionPublisher$ThreadPerTaskExecutor;

    invoke-direct {v0}, Ljava/util/concurrent/SubmissionPublisher$ThreadPerTaskExecutor;-><init>()V

    :goto_11
    sput-object v0, Ljava/util/concurrent/SubmissionPublisher;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    .line 213
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 4

    .line 317
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    sget-object v0, Ljava/util/concurrent/SubmissionPublisher;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/concurrent/Flow;->defaultBufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/SubmissionPublisher;-><init>(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V

    .line 318
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/concurrent/Executor;I)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "maxBufferCapacity"    # I

    .line 304
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/SubmissionPublisher;-><init>(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V

    .line 305
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "maxBufferCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/function/BiConsumer<",
            "-",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p3, "handler":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/util/concurrent/Flow$Subscriber<-TT;>;-Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    if-eqz p1, :cond_21

    .line 278
    if-lez p2, :cond_19

    .line 280
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 281
    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher;->executor:Ljava/util/concurrent/Executor;

    .line 282
    iput-object p3, p0, Ljava/util/concurrent/SubmissionPublisher;->onNextHandler:Ljava/util/function/BiConsumer;

    .line 283
    invoke-static {p2}, Ljava/util/concurrent/SubmissionPublisher;->roundCapacity(I)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/SubmissionPublisher;->maxBufferCapacity:I

    .line 284
    return-void

    .line 279
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist cleanAndCount()I
    .registers 6

    .line 478
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    const/4 v0, 0x0

    .line 479
    .local v0, "count":I
    const/4 v1, 0x0

    .line 480
    .local v1, "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget-object v2, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .local v2, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_4
    if-eqz v2, :cond_1e

    .line 481
    iget-object v3, v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 482
    .local v3, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 483
    const/4 v4, 0x0

    iput-object v4, v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 484
    if-nez v1, :cond_16

    .line 485
    iput-object v3, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_1c

    .line 487
    :cond_16
    iput-object v3, v1, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_1c

    .line 490
    :cond_19
    move-object v1, v2

    .line 491
    add-int/lit8 v0, v0, 0x1

    .line 480
    :goto_1c
    move-object v2, v3

    goto :goto_4

    .line 494
    .end local v2    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v3    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_1e
    return v0
.end method

.method private blacklist doOffer(Ljava/lang/Object;JLjava/util/function/BiPredicate;)I
    .registers 22
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/function/BiPredicate<",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;-TT;>;)I"
        }
    .end annotation

    .line 398
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p4, "onDrop":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/util/concurrent/Flow$Subscriber<-TT;>;-TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_92

    .line 399
    const/4 v3, 0x0

    .line 401
    .local v3, "lag":I
    iget-object v9, v1, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 402
    .local v9, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 404
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 405
    .local v0, "t":Ljava/lang/Thread;
    iget-object v4, v1, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 406
    .local v4, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget-object v5, v1, Ljava/util/concurrent/SubmissionPublisher;->owner:Ljava/lang/Thread;

    move-object v10, v5

    .local v10, "o":Ljava/lang/Thread;
    if-eq v5, v0, :cond_19

    const/4 v5, 0x1

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    :goto_1a
    move v11, v5

    .local v11, "unowned":Z
    const/4 v6, 0x0

    if-eqz v5, :cond_22

    if-eqz v10, :cond_22

    .line 407
    iput-object v6, v1, Ljava/util/concurrent/SubmissionPublisher;->owner:Ljava/lang/Thread;

    .line 408
    :cond_22
    if-nez v4, :cond_28

    .line 409
    iget-boolean v5, v1, Ljava/util/concurrent/SubmissionPublisher;->closed:Z

    .local v5, "complete":Z
    goto/16 :goto_70

    .line 411
    .end local v5    # "complete":Z
    :cond_28
    const/4 v12, 0x0

    .line 412
    .local v12, "complete":Z
    const/4 v5, 0x0

    .line 413
    .local v5, "cleanMe":Z
    const/4 v7, 0x0

    .local v7, "retries":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const/4 v8, 0x0

    .line 415
    .local v8, "rtail":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_2c
    iget-object v13, v4, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 416
    .local v13, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {v4, v2, v11}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->offer(Ljava/lang/Object;Z)I

    move-result v14

    .line 417
    .local v14, "stat":I
    if-nez v14, :cond_43

    .line 418
    iput-object v6, v4, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->nextRetry:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 419
    if-nez v8, :cond_3a

    .line 420
    move-object v7, v4

    goto :goto_3c

    .line 422
    :cond_3a
    iput-object v4, v8, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->nextRetry:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_8d

    .line 423
    :goto_3c
    move-object v8, v4

    move-object v14, v8

    move v8, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v3

    goto :goto_5a

    .line 425
    :cond_43
    if-gez v14, :cond_4c

    .line 426
    const/4 v5, 0x1

    move-object v14, v8

    move v8, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v3

    goto :goto_5a

    .line 427
    :cond_4c
    if-le v14, v3, :cond_55

    .line 428
    move v3, v14

    move-object v14, v8

    move v8, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v3

    goto :goto_5a

    .line 427
    :cond_55
    move-object v14, v8

    move v8, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v3

    .line 429
    .end local v3    # "lag":I
    .end local v5    # "cleanMe":Z
    .local v6, "retries":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local v7, "lag":I
    .local v8, "cleanMe":Z
    .local v14, "rtail":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_5a
    move-object v15, v13

    .end local v4    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local v15, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    if-nez v13, :cond_82

    .line 431
    if-nez v6, :cond_65

    if-eqz v8, :cond_62

    goto :goto_65

    :cond_62
    move v3, v7

    move v5, v12

    goto :goto_70

    .line 432
    :cond_65
    :goto_65
    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    :try_start_69
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/SubmissionPublisher;->retryOffer(Ljava/lang/Object;JLjava/util/function/BiPredicate;Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;IZ)I

    move-result v16
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_7f

    move/from16 v3, v16

    move v5, v12

    .line 435
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v6    # "retries":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v7    # "lag":I
    .end local v8    # "cleanMe":Z
    .end local v10    # "o":Ljava/lang/Thread;
    .end local v12    # "complete":Z
    .end local v13    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v14    # "rtail":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v15    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .restart local v3    # "lag":I
    .local v5, "complete":Z
    :goto_70
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 436
    nop

    .line 437
    if-nez v5, :cond_77

    .line 440
    return v3

    .line 438
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    .end local v3    # "lag":I
    .end local v5    # "complete":Z
    .end local v11    # "unowned":Z
    .restart local v7    # "lag":I
    :catchall_7f
    move-exception v0

    move v3, v7

    goto :goto_8e

    .line 429
    .restart local v0    # "t":Ljava/lang/Thread;
    .restart local v6    # "retries":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .restart local v8    # "cleanMe":Z
    .restart local v10    # "o":Ljava/lang/Thread;
    .restart local v11    # "unowned":Z
    .restart local v12    # "complete":Z
    .restart local v13    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .restart local v14    # "rtail":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .restart local v15    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_82
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v7

    move-object v4, v15

    move-object v7, v6

    move-object v6, v5

    move v5, v8

    move-object v8, v14

    goto :goto_2c

    .line 435
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v6    # "retries":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v7    # "lag":I
    .end local v8    # "cleanMe":Z
    .end local v10    # "o":Ljava/lang/Thread;
    .end local v11    # "unowned":Z
    .end local v12    # "complete":Z
    .end local v13    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v14    # "rtail":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v15    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .restart local v3    # "lag":I
    :catchall_8d
    move-exception v0

    :goto_8e
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 436
    throw v0

    .line 398
    .end local v3    # "lag":I
    .end local v9    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist retryOffer(Ljava/lang/Object;JLjava/util/function/BiPredicate;Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;IZ)I
    .registers 12
    .param p2, "nanos"    # J
    .param p6, "lag"    # I
    .param p7, "cleanMe"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/function/BiPredicate<",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;-TT;>;",
            "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<",
            "TT;>;IZ)I"
        }
    .end annotation

    .line 451
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p4, "onDrop":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/util/concurrent/Flow$Subscriber<-TT;>;-TT;>;"
    .local p5, "retries":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    move-object v0, p5

    .local v0, "r":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_1
    if-eqz v0, :cond_3a

    .line 452
    iget-object v1, v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->nextRetry:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 453
    .local v1, "nextRetry":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->nextRetry:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 454
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_11

    .line 455
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->awaitSpace(J)V

    .line 456
    :cond_11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->retryOffer(Ljava/lang/Object;)I

    move-result v2

    .line 457
    .local v2, "stat":I
    if-nez v2, :cond_25

    if-eqz p4, :cond_25

    iget-object v3, v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->subscriber:Ljava/util/concurrent/Flow$Subscriber;

    invoke-interface {p4, v3, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 458
    invoke-virtual {v0, p1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->retryOffer(Ljava/lang/Object;)I

    move-result v2

    .line 459
    :cond_25
    if-nez v2, :cond_2f

    .line 460
    if-ltz p6, :cond_2b

    const/4 v3, -0x1

    goto :goto_2d

    :cond_2b
    add-int/lit8 v3, p6, -0x1

    :goto_2d
    move p6, v3

    .end local p6    # "lag":I
    .local v3, "lag":I
    goto :goto_38

    .line 461
    .end local v3    # "lag":I
    .restart local p6    # "lag":I
    :cond_2f
    if-gez v2, :cond_33

    .line 462
    const/4 p7, 0x1

    goto :goto_38

    .line 463
    :cond_33
    if-ltz p6, :cond_38

    if-le v2, p6, :cond_38

    .line 464
    move p6, v2

    .line 465
    :cond_38
    :goto_38
    move-object v0, v1

    .line 466
    .end local v1    # "nextRetry":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v2    # "stat":I
    goto :goto_1

    .line 467
    .end local v0    # "r":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_3a
    if-eqz p7, :cond_3f

    .line 468
    invoke-direct {p0}, Ljava/util/concurrent/SubmissionPublisher;->cleanAndCount()I

    .line 469
    :cond_3f
    return p6
.end method

.method static final blacklist roundCapacity(I)I
    .registers 3
    .param p0, "cap"    # I

    .line 197
    add-int/lit8 v0, p0, -0x1

    .line 198
    .local v0, "n":I
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 199
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 200
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 201
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 202
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 203
    if-gtz v0, :cond_15

    const/4 v1, 0x1

    goto :goto_1c

    .line 204
    :cond_15
    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_1a

    goto :goto_1c

    :cond_1a
    add-int/lit8 v1, v0, 0x1

    .line 203
    :goto_1c
    return v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 624
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 625
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v1, p0, Ljava/util/concurrent/SubmissionPublisher;->closed:Z

    if-nez v1, :cond_27

    .line 627
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 630
    :try_start_9
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 631
    .local v1, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 632
    iput-object v2, p0, Ljava/util/concurrent/SubmissionPublisher;->owner:Ljava/lang/Thread;

    .line 633
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/concurrent/SubmissionPublisher;->closed:Z
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_22

    .line 635
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 636
    nop

    .line 637
    :goto_17
    if-eqz v1, :cond_27

    .line 638
    iget-object v3, v1, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 639
    .local v3, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iput-object v2, v1, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 640
    invoke-virtual {v1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onComplete()V

    .line 641
    move-object v1, v3

    .line 642
    .end local v3    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    goto :goto_17

    .line 635
    .end local v1    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 636
    throw v1

    .line 644
    :cond_27
    return-void
.end method

.method public whitelist test-api closeExceptionally(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 658
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    if-eqz p1, :cond_30

    .line 660
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 661
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v1, p0, Ljava/util/concurrent/SubmissionPublisher;->closed:Z

    if-nez v1, :cond_2f

    .line 663
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 665
    :try_start_b
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 666
    .local v1, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget-boolean v2, p0, Ljava/util/concurrent/SubmissionPublisher;->closed:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    .line 667
    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher;->closedException:Ljava/lang/Throwable;

    .line 668
    iput-object v3, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 669
    iput-object v3, p0, Ljava/util/concurrent/SubmissionPublisher;->owner:Ljava/lang/Thread;

    .line 670
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/concurrent/SubmissionPublisher;->closed:Z
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_2a

    .line 673
    :cond_1b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 674
    nop

    .line 675
    :goto_1f
    if-eqz v1, :cond_2f

    .line 676
    iget-object v2, v1, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 677
    .local v2, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iput-object v3, v1, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 678
    invoke-virtual {v1, p1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onError(Ljava/lang/Throwable;)V

    .line 679
    move-object v1, v2

    .line 680
    .end local v2    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    goto :goto_1f

    .line 673
    .end local v1    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 674
    throw v1

    .line 682
    :cond_2f
    return-void

    .line 659
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api consume(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 922
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_10

    .line 924
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 925
    .local v0, "status":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/SubmissionPublisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 926
    return-object v0

    .line 923
    .end local v0    # "status":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api estimateMaximumLag()I
    .registers 8

    .line 879
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    const/4 v0, 0x0

    .line 880
    .local v0, "max":I
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 881
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 883
    const/4 v2, 0x0

    .line 884
    .local v2, "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :try_start_7
    iget-object v3, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .local v3, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_9
    if-eqz v3, :cond_25

    .line 886
    iget-object v4, v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 887
    .local v4, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->estimateLag()I

    move-result v5

    move v6, v5

    .local v6, "n":I
    if-gez v5, :cond_1f

    .line 888
    const/4 v5, 0x0

    iput-object v5, v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 889
    if-nez v2, :cond_1c

    .line 890
    iput-object v4, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_23

    .line 892
    :cond_1c
    iput-object v4, v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2a

    goto :goto_23

    .line 895
    :cond_1f
    if-le v6, v0, :cond_22

    .line 896
    move v0, v6

    .line 897
    :cond_22
    move-object v2, v3

    .line 884
    .end local v6    # "n":I
    :goto_23
    move-object v3, v4

    goto :goto_9

    .line 901
    .end local v2    # "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v3    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v4    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 902
    nop

    .line 903
    return v0

    .line 901
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 902
    throw v2
.end method

.method public whitelist test-api estimateMinimumDemand()J
    .registers 14

    .line 843
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 844
    .local v0, "min":J
    const/4 v2, 0x0

    .line 845
    .local v2, "nonEmpty":Z
    iget-object v3, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 846
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 848
    const/4 v4, 0x0

    .line 849
    .local v4, "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :try_start_c
    iget-object v5, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .local v5, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_e
    if-eqz v5, :cond_32

    .line 851
    iget-object v6, v5, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 852
    .local v6, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->estimateLag()I

    move-result v7

    move v8, v7

    .local v8, "n":I
    if-gez v7, :cond_24

    .line 853
    const/4 v7, 0x0

    iput-object v7, v5, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 854
    if-nez v4, :cond_21

    .line 855
    iput-object v6, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_30

    .line 857
    :cond_21
    iput-object v6, v4, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_30

    .line 860
    :cond_24
    iget-wide v9, v5, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->demand:J
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_3d

    int-to-long v11, v8

    sub-long/2addr v9, v11

    move-wide v11, v9

    .local v11, "d":J
    cmp-long v7, v9, v0

    if-gez v7, :cond_2e

    .line 861
    move-wide v0, v11

    .line 862
    :cond_2e
    const/4 v2, 0x1

    .line 863
    move-object v4, v5

    .line 849
    .end local v8    # "n":I
    .end local v11    # "d":J
    :goto_30
    move-object v5, v6

    goto :goto_e

    .line 867
    .end local v4    # "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v5    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v6    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_32
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 868
    nop

    .line 869
    if-eqz v2, :cond_3a

    move-wide v4, v0

    goto :goto_3c

    :cond_3a
    const-wide/16 v4, 0x0

    :goto_3c
    return-wide v4

    .line 867
    :catchall_3d
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 868
    throw v4
.end method

.method public whitelist test-api getClosedException()Ljava/lang/Throwable;
    .registers 2

    .line 701
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher;->closedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist test-api getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 754
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public whitelist test-api getMaxBufferCapacity()I
    .registers 2

    .line 763
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    iget v0, p0, Ljava/util/concurrent/SubmissionPublisher;->maxBufferCapacity:I

    return v0
.end method

.method public whitelist test-api getNumberOfSubscribers()I
    .registers 3

    .line 738
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 739
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 741
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/SubmissionPublisher;->cleanAndCount()I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    .line 743
    .local v1, "n":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 744
    nop

    .line 745
    return v1

    .line 743
    .end local v1    # "n":I
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 744
    throw v1
.end method

.method public whitelist test-api getSubscribers()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;>;"
        }
    .end annotation

    .line 774
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v0, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Flow$Subscriber<-TT;>;>;"
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 776
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 778
    const/4 v2, 0x0

    .line 779
    .local v2, "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :try_start_b
    iget-object v3, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .local v3, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_d
    if-eqz v3, :cond_2a

    .line 780
    iget-object v4, v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 781
    .local v4, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 782
    const/4 v5, 0x0

    iput-object v5, v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 783
    if-nez v2, :cond_1f

    .line 784
    iput-object v4, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_28

    .line 786
    :cond_1f
    iput-object v4, v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_28

    .line 789
    :cond_22
    iget-object v5, v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->subscriber:Ljava/util/concurrent/Flow$Subscriber;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_2f

    .line 790
    move-object v2, v3

    .line 779
    :goto_28
    move-object v3, v4

    goto :goto_d

    .line 794
    .end local v2    # "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v3    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v4    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_2a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 795
    nop

    .line 796
    return-object v0

    .line 794
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 795
    throw v2
.end method

.method public whitelist test-api hasSubscribers()Z
    .registers 6

    .line 710
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    const/4 v0, 0x0

    .line 711
    .local v0, "nonEmpty":Z
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 712
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 714
    :try_start_6
    iget-object v2, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .local v2, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_8
    if-eqz v2, :cond_1b

    .line 715
    iget-object v3, v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 716
    .local v3, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 717
    const/4 v4, 0x0

    iput-object v4, v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 718
    iput-object v3, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_20

    move-object v2, v3

    .line 724
    .end local v3    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    goto :goto_8

    .line 721
    .restart local v3    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_19
    const/4 v0, 0x1

    .line 722
    nop

    .line 726
    .end local v2    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v3    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_1b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 727
    nop

    .line 728
    return v0

    .line 726
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 727
    throw v2
.end method

.method public whitelist test-api isClosed()Z
    .registers 2

    .line 690
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/SubmissionPublisher;->closed:Z

    return v0
.end method

.method public whitelist test-api isSubscribed(Ljava/util/concurrent/Flow$Subscriber;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 807
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p1, "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    if-eqz p1, :cond_3b

    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, "subscribed":Z
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 810
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v2, p0, Ljava/util/concurrent/SubmissionPublisher;->closed:Z

    if-nez v2, :cond_3a

    .line 811
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 813
    const/4 v2, 0x0

    .line 814
    .local v2, "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :try_start_d
    iget-object v3, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .local v3, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_f
    if-eqz v3, :cond_31

    .line 815
    iget-object v4, v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 816
    .local v4, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 817
    const/4 v5, 0x0

    iput-object v5, v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 818
    if-nez v2, :cond_21

    .line 819
    iput-object v4, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_2f

    .line 821
    :cond_21
    iput-object v4, v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_2f

    .line 823
    :cond_24
    iget-object v5, v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->subscriber:Ljava/util/concurrent/Flow$Subscriber;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_35

    move v0, v5

    if-eqz v5, :cond_2e

    .line 824
    goto :goto_31

    .line 826
    :cond_2e
    move-object v2, v3

    .line 814
    :goto_2f
    move-object v3, v4

    goto :goto_f

    .line 829
    .end local v2    # "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v3    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v4    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_31
    :goto_31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 830
    goto :goto_3a

    .line 829
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 830
    throw v2

    .line 832
    :cond_3a
    :goto_3a
    return v0

    .line 807
    .end local v0    # "subscribed":Z
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/function/BiPredicate;)I
    .registers 10
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;-TT;>;)I"
        }
    .end annotation

    .line 610
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p5, "onDrop":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/util/concurrent/Flow$Subscriber<-TT;>;-TT;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 612
    .local v0, "nanos":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 613
    :cond_10
    invoke-direct {p0, p1, v0, v1, p5}, Ljava/util/concurrent/SubmissionPublisher;->doOffer(Ljava/lang/Object;JLjava/util/function/BiPredicate;)I

    move-result v2

    return v2
.end method

.method public whitelist test-api offer(Ljava/lang/Object;Ljava/util/function/BiPredicate;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;-TT;>;)I"
        }
    .end annotation

    .line 562
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "onDrop":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/util/concurrent/Flow$Subscriber<-TT;>;-TT;>;"
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/concurrent/SubmissionPublisher;->doOffer(Ljava/lang/Object;JLjava/util/function/BiPredicate;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api submit(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 520
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/SubmissionPublisher;->doOffer(Ljava/lang/Object;JLjava/util/function/BiPredicate;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api subscribe(Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 343
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher;, "Ljava/util/concurrent/SubmissionPublisher<TT;>;"
    .local p1, "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    if-eqz p1, :cond_7e

    .line 344
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 345
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget v7, p0, Ljava/util/concurrent/SubmissionPublisher;->maxBufferCapacity:I

    .line 346
    .local v7, "max":I
    const/16 v0, 0x20

    if-ge v7, v0, :cond_c

    .line 347
    move v0, v7

    goto :goto_d

    :cond_c
    nop

    :goto_d
    new-array v6, v0, [Ljava/lang/Object;

    .line 348
    .local v6, "array":[Ljava/lang/Object;
    new-instance v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    iget-object v4, p0, Ljava/util/concurrent/SubmissionPublisher;->executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Ljava/util/concurrent/SubmissionPublisher;->onNextHandler:Ljava/util/function/BiConsumer;

    move-object v3, p1

    .end local p1    # "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    .local v3, "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;-><init>(Ljava/util/concurrent/Flow$Subscriber;Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;[Ljava/lang/Object;I)V

    .line 351
    .local v2, "subscription":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 353
    :try_start_1c
    iget-boolean p1, p0, Ljava/util/concurrent/SubmissionPublisher;->subscribed:Z

    if-nez p1, :cond_29

    .line 354
    const/4 p1, 0x1

    iput-boolean p1, p0, Ljava/util/concurrent/SubmissionPublisher;->subscribed:Z

    .line 355
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher;->owner:Ljava/lang/Thread;

    .line 357
    :cond_29
    iget-object p1, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .local p1, "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const/4 v0, 0x0

    .line 358
    .local v0, "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_2c
    if-nez p1, :cond_4a

    .line 360
    invoke-virtual {v2}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onSubscribe()V

    .line 361
    iget-object v4, p0, Ljava/util/concurrent/SubmissionPublisher;->closedException:Ljava/lang/Throwable;

    move-object v5, v4

    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v4, :cond_3a

    .line 362
    invoke-virtual {v2, v5}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onError(Ljava/lang/Throwable;)V

    goto :goto_70

    .line 363
    :cond_3a
    iget-boolean v4, p0, Ljava/util/concurrent/SubmissionPublisher;->closed:Z

    if-eqz v4, :cond_42

    .line 364
    invoke-virtual {v2}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onComplete()V

    goto :goto_70

    .line 365
    :cond_42
    if-nez v0, :cond_47

    .line 366
    iput-object v2, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_70

    .line 368
    :cond_47
    iput-object v2, v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 369
    goto :goto_70

    .line 371
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_4a
    iget-object v4, p1, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 372
    .local v4, "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 373
    const/4 v5, 0x0

    iput-object v5, p1, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 374
    if-nez v0, :cond_5a

    .line 375
    iput-object v4, p0, Ljava/util/concurrent/SubmissionPublisher;->clients:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_76

    .line 377
    :cond_5a
    iput-object v4, v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    goto :goto_76

    .line 379
    :cond_5d
    iget-object v5, p1, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->subscriber:Ljava/util/concurrent/Flow$Subscriber;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 380
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "Duplicate subscribe"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onError(Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_1c .. :try_end_6f} :catchall_78

    .line 381
    nop

    .line 388
    .end local v0    # "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v4    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local p1    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :goto_70
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 389
    nop

    .line 390
    return-void

    .line 384
    .restart local v0    # "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .restart local v4    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .restart local p1    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :cond_75
    move-object v0, p1

    .line 385
    :goto_76
    move-object p1, v4

    .line 386
    .end local v4    # "next":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    goto :goto_2c

    .line 388
    .end local v0    # "pred":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local p1    # "b":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :catchall_78
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 389
    throw p1

    .line 343
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "subscription":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .end local v3    # "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    .end local v6    # "array":[Ljava/lang/Object;
    .end local v7    # "max":I
    .local p1, "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    :cond_7e
    move-object v3, p1

    .end local p1    # "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    .restart local v3    # "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
