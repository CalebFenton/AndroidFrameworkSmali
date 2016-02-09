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
.field public static final METRIC_KEY_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field public static final METRIC_KEY_EXECUTION_TIME:Ljava/lang/String; = "execution_time"

.field public static final METRIC_KEY_GC_INVOCATION_COUNT:Ljava/lang/String; = "gc_invocation_count"

.field public static final METRIC_KEY_GLOBAL_ALLOC_COUNT:Ljava/lang/String; = "global_alloc_count"

.field public static final METRIC_KEY_GLOBAL_ALLOC_SIZE:Ljava/lang/String; = "global_alloc_size"

.field public static final METRIC_KEY_GLOBAL_FREED_COUNT:Ljava/lang/String; = "global_freed_count"

.field public static final METRIC_KEY_GLOBAL_FREED_SIZE:Ljava/lang/String; = "global_freed_size"

.field public static final METRIC_KEY_ITERATIONS:Ljava/lang/String; = "iterations"

.field public static final METRIC_KEY_JAVA_ALLOCATED:Ljava/lang/String; = "java_allocated"

.field public static final METRIC_KEY_JAVA_FREE:Ljava/lang/String; = "java_free"

.field public static final METRIC_KEY_JAVA_PRIVATE_DIRTY:Ljava/lang/String; = "java_private_dirty"

.field public static final METRIC_KEY_JAVA_PSS:Ljava/lang/String; = "java_pss"

.field public static final METRIC_KEY_JAVA_SHARED_DIRTY:Ljava/lang/String; = "java_shared_dirty"

.field public static final METRIC_KEY_JAVA_SIZE:Ljava/lang/String; = "java_size"

.field public static final METRIC_KEY_LABEL:Ljava/lang/String; = "label"

.field public static final METRIC_KEY_NATIVE_ALLOCATED:Ljava/lang/String; = "native_allocated"

.field public static final METRIC_KEY_NATIVE_FREE:Ljava/lang/String; = "native_free"

.field public static final METRIC_KEY_NATIVE_PRIVATE_DIRTY:Ljava/lang/String; = "native_private_dirty"

.field public static final METRIC_KEY_NATIVE_PSS:Ljava/lang/String; = "native_pss"

.field public static final METRIC_KEY_NATIVE_SHARED_DIRTY:Ljava/lang/String; = "native_shared_dirty"

.field public static final METRIC_KEY_NATIVE_SIZE:Ljava/lang/String; = "native_size"

.field public static final METRIC_KEY_OTHER_PRIVATE_DIRTY:Ljava/lang/String; = "other_private_dirty"

.field public static final METRIC_KEY_OTHER_PSS:Ljava/lang/String; = "other_pss"

.field public static final METRIC_KEY_OTHER_SHARED_DIRTY:Ljava/lang/String; = "other_shared_dirty"

.field public static final METRIC_KEY_PRE_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "pre_received_transactions"

.field public static final METRIC_KEY_PRE_SENT_TRANSACTIONS:Ljava/lang/String; = "pre_sent_transactions"

.field public static final METRIC_KEY_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "received_transactions"

.field public static final METRIC_KEY_SENT_TRANSACTIONS:Ljava/lang/String; = "sent_transactions"


# instance fields
.field private mCpuTime:J

.field private mExecTime:J

.field private mPerfMeasurement:Landroid/os/Bundle;

.field private mPerfSnapshot:Landroid/os/Bundle;

.field private mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private mSnapshotCpuTime:J

.field private mSnapshotExecTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0
    .param p1, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@0
    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 292
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    #@6
    .line 291
    return-void
.end method

