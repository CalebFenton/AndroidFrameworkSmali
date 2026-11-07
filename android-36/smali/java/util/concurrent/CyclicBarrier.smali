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
.field private final greylist-max-o barrierCommand:Ljava/lang/Runnable;

.field private greylist-max-o count:I

.field private greylist-max-o generation:Ljava/util/concurrent/CyclicBarrier$Generation;

.field private final greylist-max-o lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist-max-o parties:I

.field private final greylist-max-o trip:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "parties"    # I

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/lang/Runnable;)V
    .registers 4
    .param p1, "parties"    # I
    .param p2, "barrierAction"    # Ljava/lang/Runnable;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 161
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    .line 167
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    invoke-direct {v0}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 280
    if-lez p1, :cond_22

    .line 281
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    .line 282
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 283
    iput-object p2, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 284
    return-void

    .line 280
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o breakBarrier()V
    .registers 3

    .line 193
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    .line 194
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 195
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 196
    return-void
.end method

.method private greylist-max-o dowait(ZJ)I
    .registers 11
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 205
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 207
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 209
    .local v1, "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    iget-boolean v2, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-nez v2, :cond_8b

    .line 212
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_82

    .line 217
    iget v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 218
    .local v2, "index":I
    if-nez v2, :cond_30

    .line 219
    iget-object v3, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_91

    .line 220
    .local v3, "command":Ljava/lang/Runnable;
    if-eqz v3, :cond_27

    .line 222
    :try_start_1d
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    .line 226
    goto :goto_27

    .line 223
    :catchall_21
    move-exception v4

    .line 224
    .local v4, "ex":Ljava/lang/Throwable;
    :try_start_22
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 225
    nop

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v4

    .line 228
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_27
    :goto_27
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_91

    .line 229
    nop

    .line 263
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 229
    const/4 v4, 0x0

    return v4

    .line 235
    .end local v3    # "command":Ljava/lang/Runnable;
    :cond_30
    :goto_30
    const-wide/16 v3, 0x0

    if-nez p1, :cond_3c

    .line 236
    :try_start_34
    iget-object v5, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5e

    .line 239
    :catch_3a
    move-exception v5

    goto :goto_48

    .line 237
    :cond_3c
    cmp-long v5, p2, v3

    if-lez v5, :cond_5e

    .line 238
    iget-object v5, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_46} :catch_3a
    .catchall {:try_start_34 .. :try_end_46} :catchall_91

    move-wide p2, v5

    goto :goto_5e

    .line 240
    .local v5, "ie":Ljava/lang/InterruptedException;
    :goto_48
    :try_start_48
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    if-ne v1, v6, :cond_56

    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-eqz v6, :cond_51

    goto :goto_56

    .line 241
    :cond_51
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 242
    nop

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v5

    .line 247
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_56
    :goto_56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5f

    .line 249
    .end local v5    # "ie":Ljava/lang/InterruptedException;
    :cond_5e
    :goto_5e
    nop

    .line 251
    :goto_5f
    iget-boolean v5, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-nez v5, :cond_7c

    .line 254
    iget-object v5, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;
    :try_end_65
    .catchall {:try_start_48 .. :try_end_65} :catchall_91

    if-eq v1, v5, :cond_6c

    .line 255
    nop

    .line 263
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    return v2

    .line 257
    :cond_6c
    if-eqz p1, :cond_30

    cmp-long v3, p2, v3

    if-lez v3, :cond_73

    goto :goto_30

    .line 258
    :cond_73
    :try_start_73
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 259
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v3

    .line 252
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_7c
    new-instance v3, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v3}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v3

    .line 213
    .end local v2    # "index":I
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_82
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 214
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v2

    .line 210
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :cond_8b
    new-instance v2, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v2}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .end local p1    # "timed":Z
    .end local p2    # "nanos":J
    throw v2
    :try_end_91
    .catchall {:try_start_73 .. :try_end_91} :catchall_91

    .line 263
    .end local v1    # "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/CyclicBarrier;
    .restart local p1    # "timed":Z
    .restart local p2    # "nanos":J
    :catchall_91
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 264
    throw v1
.end method

.method private greylist-max-o nextGeneration()V
    .registers 2

    .line 182
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 184
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 185
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    invoke-direct {v0}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 186
    return-void
.end method


# virtual methods
.method public whitelist test-api await()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_3
    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    move-result v0
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 365
    :catch_8
    move-exception v0

    .line 366
    .local v0, "toe":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api await(JLjava/util/concurrent/TimeUnit;)I
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNumberWaiting()I
    .registers 4

    .line 485
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 486
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 488
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iget v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    sub-int/2addr v1, v2

    .line 490
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 488
    return v1

    .line 490
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    throw v1
.end method

.method public whitelist test-api getParties()I
    .registers 2

    .line 305
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    return v0
.end method

.method public whitelist test-api isBroken()Z
    .registers 3

    .line 449
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 450
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 452
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    iget-boolean v1, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 454
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    return v1

    .line 454
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 455
    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 468
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 469
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 471
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 472
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    .line 474
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    nop

    .line 476
    return-void

    .line 474
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    throw v1
.end method
