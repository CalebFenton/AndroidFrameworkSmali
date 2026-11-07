.class final Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
.super Ljava/lang/Object;
.source "CachingUmaRecorder.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;,
        Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist MAX_HISTOGRAM_COUNT:I = 0x100

.field static final blacklist MAX_USER_ACTION_COUNT:I = 0x100

.field private static final blacklist TAG:Ljava/lang/String; = "CachingUmaRecorder"


# instance fields
.field private blacklist mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

.field private blacklist mDroppedHistogramSampleCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mDroppedUserActionCount:I

.field private blacklist mHistogramByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private blacklist mUserActionCallbacksForTesting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 34
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedHistogramSampleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActions:Ljava/util/List;

    return-void
.end method

.method private blacklist cacheHistogramSampleAlreadyWriteLocked(ILjava/lang/String;IIII)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sample"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "numBuckets"    # I

    .line 437
    nop

    .line 438
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;

    .line 439
    .local v6, "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    if-nez v6, :cond_2f

    .line 440
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_1d

    .line 442
    nop

    .line 443
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedHistogramSampleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 444
    return-void

    .line 446
    :cond_1d
    new-instance v0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;

    move v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;-><init>(ILjava/lang/String;III)V

    move-object v6, v0

    .line 447
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    invoke-interface {v0, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_30

    .line 439
    :cond_2f
    move-object v0, v6

    .line 449
    .end local v6    # "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    .local v0, "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    :goto_30
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->addSample(ILjava/lang/String;IIII)Z

    move-result v7

    if-nez v7, :cond_41

    .line 450
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedHistogramSampleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 452
    :cond_41
    return-void
.end method

.method private blacklist cacheOrRecordHistogramSample(ILjava/lang/String;IIII)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sample"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "numBuckets"    # I

    .line 365
    invoke-direct/range {p0 .. p6}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->tryAppendOrRecordSample(ILjava/lang/String;IIII)Z

    move-result v0

    move v1, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "type":I
    .local v1, "numBuckets":I
    .local p2, "type":I
    .local p3, "name":Ljava/lang/String;
    .local p4, "sample":I
    .local p5, "min":I
    .local p6, "max":I
    if-eqz v0, :cond_e

    .line 366
    return-void

    .line 369
    :cond_e
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 371
    :try_start_17
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_7d

    if-nez v0, :cond_3d

    .line 372
    move p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, v1

    .end local v1    # "numBuckets":I
    .restart local p1    # "type":I
    .local p2, "name":Ljava/lang/String;
    .local p3, "sample":I
    .local p4, "min":I
    .local p5, "max":I
    .local p6, "numBuckets":I
    :try_start_21
    invoke-direct/range {p0 .. p6}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->cacheHistogramSampleAlreadyWriteLocked(ILjava/lang/String;IIII)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_34

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 378
    .end local p1    # "type":I
    .restart local v1    # "numBuckets":I
    .local p2, "type":I
    .local p3, "name":Ljava/lang/String;
    .local p4, "sample":I
    .local p5, "min":I
    .local p6, "max":I
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 373
    return-void

    .line 378
    .end local v1    # "numBuckets":I
    .restart local p1    # "type":I
    .local p2, "name":Ljava/lang/String;
    .local p3, "sample":I
    .local p4, "min":I
    .local p5, "max":I
    .local p6, "numBuckets":I
    :catchall_34
    move-exception v0

    move v1, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "type":I
    .restart local v1    # "numBuckets":I
    .local p2, "type":I
    .local p3, "name":Ljava/lang/String;
    .local p4, "sample":I
    .local p5, "min":I
    .local p6, "max":I
    goto :goto_7e

    .line 376
    :cond_3d
    :try_start_3d
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_7d

    .line 378
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 379
    nop

    .line 384
    nop

    .line 385
    move p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, v1

    .end local v1    # "numBuckets":I
    .restart local p1    # "type":I
    .local p2, "name":Ljava/lang/String;
    .local p3, "sample":I
    .local p4, "min":I
    .local p5, "max":I
    .local p6, "numBuckets":I
    :try_start_57
    invoke-direct/range {p0 .. p6}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->recordHistogramSampleAlreadyLocked(ILjava/lang/String;IIII)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_6b

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 387
    .end local p1    # "type":I
    .restart local v1    # "numBuckets":I
    .local p2, "type":I
    .local p3, "name":Ljava/lang/String;
    .local p4, "sample":I
    .local p5, "min":I
    .local p6, "max":I
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    .end local v1    # "numBuckets":I
    .restart local p1    # "type":I
    .local p2, "name":Ljava/lang/String;
    .local p3, "sample":I
    .local p4, "min":I
    .local p5, "max":I
    .local p6, "numBuckets":I
    :catchall_6b
    move-exception v0

    move v1, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "type":I
    .restart local v1    # "numBuckets":I
    .local p2, "type":I
    .local p3, "name":Ljava/lang/String;
    .local p4, "sample":I
    .local p5, "min":I
    .local p6, "max":I
    iget-object v2, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 388
    throw v0

    .line 378
    :catchall_7d
    move-exception v0

    :goto_7e
    iget-object v2, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 379
    throw v0
.end method

.method private blacklist flushHistogramsAlreadyLocked(Ljava/util/Map;I)V
    .registers 10
    .param p2, "droppedHistogramSampleCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;",
            ">;I)V"
        }
    .end annotation

    .line 315
    .local p1, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;>;"
    nop

    .line 316
    nop

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "flushedHistogramSampleCount":I
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 319
    .local v1, "flushedHistogramCount":I
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;

    .line 320
    .local v3, "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-virtual {v3, v4}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->flushTo(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)I

    move-result v4

    add-int/2addr v0, v4

    .line 321
    .end local v3    # "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    goto :goto_f

    .line 322
    :cond_23
    nop

    .line 325
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 327
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 322
    const-string v5, "CachingUmaRecorder"

    const-string v6, "Flushed %d samples from %d histograms, %d samples were dropped."

    invoke-static {v5, v6, v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method private blacklist flushUserActionsAlreadyLocked(Ljava/util/List;I)V
    .registers 7
    .param p2, "droppedUserActionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;",
            ">;I)V"
        }
    .end annotation

    .line 339
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;>;"
    nop

    .line 340
    nop

    .line 341
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;

    .line 342
    .local v1, "userAction":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;->flushTo(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)V

    .line 343
    .end local v1    # "userAction":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;
    goto :goto_6

    .line 344
    :cond_18
    nop

    .line 347
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 348
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 344
    const-string v2, "CachingUmaRecorder"

    const-string v3, "Flushed %d user action samples, %d samples were dropped."

    invoke-static {v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method private blacklist recordHistogramSampleAlreadyLocked(ILjava/lang/String;IIII)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sample"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "numBuckets"    # I

    .line 468
    nop

    .line 469
    nop

    .line 470
    nop

    .line 471
    packed-switch p1, :pswitch_data_5e

    .line 485
    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "sample":I
    .end local p4    # "min":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "sample":I
    .local v4, "min":I
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown histogram type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 482
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sample":I
    .end local v4    # "min":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "sample":I
    .restart local p4    # "min":I
    :pswitch_22
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p2, p3}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordSparseHistogram(Ljava/lang/String;I)V

    .line 483
    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    goto :goto_5d

    .line 479
    :pswitch_2d
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "sample":I
    .end local p4    # "min":I
    .end local p5    # "max":I
    .end local p6    # "numBuckets":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "sample":I
    .restart local v4    # "min":I
    .local v5, "max":I
    .local v6, "numBuckets":I
    invoke-interface/range {v1 .. v6}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordLinearHistogram(Ljava/lang/String;IIII)V

    .line 480
    goto :goto_5d

    .line 476
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sample":I
    .end local v4    # "min":I
    .end local v5    # "max":I
    .end local v6    # "numBuckets":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "sample":I
    .restart local p4    # "min":I
    .restart local p5    # "max":I
    .restart local p6    # "numBuckets":I
    :pswitch_38
    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "sample":I
    .end local p4    # "min":I
    .end local p5    # "max":I
    .end local p6    # "numBuckets":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "sample":I
    .restart local v4    # "min":I
    .restart local v5    # "max":I
    .restart local v6    # "numBuckets":I
    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    .end local v2    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v4, "sample":I
    .local v5, "min":I
    .local v6, "max":I
    .local v7, "numBuckets":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 477
    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    .end local v7    # "numBuckets":I
    .restart local v2    # "name":Ljava/lang/String;
    .local v3, "sample":I
    .local v4, "min":I
    .local v5, "max":I
    .local v6, "numBuckets":I
    goto :goto_5d

    .line 473
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sample":I
    .end local v4    # "min":I
    .end local v5    # "max":I
    .end local v6    # "numBuckets":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "sample":I
    .restart local p4    # "min":I
    .restart local p5    # "max":I
    .restart local p6    # "numBuckets":I
    :pswitch_4d
    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "sample":I
    .end local p4    # "min":I
    .end local p5    # "max":I
    .end local p6    # "numBuckets":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "sample":I
    .restart local v4    # "min":I
    .restart local v5    # "max":I
    .restart local v6    # "numBuckets":I
    iget-object p2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    if-eqz v3, :cond_58

    const/4 p3, 0x1

    goto :goto_59

    :cond_58
    const/4 p3, 0x0

    :goto_59
    invoke-interface {p2, v2, p3}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 474
    nop

    .line 487
    :goto_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_38
        :pswitch_2d
        :pswitch_22
    .end packed-switch
