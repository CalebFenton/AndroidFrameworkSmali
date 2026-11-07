.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$ThreadReaper;
    }
.end annotation


# static fields
.field public static final blacklist SKIP_MULTIPLE_MISSED_PERIODIC_TASKS:J = 0x14f47b88L

.field private static final greylist-max-o nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final blacklist cleanup:Ljava/lang/ref/Cleaner$Cleanable;

.field private final greylist-max-o queue:Ljava/util/TaskQueue;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o thread:Ljava/util/TimerThread;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ljava/util/Timer;->nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Timer;->serialNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/TaskQueue;

    invoke-direct {v0}, Ljava/util/TaskQueue;-><init>()V

    iput-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    .line 137
    new-instance v0, Ljava/util/TimerThread;

    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-direct {v0, v1}, Ljava/util/TimerThread;-><init>(Ljava/util/TaskQueue;)V

    iput-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    .line 219
    new-instance v0, Ljava/util/Timer$ThreadReaper;

    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    iget-object v2, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-direct {v0, v1, v2}, Ljava/util/Timer$ThreadReaper;-><init>(Ljava/util/TaskQueue;Ljava/util/TimerThread;)V

    .line 220
    .local v0, "threadReaper":Ljava/util/Timer$ThreadReaper;
    invoke-static {}, Ljdk/internal/ref/CleanerFactory;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Timer;->cleanup:Ljava/lang/ref/Cleaner$Cleanable;

    .line 221
    iget-object v1, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-virtual {v1, p1}, Ljava/util/TimerThread;->setName(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-virtual {v1, p2}, Ljava/util/TimerThread;->setDaemon(Z)V

    .line 223
    iget-object v1, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-virtual {v1}, Ljava/util/TimerThread;->start()V

    .line 224
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 4
    .param p1, "isDaemon"    # Z

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Timer;->serialNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method private greylist-max-o sched(Ljava/util/TimerTask;JJ)V
    .registers 10
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # J
    .param p4, "period"    # J

    .line 460
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_59

    .line 465
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_17

    .line 466
    shr-long/2addr p4, v1

    move-wide v2, p4

    goto :goto_18

    .line 465
    :cond_17
    move-wide v2, p4

    .line 468
    .end local p4    # "period":J
    .local v2, "period":J
    :goto_18
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v0

    .line 469
    :try_start_1b
    iget-object p4, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    iget-boolean p4, p4, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    if-eqz p4, :cond_4e

    .line 472
    iget-object p4, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter p4
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_56

    .line 473
    :try_start_24
    iget p5, p1, Ljava/util/TimerTask;->state:I

    if-nez p5, :cond_43

    .line 476
    iput-wide p2, p1, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 477
    iput-wide v2, p1, Ljava/util/TimerTask;->period:J

    .line 478
    iput v1, p1, Ljava/util/TimerTask;->state:I

    .line 479
    monitor-exit p4
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_4b

    .line 481
    :try_start_2f
    iget-object p4, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {p4, p1}, Ljava/util/TaskQueue;->add(Ljava/util/TimerTask;)V

    .line 482
    iget-object p4, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {p4}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    move-result-object p4

    if-ne p4, p1, :cond_41

    .line 483
    iget-object p4, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 484
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_56

    .line 485
    return-void

    .line 474
    :cond_43
    :try_start_43
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string v1, "Task already scheduled or cancelled"

    invoke-direct {p5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "period":J
    .end local p0    # "this":Ljava/util/Timer;
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "time":J
    throw p5

    .line 479
    .restart local v2    # "period":J
    .restart local p0    # "this":Ljava/util/Timer;
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p2    # "time":J
    :catchall_4b
    move-exception p5

    monitor-exit p4
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4b

    .end local v2    # "period":J
    .end local p0    # "this":Ljava/util/Timer;
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "time":J
    :try_start_4d
    throw p5

    .line 470
    .restart local v2    # "period":J
    .restart local p0    # "this":Ljava/util/Timer;
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p2    # "time":J
    :cond_4e
    new-instance p4, Ljava/lang/IllegalStateException;

    const-string p5, "Timer already cancelled."

    invoke-direct {p4, p5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "period":J
    .end local p0    # "this":Ljava/util/Timer;
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "time":J
    throw p4

    .line 484
    .restart local v2    # "period":J
    .restart local p0    # "this":Ljava/util/Timer;
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p2    # "time":J
    :catchall_56
    move-exception p4

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_56

    throw p4

    .line 461
    .end local v2    # "period":J
    .restart local p4    # "period":J
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal execution time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o serialNumber()I
    .registers 1

    .line 170
    sget-object v0, Ljava/util/Timer;->nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static blacklist skipMultipleMissedPeriodicTasks()Z
    .registers 2

    .line 116
    const-wide/32 v0, 0x14f47b88

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_12

    .line 118
    invoke-static {}, Lcom/android/libcore/Flags;->scheduleAtFixedRateNewBehavior()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 116
    :goto_13
    return v0
.end method


# virtual methods
.method public whitelist test-api cancel()V
    .registers 3

    .line 502
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v0

    .line 503
    :try_start_3
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/util/TaskQueue;->clear()V

    .line 504
    iget-object v1, p0, Ljava/util/Timer;->cleanup:Ljava/lang/ref/Cleaner$Cleanable;

    invoke-interface {v1}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V

    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist test-api purge()I
    .registers 6

    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "result":I
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    .line 532
    :try_start_4
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2}, Ljava/util/TaskQueue;->size()I

    move-result v2

    .local v2, "i":I
    :goto_a
    if-lez v2, :cond_21

    .line 533
    iget-object v3, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v3, v2}, Ljava/util/TaskQueue;->get(I)Ljava/util/TimerTask;

    move-result-object v3

    iget v3, v3, Ljava/util/TimerTask;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 534
    iget-object v3, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v3, v2}, Ljava/util/TaskQueue;->quickRemove(I)V

    .line 535
    add-int/lit8 v0, v0, 0x1

    .line 532
    :cond_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 539
    .end local v2    # "i":I
    :cond_21
    if-eqz v0, :cond_28

    .line 540
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2}, Ljava/util/TaskQueue;->heapify()V

    .line 541
    :cond_28
    monitor-exit v1

    .line 543
    return v0

    .line 541
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public whitelist test-api schedule(Ljava/util/TimerTask;J)V
    .registers 12
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    .line 238
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_14

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v4, v0, p2

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "task":Ljava/util/TimerTask;
    .local v3, "task":Ljava/util/TimerTask;
    invoke-direct/range {v2 .. v7}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 241
    return-void

    .line 239
    .end local v3    # "task":Ljava/util/TimerTask;
    .restart local p1    # "task":Ljava/util/TimerTask;
    :cond_14
    move-object v3, p1

    .end local p1    # "task":Ljava/util/TimerTask;
    .restart local v3    # "task":Ljava/util/TimerTask;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative delay."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api schedule(Ljava/util/TimerTask;JJ)V
    .registers 14
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .line 291
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_20

    .line 293
    cmp-long v0, p4, v0

    if-lez v0, :cond_17

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v4, v0, p2

    neg-long v6, p4

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "task":Ljava/util/TimerTask;
    .local v3, "task":Ljava/util/TimerTask;
    invoke-direct/range {v2 .. v7}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 296
    return-void

    .line 294
    .end local v3    # "task":Ljava/util/TimerTask;
    .restart local p1    # "task":Ljava/util/TimerTask;
    :cond_17
    move-object v3, p1

    .end local p1    # "task":Ljava/util/TimerTask;
    .restart local v3    # "task":Ljava/util/TimerTask;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-positive period."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    .end local v3    # "task":Ljava/util/TimerTask;
    .restart local p1    # "task":Ljava/util/TimerTask;
    :cond_20
    move-object v3, p1

    .end local p1    # "task":Ljava/util/TimerTask;
    .restart local v3    # "task":Ljava/util/TimerTask;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative delay."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .registers 9
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # Ljava/util/Date;

    .line 255
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "task":Ljava/util/TimerTask;
    .local v1, "task":Ljava/util/TimerTask;
    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 256
    return-void
