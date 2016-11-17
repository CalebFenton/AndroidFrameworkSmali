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
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    #@70
    .line 2476
    move-object/from16 v0, p0

    #@72
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@74
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@76
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    #@79
    .line 2477
    move-object/from16 v0, p0

    #@7b
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@7d
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@7f
    monitor-enter v15

    #@80
    .line 2478
    :try_start_1
    move-object/from16 v0, p0

    #@82
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@84
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    #@86
    move/from16 v18, v0

    #@88
    add-int/lit8 v18, v18, 0x1

    #@8a
    move/from16 v0, v18

    #@8c
    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    #@8e
    .line 2479
    move-object/from16 v0, p0

    #@90
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@92
    iput-wide v6, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    #@94
    .line 2480
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@98
    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@9a
    monitor-exit v15

    #@9b
    .line 2482
    new-instance v11, Landroid/content/Intent;

    #@9d
    const-string/jumbo v2, "android.intent.action.TIME_SET"

    #@a0
    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a3
    .line 2483
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    #@a5
    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a8
    .line 2485
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@ac
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@af
    move-result-object v2

    #@b0
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@b2
    invoke-virtual {v2, v11, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@b5
    .line 2489
    or-int/lit8 v14, v14, 0x5

    #@b7
    .line 2493
    .end local v8    # "expectedClockTime":J
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "lastTimeChangeClockTime":J
    :cond_1
    const/high16 v2, 0x10000

    #@b9
    if-eq v14, v2, :cond_7

    #@bb
    .line 2496
    move-object/from16 v0, p0

    #@bd
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@bf
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@c1
    monitor-enter v15

    #@c2
    .line 2517
    :try_start_2
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@c6
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    #@c9
    move-result v10

    #@ca
    .line 2518
    .local v10, "hasWakeup":Z
    if-nez v10, :cond_4

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@d0
    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    #@d3
    move-result v2

    #@d4
    if-eqz v2, :cond_4

    #@d6
    .line 2521
    move-object/from16 v0, p0

    #@d8
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@da
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@dc
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@df
    move-result v2

    #@e0
    if-nez v2, :cond_2

    #@e2
    .line 2522
    move-object/from16 v0, p0

    #@e4
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@e6
    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    #@e8
    .line 2523
    move-object/from16 v0, p0

    #@ea
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@ec
    .line 2524
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@f0
    move-object/from16 v18, v0

    #@f2
    move-object/from16 v0, v18

    #@f4
    invoke-virtual {v0, v4, v5}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    #@f7
    move-result-wide v18

    #@f8
    const-wide/16 v20, 0x3

    #@fa
    mul-long v18, v18, v20

    #@fc
    const-wide/16 v20, 0x2

    #@fe
    div-long v18, v18, v20

    #@100
    .line 2523
    add-long v18, v18, v4

    #@102
    move-wide/from16 v0, v18

    #@104
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@106
    .line 2526
    :cond_2
    move-object/from16 v0, p0

    #@108
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@10a
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@10c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@10f
    .line 2527
    move-object/from16 v0, p0

    #@111
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@113
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@115
    move/from16 v18, v0

    #@117
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11a
    move-result v19

    #@11b
    add-int v18, v18, v19

    #@11d
    move/from16 v0, v18

    #@11f
    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@121
    .line 2528
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@125
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@128
    .line 2529
    move-object/from16 v0, p0

    #@12a
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@12c
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@12f
    :goto_2
    monitor-exit v15

    #@130
    goto/16 :goto_0

    #@132
    .line 2462
    .end local v10    # "hasWakeup":Z
    :catchall_0
    move-exception v2

    #@133
    monitor-exit v15

    #@134
    throw v2

    #@135
    .line 2468
    .restart local v8    # "expectedClockTime":J
    .restart local v12    # "lastTimeChangeClockTime":J
    :cond_3
    const-wide/16 v18, 0x1f4

    #@137
    add-long v18, v18, v8

    #@139
    cmp-long v2, v6, v18

    #@13b
    if-lez v2, :cond_1

    #@13d
    goto/16 :goto_1

    #@13f
    .line 2477
    :catchall_1
    move-exception v2

    #@140
    monitor-exit v15

    #@141
    throw v2

    #@142
    .line 2535
    .end local v8    # "expectedClockTime":J
    .end local v12    # "lastTimeChangeClockTime":J
    .restart local v10    # "hasWakeup":Z
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@144
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@146
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@149
    .line 2536
    move-object/from16 v0, p0

    #@14b
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@14d
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)V

    #@150
    .line 2537
    move-object/from16 v0, p0

    #@152
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@154
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@156
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@159
    move-result v2

    #@15a
    if-lez v2, :cond_6

    #@15c
    .line 2538
    move-object/from16 v0, p0

    #@15e
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@164
    move-object/from16 v18, v0

    #@166
    move-object/from16 v0, v18

    #@168
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@16a
    move-object/from16 v18, v0

    #@16c
    move-object/from16 v0, v18

    #@16e
    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    #@171
    .line 2539
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@175
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@177
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@17a
    .line 2540
    move-object/from16 v0, p0

    #@17c
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@17e
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    #@180
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@183
    .line 2541
    move-object/from16 v0, p0

    #@185
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@187
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    #@189
    move-wide/from16 v18, v0

    #@18b
    sub-long v16, v4, v18

    #@18d
    .line 2542
    .local v16, "thisDelayTime":J
    move-object/from16 v0, p0

    #@18f
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@191
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@193
    move-wide/from16 v18, v0

    #@195
    add-long v18, v18, v16

    #@197
    move-wide/from16 v0, v18

    #@199
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@19b
    .line 2543
    move-object/from16 v0, p0

    #@19d
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@19f
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@1a1
    move-wide/from16 v18, v0

    #@1a3
    cmp-long v2, v18, v16

    #@1a5
    if-gez v2, :cond_5

    #@1a7
    .line 2544
    move-object/from16 v0, p0

    #@1a9
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1ab
    move-wide/from16 v0, v16

    #@1ad
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@1af
    .line 2546
    :cond_5
    move-object/from16 v0, p0

    #@1b1
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1b3
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@1b5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1b8
    .line 2548
    .end local v16    # "thisDelayTime":J
    :cond_6
    move-object/from16 v0, p0

    #@1ba
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1bc
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1bf
    goto/16 :goto_2

    #@1c1
    .line 2496
    .end local v10    # "hasWakeup":Z
    :catchall_2
    move-exception v2

    #@1c2
    monitor-exit v15

    #@1c3
    throw v2

    #@1c4
    .line 2555
    :cond_7
    move-object/from16 v0, p0

    #@1c6
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1c8
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@1cb
    goto/16 :goto_0
.end method