.end method

.method private blacklist swapUserActionCallbacksForTesting(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)V
    .registers 5
    .param p1, "previousRecorder"    # Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .param p2, "newRecorder"    # Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    .line 668
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 670
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 671
    if-eqz p1, :cond_1b

    .line 672
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    .line 673
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Callback;

    .line 672
    invoke-interface {p1, v1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->removeUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 675
    :cond_1b
    if-eqz p2, :cond_28

    .line 676
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {p2, v1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->addUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 670
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 679
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method private blacklist tryAppendOrRecordSample(ILjava/lang/String;IIII)Z
    .registers 16
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sample"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "numBuckets"    # I

    .line 404
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 406
    :try_start_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_63

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 407
    :try_start_e
    invoke-direct/range {p0 .. p6}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->recordHistogramSampleAlreadyLocked(ILjava/lang/String;IIII)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1e

    move v3, p1

    move-object p1, p0

    .line 408
    .end local p1    # "type":I
    .local v3, "type":I
    nop

    .line 419
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 408
    return v1

    .line 419
    .end local v3    # "type":I
    .restart local p1    # "type":I
    :catchall_1e
    move-exception v0

    move v3, p1

    move-object p1, p0

    move-object v4, p2

    .end local p1    # "type":I
    .restart local v3    # "type":I
    goto :goto_67

    .line 410
    .end local v3    # "type":I
    .restart local p1    # "type":I
    :cond_23
    move v3, p1

    move-object p1, p0

    .end local p1    # "type":I
    .restart local v3    # "type":I
    :try_start_25
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_60

    .line 411
    .local v2, "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    if-nez v2, :cond_3c

    .line 412
    nop

    .line 419
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 412
    const/4 v0, 0x0

    return v0

    .line 414
    :cond_3c
    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "sample":I
    .end local p4    # "min":I
    .end local p5    # "max":I
    .end local p6    # "numBuckets":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "sample":I
    .local v6, "min":I
    .local v7, "max":I
    .local v8, "numBuckets":I
    :try_start_41
    invoke-virtual/range {v2 .. v8}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->addSample(ILjava/lang/String;IIII)Z

    move-result p2
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_5a

    .end local v5    # "sample":I
    .end local v6    # "min":I
    .end local v7    # "max":I
    .end local v8    # "numBuckets":I
    .restart local p3    # "sample":I
    .restart local p4    # "min":I
    .restart local p5    # "max":I
    .restart local p6    # "numBuckets":I
    if-nez p2, :cond_4f

    .line 415
    :try_start_47
    iget-object p2, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedHistogramSampleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4d

    goto :goto_4f

    .line 419
    .end local v2    # "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    :catchall_4d
    move-exception v0

    goto :goto_67

    .line 417
    .restart local v2    # "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    :cond_4f
    :goto_4f
    nop

    .line 419
    iget-object p2, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 417
    return v1

    .line 419
    .end local v2    # "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    .end local p3    # "sample":I
    .end local p4    # "min":I
    .end local p5    # "max":I
    .end local p6    # "numBuckets":I
    .restart local v5    # "sample":I
    .restart local v6    # "min":I
    .restart local v7    # "max":I
    .restart local v8    # "numBuckets":I
    :catchall_5a
    move-exception v0

    move p3, v5

    move p4, v6

    move p5, v7

    move p6, v8

    .end local v5    # "sample":I
    .end local v6    # "min":I
    .end local v7    # "max":I
    .end local v8    # "numBuckets":I
    .restart local p3    # "sample":I
    .restart local p4    # "min":I
    .restart local p5    # "max":I
    .restart local p6    # "numBuckets":I
    goto :goto_67

    .end local v4    # "name":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_60
    move-exception v0

    move-object v4, p2

    .end local p2    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_67

    .end local v3    # "type":I
    .end local v4    # "name":Ljava/lang/String;
    .restart local p1    # "type":I
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_63
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object p1, p0

    .end local p1    # "type":I
    .end local p2    # "name":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v4    # "name":Ljava/lang/String;
    :goto_67
    iget-object p2, p1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 420
    throw v0
.end method


# virtual methods
.method public blacklist addUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 634
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 636
    :try_start_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    if-nez v0, :cond_14

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    .line 639
    :cond_14
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->addUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2d

    .line 642
    :cond_22
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 643
    nop

    .line 644
    return-void

    .line 642
    :catchall_2d
    move-exception v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 643
    throw v0
.end method

.method public blacklist getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 605
    :try_start_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_81

    .line 627
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 605
    return-object v0

    .line 607
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;

    .line 608
    .local v0, "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    if-nez v0, :cond_35

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_81

    .line 627
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 608
    return-object v1

    .line 610
    :cond_35
    :try_start_35
    monitor-enter v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_81

    .line 611
    :try_start_36
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->-$$Nest$fgetmSamples(Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 612
    .local v1, "samplesCopy":[Ljava/lang/Integer;
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_7e

    .line 613
    :try_start_44
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 614
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v2, "buckets":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4d
    array-length v4, v1

    if-ge v3, v4, :cond_73

    .line 616
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 617
    .local v4, "value":I
    const/4 v5, 0x0

    .line 619
    .local v5, "countInBucket":I
    :cond_57
    add-int/lit8 v5, v5, 0x1

    .line 620
    add-int/lit8 v3, v3, 0x1

    .line 621
    array-length v6, v1

    if-ge v3, v6, :cond_66

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_57

    .line 623
    :cond_66
    new-instance v6, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;

    add-int/lit8 v7, v4, 0x1

    int-to-long v7, v7

    invoke-direct {v6, v4, v7, v8, v5}, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;-><init>(IJI)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catchall {:try_start_44 .. :try_end_71} :catchall_81

    .line 624
    nop

    .end local v4    # "value":I
    .end local v5    # "countInBucket":I
    goto :goto_4d

    .line 625
    .end local v3    # "i":I
    :cond_73
    nop

    .line 627
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 625
    return-object v2

    .line 612
    .end local v1    # "samplesCopy":[Ljava/lang/Integer;
    .end local v2    # "buckets":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;>;"
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
    .end local p1    # "name":Ljava/lang/String;
    :try_start_80
    throw v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    .line 627
    .end local v0    # "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_81
    move-exception v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 628
    throw v0
.end method

.method public blacklist getHistogramTotalCountForTesting(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 586
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 588
    :try_start_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->getHistogramTotalCountForTesting(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_49

    .line 596
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 588
    return v0

    .line 590
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_49

    .line 591
    .local v0, "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    if-nez v0, :cond_32

    .line 596
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 591
    const/4 v1, 0x0

    return v1

    .line 592
    :cond_32
    :try_start_32
    monitor-enter v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_49

    .line 593
    :try_start_33
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->-$$Nest$fgetmSamples(Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_46

    .line 596
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 593
    return v1

    .line 594
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
    .end local p1    # "name":Ljava/lang/String;
    :try_start_48
    throw v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 596
    .end local v0    # "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_49
    move-exception v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 597
    throw v0
.end method

.method public blacklist getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I

    .line 565
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 567
    :try_start_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->getHistogramValueCountForTesting(Ljava/lang/String;I)I

    move-result v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_63

    .line 579
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 567
    return v0

    .line 569
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_63

    .line 570
    .local v0, "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    if-nez v0, :cond_32

    .line 579
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 570
    const/4 v1, 0x0

    return v1

    .line 571
    :cond_32
    const/4 v1, 0x0

    .line 572
    .local v1, "sampleCount":I
    :try_start_33
    monitor-enter v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_63

    .line 573
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    :try_start_35
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->-$$Nest$fgetmSamples(Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 574
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->-$$Nest$fgetmSamples(Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_51

    add-int/lit8 v1, v1, 0x1

    .line 573
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 576
    .end local v2    # "i":I
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_35 .. :try_end_55} :catchall_60

    .line 577
    nop

    .line 579
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 577
    return v1

    .line 576
    :catchall_60
    move-exception v2

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "sample":I
    :try_start_62
    throw v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .line 579
    .end local v0    # "histogram":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    .end local v1    # "sampleCount":I
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "sample":I
    :catchall_63
    move-exception v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 580
    throw v0
.end method

.method public blacklist recordBooleanHistogram(Ljava/lang/String;Z)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boolSample"    # Z

    .line 491
    move v3, p2

    .line 492
    .local v3, "sample":I
    const/4 v7, 0x0

    .line 493
    .local v7, "min":I
    const/4 v8, 0x0

    .line 494
    .local v8, "max":I
    const/4 v9, 0x0

    .line 495
    .local v9, "numBuckets":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->cacheOrRecordHistogramSample(ILjava/lang/String;IIII)V

    .line 496
    return-void
.end method

.method public blacklist recordExponentialHistogram(Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "numBuckets"    # I

    .line 501
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "sample":I
    .end local p3    # "min":I
    .end local p4    # "max":I
    .end local p5    # "numBuckets":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "sample":I
    .local v4, "min":I
    .local v5, "max":I
    .local v6, "numBuckets":I
    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->cacheOrRecordHistogramSample(ILjava/lang/String;IIII)V

    .line 503
    return-void
.end method

.method public blacklist recordLinearHistogram(Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "numBuckets"    # I

    .line 507
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "sample":I
    .end local p3    # "min":I
    .end local p4    # "max":I
    .end local p5    # "numBuckets":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "sample":I
    .local v4, "min":I
    .local v5, "max":I
    .local v6, "numBuckets":I
    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->cacheOrRecordHistogramSample(ILjava/lang/String;IIII)V

    .line 508
    return-void
.end method

.method public blacklist recordSparseHistogram(Ljava/lang/String;I)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "min":I
    const/4 v1, 0x0

    .line 514
    .local v1, "max":I
    const/4 v2, 0x0

    .line 515
    .local v2, "numBuckets":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "sample":I
    .local v5, "name":Ljava/lang/String;
    .local v6, "sample":I
    invoke-direct/range {v3 .. v9}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->cacheOrRecordHistogramSample(ILjava/lang/String;IIII)V

    .line 516
    return-void
.end method

.method public blacklist recordUserAction(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMillis"    # J

    .line 520
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 522
    :try_start_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    if-eqz v0, :cond_1c

    .line 523
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_ae

    .line 527
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 524
    return-void

    .line 527
    :cond_1c
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 528
    nop

    .line 530
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 532
    :try_start_2f
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    if-nez v0, :cond_74

    .line 533
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_48

    .line 534
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActions:Ljava/util/List;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;

    invoke-direct {v1, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 536
    :cond_48
    nop

    .line 537
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedUserActionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedUserActionCount:I

    .line 539
    :goto_4f
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    if-eqz v0, :cond_6a

    .line 540
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_54
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 541
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v1, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_2f .. :try_end_67} :catchall_a3

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 549
    .end local v0    # "i":I
    :cond_6a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 544
    return-void

    .line 547
    :cond_74
    :try_start_74
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_a3

    .line 549
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 550
    nop

    .line 555
    nop

    .line 556
    :try_start_88
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_98

    .line 558
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 559
    nop

    .line 560
    return-void

    .line 558
    :catchall_98
    move-exception v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 559
    throw v0

    .line 549
    :catchall_a3
    move-exception v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 550
    throw v0

    .line 527
    :catchall_ae
    move-exception v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 528
    throw v0
.end method

.method public blacklist removeUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 649
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 651
    :try_start_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_31

    if-nez v0, :cond_18

    .line 652
    nop

    .line 660
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 655
    return-void

    .line 657
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActionCallbacksForTesting:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->removeUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_31

    .line 660
    :cond_26
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 661
    nop

    .line 662
    return-void

    .line 660
    :catchall_31
    move-exception v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 661
    throw v0
.end method

.method public blacklist setDelegate(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .registers 9
    .param p1, "recorder"    # Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "histogramCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;>;"
    const/4 v1, 0x0

    .line 261
    .local v1, "droppedHistogramSampleCount":I
    const/4 v2, 0x0

    .line 262
    .local v2, "userActionCache":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;>;"
    const/4 v3, 0x0

    .line 264
    .local v3, "droppedUserActionCount":I
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 266
    :try_start_d
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    .line 267
    .local v4, "previous":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDelegate:Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    .line 268
    sget-boolean v5, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz v5, :cond_18

    .line 269
    invoke-direct {p0, v4, p1}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->swapUserActionCallbacksForTesting(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_8c

    .line 271
    :cond_18
    if-nez p1, :cond_25

    .line 272
    nop

    .line 288
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 272
    return-object v4

    .line 274
    :cond_25
    :try_start_25
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3f

    .line 275
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    move-object v0, v5

    .line 276
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mHistogramByName:Ljava/util/Map;

    .line 277
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedHistogramSampleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v5

    move v1, v5

    .line 279
    :cond_3f
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_56

    .line 280
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActions:Ljava/util/List;

    move-object v2, v5

    .line 281
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mUserActions:Ljava/util/List;

    .line 282
    iget v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedUserActionCount:I

    move v3, v5

    .line 283
    iput v6, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mDroppedUserActionCount:I

    .line 286
    :cond_56
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_5f
    .catchall {:try_start_25 .. :try_end_5f} :catchall_8c

    .line 288
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 289
    nop

    .line 292
    if-eqz v0, :cond_71

    .line 293
    :try_start_6b
    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->flushHistogramsAlreadyLocked(Ljava/util/Map;I)V

    goto :goto_71

    .line 299
    :catchall_6f
    move-exception v5

    goto :goto_77

    .line 295
    :cond_71
    :goto_71
    if-eqz v2, :cond_81

    .line 296
    invoke-direct {p0, v2, v3}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->flushUserActionsAlreadyLocked(Ljava/util/List;I)V
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_6f

    goto :goto_81

    .line 299
    :goto_77
    iget-object v6, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 300
    throw v5

    .line 299
    :cond_81
    :goto_81
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 300
    nop

    .line 301
    return-object v4

    .line 288
    .end local v4    # "previous":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    :catchall_8c
    move-exception v4

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->mRwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 289
    throw v4
.end method