.method private endPerformanceSnapshot()V
    .locals 26

    #@0
    .prologue
    .line 483
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    #@3
    move-result-wide v22

    #@4
    move-object/from16 v0, p0

    #@6
    iget-wide v0, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    #@8
    move-wide/from16 v24, v0

    #@a
    sub-long v22, v22, v24

    #@c
    move-wide/from16 v0, v22

    #@e
    move-object/from16 v2, p0

    #@10
    iput-wide v0, v2, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    #@12
    .line 484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@15
    move-result-wide v22

    #@16
    move-object/from16 v0, p0

    #@18
    iget-wide v0, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    #@1a
    move-wide/from16 v24, v0

    #@1c
    sub-long v22, v22, v24

    #@1e
    move-wide/from16 v0, v22

    #@20
    move-object/from16 v2, p0

    #@22
    iput-wide v0, v2, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    #@24
    .line 486
    invoke-static {}, Landroid/os/PerformanceCollector;->stopAllocCounting()V

    #@27
    .line 488
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    #@2a
    move-result-wide v22

    #@2b
    const-wide/16 v24, 0x400

    #@2d
    div-long v20, v22, v24

    #@2f
    .line 489
    .local v20, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    #@32
    move-result-wide v22

    #@33
    const-wide/16 v24, 0x400

    #@35
    div-long v16, v22, v24

    #@37
    .line 490
    .local v16, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    #@3a
    move-result-wide v22

    #@3b
    const-wide/16 v24, 0x400

    #@3d
    div-long v18, v22, v24

    #@3f
    .line 492
    .local v18, "nativeFree":J
    new-instance v14, Landroid/os/Debug$MemoryInfo;

    #@41
    invoke-direct {v14}, Landroid/os/Debug$MemoryInfo;-><init>()V

    #@44
    .line 493
    .local v14, "memInfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {v14}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    #@47
    .line 495
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@4a
    move-result-object v15

    #@4b
    .line 497
    .local v15, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v15}, Ljava/lang/Runtime;->totalMemory()J

    #@4e
    move-result-wide v22

    #@4f
    const-wide/16 v24, 0x400

    #@51
    div-long v10, v22, v24

    #@53
    .line 498
    .local v10, "dalvikMax":J
    invoke-virtual {v15}, Ljava/lang/Runtime;->freeMemory()J

    #@56
    move-result-wide v22

    #@57
    const-wide/16 v24, 0x400

    #@59
    div-long v8, v22, v24

    #@5b
    .line 499
    .local v8, "dalvikFree":J
    sub-long v6, v10, v8

    #@5d
    .line 502
    .local v6, "dalvikAllocated":J
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    #@60
    move-result-object v5

    #@61
    .line 503
    .local v5, "binderCounts":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@64
    move-result-object v22

    #@65
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v13

    #@69
    .local v13, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v22

    #@6d
    if-eqz v22, :cond_0

    #@6f
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v12

    #@73
    check-cast v12, Ljava/lang/String;

    #@75
    .line 504
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@79
    move-object/from16 v22, v0

    #@7b
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@7e
    move-result-wide v24

    #@7f
    move-object/from16 v0, v22

    #@81
    move-wide/from16 v1, v24

    #@83
    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@86
    goto :goto_0

    #@87
    .line 508
    .end local v12    # "key":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/PerformanceCollector;->getAllocCounts()Landroid/os/Bundle;

    #@8a
    move-result-object v4

    #@8b
    .line 509
    .local v4, "allocCounts":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@8e
    move-result-object v22

    #@8f
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@92
    move-result-object v13

    #@93
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@96
    move-result v22

    #@97
    if-eqz v22, :cond_1

    #@99
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9c
    move-result-object v12

    #@9d
    check-cast v12, Ljava/lang/String;

    #@9f
    .line 510
    .restart local v12    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a1
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@a3
    move-object/from16 v22, v0

    #@a5
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@a8
    move-result-wide v24

    #@a9
    move-object/from16 v0, v22

    #@ab
    move-wide/from16 v1, v24

    #@ad
    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@b0
    goto :goto_1

    #@b1
    .line 513
    .end local v12    # "key":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@b5
    move-object/from16 v22, v0

    #@b7
    const-string/jumbo v23, "execution_time"

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-wide v0, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    #@be
    move-wide/from16 v24, v0

    #@c0
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@c3
    .line 514
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@c7
    move-object/from16 v22, v0

    #@c9
    const-string/jumbo v23, "cpu_time"

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-wide v0, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    #@d0
    move-wide/from16 v24, v0

    #@d2
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@d5
    .line 516
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@d9
    move-object/from16 v22, v0

    #@db
    const-string/jumbo v23, "native_size"

    #@de
    move-object/from16 v0, v22

    #@e0
    move-object/from16 v1, v23

    #@e2
    move-wide/from16 v2, v20

    #@e4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@e7
    .line 517
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@eb
    move-object/from16 v22, v0

    #@ed
    const-string/jumbo v23, "native_allocated"

    #@f0
    move-object/from16 v0, v22

    #@f2
    move-object/from16 v1, v23

    #@f4
    move-wide/from16 v2, v16

    #@f6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@f9
    .line 518
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@fd
    move-object/from16 v22, v0

    #@ff
    const-string/jumbo v23, "native_free"

    #@102
    move-object/from16 v0, v22

    #@104
    move-object/from16 v1, v23

    #@106
    move-wide/from16 v2, v18

    #@108
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@10b
    .line 519
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@10f
    move-object/from16 v22, v0

    #@111
    const-string/jumbo v23, "native_pss"

    #@114
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@116
    move/from16 v24, v0

    #@118
    move/from16 v0, v24

    #@11a
    int-to-long v0, v0

    #@11b
    move-wide/from16 v24, v0

    #@11d
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@120
    .line 520
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@124
    move-object/from16 v22, v0

    #@126
    const-string/jumbo v23, "native_private_dirty"

    #@129
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@12b
    move/from16 v24, v0

    #@12d
    move/from16 v0, v24

    #@12f
    int-to-long v0, v0

    #@130
    move-wide/from16 v24, v0

    #@132
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@135
    .line 521
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@139
    move-object/from16 v22, v0

    #@13b
    const-string/jumbo v23, "native_shared_dirty"

    #@13e
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@140
    move/from16 v24, v0

    #@142
    move/from16 v0, v24

    #@144
    int-to-long v0, v0

    #@145
    move-wide/from16 v24, v0

    #@147
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@14a
    .line 523
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@14e
    move-object/from16 v22, v0

    #@150
    const-string/jumbo v23, "java_size"

    #@153
    move-object/from16 v0, v22

    #@155
    move-object/from16 v1, v23

    #@157
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@15a
    .line 524
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@15e
    move-object/from16 v22, v0

    #@160
    const-string/jumbo v23, "java_allocated"

    #@163
    move-object/from16 v0, v22

    #@165
    move-object/from16 v1, v23

    #@167
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@16a
    .line 525
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@16e
    move-object/from16 v22, v0

    #@170
    const-string/jumbo v23, "java_free"

    #@173
    move-object/from16 v0, v22

    #@175
    move-object/from16 v1, v23

    #@177
    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@17a
    .line 526
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@17e
    move-object/from16 v22, v0

    #@180
    const-string/jumbo v23, "java_pss"

    #@183
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@185
    move/from16 v24, v0

    #@187
    move/from16 v0, v24

    #@189
    int-to-long v0, v0

    #@18a
    move-wide/from16 v24, v0

    #@18c
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@18f
    .line 527
    move-object/from16 v0, p0

    #@191
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@193
    move-object/from16 v22, v0

    #@195
    const-string/jumbo v23, "java_private_dirty"

    #@198
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@19a
    move/from16 v24, v0

    #@19c
    move/from16 v0, v24

    #@19e
    int-to-long v0, v0

    #@19f
    move-wide/from16 v24, v0

    #@1a1
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1a4
    .line 528
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@1a8
    move-object/from16 v22, v0

    #@1aa
    const-string/jumbo v23, "java_shared_dirty"

    #@1ad
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@1af
    move/from16 v24, v0

    #@1b1
    move/from16 v0, v24

    #@1b3
    int-to-long v0, v0

    #@1b4
    move-wide/from16 v24, v0

    #@1b6
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1b9
    .line 530
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@1bd
    move-object/from16 v22, v0

    #@1bf
    const-string/jumbo v23, "other_pss"

    #@1c2
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@1c4
    move/from16 v24, v0

    #@1c6
    move/from16 v0, v24

    #@1c8
    int-to-long v0, v0

    #@1c9
    move-wide/from16 v24, v0

    #@1cb
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1ce
    .line 531
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@1d2
    move-object/from16 v22, v0

    #@1d4
    const-string/jumbo v23, "other_private_dirty"

    #@1d7
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@1d9
    move/from16 v24, v0

    #@1db
    move/from16 v0, v24

    #@1dd
    int-to-long v0, v0

    #@1de
    move-wide/from16 v24, v0

    #@1e0
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1e3
    .line 532
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@1e7
    move-object/from16 v22, v0

    #@1e9
    const-string/jumbo v23, "other_shared_dirty"

    #@1ec
    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@1ee
    move/from16 v24, v0

    #@1f0
    move/from16 v0, v24

    #@1f2
    int-to-long v0, v0

    #@1f3
    move-wide/from16 v24, v0

    #@1f5
    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1f8
    .line 480
    return-void
