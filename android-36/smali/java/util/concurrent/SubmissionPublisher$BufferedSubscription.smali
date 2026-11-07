.class final Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;
.super Ljava/lang/Object;
.source "SubmissionPublisher.java"

# interfaces
.implements Ljava/util/concurrent/Flow$Subscription;
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SubmissionPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferedSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Flow$Subscription;",
        "Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;"
    }
.end annotation


# static fields
.field static final blacklist ACTIVE:I = 0x2

.field static final blacklist CLOSED:I = 0x1

.field static final blacklist COMPLETE:I = 0x10

.field static final blacklist CTL:Ljava/lang/invoke/VarHandle;

.field static final blacklist DEMAND:Ljava/lang/invoke/VarHandle;

.field static final blacklist ERROR:I = 0x8

.field static final blacklist INTERRUPTED:J = -0x1L

.field static final blacklist OPEN:I = 0x40

.field static final blacklist QA:Ljava/lang/invoke/VarHandle;

.field static final blacklist REQS:I = 0x4

.field static final blacklist RUN:I = 0x20


# instance fields
.field blacklist array:[Ljava/lang/Object;

.field volatile blacklist ctl:I

.field volatile blacklist demand:J

.field blacklist executor:Ljava/util/concurrent/Executor;

.field blacklist head:I

.field final blacklist maxCapacity:I

.field blacklist next:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<",
            "TT;>;"
        }
    .end annotation
.end field

.field blacklist nextRetry:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<",
            "TT;>;"
        }
    .end annotation
.end field

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

.field blacklist pendingError:Ljava/lang/Throwable;

.field final blacklist subscriber:Ljava/util/concurrent/Flow$Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field blacklist tail:I

.field blacklist timeout:J

.field blacklist waiter:Ljava/lang/Thread;

.field volatile blacklist waiting:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1509
    const-class v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    :try_start_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 1510
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "ctl"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->CTL:Ljava/lang/invoke/VarHandle;

    .line 1512
    const-string v2, "demand"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->DEMAND:Ljava/lang/invoke/VarHandle;

    .line 1514
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->QA:Ljava/lang/invoke/VarHandle;
    :try_end_22
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_22} :catch_26

    .line 1517
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 1521
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 1522
    return-void

    .line 1515
    :catch_26
    move-exception v0

    .line 1516
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Flow$Subscriber;Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;[Ljava/lang/Object;I)V
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "array"    # [Ljava/lang/Object;
    .param p5, "maxBufferCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "-",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            ">;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 1088
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "subscriber":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    .local p3, "onNextHandler":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/util/concurrent/Flow$Subscriber<-TT;>;-Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->subscriber:Ljava/util/concurrent/Flow$Subscriber;

    .line 1090
    iput-object p2, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->executor:Ljava/util/concurrent/Executor;

    .line 1091
    iput-object p3, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onNextHandler:Ljava/util/function/BiConsumer;

    .line 1092
    iput-object p4, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->array:[Ljava/lang/Object;

    .line 1093
    iput p5, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->maxCapacity:I

    .line 1094
    return-void
.end method


# virtual methods
.method final blacklist awaitSpace(J)V
    .registers 7
    .param p1, "nanos"    # J

    .line 1457
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1458
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    .line 1459
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1460
    iput-wide p1, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->timeout:J

    .line 1462
    const-wide/16 v0, -0x1

    :try_start_15
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    .line 1465
    goto :goto_1c

    .line 1463
    :catch_19
    move-exception v2

    .line 1464
    .local v2, "ie":Ljava/lang/InterruptedException;
    iput-wide v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->timeout:J

    .line 1466
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :goto_1c
    iget-wide v2, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->timeout:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_29

    .line 1467
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1470
    :cond_29
    return-void
.end method

.method public final whitelist test-api block()Z
    .registers 12

    .line 1477
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget-wide v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->timeout:J

    .line 1478
    .local v0, "nanos":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_f

    move v2, v4

    goto :goto_10

    :cond_f
    move v2, v3

    .line 1479
    .local v2, "timed":Z
    :goto_10
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    add-long/2addr v7, v0

    goto :goto_1b

    :cond_1a
    move-wide v7, v5

    .line 1480
    .local v7, "deadline":J
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->isReleasable()Z

    move-result v9

    if-nez v9, :cond_58

    .line 1481
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 1482
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->timeout:J

    .line 1483
    if-eqz v2, :cond_1b

    .line 1484
    goto :goto_58

    .line 1486
    :cond_2e
    if-eqz v2, :cond_3c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v9, v7, v9

    move-wide v0, v9

    cmp-long v9, v9, v5

    if-gtz v9, :cond_3c

    .line 1487
    goto :goto_58

    .line 1488
    :cond_3c
    iget-object v9, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiter:Ljava/lang/Thread;

    if-nez v9, :cond_47

    .line 1489
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiter:Ljava/lang/Thread;

    goto :goto_1b

    .line 1490
    :cond_47
    iget v9, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiting:I

    if-nez v9, :cond_4e

    .line 1491
    iput v4, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiting:I

    goto :goto_1b

    .line 1492
    :cond_4e
    if-eqz v2, :cond_54

    .line 1493
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1b

    .line 1495
    :cond_54
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1b

    .line 1497
    :cond_58
    :goto_58
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiter:Ljava/lang/Thread;

    .line 1498
    iput v3, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiting:I

    .line 1499
    return v4
.end method

.method public final whitelist test-api cancel()V
    .registers 2

    .line 1266
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onError(Ljava/lang/Throwable;)V

    .line 1267
    return-void
.end method

.method final blacklist casDemand(JJ)Z
    .registers 11
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .line 1112
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    sget-object v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->DEMAND:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "cmp":J
    .end local p3    # "val":J
    .local v2, "cmp":J
    .local v4, "val":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;JJ)Z

    move-result p1

    return p1
