.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 2438
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    .line 2440
    const-string/jumbo v0, "AlarmManager"

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@8
    .line 2438
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    #@0
    .prologue
    .line 2445
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2449
    .local v3, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    move-object/from16 v0, p0

    #@7
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@9
    move-object/from16 v0, p0

    #@b
    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@d
    iget-wide v0, v15, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@f
    move-wide/from16 v18, v0

    #@11
    move-wide/from16 v0, v18

    #@13
    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->-wrap4(Lcom/android/server/AlarmManagerService;J)I

    #@16
    move-result v14

    #@17
    .line 2450
    .local v14, "result":I
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e
    move-result-wide v18

    #@1f
    move-wide/from16 v0, v18

    #@21
    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->-set0(Lcom/android/server/AlarmManagerService;J)J

    #@24
    .line 2452
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@27
    .line 2454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2a
    move-result-wide v6

    #@2b
    .line 2455
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2e
    move-result-wide v4

    #@2f
    .line 2457
    .local v4, "nowELAPSED":J
    const/high16 v2, 0x10000

    #@31
    and-int/2addr v2, v14

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 2462
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@38
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@3a
    monitor-enter v15

    #@3b
    .line 2463
    :try_start_0
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@3f
    iget-wide v12, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    #@41
    .line 2465
    .local v12, "lastTimeChangeClockTime":J
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@45
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    #@47
    move-wide/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    sub-long v18, v4, v18

    #@4b
    .line 2464
    add-long v8, v12, v18

    #@4d
    .local v8, "expectedClockTime":J
    monitor-exit v15

    #@4e
    .line 2467
    const-wide/16 v18, 0x0

    #@50
    cmp-long v2, v12, v18

    #@52
    if-eqz v2, :cond_0

    #@54
    const-wide/16 v18, 0x1f4

    #@56
    sub-long v18, v8, v18

    #@58
    cmp-long v2, v6, v18

    #@5a
    if-gez v2, :cond_3

    #@5c
    .line 2474
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@5e
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@64
    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@66
    invoke-virtual {v2, v15}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    #@69
    .line 2475
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@71
    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    #@73
    invoke-virtual {v2, v15}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    #@76
    .line 2476
    move-object/from16 v0, p0

    #@78
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@7a
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    #@7d
    .line 2477
    move-object/from16 v0, p0

    #@7f
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@81
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@83
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    #@86
    .line 2478
    move-object/from16 v0, p0

    #@88
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@8a
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@8c
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    #@8f
    .line 2479
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@93
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@95
    monitor-enter v15

    #@96
    .line 2480
    :try_start_1
    move-object/from16 v0, p0

    #@98
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@9a
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    #@9c
    move/from16 v18, v0

    #@9e
    add-int/lit8 v18, v18, 0x1

    #@a0
    move/from16 v0, v18

    #@a2
    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    #@a4
    .line 2481
    move-object/from16 v0, p0

    #@a6
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@a8
    iput-wide v6, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    #@aa
    .line 2482
    move-object/from16 v0, p0

    #@ac
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@ae
    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b0
    monitor-exit v15

    #@b1
    .line 2484
    new-instance v11, Landroid/content/Intent;

    #@b3
    const-string/jumbo v2, "android.intent.action.TIME_SET"

    #@b6
    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b9
    .line 2485
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    #@bb
    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@be
    .line 2487
    move-object/from16 v0, p0

    #@c0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@c2
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@c5
    move-result-object v2

    #@c6
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@c8
    invoke-virtual {v2, v11, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@cb
    .line 2491
    or-int/lit8 v14, v14, 0x5

    #@cd
    .line 2495
    .end local v8    # "expectedClockTime":J
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "lastTimeChangeClockTime":J
    :cond_1
    const/high16 v2, 0x10000

    #@cf
    if-eq v14, v2, :cond_7

    #@d1
    .line 2498
    move-object/from16 v0, p0

    #@d3
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@d5
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@d7
    monitor-enter v15

    #@d8
    .line 2519
    :try_start_2
    move-object/from16 v0, p0

    #@da
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@dc
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    #@df
    move-result v10

    #@e0
    .line 2520
    .local v10, "hasWakeup":Z
    if-nez v10, :cond_4

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@e6
    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    #@e9
    move-result v2

    #@ea
    if-eqz v2, :cond_4

    #@ec
    .line 2523
    move-object/from16 v0, p0

    #@ee
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@f0
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@f2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@f5
    move-result v2

    #@f6
    if-nez v2, :cond_2

    #@f8
    .line 2524
    move-object/from16 v0, p0

    #@fa
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@fc
    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    #@fe
    .line 2525
    move-object/from16 v0, p0

    #@100
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@102
    .line 2526
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@106
    move-object/from16 v18, v0

    #@108
    move-object/from16 v0, v18

    #@10a
    invoke-virtual {v0, v4, v5}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    #@10d
    move-result-wide v18

    #@10e
    const-wide/16 v20, 0x3

    #@110
    mul-long v18, v18, v20

    #@112
    const-wide/16 v20, 0x2

    #@114
    div-long v18, v18, v20

    #@116
    .line 2525
    add-long v18, v18, v4

    #@118
    move-wide/from16 v0, v18

    #@11a
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@11c
    .line 2528
    :cond_2
    move-object/from16 v0, p0

    #@11e
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@120
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@122
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@125
    .line 2529
    move-object/from16 v0, p0

    #@127
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@129
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@12b
    move/from16 v18, v0

    #@12d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@130
    move-result v19

    #@131
    add-int v18, v18, v19

    #@133
    move/from16 v0, v18

    #@135
    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@137
    .line 2530
    move-object/from16 v0, p0

    #@139
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@13b
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@13e
    .line 2531
    move-object/from16 v0, p0

    #@140
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@142
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@145
    .end local v10    # "hasWakeup":Z
    :goto_2
    monitor-exit v15

    #@146
    goto/16 :goto_0

    #@148
    .line 2462
    :catchall_0
    move-exception v2

    #@149
    monitor-exit v15

    #@14a
    throw v2

    #@14b
    .line 2468
    .restart local v8    # "expectedClockTime":J
    .restart local v12    # "lastTimeChangeClockTime":J
    :cond_3
    const-wide/16 v18, 0x1f4

    #@14d
    add-long v18, v18, v8

    #@14f
    cmp-long v2, v6, v18

    #@151
    if-lez v2, :cond_1

    #@153
    goto/16 :goto_1

    #@155
    .line 2479
    :catchall_1
    move-exception v2

    #@156
    monitor-exit v15

    #@157
    throw v2

    #@158
    .line 2537
    .end local v8    # "expectedClockTime":J
    .end local v12    # "lastTimeChangeClockTime":J
    .restart local v10    # "hasWakeup":Z
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@15a
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@15c
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@15f
    .line 2538
    move-object/from16 v0, p0

    #@161
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@163
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)V

    #@166
    .line 2539
    move-object/from16 v0, p0

    #@168
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@16a
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@16c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@16f
    move-result v2

    #@170
    if-lez v2, :cond_6

    #@172
    .line 2540
    move-object/from16 v0, p0

    #@174
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@176
    move-object/from16 v0, p0

    #@178
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@17a
    move-object/from16 v18, v0

    #@17c
    move-object/from16 v0, v18

    #@17e
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@180
    move-object/from16 v18, v0

    #@182
    move-object/from16 v0, v18

    #@184
    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    #@187
    .line 2541
    move-object/from16 v0, p0

    #@189
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@18b
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@18d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@190
    .line 2542
    move-object/from16 v0, p0

    #@192
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@194
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    #@196
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@199
    .line 2543
    move-object/from16 v0, p0

    #@19b
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@19d
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    #@19f
    move-wide/from16 v18, v0

    #@1a1
    sub-long v16, v4, v18

    #@1a3
    .line 2544
    .local v16, "thisDelayTime":J
    move-object/from16 v0, p0

    #@1a5
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1a7
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@1a9
    move-wide/from16 v18, v0

    #@1ab
    add-long v18, v18, v16

    #@1ad
    move-wide/from16 v0, v18

    #@1af
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@1b1
    .line 2545
    move-object/from16 v0, p0

    #@1b3
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1b5
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@1b7
    move-wide/from16 v18, v0

    #@1b9
    cmp-long v2, v18, v16

    #@1bb
    if-gez v2, :cond_5

    #@1bd
    .line 2546
    move-object/from16 v0, p0

    #@1bf
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1c1
    move-wide/from16 v0, v16

    #@1c3
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@1c5
    .line 2548
    :cond_5
    move-object/from16 v0, p0

    #@1c7
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1c9
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@1cb
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1ce
    .line 2550
    .end local v16    # "thisDelayTime":J
    :cond_6
    move-object/from16 v0, p0

    #@1d0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1d2
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1d5
    goto/16 :goto_2

    #@1d7
    .line 2498
    .end local v10    # "hasWakeup":Z
    :catchall_2
    move-exception v2

    #@1d8
    monitor-exit v15

    #@1d9
    throw v2

    #@1da
    .line 2557
    :cond_7
    move-object/from16 v0, p0

    #@1dc
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1de
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@1e0
    monitor-enter v15

    #@1e1
    .line 2558
    :try_start_4
    move-object/from16 v0, p0

    #@1e3
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1e5
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@1e8
    goto/16 :goto_2

    #@1ea
    .line 2557
    :catchall_3
    move-exception v2

    #@1eb
    monitor-exit v15

    #@1ec
    throw v2
.end method