.end method

.method private static getAllocCounts()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    .line 567
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 568
    .local v0, "results":Landroid/os/Bundle;
    const-string/jumbo v1, "global_alloc_count"

    #@8
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    #@b
    move-result v2

    #@c
    int-to-long v2, v2

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@10
    .line 569
    const-string/jumbo v1, "global_alloc_size"

    #@13
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    #@16
    move-result v2

    #@17
    int-to-long v2, v2

    #@18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1b
    .line 570
    const-string/jumbo v1, "global_freed_count"

    #@1e
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    #@21
    move-result v2

    #@22
    int-to-long v2, v2

    #@23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@26
    .line 571
    const-string/jumbo v1, "global_freed_size"

    #@29
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    #@2c
    move-result v2

    #@2d
    int-to-long v2, v2

    #@2e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@31
    .line 572
    const-string/jumbo v1, "gc_invocation_count"

    #@34
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    #@37
    move-result v2

    #@38
    int-to-long v2, v2

    #@39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@3c
    .line 573
    return-object v0
.end method

.method private static getBinderCounts()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    .line 582
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 583
    .local v0, "results":Landroid/os/Bundle;
    const-string/jumbo v1, "sent_transactions"

    #@8
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    #@b
    move-result v2

    #@c
    int-to-long v2, v2

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@10
    .line 584
    const-string/jumbo v1, "received_transactions"

    #@13
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    #@16
    move-result v2

    #@17
    int-to-long v2, v2

    #@18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1b
    .line 585
    return-object v0
