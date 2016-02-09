.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$TimerImpl;,
        Ljava/util/Timer$FinalizerHelper;
    }
.end annotation


# static fields
.field private static timerId:J


# instance fields
.field private final finalizer:Ljava/util/Timer$FinalizerHelper;

.field private final impl:Ljava/util/Timer$TimerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 391
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Z)V

    #@4
    .line 390
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 375
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    #@4
    .line 374
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    #@0
    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 362
    if-nez p1, :cond_0

    #@5
    .line 363
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "name == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 365
    :cond_0
    new-instance v0, Ljava/util/Timer$TimerImpl;

    #@10
    invoke-direct {v0, p1, p2}, Ljava/util/Timer$TimerImpl;-><init>(Ljava/lang/String;Z)V

    #@13
    iput-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #@15
    .line 366
    new-instance v0, Ljava/util/Timer$FinalizerHelper;

    #@17
    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #@19
    invoke-direct {v0, v1}, Ljava/util/Timer$FinalizerHelper;-><init>(Ljava/util/Timer$TimerImpl;)V

    #@1c
    iput-object v0, p0, Ljava/util/Timer;->finalizer:Ljava/util/Timer$FinalizerHelper;

    #@1e
    .line 361
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "isDaemon"    # Z

    #@0
    .prologue
    .line 384
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
    invoke-static {}, Ljava/util/Timer;->nextId()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    #@1b
    .line 383
    return-void
.end method