.end method

.method final blacklist closeOnComplete(Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1396
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->getAndBitwiseOrCtl(I)I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    .line 1397
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->consumeComplete(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 1398
    :cond_b
    return-void
.end method

.method final blacklist closeOnError(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Throwable;)V
    .registers 4
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1412
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->getAndBitwiseOrCtl(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_19

    .line 1413
    if-nez p2, :cond_e

    .line 1414
    iget-object p2, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->pendingError:Ljava/lang/Throwable;

    .line 1415
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->pendingError:Ljava/lang/Throwable;

    .line 1416
    iput-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->executor:Ljava/util/concurrent/Executor;

    .line 1417
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->signalWaiter()V

    .line 1418
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->consumeError(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Throwable;)V

    .line 1420
    :cond_19
    return-void
.end method

.method final blacklist consume()V
    .registers 13

    .line 1291
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->subscriber:Ljava/util/concurrent/Flow$Subscriber;

    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    if-eqz v0, :cond_7e

    .line 1292
    invoke-virtual {p0, v1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->subscribeOnOpen(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 1293
    iget-wide v2, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->demand:J

    .line 1294
    .local v2, "d":J
    iget v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->head:I

    .local v0, "h":I
    iget v4, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tail:I

    .line 1296
    .local v4, "t":I
    :goto_e
    iget v5, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->ctl:I

    move v6, v5

    .local v6, "c":I
    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1b

    .line 1297
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->closeOnError(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Throwable;)V

    .line 1298
    goto/16 :goto_7e

    .line 1300
    :cond_1b
    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->takeItems(Ljava/util/concurrent/Flow$Subscriber;JI)I

    move-result v5

    move v7, v5

    .local v7, "taken":I
    if-lez v5, :cond_2c

    .line 1301
    add-int v5, v0, v7

    move v0, v5

    iput v5, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->head:I

    .line 1302
    invoke-virtual {p0, v7}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->subtractDemand(I)J

    move-result-wide v2

    goto :goto_7d

    .line 1304
    :cond_2c
    iget-wide v8, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->demand:J

    move-wide v2, v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_3f

    and-int/lit8 v5, v6, 0x4

    if-eqz v5, :cond_3f

    .line 1305
    and-int/lit8 v5, v6, -0x5

    invoke-virtual {p0, v6, v5}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->weakCasCtl(II)Z

    goto :goto_7d

    .line 1306
    :cond_3f
    cmp-long v5, v2, v10

    if-eqz v5, :cond_4d

    and-int/lit8 v5, v6, 0x4

    if-nez v5, :cond_4d

    .line 1307
    or-int/lit8 v5, v6, 0x4

    invoke-virtual {p0, v6, v5}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->weakCasCtl(II)Z

    goto :goto_7d

    .line 1308
    :cond_4d
    iget v5, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tail:I

    move v8, v5

    .end local v4    # "t":I
    .local v8, "t":I
    if-ne v4, v5, :cond_7c

    .line 1309
    if-ne v8, v0, :cond_56

    const/4 v4, 0x1

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    :goto_57
    move v5, v4

    .local v5, "empty":Z
    if-eqz v4, :cond_62

    and-int/lit8 v4, v6, 0x10

    if-eqz v4, :cond_62

    .line 1310
    invoke-virtual {p0, v1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->closeOnComplete(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 1311
    goto :goto_7e

    .line 1313
    :cond_62
    if-nez v5, :cond_68

    cmp-long v4, v2, v10

    if-nez v4, :cond_7c

    .line 1314
    :cond_68
    and-int/lit8 v4, v6, 0x2

    const/16 v9, 0x20

    if-eqz v4, :cond_70

    const/4 v4, 0x2

    goto :goto_71

    :cond_70
    move v4, v9

    .line 1315
    .local v4, "bit":I
    :goto_71
    not-int v10, v4

    and-int/2addr v10, v6

    invoke-virtual {p0, v6, v10}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->weakCasCtl(II)Z

    move-result v10

    if-eqz v10, :cond_7c

    if-ne v4, v9, :cond_7c

    .line 1316
    goto :goto_7e

    .line 1319
    .end local v4    # "bit":I
    .end local v5    # "empty":Z
    .end local v6    # "c":I
    .end local v7    # "taken":I
    :cond_7c
    move v4, v8

    .end local v8    # "t":I
    .local v4, "t":I
    :goto_7d
    goto :goto_e

    .line 1321
    .end local v0    # "h":I
    .end local v2    # "d":J
    .end local v4    # "t":I
    :cond_7e
    :goto_7e
    return-void
.end method

.method final blacklist consumeComplete(Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1402
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    if-eqz p1, :cond_8

    .line 1403
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Flow$Subscriber;->onComplete()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_8

    .line 1404
    :catchall_6
    move-exception v0

    goto :goto_9

    .line 1405
    :cond_8
    :goto_8
    nop

    .line 1406
    :goto_9
    return-void
.end method

.method final blacklist consumeError(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Throwable;)V
    .registers 4
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1424
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    .line 1425
    :try_start_4
    invoke-interface {p1, p2}, Ljava/util/concurrent/Flow$Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_a

    .line 1426
    :catchall_8
    move-exception v0

    goto :goto_b

    .line 1427
    :cond_a
    :goto_a
    nop

    .line 1428
    :goto_b
    return-void
.end method

.method final blacklist consumeNext(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Object;)Z
    .registers 5
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1352
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    move-object v0, p2

    .line 1353
    .local v0, "y":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_d

    .line 1354
    :try_start_3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Flow$Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_d

    .line 1356
    .end local v0    # "y":Ljava/lang/Object;, "TT;"
    :catchall_7
    move-exception v0

    .line 1357
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->handleOnNext(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Throwable;)V

    .line 1358
    const/4 v1, 0x0

    return v1

    .line 1355
    .local v0, "y":Ljava/lang/Object;, "TT;"
    :cond_d
    :goto_d
    const/4 v1, 0x1

    return v1
.end method

.method final blacklist consumeSubscribe(Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1385
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    if-eqz p1, :cond_b

    .line 1386
    :try_start_2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Flow$Subscriber;->onSubscribe(Ljava/util/concurrent/Flow$Subscription;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_b

    .line 1387
    :catchall_6
    move-exception v0

    .line 1388
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->closeOnError(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 1389
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_b
    :goto_b
    nop

    .line 1390
    :goto_c
    return-void
.end method

.method final blacklist estimateLag()I
    .registers 4

    .line 1129
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->ctl:I

    .local v0, "c":I
    iget v1, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tail:I

    iget v2, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->head:I

    sub-int/2addr v1, v2

    .line 1130
    .local v1, "n":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_d

    const/4 v2, -0x1

    goto :goto_12

    :cond_d
    if-gez v1, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    return v2
.end method

.method final blacklist getAndBitwiseOrCtl(I)I
    .registers 3
    .param p1, "bits"    # I

    .line 1103
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    sget-object v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->CTL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->getAndBitwiseOr([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;I)I

    move-result v0

    return v0
.end method

.method final blacklist growAndOffer(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 13
    .param p2, "a"    # [Ljava/lang/Object;
    .param p3, "t"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation

    .line 1166
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "cap":I
    const/4 v1, 0x0

    .line 1167
    .local v1, "newCap":I
    const/4 v2, 0x0

    .line 1168
    .local v2, "newArray":[Ljava/lang/Object;
    if-eqz p2, :cond_13

    array-length v3, p2

    move v0, v3

    if-lez v3, :cond_13

    shl-int/lit8 v3, v0, 0x1

    move v1, v3

    if-lez v3, :cond_13

    .line 1170
    :try_start_e
    new-array v3, v1, [Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_10} :catch_12

    move-object v2, v3

    .line 1172
    goto :goto_13

    .line 1171
    :catch_12
    move-exception v3

    .line 1174
    :cond_13
    :goto_13
    if-nez v2, :cond_17

    .line 1175
    const/4 v3, 0x0

    return v3

    .line 1177
    :cond_17
    add-int/lit8 v3, v1, -0x1

    .line 1178
    .local v3, "newMask":I
    add-int/lit8 v4, p3, -0x1

    .end local p3    # "t":I
    .local v4, "t":I
    and-int/2addr p3, v3

    aput-object p1, v2, p3

    .line 1179
    add-int/lit8 p3, v0, -0x1

    .local p3, "mask":I
    move v5, p3

    .local v5, "k":I
    :goto_21
    if-ltz v5, :cond_39

    .line 1180
    sget-object v6, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->QA:Ljava/lang/invoke/VarHandle;

    and-int v7, v4, p3

    const/4 v8, 0x0

    invoke-polymorphic {v6, p2, v7, v8}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;ILjava/lang/Void;)Ljava/lang/Object;

    move-result-object v6

    .line 1181
    .local v6, "x":Ljava/lang/Object;
    if-nez v6, :cond_30

    .line 1182
    goto :goto_39

    .line 1184
    :cond_30
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "t":I
    .local v7, "t":I
    and-int/2addr v4, v3

    aput-object v6, v2, v4

    .line 1179
    .end local v6    # "x":Ljava/lang/Object;
    add-int/lit8 v5, v5, -0x1

    move v4, v7

    goto :goto_21

    .line 1186
    .end local v5    # "k":I
    .end local v7    # "t":I
    .end local p3    # "mask":I
    .restart local v4    # "t":I
    :cond_39
    :goto_39
    iput-object v2, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->array:[Ljava/lang/Object;

    .line 1187
    invoke-static {}, Ljava/lang/invoke/VarHandle;->releaseFence()V

    .line 1188
    const/4 p3, 0x1

    return p3
.end method

.method final blacklist handleOnNext(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Throwable;)V
    .registers 5
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1368
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onNextHandler:Ljava/util/function/BiConsumer;

    move-object v1, v0

    .local v1, "h":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/util/concurrent/Flow$Subscriber<-TT;>;-Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_8

    .line 1369
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 1371
    :cond_8
    goto :goto_a

    .line 1370
    .end local v1    # "h":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/util/concurrent/Flow$Subscriber<-TT;>;-Ljava/lang/Throwable;>;"
    :catchall_9
    move-exception v0

    .line 1372
    :goto_a
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->closeOnError(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Throwable;)V

    .line 1373
    return-void
.end method

.method final blacklist isClosed()Z
    .registers 3

    .line 1121
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->ctl:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final whitelist test-api isReleasable()Z
    .registers 7

    .line 1448
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->ctl:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_20

    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->array:[Ljava/lang/Object;

    move-object v2, v0

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_1e

    array-length v0, v2

    move v3, v0

    .local v3, "cap":I
    if-lez v0, :cond_1e

    sget-object v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->QA:Ljava/lang/invoke/VarHandle;

    add-int/lit8 v4, v3, -0x1

    iget v5, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tail:I

    and-int/2addr v4, v5

    .line 1450
    invoke-polymorphic {v0, v2, v4}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_20

    .end local v3    # "cap":I
    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    .end local v2    # "a":[Ljava/lang/Object;
    :cond_20
    :goto_20
    nop

    .line 1448
    :goto_21
    return v1
.end method

.method final blacklist offer(Ljava/lang/Object;Z)I
    .registers 11
    .param p2, "unowned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 1141
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "stat":I
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->array:[Ljava/lang/Object;

    move-object v2, v1

    .local v2, "a":[Ljava/lang/Object;
    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    array-length v1, v2

    .line 1142
    .local v1, "cap":I
    :goto_9
    iget v3, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tail:I

    .local v3, "t":I
    add-int/lit8 v4, v1, -0x1

    and-int/2addr v4, v3

    .local v4, "i":I
    add-int/lit8 v5, v3, 0x1

    iget v6, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->head:I

    sub-int/2addr v5, v6

    .line 1143
    .local v5, "n":I
    if-lez v1, :cond_3c

    .line 1145
    if-lt v5, v1, :cond_20

    iget v6, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->maxCapacity:I

    if-ge v1, v6, :cond_20

    .line 1146
    invoke-virtual {p0, p1, v2, v3}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->growAndOffer(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v6

    .local v6, "added":Z
    goto :goto_35

    .line 1147
    .end local v6    # "added":Z
    :cond_20
    if-ge v5, v1, :cond_2d

    if-eqz p2, :cond_25

    goto :goto_2d

    .line 1150
    :cond_25
    sget-object v6, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->QA:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v6, v2, v4, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, ([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1151
    const/4 v6, 0x1

    .restart local v6    # "added":Z
    goto :goto_35

    .line 1148
    .end local v6    # "added":Z
    :cond_2d
    :goto_2d
    sget-object v6, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->QA:Ljava/lang/invoke/VarHandle;

    const/4 v7, 0x0

    invoke-polymorphic {v6, v2, v4, v7, p1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, ([Ljava/lang/Object;ILjava/lang/Void;Ljava/lang/Object;)Z

    move-result v6

    .line 1153
    .restart local v6    # "added":Z
    :goto_35
    if-eqz v6, :cond_3c

    .line 1154
    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tail:I

    .line 1155
    move v0, v5

    .line 1158
    .end local v6    # "added":Z
    :cond_3c
    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->startOnOffer(I)I

    move-result v6

    return v6
.end method

.method final blacklist onComplete()V
    .registers 2

    .line 1250
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->startOnSignal(I)V

    .line 1251
    return-void
.end method

.method final blacklist onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 1255
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    if-eqz p1, :cond_4

    .line 1256
    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->pendingError:Ljava/lang/Throwable;

    .line 1257
    :cond_4
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->getAndBitwiseOrCtl(I)I

    move-result v0

    move v1, v0

    .local v1, "c":I
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_20

    .line 1258
    and-int/lit8 v0, v1, 0x20

    if-nez v0, :cond_17

    .line 1259
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tryStart()V

    goto :goto_20

    .line 1260
    :cond_17
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->array:[Ljava/lang/Object;

    move-object v2, v0

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_20

    .line 1261
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1263
    .end local v2    # "a":[Ljava/lang/Object;
    :cond_20
    :goto_20
    return-void
.end method

.method final blacklist onSubscribe()V
    .registers 2

    .line 1246
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->startOnSignal(I)V

    .line 1247
    return-void
.end method

.method public final whitelist test-api request(J)V
    .registers 9
    .param p1, "n"    # J

    .line 1270
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_23

    .line 1272
    :goto_6
    iget-wide v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->demand:J

    .local v0, "p":J
    add-long v2, v0, p1

    .line 1273
    .local v2, "d":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_14

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_15

    :cond_14
    move-wide v4, v2

    :goto_15
    invoke-virtual {p0, v0, v1, v4, v5}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->casDemand(JJ)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1274
    nop

    .line 1276
    .end local v0    # "p":J
    .end local v2    # "d":J
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->startOnSignal(I)V

    goto :goto_2d

    .line 1275
    :cond_22
    goto :goto_6

    .line 1279
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-positive subscription request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->onError(Ljava/lang/Throwable;)V

    .line 1281
    :goto_2d
    return-void
.end method

.method final blacklist retryOffer(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1197
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "stat":I
    iget v1, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tail:I

    .local v1, "t":I
    iget v2, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->head:I

    .line 1198
    .local v2, "h":I
    iget-object v3, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->array:[Ljava/lang/Object;

    move-object v4, v3

    .local v4, "a":[Ljava/lang/Object;
    if-eqz v3, :cond_21

    array-length v3, v4

    move v5, v3

    .local v5, "cap":I
    if-lez v3, :cond_21

    sget-object v3, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->QA:Ljava/lang/invoke/VarHandle;

    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v1

    .line 1199
    const/4 v7, 0x0

    invoke-polymorphic {v3, v4, v6, v7, p1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, ([Ljava/lang/Object;ILjava/lang/Void;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1200
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tail:I

    sub-int v0, v3, v2

    .line 1201
    .end local v5    # "cap":I
    :cond_21
    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->startOnOffer(I)I

    move-result v3

    return v3
.end method

.method final blacklist signalWaiter()V
    .registers 3

    .line 1437
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiting:I

    .line 1438
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiter:Ljava/lang/Thread;

    move-object v1, v0

    .local v1, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_b

    .line 1439
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1440
    :cond_b
    return-void
.end method

.method final blacklist startOnOffer(I)I
    .registers 5
    .param p1, "stat"    # I

    .line 1210
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->ctl:I

    move v1, v0

    .local v1, "c":I
    and-int/lit8 v0, v0, 0x6

    const/4 v2, 0x4

    if-ne v0, v2, :cond_17

    .line 1211
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->getAndBitwiseOrCtl(I)I

    move-result v0

    move v1, v0

    and-int/lit8 v0, v0, 0x21

    if-nez v0, :cond_17

    .line 1212
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tryStart()V

    goto :goto_1c

    .line 1213
    :cond_17
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_1c

    .line 1214
    const/4 p1, -0x1

    .line 1215
    :cond_1c
    :goto_1c
    return p1
.end method

.method final blacklist startOnSignal(I)V
    .registers 3
    .param p1, "bits"    # I

    .line 1240
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    iget v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->ctl:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_10

    .line 1241
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->getAndBitwiseOrCtl(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x21

    if-nez v0, :cond_10

    .line 1242
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->tryStart()V

    .line 1243
    :cond_10
    return-void
.end method

.method final blacklist subscribeOnOpen(Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1379
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    iget v0, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->ctl:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    invoke-virtual {p0, v1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->getAndBitwiseOrCtl(I)I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    .line 1380
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->consumeSubscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 1381
    :cond_11
    return-void
.end method

.method final blacklist subtractDemand(I)J
    .registers 6
    .param p1, "k"    # I

    .line 1107
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    neg-int v0, p1

    int-to-long v0, v0

    .line 1108
    .local v0, "n":J
    sget-object v2, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->DEMAND:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, p0, v0, v1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method final blacklist takeItems(Ljava/util/concurrent/Flow$Subscriber;JI)I
    .registers 14
    .param p2, "d"    # J
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "-TT;>;JI)I"
        }
    .end annotation

    .line 1333
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    .local p1, "s":Ljava/util/concurrent/Flow$Subscriber;, "Ljava/util/concurrent/Flow$Subscriber<-TT;>;"
    const/4 v0, 0x0

    .line 1334
    .local v0, "k":I
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->array:[Ljava/lang/Object;

    move-object v2, v1

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v1, :cond_3a

    array-length v1, v2

    move v3, v1

    .local v3, "cap":I
    if-lez v1, :cond_3a

    .line 1335
    add-int/lit8 v1, v3, -0x1

    .local v1, "m":I
    ushr-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    .line 1336
    .local v4, "b":I
    int-to-long v5, v4

    cmp-long v5, p2, v5

    if-gez v5, :cond_17

    long-to-int v5, p2

    goto :goto_18

    :cond_17
    move v5, v4

    .line 1337
    .local v5, "n":I
    :goto_18
    if-ge v0, v5, :cond_3a

    .line 1338
    sget-object v6, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->QA:Ljava/lang/invoke/VarHandle;

    and-int v7, p4, v1

    const/4 v8, 0x0

    invoke-polymorphic {v6, v2, v7, v8}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;ILjava/lang/Void;)Ljava/lang/Object;

    move-result-object v6

    .line 1339
    .local v6, "x":Ljava/lang/Object;
    iget v7, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->waiting:I

    if-eqz v7, :cond_2b

    .line 1340
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->signalWaiter()V

    .line 1341
    :cond_2b
    if-nez v6, :cond_2e

    .line 1342
    goto :goto_3a

    .line 1343
    :cond_2e
    invoke-virtual {p0, p1, v6}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->consumeNext(Ljava/util/concurrent/Flow$Subscriber;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 1344
    goto :goto_3a

    .line 1337
    .end local v6    # "x":Ljava/lang/Object;
    :cond_35
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1347
    .end local v1    # "m":I
    .end local v3    # "cap":I
    .end local v4    # "b":I
    .end local v5    # "n":I
    :cond_3a
    :goto_3a
    return v0
.end method

.method final blacklist tryStart()V
    .registers 4

    .line 1224
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    :try_start_0
    new-instance v0, Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;-><init>(Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;)V

    .line 1225
    .local v0, "task":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->executor:Ljava/util/concurrent/Executor;

    move-object v2, v1

    .local v2, "e":Ljava/util/concurrent/Executor;
    if-eqz v1, :cond_d

    .line 1226
    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_d} :catch_f

    .line 1230
    .end local v0    # "task":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    .end local v2    # "e":Ljava/util/concurrent/Executor;
    :cond_d
    nop

    .line 1231
    return-void

    .line 1227
    :catch_f
    move-exception v0

    .line 1228
    .local v0, "ex":Ljava/lang/Throwable;
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->getAndBitwiseOrCtl(I)I

    .line 1229
    throw v0
.end method

.method final blacklist weakCasCtl(II)Z
    .registers 4
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .line 1099
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    sget-object v0, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->CTL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;II)Z

    move-result v0

    return v0
.end method
