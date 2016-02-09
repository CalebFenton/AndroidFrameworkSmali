.class Lcom/android/server/am/ActivityManagerService$2;
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
    .line 2040
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2043
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 2042
    return-void

    #@8
    .line 2045
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v28

    #@c
    .line 2046
    .local v28, "start":J
    const/16 v24, 0x0

    #@e
    .line 2047
    .local v24, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    #@10
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@12
    monitor-enter v3

    #@13
    .line 2048
    :try_start_0
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@17
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 2049
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1f
    const/4 v8, 0x0

    #@20
    iput-boolean v8, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    #@22
    .line 2050
    new-instance v24, Lcom/android/internal/util/MemInfoReader;

    #@24
    .end local v24    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-direct/range {v24 .. v24}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_0
    monitor-exit v3

    #@28
    .line 2053
    if-eqz v24, :cond_5

    #@2a
    .line 2054
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2e
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    #@31
    .line 2055
    const-wide/16 v12, 0x0

    #@33
    .line 2056
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@37
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@39
    monitor-enter v3

    #@3a
    .line 2057
    :try_start_1
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3e
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@40
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    #@43
    move-result v14

    #@44
    .line 2058
    .local v14, "N":I
    const/4 v15, 0x0

    #@45
    .local v15, "j":I
    :goto_0
    if-ge v15, v14, :cond_4

    #@47
    .line 2059
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4b
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@4d
    invoke-virtual {v2, v15}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@50
    move-result-object v27

    #@51
    .line 2060
    .local v27, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v27

    #@53
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    #@55
    const-wide/16 v10, 0x0

    #@57
    cmp-long v2, v8, v10

    #@59
    if-lez v2, :cond_1

    #@5b
    move-object/from16 v0, v27

    #@5d
    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5f
    const/16 v8, 0x2710

    #@61
    if-lt v2, v8, :cond_2

    #@63
    .line 2058
    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@65
    goto :goto_0

    #@66
    .line 2047
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v15    # "j":I
    .end local v27    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v2

    #@67
    monitor-exit v3

    #@68
    throw v2

    #@69
    .line 2064
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v15    # "j":I
    .restart local v27    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@6d
    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@6f
    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@70
    .line 2065
    :try_start_3
    move-object/from16 v0, p0

    #@72
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@74
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@76
    move-object/from16 v0, v27

    #@78
    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@7a
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@7d
    move-result v2

    #@7e
    if-ltz v2, :cond_3

    #@80
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@81
    goto :goto_1

    #@82
    .line 2056
    .end local v14    # "N":I
    .end local v15    # "j":I
    .end local v27    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_1
    move-exception v2

    #@83
    monitor-exit v3

    #@84
    throw v2

    #@85
    .restart local v14    # "N":I
    .restart local v15    # "j":I
    .restart local v27    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    :try_start_5
    monitor-exit v8

    #@86
    .line 2070
    move-object/from16 v0, v27

    #@88
    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@8a
    const/4 v8, 0x0

    #@8b
    const/4 v9, 0x0

    #@8c
    invoke-static {v2, v8, v9}, Landroid/os/Debug;->getPss(I[J[J)J

    #@8f
    move-result-wide v8

    #@90
    add-long/2addr v12, v8

    #@91
    goto :goto_1

    #@92
    .line 2064
    :catchall_2
    move-exception v2

    #@93
    monitor-exit v8

    #@94
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@95
    .end local v27    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    monitor-exit v3

    #@96
    .line 2073
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    #@99
    .line 2074
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@9d
    move-object/from16 v31, v0

    #@9f
    monitor-enter v31

    #@a0
    .line 2077
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    #@a3
    move-result-wide v16

    #@a4
    .line 2078
    .local v16, "cachedKb":J
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    #@a7
    move-result-wide v18

    #@a8
    .line 2079
    .local v18, "freeKb":J
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    #@ab
    move-result-wide v32

    #@ac
    .line 2080
    .local v32, "zramKb":J
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    #@af
    move-result-wide v20

    #@b0
    .line 2081
    .local v20, "kernelKb":J
    const-wide/16 v2, 0x400

    #@b2
    mul-long v2, v2, v16

    #@b4
    const-wide/16 v8, 0x400

    #@b6
    mul-long v4, v18, v8

    #@b8
    const-wide/16 v8, 0x400

    #@ba
    mul-long v6, v32, v8

    #@bc
    .line 2082
    const-wide/16 v8, 0x400

    #@be
    mul-long v8, v8, v20

    #@c0
    const-wide/16 v10, 0x400

    #@c2
    mul-long/2addr v10, v12

    #@c3
    .line 2081
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    #@c6
    .line 2083
    move-object/from16 v0, p0

    #@c8
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ca
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@cc
    move-wide/from16 v4, v16

    #@ce
    move-wide/from16 v6, v18

    #@d0
    move-wide/from16 v8, v32

    #@d2
    move-wide/from16 v10, v20

    #@d4
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@d7
    monitor-exit v31

    #@d8
    .line 2088
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v15    # "j":I
    .end local v16    # "cachedKb":J
    .end local v18    # "freeKb":J
    .end local v20    # "kernelKb":J
    .end local v32    # "zramKb":J
    :cond_5
    const/16 v25, 0x0

    #@da
    .line 2089
    .local v25, "num":I
    const/4 v2, 0x1

    #@db
    new-array v0, v2, [J

    #@dd
    move-object/from16 v30, v0

    #@df
    .line 2095
    .local v30, "tmp":[J
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    #@e1
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@e3
    monitor-enter v3

    #@e4
    .line 2096
    :try_start_7
    move-object/from16 v0, p0

    #@e6
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@e8
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@ea
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@ed
    move-result v2

    #@ee
    if-gtz v2, :cond_8

    #@f0
    .line 2097
    move-object/from16 v0, p0

    #@f2
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@f4
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    #@f6
    if-nez v2, :cond_7

    #@f8
    .line 2100
    :goto_3
    move-object/from16 v0, p0

    #@fa
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@fc
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@fe
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@101
    monitor-exit v3

    #@102
    .line 2101
    return-void

    #@103
    .line 2074
    .end local v25    # "num":I
    .end local v30    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v15    # "j":I
    :catchall_3
    move-exception v2

    #@104
    monitor-exit v31

    #@105
    throw v2

    #@106
    .line 2097
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v15    # "j":I
    .restart local v25    # "num":I
    .restart local v30    # "tmp":[J
    :cond_7
    :try_start_8
    const-string/jumbo v2, "ActivityManager"

    #@109
    .line 2098
    new-instance v8, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v9, "Collected PSS of "

    #@111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v8

    #@115
    move/from16 v0, v25

    #@117
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v8

    #@11b
    const-string/jumbo v9, " processes in "

    #@11e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v8

    #@122
    .line 2099
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@125
    move-result-wide v10

    #@126
    sub-long v10, v10, v28

    #@128
    .line 2098
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v8

    #@12c
    .line 2099
    const-string/jumbo v9, "ms"

    #@12f
    .line 2098
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v8

    #@133
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v8

    #@137
    .line 2097
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@13a
    goto :goto_3

    #@13b
    .line 2095
    :catchall_4
    move-exception v2

    #@13c
    monitor-exit v3

    #@13d
    throw v2

    #@13e
    .line 2103
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    #@140
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@142
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    #@144
    const/4 v8, 0x0

    #@145
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@148
    move-result-object v4

    #@149
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    #@14b
    .line 2104
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    #@14d
    .line 2105
    .local v5, "procState":I
    iget-wide v0, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@14f
    move-wide/from16 v22, v0

    #@151
    .line 2106
    .local v22, "lastPssTime":J
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@153
    if-eqz v2, :cond_a

    #@155
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@157
    if-ne v5, v2, :cond_a

    #@159
    .line 2107
    const-wide/16 v8, 0x3e8

    #@15b
    add-long v8, v8, v22

    #@15d
    .line 2108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@160
    move-result-wide v10

    #@161
    .line 2107
    cmp-long v2, v8, v10

    #@163
    if-gez v2, :cond_a

    #@165
    .line 2109
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    #@167
    move/from16 v26, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@169
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v26, "pid":I
    :goto_4
    monitor-exit v3

    #@16a
    .line 2115
    if-eqz v4, :cond_6

    #@16c
    .line 2116
    const/4 v2, 0x0

    #@16d
    move/from16 v0, v26

    #@16f
    move-object/from16 v1, v30

    #@171
    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    #@174
    move-result-wide v6

    #@175
    .line 2117
    .local v6, "pss":J
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@179
    move-object/from16 v31, v0

    #@17b
    monitor-enter v31

    #@17c
    .line 2118
    const-wide/16 v2, 0x0

    #@17e
    cmp-long v2, v6, v2

    #@180
    if-eqz v2, :cond_9

    #@182
    :try_start_a
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@184
    if-eqz v2, :cond_9

    #@186
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    #@188
    if-ne v2, v5, :cond_9

    #@18a
    .line 2119
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    #@18c
    move/from16 v0, v26

    #@18e
    if-ne v2, v0, :cond_9

    #@190
    iget-wide v2, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    #@192
    cmp-long v2, v2, v22

    #@194
    if-nez v2, :cond_9

    #@196
    .line 2120
    add-int/lit8 v25, v25, 0x1

    #@198
    .line 2121
    move-object/from16 v0, p0

    #@19a
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@19c
    const/4 v2, 0x0

    #@19d
    aget-wide v8, v30, v2

    #@19f
    .line 2122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1a2
    move-result-wide v10

    #@1a3
    .line 2121
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@1a6
    :cond_9
    monitor-exit v31

    #@1a7
    goto/16 :goto_2

    #@1a9
    .line 2111
    .end local v6    # "pss":J
    .end local v26    # "pid":I
    .restart local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    const/4 v4, 0x0

    #@1aa
    .line 2112
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    const/16 v26, 0x0

    #@1ac
    .restart local v26    # "pid":I
    goto :goto_4

    #@1ad
    .line 2117
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "pss":J
    :catchall_5
    move-exception v2

    #@1ae
    monitor-exit v31

    #@1af
    throw v2

    #@1b0
    .line 2043
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