.method private static declared-synchronized nextId()J
    .locals 6

    #@0
    .prologue
    const-class v1, Ljava/util/Timer;

    #@2
    monitor-enter v1

    #@3
    .line 345
    :try_start_0
    sget-wide v2, Ljava/util/Timer;->timerId:J

    #@5
    const-wide/16 v4, 0x1

    #@7
    add-long/2addr v4, v2

    #@8
    sput-wide v4, Ljava/util/Timer;->timerId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    return-wide v2

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method private scheduleImpl(Ljava/util/TimerTask;JJZ)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J
    .param p6, "fixed"    # Z

    #@0
    .prologue
    .line 556
    iget-object v3, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #@2
    monitor-enter v3

    #@3
    .line 557
    :try_start_0
    iget-object v2, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #@5
    invoke-static {v2}, Ljava/util/Timer$TimerImpl;->-get0(Ljava/util/Timer$TimerImpl;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 558
    new-instance v2, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v4, "Timer was canceled"

    #@10
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 556
    :catchall_0
    move-exception v2

    #@15
    monitor-exit v3

    #@16
    throw v2

    #@17
    .line 561
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1a
    move-result-wide v4

    #@1b
    add-long v0, p2, v4

    #@1d
    .line 563
    .local v0, "when":J
    const-wide/16 v4, 0x0

    #@1f
    cmp-long v2, v0, v4

    #@21
    if-gez v2, :cond_1

    #@23
    .line 564
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Illegal delay to start the TimerTask: "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 567
    :cond_1
    iget-object v4, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@3f
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 568
    :try_start_2
    invoke-virtual {p1}, Ljava/util/TimerTask;->isScheduled()Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_2

    #@46
    .line 569
    new-instance v2, Ljava/lang/IllegalStateException;

    #@48
    const-string/jumbo v5, "TimerTask is scheduled already"

    #@4b
    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4f
    .line 567
    :catchall_1
    move-exception v2

    #@50
    :try_start_3
    monitor-exit v4

    #@51
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    .line 572
    :cond_2
    :try_start_4
    iget-boolean v2, p1, Ljava/util/TimerTask;->cancelled:Z

    #@54
    if-eqz v2, :cond_3

    #@56
    .line 573
    new-instance v2, Ljava/lang/IllegalStateException;

    #@58
    const-string/jumbo v5, "TimerTask is canceled"

    #@5b
    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2

    #@5f
    .line 576
    :cond_3
    iput-wide v0, p1, Ljava/util/TimerTask;->when:J

    #@61
    .line 577
    iput-wide p4, p1, Ljava/util/TimerTask;->period:J

    #@63
    .line 578
    iput-boolean p6, p1, Ljava/util/TimerTask;->fixedRate:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@65
    :try_start_5
    monitor-exit v4

    #@66
    .line 582
    iget-object v2, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #@68
    invoke-static {v2, p1}, Ljava/util/Timer$TimerImpl;->-wrap0(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6b
    monitor-exit v3

    #@6c
    .line 555
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #@2
    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->cancel()V

    #@5
    .line 399
    return-void
.end method

.method public purge()I
    .locals 2

    #@0
    .prologue
    .line 412
    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #@2
    monitor-enter v1

    #@3
    .line 413
    :try_start_0
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #@5
    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->purge()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 412
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .locals 8
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    #@0
    .prologue
    .line 453
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "delay < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 456
    :cond_0
    const-wide/16 v4, -0x1

    #@22
    const/4 v6, 0x0

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    move-wide v2, p2

    #@26
    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    #@29
    .line 452
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;JJ)V
    .locals 8
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 475
    cmp-long v0, p2, v2

    #@4
    if-ltz v0, :cond_0

    #@6
    cmp-long v0, p4, v2

    #@8
    if-gtz v0, :cond_1

    #@a
    .line 476
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v0

    #@10
    .line 478
    :cond_1
    const/4 v6, 0x0

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move-wide v2, p2

    #@14
    move-wide v4, p4

    #@15
    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    #@18
    .line 474
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .locals 10
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "when"    # Ljava/util/Date;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 432
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@5
    move-result-wide v0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gez v0, :cond_0

    #@a
    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "when < 0: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@1b
    move-result-wide v2

    #@1c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 435
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@2b
    move-result-wide v0

    #@2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2f
    move-result-wide v4

    #@30
    sub-long v8, v0, v4

    #@32
    .line 436
    .local v8, "delay":J
    cmp-long v0, v8, v2

    #@34
    if-gez v0, :cond_1

    #@36
    :goto_0
    const-wide/16 v4, -0x1

    #@38
    const/4 v6, 0x0

    #@39
    move-object v0, p0

    #@3a
    move-object v1, p1

    #@3b
    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    #@3e
    .line 431
    return-void

    #@3f
    :cond_1
    move-wide v2, v8

    #@40
    .line 436
    goto :goto_0
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 11
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "when"    # Ljava/util/Date;
    .param p3, "period"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 498
    cmp-long v0, p3, v2

    #@4
    if-lez v0, :cond_0

    #@6
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@9
    move-result-wide v0

    #@a
    cmp-long v0, v0, v2

    #@c
    if-gez v0, :cond_1

    #@e
    .line 499
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v0

    #@14
    .line 501
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@17
    move-result-wide v0

    #@18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v4

    #@1c
    sub-long v8, v0, v4

    #@1e
    .line 502
    .local v8, "delay":J
    cmp-long v0, v8, v2

    #@20
    if-gez v0, :cond_2

    #@22
    :goto_0
    const/4 v6, 0x0

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    move-wide v4, p3

    #@26
    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    #@29
    .line 497
    return-void

    #@2a
    :cond_2
    move-wide v2, v8

    #@2b
    .line 502
    goto :goto_0
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .locals 8
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 522
    cmp-long v0, p2, v2

    #@4
    if-ltz v0, :cond_0

    #@6
    cmp-long v0, p4, v2

    #@8
    if-gtz v0, :cond_1

    #@a
    .line 523
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v0

    #@10
    .line 525
    :cond_1
    const/4 v6, 0x1

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move-wide v2, p2

    #@14
    move-wide v4, p4

    #@15
    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    #@18
    .line 521
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 7
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "when"    # Ljava/util/Date;
    .param p3, "period"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 545
    cmp-long v0, p3, v4

    #@4
    if-lez v0, :cond_0

    #@6
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@9
    move-result-wide v0

    #@a
    cmp-long v0, v0, v4

    #@c
    if-gez v0, :cond_1

    #@e
    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v0

    #@14
    .line 548
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@17
    move-result-wide v0

    #@18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v4

    #@1c
    sub-long v2, v0, v4

    #@1e
    .line 549
    .local v2, "delay":J
    const/4 v6, 0x1

    #@1f
    move-object v0, p0

    #@20
    move-object v1, p1

    #@21
    move-wide v4, p3

    #@22
    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    #@25
    .line 544
    return-void
.end method