.end method

.method private static startAllocCounting()V
    .locals 1

    #@0
    .prologue
    .line 543
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@7
    .line 544
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    #@e
    .line 545
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@15
    .line 547
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    #@18
    .line 550
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    #@1b
    .line 538
    return-void
.end method

.method private startPerformanceSnapshot()V
    .locals 8

    #@0
    .prologue
    .line 456
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    iput-object v3, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@7
    .line 459
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    .line 460
    .local v0, "binderCounts":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/String;

    #@1f
    .line 461
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "pre_"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@38
    move-result-wide v6

    #@39
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@3c
    goto :goto_0

    #@3d
    .line 467
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/PerformanceCollector;->startAllocCounting()V

    #@40
    .line 472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@43
    move-result-wide v4

    #@44
    iput-wide v4, p0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    #@46
    .line 473
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    #@49
    move-result-wide v4

    #@4a
    iput-wide v4, p0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    #@4c
    .line 454
    return-void
.end method

.method private static stopAllocCounting()V
    .locals 1

    #@0
    .prologue
    .line 557
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@7
    .line 558
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    #@e
    .line 559
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@15
    .line 560
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    #@18
    .line 556
    return-void
.end method


# virtual methods
.method public addIteration(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 388
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    #@3
    move-result-wide v2

    #@4
    iget-wide v4, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    #@6
    sub-long/2addr v2, v4

    #@7
    iput-wide v2, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    #@9
    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v2

    #@d
    iget-wide v4, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    #@f
    sub-long/2addr v2, v4

    #@10
    iput-wide v2, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    #@12
    .line 391
    new-instance v0, Landroid/os/Bundle;

    #@14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@17
    .line 392
    .local v0, "iteration":Landroid/os/Bundle;
    const-string/jumbo v1, "label"

    #@1a
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 393
    const-string/jumbo v1, "execution_time"

    #@20
    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    #@22
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@25
    .line 394
    const-string/jumbo v1, "cpu_time"

    #@28
    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    #@2a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@2d
    .line 395
    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    #@2f
    const-string/jumbo v2, "iterations"

    #@32
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3c
    move-result-wide v2

    #@3d
    iput-wide v2, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    #@3f
    .line 398
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    #@42
    move-result-wide v2

    #@43
    iput-wide v2, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    #@45
    .line 399
    return-object v0
.end method

.method public addMeasurement(Ljava/lang/String;F)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 437
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;F)V

    #@9
    .line 435
    :cond_0
    return-void
.end method

.method public addMeasurement(Ljava/lang/String;J)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 426
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@6
    invoke-interface {v0, p1, p2, p3}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;J)V

    #@9
    .line 424
    :cond_0
    return-void
.end method

.method public addMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 448
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 446
    :cond_0
    return-void
.end method

.method public beginSnapshot(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 307
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@6
    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeBeginSnapshot(Ljava/lang/String;)V

    #@9
    .line 308
    :cond_0
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->startPerformanceSnapshot()V

    #@c
    .line 305
    return-void
.end method

.method public endSnapshot()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 350
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->endPerformanceSnapshot()V

    #@3
    .line 351
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 352
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@9
    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@b
    invoke-interface {v0, v1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeEndSnapshot(Landroid/os/Bundle;)V

    #@e
    .line 353
    :cond_0
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    #@10
    return-object v0
.end method

.method public setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0
    .param p1, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@0
    .prologue
    .line 296
    iput-object p1, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@2
    .line 295
    return-void
.end method

.method public startTiming(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 364
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@6
    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStartTiming(Ljava/lang/String;)V

    #@9
    .line 365
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@b
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@e
    iput-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    #@10
    .line 366
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    #@12
    .line 367
    const-string/jumbo v1, "iterations"

    #@15
    new-instance v2, Ljava/util/ArrayList;

    #@17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@1d
    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    #@23
    .line 369
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    #@26
    move-result-wide v0

    #@27
    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    #@29
    .line 362
    return-void
.end method

.method public stopTiming(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->addIteration(Ljava/lang/String;)Landroid/os/Bundle;

    #@3
    .line 413
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 414
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    #@9
    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    #@b
    invoke-interface {v0, v1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStopTiming(Landroid/os/Bundle;)V

    #@e
    .line 415
    :cond_0
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    #@10
    return-object v0
.end method
