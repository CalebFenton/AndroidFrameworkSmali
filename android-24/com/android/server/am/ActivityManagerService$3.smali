.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2330
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2333
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 2332
    return-void

    #@8
    .line 2335
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v40

    #@c
    .line 2336
    .local v40, "start":J
    const/16 v31, 0x0

    #@e
    .line 2337
    .local v31, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    #@10
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@12
    monitor-enter v3

    #@13
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@16
    .line 2338
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1a
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2339
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@22
    const/4 v4, 0x0

    #@23
    iput-boolean v4, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    #@25
    .line 2340
    new-instance v31, Lcom/android/internal/util/MemInfoReader;

    #@27
    .end local v31    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-direct/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :cond_0
    monitor-exit v3

    #@2b
    .line 2337
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2e
    .line 2343
    if-eqz v31, :cond_5

    #@30
    .line 2344
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@34
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    #@37
    .line 2345
    const-wide/16 v12, 0x0

    #@39
    .line 2346
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3d
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@3f
    monitor-enter v3

    #@40
    .line 2347
    :try_start_1
    move-object/from16 v0, p0

    #@42
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@44
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@46
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    #@49
    move-result v14

    #@4a
    .line 2348
    .local v14, "N":I
    const/16 v30, 0x0

    #@4c
    .local v30, "j":I
    :goto_0
    move/from16 v0, v30

    #@4e
    if-ge v0, v14, :cond_4

    #@50
    .line 2349
    move-object/from16 v0, p0

    #@52
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@54
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@56
    move/from16 v0, v30

    #@58
    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@5b
    move-result-object v38

    #@5c
    .line 2350
    .local v38, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v38

    #@5e
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    #@60
    const-wide/16 v6, 0x0

    #@62
    cmp-long v2, v4, v6

    #@64
    if-lez v2, :cond_1

    #@66
    move-object/from16 v0, v38

    #@68
    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6a
    const/16 v4, 0x2710

    #@6c
    if-lt v2, v4, :cond_2

    #@6e
    .line 2348
    :cond_1
    :goto_1
    add-int/lit8 v30, v30, 0x1

    #@70
    goto :goto_0

    #@71
    .line 2337
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v30    # "j":I
    .end local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v2

    #@72
    monitor-exit v3

    #@73
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@76
    throw v2

    #@77
    .line 2354
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v30    # "j":I
    .restart local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    #@79
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7b
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@7d
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7e
    .line 2355
    :try_start_3
    move-object/from16 v0, p0

    #@80
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@82
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@84
    move-object/from16 v0, v38

    #@86
    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@88
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@8b
    move-result v2

    #@8c
    if-ltz v2, :cond_3

    #@8e
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8f
    goto :goto_1

    #@90
    .line 2346
    .end local v14    # "N":I
    .end local v30    # "j":I
    .end local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_1
    move-exception v2

    #@91
    monitor-exit v3

    #@92
    throw v2

    #@93
    .restart local v14    # "N":I
    .restart local v30    # "j":I
    .restart local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    :try_start_5
    monitor-exit v4

    #@94
    .line 2360
    move-object/from16 v0, v38

    #@96
    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@98
    const/4 v4, 0x0

    #@99
    const/4 v5, 0x0

    #@9a
    invoke-static {v2, v4, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    #@9d
    move-result-wide v4

    #@9e
    add-long/2addr v12, v4

    #@9f
    goto :goto_1

    #@a0
    .line 2354
    :catchall_2
    move-exception v2

    #@a1
    monitor-exit v4

    #@a2
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@a3
    .end local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    monitor-exit v3

    #@a4
    .line 2363
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    #@a7
    .line 2364
    move-object/from16 v0, p0

    #@a9
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ab
    monitor-enter v15

    #@ac
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@af
    .line 2367
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    #@b2
    move-result-wide v26

    #@b3
    .line 2368
    .local v26, "cachedKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    #@b6
    move-result-wide v28

    #@b7
    .line 2369
    .local v28, "freeKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    #@ba
    move-result-wide v42

    #@bb
    .line 2370
    .local v42, "zramKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    #@be
    move-result-wide v32

    #@bf
    .line 2371
    .local v32, "kernelKb":J
    const-wide/16 v2, 0x400

    #@c1
    mul-long v2, v2, v26

    #@c3
    const-wide/16 v4, 0x400

    #@c5
    mul-long v4, v4, v28

    #@c7
    const-wide/16 v6, 0x400

    #@c9
    mul-long v6, v6, v42

    #@cb
    .line 2372
    const-wide/16 v8, 0x400

    #@cd
    mul-long v8, v8, v32

    #@cf
    const-wide/16 v10, 0x400

    #@d1
    mul-long/2addr v10, v12

    #@d2
    .line 2371
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    #@d5
    .line 2373
    move-object/from16 v0, p0

    #@d7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@d9
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@db
    move-wide/from16 v4, v26

    #@dd
    move-wide/from16 v6, v28

    #@df
    move-wide/from16 v8, v42

    #@e1
    move-wide/from16 v10, v32

    #@e3
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@e6
    monitor-exit v15

    #@e7
    .line 2364
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@ea
    .line 2378
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v26    # "cachedKb":J
    .end local v28    # "freeKb":J
    .end local v30    # "j":I
    .end local v32    # "kernelKb":J
    .end local v42    # "zramKb":J
    :cond_5
    const/16 v36, 0x0

    #@ec
    .line 2379
    .local v36, "num":I
    const/4 v2, 0x2

    #@ed
    new-array v0, v2, [J

    #@ef
    move-object/from16 v39, v0

    #@f1
    .line 2385
    .local v39, "tmp":[J
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    #@f3
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@f5
    monitor-enter v3

    #@f6
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@f9
    .line 2386
    move-object/from16 v0, p0

    #@fb
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@fd
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@ff
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@102
    move-result v2

    #@103
    if-gtz v2, :cond_8

    #@105
    .line 2387
    move-object/from16 v0, p0

    #@107
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@109
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    #@10b
    if-nez v2, :cond_7

    #@10d
    .line 2390
    :goto_3
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@111
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@113
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@116
    monitor-exit v3

    #@117
    .line 2385
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@11a
    .line 2391
    return-void

    #@11b
    .line 2364
    .end local v36    # "num":I
    .end local v39    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v30    # "j":I
    :catchall_3
    move-exception v2

    #@11c
    monitor-exit v15

    #@11d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@120
    throw v2

    #@121
    .line 2387
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v30    # "j":I
    .restart local v36    # "num":I
    .restart local v39    # "tmp":[J
    :cond_7
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    #@124
    move-result-object v2

    #@125
    .line 2388
    new-instance v4, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v5, "Collected PSS of "

    #@12d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v4

    #@131
    move/from16 v0, v36

    #@133
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@136
    move-result-object v4

    #@137
    const-string/jumbo v5, " processes in "

    #@13a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v4

    #@13e
    .line 2389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@141
    move-result-wide v6

    #@142
    sub-long v6, v6, v40

    #@144
    .line 2388
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@147
    move-result-object v4

    #@148
    .line 2389
    const-string/jumbo v5, "ms"

    #@14b
    .line 2388
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v4

    #@14f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v4

    #@153
    .line 2387
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@156
    goto :goto_3

    #@157
    .line 2385
    :catchall_4
    move-exception v2

    #@158
    monitor-exit v3

    #@159
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@15c
    throw v2

    #@15d
    .line 2393
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    #@15f
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@161
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@163
    const/4 v4, 0x0

    #@164
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@167
    move-result-object v16

    #@168
    check-cast v16, Lcom/android/server/am/ProcessRecord;

    #@16a
    .line 2394
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v16

    #@16c
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@16e
    move/from16 v17, v0

    #@170
    .line 2395
    .local v17, "procState":I
    move-object/from16 v0, v16

    #@172
    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@174
    move-wide/from16 v34, v0

    #@176
    .line 2396
    .local v34, "lastPssTime":J
    move-object/from16 v0, v16

    #@178
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@17a
    if-eqz v2, :cond_a

    #@17c
    move-object/from16 v0, v16

    #@17e
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@180
    move/from16 v0, v17

    #@182
    if-ne v0, v2, :cond_a

    #@184
    .line 2397
    const-wide/16 v4, 0x3e8

    #@186
    add-long v4, v4, v34

    #@188
    .line 2398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18b
    move-result-wide v6

    #@18c
    .line 2397
    cmp-long v2, v4, v6

    #@18e
    if-gez v2, :cond_a

    #@190
    .line 2399
    move-object/from16 v0, v16

    #@192
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@194
    move/from16 v37, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@196
    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v37, "pid":I
    :goto_4
    monitor-exit v3

    #@197
    .line 2385
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@19a
    .line 2405
    if-eqz v16, :cond_6

    #@19c
    .line 2406
    const/4 v2, 0x0

    #@19d
    move/from16 v0, v37

    #@19f
    move-object/from16 v1, v39

    #@1a1
    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    #@1a4
    move-result-wide v18

    #@1a5
    .line 2407
    .local v18, "pss":J
    move-object/from16 v0, p0

    #@1a7
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1a9
    monitor-enter v3

    #@1aa
    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@1ad
    .line 2408
    const-wide/16 v4, 0x0

    #@1af
    cmp-long v2, v18, v4

    #@1b1
    if-eqz v2, :cond_9

    #@1b3
    move-object/from16 v0, v16

    #@1b5
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1b7
    if-eqz v2, :cond_9

    #@1b9
    move-object/from16 v0, v16

    #@1bb
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@1bd
    move/from16 v0, v17

    #@1bf
    if-ne v2, v0, :cond_9

    #@1c1
    .line 2409
    move-object/from16 v0, v16

    #@1c3
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@1c5
    move/from16 v0, v37

    #@1c7
    if-ne v2, v0, :cond_9

    #@1c9
    move-object/from16 v0, v16

    #@1cb
    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@1cd
    cmp-long v2, v4, v34

    #@1cf
    if-nez v2, :cond_9

    #@1d1
    .line 2410
    add-int/lit8 v36, v36, 0x1

    #@1d3
    .line 2411
    move-object/from16 v0, p0

    #@1d5
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1d7
    const/4 v2, 0x0

    #@1d8
    aget-wide v20, v39, v2

    #@1da
    const/4 v2, 0x1

    #@1db
    aget-wide v22, v39, v2

    #@1dd
    .line 2412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1e0
    move-result-wide v24

    #@1e1
    .line 2411
    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@1e4
    :cond_9
    monitor-exit v3

    #@1e5
    .line 2407
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1e8
    goto/16 :goto_2

    #@1ea
    .line 2401
    .end local v18    # "pss":J
    .end local v37    # "pid":I
    .restart local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    const/16 v16, 0x0

    #@1ec
    .line 2402
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    const/16 v37, 0x0

    #@1ee
    .restart local v37    # "pid":I
    goto :goto_4

    #@1ef
    .line 2407
    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "pss":J
    :catchall_5
    move-exception v2

    #@1f0
    monitor-exit v3

    #@1f1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1f4
    throw v2

    #@1f5
    .line 2333
    nop

    #@1f6
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
