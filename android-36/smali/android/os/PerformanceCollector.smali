.class public Landroid/os/PerformanceCollector;
.super Ljava/lang/Object;
.source "PerformanceCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerformanceCollector$PerformanceResultsWriter;
    }
.end annotation


# static fields
.field public static final greylist-max-o METRIC_KEY_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field public static final greylist-max-o METRIC_KEY_EXECUTION_TIME:Ljava/lang/String; = "execution_time"

.field public static final greylist-max-o METRIC_KEY_GC_INVOCATION_COUNT:Ljava/lang/String; = "gc_invocation_count"

.field public static final greylist-max-o METRIC_KEY_GLOBAL_ALLOC_COUNT:Ljava/lang/String; = "global_alloc_count"

.field public static final greylist-max-o METRIC_KEY_GLOBAL_ALLOC_SIZE:Ljava/lang/String; = "global_alloc_size"

.field public static final greylist-max-o METRIC_KEY_GLOBAL_FREED_COUNT:Ljava/lang/String; = "global_freed_count"

.field public static final greylist-max-o METRIC_KEY_GLOBAL_FREED_SIZE:Ljava/lang/String; = "global_freed_size"

.field public static final greylist-max-o METRIC_KEY_ITERATIONS:Ljava/lang/String; = "iterations"

.field public static final greylist-max-o METRIC_KEY_JAVA_ALLOCATED:Ljava/lang/String; = "java_allocated"

.field public static final greylist-max-o METRIC_KEY_JAVA_FREE:Ljava/lang/String; = "java_free"

.field public static final greylist-max-o METRIC_KEY_JAVA_PRIVATE_DIRTY:Ljava/lang/String; = "java_private_dirty"

.field public static final greylist-max-o METRIC_KEY_JAVA_PSS:Ljava/lang/String; = "java_pss"

.field public static final greylist-max-o METRIC_KEY_JAVA_SHARED_DIRTY:Ljava/lang/String; = "java_shared_dirty"

.field public static final greylist-max-o METRIC_KEY_JAVA_SIZE:Ljava/lang/String; = "java_size"

.field public static final greylist-max-o METRIC_KEY_LABEL:Ljava/lang/String; = "label"

.field public static final greylist-max-o METRIC_KEY_NATIVE_ALLOCATED:Ljava/lang/String; = "native_allocated"

.field public static final greylist-max-o METRIC_KEY_NATIVE_FREE:Ljava/lang/String; = "native_free"

.field public static final greylist-max-o METRIC_KEY_NATIVE_PRIVATE_DIRTY:Ljava/lang/String; = "native_private_dirty"

.field public static final greylist-max-o METRIC_KEY_NATIVE_PSS:Ljava/lang/String; = "native_pss"

.field public static final greylist-max-o METRIC_KEY_NATIVE_SHARED_DIRTY:Ljava/lang/String; = "native_shared_dirty"

.field public static final greylist-max-o METRIC_KEY_NATIVE_SIZE:Ljava/lang/String; = "native_size"

.field public static final greylist-max-o METRIC_KEY_OTHER_PRIVATE_DIRTY:Ljava/lang/String; = "other_private_dirty"

.field public static final greylist-max-o METRIC_KEY_OTHER_PSS:Ljava/lang/String; = "other_pss"

.field public static final greylist-max-o METRIC_KEY_OTHER_SHARED_DIRTY:Ljava/lang/String; = "other_shared_dirty"

.field public static final greylist-max-o METRIC_KEY_PRE_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "pre_received_transactions"

.field public static final greylist-max-o METRIC_KEY_PRE_SENT_TRANSACTIONS:Ljava/lang/String; = "pre_sent_transactions"

.field public static final greylist-max-o METRIC_KEY_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "received_transactions"

.field public static final greylist-max-o METRIC_KEY_SENT_TRANSACTIONS:Ljava/lang/String; = "sent_transactions"


# instance fields
.field private greylist-max-o mCpuTime:J

.field private greylist-max-o mExecTime:J

.field private greylist-max-o mPerfMeasurement:Landroid/os/Bundle;

.field private greylist-max-o mPerfSnapshot:Landroid/os/Bundle;

.field private greylist-max-o mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private greylist-max-o mSnapshotCpuTime:J

.field private greylist-max-o mSnapshotExecTime:J


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .registers 2
    .param p1, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    .line 296
    return-void
.end method

