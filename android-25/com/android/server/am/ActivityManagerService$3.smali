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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerService$3$-void_handleMessage_android_os_Message_msg_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static synthetic -com_android_server_am_ActivityManagerService$3_lambda$1(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 6
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2385
    iget-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    #@3
    const-wide/16 v4, 0x0

    #@5
    cmp-long v1, v2, v4

    #@7
    if-lez v1, :cond_0

    #@9
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    #@b
    const/16 v2, 0x2710

    #@d
    if-ge v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2366
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
    .line 2369
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 2368
    return-void

    #@8
    .line 2371
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v38

    #@c
    .line 2372
    .local v38, "start":J
    const/16 v31, 0x0

    #@e
    .line 2373
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
    .line 2374
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1a
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2375
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@22
    const/4 v4, 0x0

    #@23
    iput-boolean v4, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    #@25
    .line 2376
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
    .line 2373
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2e
    .line 2379
    if-eqz v31, :cond_3

    #@30
    .line 2380
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@34
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    #@37
    .line 2381
    const-wide/16 v12, 0x0

    #@39
    .line 2383
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3d
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@3f
    monitor-enter v3

    #@40
    .line 2384
    :try_start_1
    move-object/from16 v0, p0

    #@42
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@44
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@46
    new-instance v4, Lcom/android/server/am/ActivityManagerService$3$-void_handleMessage_android_os_Message_msg_LambdaImpl0;

    #@48
    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$3$-void_handleMessage_android_os_Message_msg_LambdaImpl0;-><init>()V

    #@4b
    invoke-virtual {v2, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4e
    move-result-object v40

    #@4f
    .local v40, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v3

    #@50
    .line 2388
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    #@53
    move-result v14

    #@54
    .line 2389
    .local v14, "N":I
    const/16 v30, 0x0

    #@56
    .local v30, "j":I
    :goto_0
    move/from16 v0, v30

    #@58
    if-ge v0, v14, :cond_2

    #@5a
    .line 2390
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5e
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@60
    monitor-enter v3

    #@61
    .line 2391
    :try_start_2
    move-object/from16 v0, p0

    #@63
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@65
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@67
    move-object/from16 v0, v40

    #@69
    move/from16 v1, v30

    #@6b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6e
    move-result-object v2

    #@6f
    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@71
    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@73
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@76
    move-result v2

    #@77
    if-ltz v2, :cond_1

    #@79
    monitor-exit v3

    #@7a
    .line 2389
    :goto_1
    add-int/lit8 v30, v30, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 2373
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v30    # "j":I
    .end local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :catchall_0
    move-exception v2

    #@7e
    monitor-exit v3

    #@7f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@82
    throw v2

    #@83
    .line 2383
    .restart local v12    # "nativeTotalPss":J
    :catchall_1
    move-exception v2

    #@84
    monitor-exit v3

    #@85
    throw v2

    #@86
    .restart local v14    # "N":I
    .restart local v30    # "j":I
    .restart local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :cond_1
    monitor-exit v3

    #@87
    .line 2396
    move-object/from16 v0, v40

    #@89
    move/from16 v1, v30

    #@8b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v2

    #@8f
    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@91
    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@93
    const/4 v3, 0x0

    #@94
    const/4 v4, 0x0

    #@95
    invoke-static {v2, v3, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    #@98
    move-result-wide v2

    #@99
    add-long/2addr v12, v2

    #@9a
    goto :goto_1

    #@9b
    .line 2390
    :catchall_2
    move-exception v2

    #@9c
    monitor-exit v3

    #@9d
    throw v2

    #@9e
    .line 2398
    :cond_2
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    #@a1
    .line 2399
    move-object/from16 v0, p0

    #@a3
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a5
    monitor-enter v15

    #@a6
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a9
    .line 2402
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    #@ac
    move-result-wide v26

    #@ad
    .line 2403
    .local v26, "cachedKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    #@b0
    move-result-wide v28

    #@b1
    .line 2404
    .local v28, "freeKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    #@b4
    move-result-wide v42

    #@b5
    .line 2405
    .local v42, "zramKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    #@b8
    move-result-wide v32

    #@b9
    .line 2406
    .local v32, "kernelKb":J
    const-wide/16 v2, 0x400

    #@bb
    mul-long v2, v2, v26

    #@bd
    const-wide/16 v4, 0x400

    #@bf
    mul-long v4, v4, v28

    #@c1
    const-wide/16 v6, 0x400

    #@c3
    mul-long v6, v6, v42

    #@c5
    .line 2407
    const-wide/16 v8, 0x400

    #@c7
    mul-long v8, v8, v32

    #@c9
    const-wide/16 v10, 0x400

    #@cb
    mul-long/2addr v10, v12

    #@cc
    .line 2406
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    #@cf
    .line 2408
    move-object/from16 v0, p0

    #@d1
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@d3
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@d5
    move-wide/from16 v4, v26

    #@d7
    move-wide/from16 v6, v28

    #@d9
    move-wide/from16 v8, v42

    #@db
    move-wide/from16 v10, v32

    #@dd
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@e0
    monitor-exit v15

    #@e1
    .line 2399
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@e4
    .line 2413
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v26    # "cachedKb":J
    .end local v28    # "freeKb":J
    .end local v30    # "j":I
    .end local v32    # "kernelKb":J
    .end local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v42    # "zramKb":J
    :cond_3
    const/16 v36, 0x0

    #@e6
    .line 2414
    .local v36, "num":I
    const/4 v2, 0x2

    #@e7
    new-array v0, v2, [J

    #@e9
    move-object/from16 v41, v0

    #@eb
    .line 2420
    .local v41, "tmp":[J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@ed
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ef
    monitor-enter v3

    #@f0
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@f3
    .line 2421
    move-object/from16 v0, p0

    #@f5
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@f7
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@f9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@fc
    move-result v2

    #@fd
    if-gtz v2, :cond_6

    #@ff
    .line 2422
    move-object/from16 v0, p0

    #@101
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@103
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    #@105
    if-nez v2, :cond_5

    #@107
    .line 2425
    :goto_3
    move-object/from16 v0, p0

    #@109
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@10b
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@10d
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@110
    monitor-exit v3

    #@111
    .line 2420
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@114
    .line 2426
    return-void

    #@115
    .line 2399
    .end local v36    # "num":I
    .end local v41    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v30    # "j":I
    .restart local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :catchall_3
    move-exception v2

    #@116
    monitor-exit v15

    #@117
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@11a
    throw v2

    #@11b
    .line 2422
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v30    # "j":I
    .end local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v36    # "num":I
    .restart local v41    # "tmp":[J
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    #@11e
    move-result-object v2

    #@11f
    .line 2423
    new-instance v4, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v5, "Collected PSS of "

    #@127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v4

    #@12b
    move/from16 v0, v36

    #@12d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@130
    move-result-object v4

    #@131
    const-string/jumbo v5, " processes in "

    #@134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v4

    #@138
    .line 2424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13b
    move-result-wide v6

    #@13c
    sub-long v6, v6, v38

    #@13e
    .line 2423
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@141
    move-result-object v4

    #@142
    .line 2424
    const-string/jumbo v5, "ms"

    #@145
    .line 2423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v4

    #@149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v4

    #@14d
    .line 2422
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@150
    goto :goto_3

    #@151
    .line 2420
    :catchall_4
    move-exception v2

    #@152
    monitor-exit v3

    #@153
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@156
    throw v2

    #@157
    .line 2428
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    #@159
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@15b
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@15d
    const/4 v4, 0x0

    #@15e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@161
    move-result-object v16

    #@162
    check-cast v16, Lcom/android/server/am/ProcessRecord;

    #@164
    .line 2429
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v16

    #@166
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@168
    move/from16 v17, v0

    #@16a
    .line 2430
    .local v17, "procState":I
    move-object/from16 v0, v16

    #@16c
    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@16e
    move-wide/from16 v34, v0

    #@170
    .line 2431
    .local v34, "lastPssTime":J
    move-object/from16 v0, v16

    #@172
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@174
    if-eqz v2, :cond_8

    #@176
    move-object/from16 v0, v16

    #@178
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@17a
    move/from16 v0, v17

    #@17c
    if-ne v0, v2, :cond_8

    #@17e
    .line 2432
    const-wide/16 v4, 0x3e8

    #@180
    add-long v4, v4, v34

    #@182
    .line 2433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@185
    move-result-wide v6

    #@186
    .line 2432
    cmp-long v2, v4, v6

    #@188
    if-gez v2, :cond_8

    #@18a
    .line 2434
    move-object/from16 v0, v16

    #@18c
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@18e
    move/from16 v37, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@190
    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v37, "pid":I
    :goto_4
    monitor-exit v3

    #@191
    .line 2420
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@194
    .line 2440
    if-eqz v16, :cond_4

    #@196
    .line 2441
    const/4 v2, 0x0

    #@197
    move/from16 v0, v37

    #@199
    move-object/from16 v1, v41

    #@19b
    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    #@19e
    move-result-wide v18

    #@19f
    .line 2442
    .local v18, "pss":J
    move-object/from16 v0, p0

    #@1a1
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1a3
    monitor-enter v3

    #@1a4
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@1a7
    .line 2443
    const-wide/16 v4, 0x0

    #@1a9
    cmp-long v2, v18, v4

    #@1ab
    if-eqz v2, :cond_7

    #@1ad
    move-object/from16 v0, v16

    #@1af
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1b1
    if-eqz v2, :cond_7

    #@1b3
    move-object/from16 v0, v16

    #@1b5
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@1b7
    move/from16 v0, v17

    #@1b9
    if-ne v2, v0, :cond_7

    #@1bb
    .line 2444
    move-object/from16 v0, v16

    #@1bd
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@1bf
    move/from16 v0, v37

    #@1c1
    if-ne v2, v0, :cond_7

    #@1c3
    move-object/from16 v0, v16

    #@1c5
    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@1c7
    cmp-long v2, v4, v34

    #@1c9
    if-nez v2, :cond_7

    #@1cb
    .line 2445
    add-int/lit8 v36, v36, 0x1

    #@1cd
    .line 2446
    move-object/from16 v0, p0

    #@1cf
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1d1
    const/4 v2, 0x0

    #@1d2
    aget-wide v20, v41, v2

    #@1d4
    const/4 v2, 0x1

    #@1d5
    aget-wide v22, v41, v2

    #@1d7
    .line 2447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1da
    move-result-wide v24

    #@1db
    .line 2446
    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@1de
    :cond_7
    monitor-exit v3

    #@1df
    .line 2442
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1e2
    goto/16 :goto_2

    #@1e4
    .line 2436
    .end local v18    # "pss":J
    .end local v37    # "pid":I
    .restart local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_8
    const/16 v16, 0x0

    #@1e6
    .line 2437
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    const/16 v37, 0x0

    #@1e8
    .restart local v37    # "pid":I
    goto :goto_4

    #@1e9
    .line 2442
    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "pss":J
    :catchall_5
    move-exception v2

    #@1ea
    monitor-exit v3

    #@1eb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1ee
    throw v2

    #@1ef
    .line 2369
    nop

    #@1f0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
