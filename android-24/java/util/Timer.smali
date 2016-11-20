.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$1;
    }
.end annotation


# static fields
.field private static final nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final queue:Ljava/util/TaskQueue;

.field private final thread:Ljava/util/TimerThread;

.field private final threadReaper:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/util/Timer;)Ljava/util/TaskQueue;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Timer;)Ljava/util/TimerThread;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@6
    sput-object v0, Ljava/util/Timer;->nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Timer-"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {}, Ljava/util/Timer;->serialNumber()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    #@1b
    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    new-instance v0, Ljava/util/TaskQueue;

    #@5
    invoke-direct {v0}, Ljava/util/TaskQueue;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@a
    .line 101
    new-instance v0, Ljava/util/TimerThread;

    #@c
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@e
    invoke-direct {v0, v1}, Ljava/util/TimerThread;-><init>(Ljava/util/TaskQueue;)V

    #@11
    iput-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@13
    .line 110
    new-instance v0, Ljava/util/Timer$1;

    #@15
    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    #@18
    iput-object v0, p0, Ljava/util/Timer;->threadReaper:Ljava/lang/Object;

    #@1a
    .line 159
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@1c
    invoke-virtual {v0, p1}, Ljava/util/TimerThread;->setName(Ljava/lang/String;)V

    #@1f
    .line 160
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@21
    invoke-virtual {v0}, Ljava/util/TimerThread;->start()V

    #@24
    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    new-instance v0, Ljava/util/TaskQueue;

    #@5
    invoke-direct {v0}, Ljava/util/TaskQueue;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@a
    .line 101
    new-instance v0, Ljava/util/TimerThread;

    #@c
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@e
    invoke-direct {v0, v1}, Ljava/util/TimerThread;-><init>(Ljava/util/TaskQueue;)V

    #@11
    iput-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@13
    .line 110
    new-instance v0, Ljava/util/Timer$1;

    #@15
    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    #@18
    iput-object v0, p0, Ljava/util/Timer;->threadReaper:Ljava/lang/Object;

    #@1a
    .line 174
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@1c
    invoke-virtual {v0, p1}, Ljava/util/TimerThread;->setName(Ljava/lang/String;)V

    #@1f
    .line 175
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@21
    invoke-virtual {v0, p2}, Ljava/util/TimerThread;->setDaemon(Z)V

    #@24
    .line 176
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@26
    invoke-virtual {v0}, Ljava/util/TimerThread;->start()V

    #@29
    .line 173
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isDaemon"    # Z

    #@0
    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Timer-"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {}, Ljava/util/Timer;->serialNumber()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    #@1b
    .line 145
    return-void
.end method

.method private sched(Ljava/util/TimerTask;JJ)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # J
    .param p4, "period"    # J

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 387
    const-wide/16 v0, 0x0

    #@3
    cmp-long v0, p2, v0

    #@5
    if-gez v0, :cond_0

    #@7
    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Illegal execution time."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 392
    :cond_0
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    #@13
    move-result-wide v0

    #@14
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    #@19
    cmp-long v0, v0, v2

    #@1b
    if-lez v0, :cond_1

    #@1d
    .line 393
    shr-long/2addr p4, v4

    #@1e
    .line 395
    :cond_1
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@20
    monitor-enter v1

    #@21
    .line 396
    :try_start_0
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@23
    iget-boolean v0, v0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    #@25
    if-nez v0, :cond_2

    #@27
    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    #@29
    const-string/jumbo v2, "Timer already cancelled."

    #@2c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 395
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0

    #@33
    .line 399
    :cond_2
    :try_start_1
    iget-object v2, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@35
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 400
    :try_start_2
    iget v0, p1, Ljava/util/TimerTask;->state:I

    #@38
    if-eqz v0, :cond_3

    #@3a
    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    #@3c
    .line 402
    const-string/jumbo v3, "Task already scheduled or cancelled"

    #@3f
    .line 401
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@43
    .line 399
    :catchall_1
    move-exception v0

    #@44
    :try_start_3
    monitor-exit v2

    #@45
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    .line 403
    :cond_3
    :try_start_4
    iput-wide p2, p1, Ljava/util/TimerTask;->nextExecutionTime:J

    #@48
    .line 404
    iput-wide p4, p1, Ljava/util/TimerTask;->period:J

    #@4a
    .line 405
    const/4 v0, 0x1

    #@4b
    iput v0, p1, Ljava/util/TimerTask;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    :try_start_5
    monitor-exit v2

    #@4e
    .line 408
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@50
    invoke-virtual {v0, p1}, Ljava/util/TaskQueue;->add(Ljava/util/TimerTask;)V

    #@53
    .line 409
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@55
    invoke-virtual {v0}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    #@58
    move-result-object v0

    #@59
    if-ne v0, p1, :cond_4

    #@5b
    .line 410
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@5d
    invoke-virtual {v0}, Ljava/util/TaskQueue;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@60
    :cond_4
    monitor-exit v1

    #@61
    .line 386
    return-void