.method private greylist-max-o endPerformanceSnapshot()V
    .registers 24

    .line 490
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 493
    invoke-static {}, Landroid/os/PerformanceCollector;->stopAllocCounting()V

    .line 495
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    .line 496
    .local v1, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v5

    div-long/2addr v5, v3

    .line 497
    .local v5, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v7

    div-long/2addr v7, v3

    .line 499
    .local v7, "nativeFree":J
    new-instance v9, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v9}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 500
    .local v9, "memInfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {v9}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 502
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 504
    .local v10, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v11

    div-long/2addr v11, v3

    .line 505
    .local v11, "dalvikMax":J
    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v13

    div-long/2addr v13, v3

    .line 506
    .local v13, "dalvikFree":J
    sub-long v3, v11, v13

    .line 509
    .local v3, "dalvikAllocated":J
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v15

    .line 510
    .local v15, "binderCounts":Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_70

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v10

    .end local v10    # "runtime":Ljava/lang/Runtime;
    .local v18, "runtime":Ljava/lang/Runtime;
    move-object/from16 v10, v17

    check-cast v10, Ljava/lang/String;

    .line 511
    .local v10, "key":Ljava/lang/String;
    move-wide/from16 v19, v13

    .end local v13    # "dalvikFree":J
    .local v19, "dalvikFree":J
    iget-object v13, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-wide/from16 v21, v3

    .end local v3    # "dalvikAllocated":J
    .local v21, "dalvikAllocated":J
    invoke-virtual {v15, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v13, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 512
    .end local v10    # "key":Ljava/lang/String;
    move-object/from16 v10, v18

    move-wide/from16 v13, v19

    move-wide/from16 v3, v21

    goto :goto_4c

    .line 515
    .end local v18    # "runtime":Ljava/lang/Runtime;
    .end local v19    # "dalvikFree":J
    .end local v21    # "dalvikAllocated":J
    .restart local v3    # "dalvikAllocated":J
    .local v10, "runtime":Ljava/lang/Runtime;
    .restart local v13    # "dalvikFree":J
    :cond_70
    move-wide/from16 v21, v3

    move-object/from16 v18, v10

    move-wide/from16 v19, v13

    .end local v3    # "dalvikAllocated":J
    .end local v10    # "runtime":Ljava/lang/Runtime;
    .end local v13    # "dalvikFree":J
    .restart local v18    # "runtime":Ljava/lang/Runtime;
    .restart local v19    # "dalvikFree":J
    .restart local v21    # "dalvikAllocated":J
    invoke-static {}, Landroid/os/PerformanceCollector;->getAllocCounts()Landroid/os/Bundle;

    move-result-object v3

    .line 516
    .local v3, "allocCounts":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_82
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 517
    .local v10, "key":Ljava/lang/String;
    iget-object v13, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v16, v15

    .end local v15    # "binderCounts":Landroid/os/Bundle;
    .local v16, "binderCounts":Landroid/os/Bundle;
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v10, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 518
    .end local v10    # "key":Ljava/lang/String;
    move-object/from16 v15, v16

    goto :goto_82

    .line 520
    .end local v16    # "binderCounts":Landroid/os/Bundle;
    .restart local v15    # "binderCounts":Landroid/os/Bundle;
    :cond_9c
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string v10, "execution_time"

    iget-wide v13, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    invoke-virtual {v4, v10, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 521
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string v10, "cpu_time"

    iget-wide v13, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    invoke-virtual {v4, v10, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 523
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string/jumbo v10, "native_size"

    invoke-virtual {v4, v10, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 524
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string/jumbo v10, "native_allocated"

    invoke-virtual {v4, v10, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 525
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string/jumbo v10, "native_free"

    invoke-virtual {v4, v10, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 526
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v10, v9, Landroid/os/Debug$MemoryInfo;->nativePss:I

    int-to-long v13, v10

    const-string/jumbo v10, "native_pss"

    invoke-virtual {v4, v10, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 527
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v10, v9, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    int-to-long v13, v10

    const-string/jumbo v10, "native_private_dirty"

    invoke-virtual {v4, v10, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 528
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v10, v9, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    int-to-long v13, v10

    const-string/jumbo v10, "native_shared_dirty"

    invoke-virtual {v4, v10, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 530
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string/jumbo v10, "java_size"

    invoke-virtual {v4, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 531
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string/jumbo v10, "java_allocated"

    move-wide/from16 v13, v21

    .end local v21    # "dalvikAllocated":J
    .local v13, "dalvikAllocated":J
    invoke-virtual {v4, v10, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 532
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string/jumbo v10, "java_free"

    move-wide/from16 v21, v1

    move-wide/from16 v1, v19

    .end local v19    # "dalvikFree":J
    .local v1, "dalvikFree":J
    .local v21, "nativeMax":J
    invoke-virtual {v4, v10, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 533
    iget-object v4, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v10, v9, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .end local v1    # "dalvikFree":J
    .restart local v19    # "dalvikFree":J
    int-to-long v1, v10

    const-string/jumbo v10, "java_pss"

    invoke-virtual {v4, v10, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 534
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move-object v4, v3

    .end local v3    # "allocCounts":Landroid/os/Bundle;
    .local v4, "allocCounts":Landroid/os/Bundle;
    int-to-long v2, v2

    const-string/jumbo v10, "java_private_dirty"

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 535
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    int-to-long v2, v2

    const-string/jumbo v10, "java_shared_dirty"

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 537
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherPss:I

    int-to-long v2, v2

    const-string/jumbo v10, "other_pss"

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 538
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    int-to-long v2, v2

    const-string/jumbo v10, "other_private_dirty"

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 539
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    int-to-long v2, v2

    const-string/jumbo v10, "other_shared_dirty"

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 540
    return-void
.end method

.method private static greylist-max-o getAllocCounts()Landroid/os/Bundle;
    .registers 4

    .line 574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v0, "results":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "global_alloc_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 576
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "global_alloc_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 577
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "global_freed_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 578
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "global_freed_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 579
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "gc_invocation_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 580
    return-object v0
.end method

.method private static greylist-max-o getBinderCounts()Landroid/os/Bundle;
    .registers 4

    .line 589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v0, "results":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "sent_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 591
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "received_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 592
    return-object v0
.end method

.method private static greylist-max-o startAllocCounting()V
    .registers 1

    .line 550
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 551
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 552
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 554
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 557
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 558
    return-void
.end method

.method private greylist-max-o startPerformanceSnapshot()V
    .registers 8

    .line 463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 466
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v0

    .line 467
    .local v0, "binderCounts":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 468
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pre_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 469
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_13

    .line 474
    :cond_3d
    invoke-static {}, Landroid/os/PerformanceCollector;->startAllocCounting()V

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 480
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 481
    return-void
.end method

.method private static greylist-max-o stopAllocCounting()V
    .registers 1

    .line 564
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 565
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 566
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 567
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 568
    return-void
.end method


# virtual methods
.method public greylist-max-o addIteration(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .param p1, "label"    # Ljava/lang/String;

    .line 394
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v0, "iteration":Landroid/os/Bundle;
    const-string/jumbo v1, "label"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "execution_time"

    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 400
    const-string v1, "cpu_time"

    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 401
    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    const-string/jumbo v2, "iterations"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 404
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 405
    return-object v0
.end method

.method public greylist-max-o addMeasurement(Ljava/lang/String;F)V
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 443
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_9

    .line 444
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;F)V

    .line 445
    :cond_9
    return-void
.end method

.method public greylist-max-o addMeasurement(Ljava/lang/String;J)V
    .registers 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 432
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_9

    .line 433
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;J)V

    .line 434
    :cond_9
    return-void
.end method

.method public greylist-max-o addMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 454
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_9

    .line 455
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_9
    return-void
.end method

.method public greylist beginSnapshot(Ljava/lang/String;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeBeginSnapshot(Ljava/lang/String;)V

    .line 312
    :cond_9
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->startPerformanceSnapshot()V

    .line 313
    return-void
.end method

.method public greylist endSnapshot()Landroid/os/Bundle;
    .registers 3

    .line 355
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->endPerformanceSnapshot()V

    .line 356
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_e

    .line 357
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeEndSnapshot(Landroid/os/Bundle;)V

    .line 358
    :cond_e
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .registers 2
    .param p1, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 299
    iput-object p1, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 300
    return-void
.end method

.method public greylist-max-r startTiming(Ljava/lang/String;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_9

    .line 370
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStartTiming(Ljava/lang/String;)V

    .line 371
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    .line 372
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "iterations"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 375
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 376
    return-void
.end method

.method public greylist-max-r stopTiming(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p1, "label"    # Ljava/lang/String;

    .line 419
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->addIteration(Ljava/lang/String;)Landroid/os/Bundle;

    .line 420
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_e

    .line 421
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStopTiming(Landroid/os/Bundle;)V

    .line 422
    :cond_e
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    return-object v0
.end method
