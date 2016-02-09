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
    .line 2180
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    .line 2182
    const-string/jumbo v0, "AlarmManager"

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@8
    .line 2180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    #@0
    .prologue
    .line 2187
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2191
    .local v3, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
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
    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->-wrap3(Lcom/android/server/AlarmManagerService;J)I

    #@16
    move-result v14

    #@17
    .line 2193
    .local v14, "result":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@1a
    .line 2195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d
    move-result-wide v6

    #@1e
    .line 2196
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21
    move-result-wide v4

    #@22
    .line 2198
    .local v4, "nowELAPSED":J
    const/high16 v2, 0x10000

    #@24
    and-int/2addr v2, v14

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 2203
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@2b
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@2d
    monitor-enter v15

    #@2e
    .line 2204
    :try_start_0
    move-object/from16 v0, p0

    #@30
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@32
    iget-wide v12, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    #@34
    .line 2206
    .local v12, "lastTimeChangeClockTime":J
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@38
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    #@3a
    move-wide/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    sub-long v18, v4, v18

    #@3e
    .line 2205
    add-long v8, v12, v18

    #@40
    .local v8, "expectedClockTime":J
    monitor-exit v15

    #@41
    .line 2208
    const-wide/16 v18, 0x0

    #@43
    cmp-long v2, v12, v18

    #@45
    if-eqz v2, :cond_1

    #@47
    const-wide/16 v18, 0x1f4

    #@49
    sub-long v18, v8, v18

    #@4b
    cmp-long v2, v6, v18

    #@4d
    if-gez v2, :cond_4

    #@4f
    .line 2215
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@57
    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@59
    invoke-virtual {v2, v15}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    #@5c
    .line 2216
    move-object/from16 v0, p0

    #@5e
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@60
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    #@63
    .line 2217
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@67
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@69
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    #@6c
    .line 2218
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@70
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@72
    monitor-enter v15

    #@73
    .line 2219
    :try_start_1
    move-object/from16 v0, p0

    #@75
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@77
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    #@79
    move/from16 v18, v0

    #@7b
    add-int/lit8 v18, v18, 0x1

    #@7d
    move/from16 v0, v18

    #@7f
    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    #@81
    .line 2220
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@85
    iput-wide v6, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    #@87
    .line 2221
    move-object/from16 v0, p0

    #@89
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@8b
    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8d
    monitor-exit v15

    #@8e
    .line 2223
    new-instance v11, Landroid/content/Intent;

    #@90
    const-string/jumbo v2, "android.intent.action.TIME_SET"

    #@93
    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@96
    .line 2224
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    #@98
    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@9b
    .line 2226
    move-object/from16 v0, p0

    #@9d
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@9f
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@a2
    move-result-object v2

    #@a3
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@a5
    invoke-virtual {v2, v11, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@a8
    .line 2230
    or-int/lit8 v14, v14, 0x5

    #@aa
    .line 2234
    .end local v8    # "expectedClockTime":J
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "lastTimeChangeClockTime":J
    :cond_2
    const/high16 v2, 0x10000

    #@ac
    if-eq v14, v2, :cond_0

    #@ae
    .line 2237
    move-object/from16 v0, p0

    #@b0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@b2
    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@b4
    monitor-enter v15

    #@b5
    .line 2258
    :try_start_2
    move-object/from16 v0, p0

    #@b7
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@b9
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    #@bc
    move-result v10

    #@bd
    .line 2259
    .local v10, "hasWakeup":Z
    if-nez v10, :cond_5

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@c3
    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    #@c6
    move-result v2

    #@c7
    if-eqz v2, :cond_5

    #@c9
    .line 2262
    move-object/from16 v0, p0

    #@cb
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@cd
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@cf
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d2
    move-result v2

    #@d3
    if-nez v2, :cond_3

    #@d5
    .line 2263
    move-object/from16 v0, p0

    #@d7
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@d9
    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    #@db
    .line 2264
    move-object/from16 v0, p0

    #@dd
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@df
    .line 2265
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@e3
    move-object/from16 v18, v0

    #@e5
    move-object/from16 v0, v18

    #@e7
    invoke-virtual {v0, v4, v5}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    #@ea
    move-result-wide v18

    #@eb
    const-wide/16 v20, 0x3

    #@ed
    mul-long v18, v18, v20

    #@ef
    const-wide/16 v20, 0x2

    #@f1
    div-long v18, v18, v20

    #@f3
    .line 2264
    add-long v18, v18, v4

    #@f5
    move-wide/from16 v0, v18

    #@f7
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@f9
    .line 2267
    :cond_3
    move-object/from16 v0, p0

    #@fb
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@fd
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@ff
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@102
    .line 2268
    move-object/from16 v0, p0

    #@104
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@106
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@108
    move/from16 v18, v0

    #@10a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@10d
    move-result v19

    #@10e
    add-int v18, v18, v19

    #@110
    move/from16 v0, v18

    #@112
    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@114
    .line 2269
    move-object/from16 v0, p0

    #@116
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@118
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@11b
    .line 2270
    move-object/from16 v0, p0

    #@11d
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@11f
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap5(Lcom/android/server/AlarmManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@122
    :goto_2
    monitor-exit v15

    #@123
    goto/16 :goto_0

    #@125
    .line 2203
    .end local v10    # "hasWakeup":Z
    :catchall_0
    move-exception v2

    #@126
    monitor-exit v15

    #@127
    throw v2

    #@128
    .line 2209
    .restart local v8    # "expectedClockTime":J
    .restart local v12    # "lastTimeChangeClockTime":J
    :cond_4
    const-wide/16 v18, 0x1f4

    #@12a
    add-long v18, v18, v8

    #@12c
    cmp-long v2, v6, v18

    #@12e
    if-lez v2, :cond_2

    #@130
    goto/16 :goto_1

    #@132
    .line 2218
    :catchall_1
    move-exception v2

    #@133
    monitor-exit v15

    #@134
    throw v2

    #@135
    .line 2276
    .end local v8    # "expectedClockTime":J
    .end local v12    # "lastTimeChangeClockTime":J
    .restart local v10    # "hasWakeup":Z
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    #@137
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@139
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@13c
    .line 2277
    move-object/from16 v0, p0

    #@13e
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@140
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap5(Lcom/android/server/AlarmManagerService;)V

    #@143
    .line 2278
    move-object/from16 v0, p0

    #@145
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@147
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@149
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14c
    move-result v2

    #@14d
    if-lez v2, :cond_7

    #@14f
    .line 2279
    move-object/from16 v0, p0

    #@151
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@153
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@157
    move-object/from16 v18, v0

    #@159
    move-object/from16 v0, v18

    #@15b
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@15d
    move-object/from16 v18, v0

    #@15f
    move-object/from16 v0, v18

    #@161
    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    #@164
    .line 2280
    move-object/from16 v0, p0

    #@166
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@168
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@16a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@16d
    .line 2281
    move-object/from16 v0, p0

    #@16f
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@171
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    #@173
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@176
    .line 2282
    move-object/from16 v0, p0

    #@178
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@17a
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    #@17c
    move-wide/from16 v18, v0

    #@17e
    sub-long v16, v4, v18

    #@180
    .line 2283
    .local v16, "thisDelayTime":J
    move-object/from16 v0, p0

    #@182
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@184
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@186
    move-wide/from16 v18, v0

    #@188
    add-long v18, v18, v16

    #@18a
    move-wide/from16 v0, v18

    #@18c
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@18e
    .line 2284
    move-object/from16 v0, p0

    #@190
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@192
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@194
    move-wide/from16 v18, v0

    #@196
    cmp-long v2, v18, v16

    #@198
    if-gez v2, :cond_6

    #@19a
    .line 2285
    move-object/from16 v0, p0

    #@19c
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@19e
    move-wide/from16 v0, v16

    #@1a0
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@1a2
    .line 2287
    :cond_6
    move-object/from16 v0, p0

    #@1a4
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1a6
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@1a8
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1ab
    .line 2289
    .end local v16    # "thisDelayTime":J
    :cond_7
    move-object/from16 v0, p0

    #@1ad
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #@1af
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1b2
    goto/16 :goto_2

    #@1b4
    .line 2237
    .end local v10    # "hasWakeup":Z
    :catchall_2
    move-exception v2

    #@1b5
    monitor-exit v15

    #@1b6
    throw v2
.end method
