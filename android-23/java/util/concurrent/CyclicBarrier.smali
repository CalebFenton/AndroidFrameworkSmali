.class public Ljava/util/concurrent/CyclicBarrier;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CyclicBarrier$Generation;
    }
.end annotation


# instance fields
.field private final barrierCommand:Ljava/lang/Runnable;

.field private count:I

.field private generation:Ljava/util/concurrent/CyclicBarrier$Generation;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final parties:I

.field private final trip:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "parties"    # I

    #@0
    .prologue
    .line 262
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    #@4
    .line 261
    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "parties"    # I
    .param p2, "barrierAction"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 126
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    #@12
    .line 132
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>(Ljava/util/concurrent/CyclicBarrier$Generation;)V

    #@18
    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    #@1a
    .line 246
    if-gtz p1, :cond_0

    #@1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@21
    throw v0

    #@22
    .line 247
    :cond_0
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    #@24
    .line 248
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    #@26
    .line 249
    iput-object p2, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    #@28
    .line 245
    return-void
.end method

.method private breakBarrier()V
    .locals 2

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    #@5
    .line 159
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    #@7
    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    #@9
    .line 160
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    #@b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@e
    .line 157
    return-void
.end method

.method private dowait(ZJ)I
    .locals 10
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 169
    iget-object v4, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 170
    .local v4, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@8
    .line 172
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    #@a
    .line 174
    .local v1, "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 175
    new-instance v6, Ljava/util/concurrent/BrokenBarrierException;

    #@10
    invoke-direct {v6}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    #@13
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 228
    .end local v1    # "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    :catchall_0
    move-exception v6

    #@15
    .line 229
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 228
    throw v6

    #@19
    .line 177
    .restart local v1    # "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 178
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    #@22
    .line 179
    new-instance v6, Ljava/lang/InterruptedException;

    #@24
    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    #@27
    throw v6

    #@28
    .line 182
    :cond_1
    iget v6, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    #@2a
    add-int/lit8 v3, v6, -0x1

    #@2c
    iput v3, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 183
    .local v3, "index":I
    if-nez v3, :cond_5

    #@30
    .line 184
    const/4 v5, 0x0

    #@31
    .line 186
    .local v5, "ranAction":Z
    :try_start_2
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    #@33
    .line 187
    .local v0, "command":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    #@35
    .line 188
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@38
    .line 189
    :cond_2
    const/4 v5, 0x1

    #@39
    .line 190
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c
    .line 193
    if-nez v5, :cond_3

    #@3e
    .line 194
    :try_start_3
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    .line 229
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@44
    .line 191
    return v7

    #@45
    .line 192
    .end local v0    # "command":Ljava/lang/Runnable;
    :catchall_1
    move-exception v6

    #@46
    .line 193
    if-nez v5, :cond_4

    #@48
    .line 194
    :try_start_4
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    #@4b
    .line 192
    :cond_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4c
    .line 201
    .end local v5    # "ranAction":Z
    :cond_5
    if-nez p1, :cond_7

    #@4e
    .line 202
    :try_start_5
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    #@50
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@53
    .line 217
    :cond_6
    :goto_0
    :try_start_6
    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    #@55
    if-eqz v6, :cond_a

    #@57
    .line 218
    new-instance v6, Ljava/util/concurrent/BrokenBarrierException;

    #@59
    invoke-direct {v6}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    #@5c
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@5d
    .line 203
    :cond_7
    cmp-long v6, p2, v8

    #@5f
    if-lez v6, :cond_6

    #@61
    .line 204
    :try_start_7
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    #@63
    invoke-interface {v6, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@66
    move-result-wide p2

    #@67
    goto :goto_0

    #@68
    .line 205
    :catch_0
    move-exception v2

    #@69
    .line 206
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_8
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    #@6b
    if-ne v1, v6, :cond_8

    #@6d
    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    #@6f
    if-eqz v6, :cond_9

    #@71
    .line 213
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    #@78
    goto :goto_0

    #@79
    .line 207
    :cond_9
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    #@7c
    .line 208
    throw v2

    #@7d
    .line 220
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_a
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@7f
    if-eq v1, v6, :cond_b

    #@81
    .line 229
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@84
    .line 221
    return v3

    #@85
    .line 223
    :cond_b
    if-eqz p1, :cond_5

    #@87
    cmp-long v6, p2, v8

    #@89
    if-gtz v6, :cond_5

    #@8b
    .line 224
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    #@8e
    .line 225
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    #@90
    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@93
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private nextGeneration()V
    .locals 2

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@5
    .line 149
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    #@7
    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    #@9
    .line 150
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>(Ljava/util/concurrent/CyclicBarrier$Generation;)V

    #@f
    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    #@11
    .line 145
    return-void
.end method


# virtual methods
.method public await()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    const/4 v1, 0x0

    #@1
    const-wide/16 v2, 0x0

    #@3
    :try_start_0
    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 331
    :catch_0
    move-exception v0

    #@9
    .line 332
    .local v0, "toe":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@e
    throw v1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)I
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 402
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v0

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {p0, v2, v0, v1}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getNumberWaiting()I
    .locals 3

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 451
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 453
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    #@7
    iget v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    sub-int/2addr v1, v2

    #@a
    .line 455
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 453
    return v1

    #@e
    .line 454
    :catchall_0
    move-exception v1

    #@f
    .line 455
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@12
    .line 454
    throw v1
.end method

.method public getParties()I
    .locals 1

    #@0
    .prologue
    .line 271
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    #@2
    return v0
.end method

.method public isBroken()Z
    .locals 2

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 415
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 417
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    #@7
    iget-boolean v1, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 419
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@c
    .line 417
    return v1

    #@d
    .line 418
    :catchall_0
    move-exception v1

    #@e
    .line 419
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@11
    .line 418
    throw v1
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 434
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 436
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    #@8
    .line 437
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 432
    return-void

    #@f
    .line 438
    :catchall_0
    move-exception v1

    #@10
    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 438
    throw v1
.end method
