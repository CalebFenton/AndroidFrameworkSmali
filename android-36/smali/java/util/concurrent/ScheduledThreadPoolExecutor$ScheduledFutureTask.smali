.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RunnableScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableScheduledFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o heapIndex:I

.field greylist-max-o outerTask:Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o period:J

.field private final greylist-max-o sequenceNumber:J

.field final synthetic blacklist this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile greylist-max-o time:J


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V
    .registers 10
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p4, "triggerTime"    # J
    .param p6, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;JJ)V"
        }
    .end annotation

    .line 245
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 246
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 234
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 247
    iput-wide p4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 248
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 249
    iput-wide p6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 250
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJJ)V
    .registers 10
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p4, "triggerTime"    # J
    .param p6, "period"    # J
    .param p8, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;JJJ)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 258
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 234
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 259
    iput-wide p4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 260
    iput-wide p6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 261
    iput-wide p8, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 262
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;JJ)V
    .registers 9
    .param p3, "triggerTime"    # J
    .param p5, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;JJ)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 269
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 234
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 270
    iput-wide p3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 271
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 272
    iput-wide p5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 273
    return-void
.end method

.method private greylist-max-o setNextRunTime()V
    .registers 9

    .line 313
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 314
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2c

    .line 316
    iget-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 317
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->skipMultipleMissedPeriodicTasks()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 318
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 320
    .local v2, "now":J
    iget-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    iget-wide v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    sub-long v6, v2, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2b

    .line 323
    iget-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    sub-long v4, v2, v4

    add-long/2addr v4, v0

    rem-long/2addr v4, v0

    sub-long v4, v2, v4

    iput-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 325
    .end local v2    # "now":J
    :cond_2b
    goto :goto_35

    .line 327
    :cond_2c
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    neg-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 329
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z

    .line 335
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    .line 336
    .local v0, "cancelled":Z
    if-eqz v0, :cond_15

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v1, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    if-eqz v1, :cond_15

    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    if-ltz v1, :cond_15

    .line 337
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 338
    :cond_15
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 216
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o compareTo(Ljava/util/concurrent/Delayed;)I
    .registers 12
    .param p1, "other"    # Ljava/util/concurrent/Delayed;

    .line 280
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    const/4 v0, 0x0

    if-ne p1, p0, :cond_4

    .line 281
    return v0

    .line 282
    :cond_4
    instance-of v1, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_28

    .line 283
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .line 284
    .local v0, "x":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    iget-wide v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    iget-wide v8, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    sub-long/2addr v6, v8

    .line 285
    .local v6, "diff":J
    cmp-long v1, v6, v4

    if-gez v1, :cond_19

    .line 286
    return v3

    .line 287
    :cond_19
    cmp-long v1, v6, v4

    if-lez v1, :cond_1e

    .line 288
    return v2

    .line 289
    :cond_1e
    iget-wide v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    iget-wide v8, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_27

    .line 290
    return v3

    .line 292
    :cond_27
    return v2

    .line 294
    .end local v0    # "x":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    .end local v6    # "diff":J
    :cond_28
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 295
    .restart local v6    # "diff":J
    cmp-long v1, v6, v4

    if-gez v1, :cond_3b

    move v0, v3

    goto :goto_40

    :cond_3b
    cmp-long v1, v6, v4

    if-lez v1, :cond_40

    move v0, v2

    :cond_40
    :goto_40
    return v0
.end method

.method public whitelist test-api getDelay(Ljava/util/concurrent/TimeUnit;)J
    .registers 6
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 276
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api isPeriodic()Z
    .registers 5

    .line 304
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 345
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Ljava/util/concurrent/RunnableScheduledFuture;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->cancel(Z)Z

    goto :goto_27

    .line 347
    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_17

    .line 348
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_27

    .line 349
    :cond_17
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->runAndReset()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 350
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->setNextRunTime()V

    .line 351
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reExecutePeriodic(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 353
    :cond_27
    :goto_27
    return-void
.end method
