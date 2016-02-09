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
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/util/concurrent/RunnableScheduledFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field heapIndex:I

.field outerTask:Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final period:J

.field private final sequenceNumber:J

.field final synthetic this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private time:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p4, "triggerTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 182
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@2
    .line 183
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@5
    .line 172
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    #@7
    .line 184
    iput-wide p4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@9
    .line 185
    const-wide/16 v0, 0x0

    #@b
    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    #@d
    .line 186
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->-get1()Ljava/util/concurrent/atomic/AtomicLong;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    #@17
    .line 182
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p4, "triggerTime"    # J
    .param p6, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@2
    .line 195
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@5
    .line 172
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    #@7
    .line 196
    iput-wide p4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@9
    .line 197
    iput-wide p6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    #@b
    .line 198
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->-get1()Ljava/util/concurrent/atomic/AtomicLong;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    #@15
    .line 194
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;J)V
    .locals 3
    .param p1, "this$0"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p3, "triggerTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 204
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@2
    .line 205
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    .line 172
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    #@7
    .line 206
    iput-wide p3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@9
    .line 207
    const-wide/16 v0, 0x0

    #@b
    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    #@d
    .line 208
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->-get1()Ljava/util/concurrent/atomic/AtomicLong;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    #@17
    .line 204
    return-void
.end method

.method private setNextRunTime()V
    .locals 6

    #@0
    .prologue
    .line 247
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    #@2
    .line 248
    .local v0, "p":J
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, v0, v2

    #@6
    if-lez v2, :cond_0

    #@8
    .line 249
    iget-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@a
    add-long/2addr v2, v0

    #@b
    iput-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@d
    .line 246
    :goto_0
    return-void

    #@e
    .line 251
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@10
    neg-long v4, v0

    #@11
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(J)J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@17
    goto :goto_0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    .line 255
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    #@3
    move-result v0

    #@4
    .line 256
    .local v0, "cancelled":Z
    if-eqz v0, :cond_0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@8
    invoke-static {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->-get0(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    #@10
    if-ltz v1, :cond_0

    #@12
    .line 257
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@14
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    #@17
    .line 258
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 215
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 12
    .param p1, "other"    # Ljava/util/concurrent/Delayed;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, -0x1

    #@3
    const-wide/16 v10, 0x0

    #@5
    .line 216
    if-ne p1, p0, :cond_0

    #@7
    .line 217
    return v5

    #@8
    .line 218
    :cond_0
    instance-of v6, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@a
    if-eqz v6, :cond_4

    #@c
    move-object v2, p1

    #@d
    .line 219
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@f
    .line 220
    .local v2, "x":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    iget-wide v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@11
    iget-wide v8, v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@13
    sub-long v0, v6, v8

    #@15
    .line 221
    .local v0, "diff":J
    cmp-long v5, v0, v10

    #@17
    if-gez v5, :cond_1

    #@19
    .line 222
    return v3

    #@1a
    .line 223
    :cond_1
    cmp-long v5, v0, v10

    #@1c
    if-lez v5, :cond_2

    #@1e
    .line 224
    return v4

    #@1f
    .line 225
    :cond_2
    iget-wide v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    #@21
    iget-wide v8, v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    #@23
    cmp-long v5, v6, v8

    #@25
    if-gez v5, :cond_3

    #@27
    .line 226
    return v3

    #@28
    .line 228
    :cond_3
    return v4

    #@29
    .line 230
    .end local v0    # "diff":J
    .end local v2    # "x":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    :cond_4
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@2b
    invoke-virtual {p0, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@2e
    move-result-wide v6

    #@2f
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@31
    invoke-interface {p1, v8}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@34
    move-result-wide v8

    #@35
    sub-long v0, v6, v8

    #@37
    .line 231
    .restart local v0    # "diff":J
    cmp-long v6, v0, v10

    #@39
    if-gez v6, :cond_5

    #@3b
    :goto_0
    return v3

    #@3c
    :cond_5
    cmp-long v3, v0, v10

    #@3e
    if-lez v3, :cond_6

    #@40
    move v3, v4

    #@41
    goto :goto_0

    #@42
    :cond_6
    move v3, v5

    #@43
    goto :goto_0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 212
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    #@2
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    #@7
    move-result-wide v2

    #@8
    sub-long/2addr v0, v2

    #@9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@b
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public isPeriodic()Z
    .locals 4

    #@0
    .prologue
    .line 240
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 265
    .local p0, "this":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->isPeriodic()Z

    #@3
    move-result v0

    #@4
    .line 266
    .local v0, "periodic":Z
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 267
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->cancel(Z)Z

    #@10
    .line 264
    :cond_0
    :goto_0
    return-void

    #@11
    .line 268
    :cond_1
    if-nez v0, :cond_2

    #@13
    .line 269
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    #@16
    goto :goto_0

    #@17
    .line 270
    :cond_2
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->runAndReset()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 271
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->setNextRunTime()V

    #@20
    .line 272
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@22
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    #@24
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reExecutePeriodic(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@27
    goto :goto_0
.end method