.end method

.method private static serialNumber()I
    .locals 1

    #@0
    .prologue
    .line 124
    sget-object v0, Ljava/util/Timer;->nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    #@0
    .prologue
    .line 429
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@2
    monitor-enter v1

    #@3
    .line 430
    :try_start_0
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    #@5
    const/4 v2, 0x0

    #@6
    iput-boolean v2, v0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    #@8
    .line 431
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@a
    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V

    #@d
    .line 432
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@f
    invoke-virtual {v0}, Ljava/util/TaskQueue;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 428
    return-void

    #@14
    .line 429
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public purge()I
    .locals 5

    #@0
    .prologue
    .line 457
    const/4 v1, 0x0

    #@1
    .line 459
    .local v1, "result":I
    iget-object v3, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@3
    monitor-enter v3

    #@4
    .line 460
    :try_start_0
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@6
    invoke-virtual {v2}, Ljava/util/TaskQueue;->size()I

    #@9
    move-result v0

    #@a
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    #@c
    .line 461
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/TaskQueue;->get(I)Ljava/util/TimerTask;

    #@11
    move-result-object v2

    #@12
    iget v2, v2, Ljava/util/TimerTask;->state:I

    #@14
    const/4 v4, 0x3

    #@15
    if-ne v2, v4, :cond_0

    #@17
    .line 462
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@19
    invoke-virtual {v2, v0}, Ljava/util/TaskQueue;->quickRemove(I)V

    #@1c
    .line 463
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 460
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_0

    #@21
    .line 467
    :cond_1
    if-eqz v1, :cond_2

    #@23
    .line 468
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    #@25
    invoke-virtual {v2}, Ljava/util/TaskQueue;->heapify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_2
    monitor-exit v3

    #@29
    .line 471
    return v1

    #@2a
    .line 459
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 191
    cmp-long v0, p2, v4

    #@4
    if-gez v0, :cond_0

    #@6
    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Negative delay."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 193
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v0

    #@13
    add-long v2, v0, p2

    #@15
    move-object v0, p0

    #@16
    move-object v1, p1

    #@17
    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    #@1a
    .line 190
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;JJ)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 244
    cmp-long v0, p2, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Negative delay."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 246
    :cond_0
    cmp-long v0, p4, v2

    #@11
    if-gtz v0, :cond_1

    #@13
    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Non-positive period."

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 248
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f
    move-result-wide v0

    #@20
    add-long v2, v0, p2

    #@22
    neg-long v4, p4

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    #@28
    .line 243
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # Ljava/util/Date;

    #@0
    .prologue
    .line 208
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v2

    #@4
    const-wide/16 v4, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    #@b
    .line 207
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 7
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    #@0
    .prologue
    .line 285
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p3, v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Non-positive period."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 287
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@12
    move-result-wide v2

    #@13
    neg-long v4, p3

    #@14
    move-object v0, p0

    #@15
    move-object v1, p1

    #@16
    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    #@19
    .line 284
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 324
    cmp-long v0, p2, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Negative delay."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 326
    :cond_0
    cmp-long v0, p4, v2

    #@11
    if-gtz v0, :cond_1

    #@13
    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Non-positive period."

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 328
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f
    move-result-wide v0

    #@20
    add-long v2, v0, p2

    #@22
    move-object v0, p0

    #@23
    move-object v1, p1

    #@24
    move-wide v4, p4

    #@25
    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    #@28
    .line 323
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 7
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    #@0
    .prologue
    .line 368
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p3, v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Non-positive period."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 370
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@12
    move-result-wide v2

    #@13
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    move-wide v4, p3

    #@16
    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    #@19
    .line 367
    return-void
.end method