.end method

.method public whitelist test-api schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 12
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .line 332
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_11

    .line 334
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    neg-long v5, p3

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "task":Ljava/util/TimerTask;
    .local v2, "task":Ljava/util/TimerTask;
    invoke-direct/range {v1 .. v6}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 335
    return-void

    .line 333
    .end local v2    # "task":Ljava/util/TimerTask;
    .restart local p1    # "task":Ljava/util/TimerTask;
    :cond_11
    move-object v2, p1

    .end local p1    # "task":Ljava/util/TimerTask;
    .restart local v2    # "task":Ljava/util/TimerTask;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-positive period."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .registers 14
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .line 382
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_21

    .line 384
    cmp-long v0, p4, v0

    if-lez v0, :cond_17

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v4, v0, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p4

    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p4    # "period":J
    .local v3, "task":Ljava/util/TimerTask;
    .local v6, "period":J
    invoke-direct/range {v2 .. v7}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 387
    return-void

    .line 385
    .end local v3    # "task":Ljava/util/TimerTask;
    .end local v6    # "period":J
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p4    # "period":J
    :cond_17
    move-object v3, p1

    move-wide v6, p4

    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p4    # "period":J
    .restart local v3    # "task":Ljava/util/TimerTask;
    .restart local v6    # "period":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "Non-positive period."

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    .end local v3    # "task":Ljava/util/TimerTask;
    .end local v6    # "period":J
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p4    # "period":J
    :cond_21
    move-object v3, p1

    move-wide v6, p4

    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p4    # "period":J
    .restart local v3    # "task":Ljava/util/TimerTask;
    .restart local v6    # "period":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "Negative delay."

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 12
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .line 441
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_11

    .line 443
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p3    # "period":J
    .local v2, "task":Ljava/util/TimerTask;
    .local v5, "period":J
    invoke-direct/range {v1 .. v6}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 444
    return-void

    .line 442
    .end local v2    # "task":Ljava/util/TimerTask;
    .end local v5    # "period":J
    .restart local p1    # "task":Ljava/util/TimerTask;
    .restart local p3    # "period":J
    :cond_11
    move-object v2, p1

    move-wide v5, p3

    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p3    # "period":J
    .restart local v2    # "task":Ljava/util/TimerTask;
    .restart local v5    # "period":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Non-positive period."

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
