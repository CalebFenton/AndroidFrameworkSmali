.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 2532
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2535
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@4
    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@6
    move-object/from16 v16, v0

    #@8
    monitor-enter v16

    #@9
    .line 2536
    const/4 v12, 0x0

    #@a
    .line 2537
    .local v12, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    const/4 v10, 0x0

    #@b
    .local v10, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@f
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v2

    #@15
    if-ge v10, v2, :cond_0

    #@17
    .line 2538
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@1b
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    #@23
    iget-object v2, v2, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    #@25
    move-object/from16 v0, p1

    #@27
    if-ne v2, v0, :cond_3

    #@29
    .line 2539
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@2d
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    move-object v0, v2

    #@34
    check-cast v0, Lcom/android/server/AlarmManagerService$InFlight;

    #@36
    move-object v12, v0

    #@37
    .line 2543
    .end local v12    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_0
    if-eqz v12, :cond_6

    #@39
    .line 2544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3c
    move-result-wide v14

    #@3d
    .line 2545
    .local v14, "nowELAPSED":J
    iget-object v8, v12, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@3f
    .line 2546
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@41
    add-int/lit8 v2, v2, -0x1

    #@43
    iput v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@45
    .line 2547
    iget v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@47
    if-gtz v2, :cond_1

    #@49
    .line 2548
    const/4 v2, 0x0

    #@4a
    iput v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@4c
    .line 2549
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    #@4e
    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    #@50
    sub-long v4, v14, v4

    #@52
    add-long/2addr v2, v4

    #@53
    iput-wide v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    #@55
    .line 2551
    :cond_1
    iget-object v9, v12, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    #@57
    .line 2552
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@59
    add-int/lit8 v2, v2, -0x1

    #@5b
    iput v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@5d
    .line 2553
    iget v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@5f
    if-gtz v2, :cond_2

    #@61
    .line 2554
    const/4 v2, 0x0

    #@62
    iput v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@64
    .line 2555
    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@66
    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    #@68
    sub-long v4, v14, v4

    #@6a
    add-long/2addr v2, v4

    #@6b
    iput-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@6d
    .line 2558
    :cond_2
    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@6f
    if-eqz v2, :cond_4

    #@71
    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@73
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    #@76
    move-result v2

    #@77
    if-lez v2, :cond_4

    #@79
    .line 2559
    const/4 v13, 0x0

    #@7a
    .local v13, "wi":I
    :goto_1
    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@7c
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    #@7f
    move-result v2

    #@80
    if-ge v13, v2, :cond_5

    #@82
    .line 2561
    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@84
    invoke-virtual {v2, v13}, Landroid/os/WorkSource;->get(I)I

    #@87
    move-result v2

    #@88
    iget-object v3, v12, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@8a
    .line 2560
    move-object/from16 v0, p1

    #@8c
    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    #@8f
    .line 2559
    add-int/lit8 v13, v13, 0x1

    #@91
    goto :goto_1

    #@92
    .line 2537
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13    # "wi":I
    .end local v14    # "nowELAPSED":J
    .restart local v12    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@94
    goto/16 :goto_0

    #@96
    .line 2565
    .end local v12    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v14    # "nowELAPSED":J
    :cond_4
    iget-object v2, v12, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@98
    const/4 v3, -0x1

    #@99
    .line 2564
    move-object/from16 v0, p1

    #@9b
    invoke-static {v0, v3, v2}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    #@9e
    .line 2571
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v14    # "nowELAPSED":J
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@a2
    iget v3, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@a4
    add-int/lit8 v3, v3, -0x1

    #@a6
    iput v3, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@a8
    .line 2572
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@ac
    iget v2, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@ae
    if-nez v2, :cond_9

    #@b0
    .line 2573
    move-object/from16 v0, p0

    #@b2
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@b4
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b6
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@b9
    .line 2574
    move-object/from16 v0, p0

    #@bb
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@bd
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@bf
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@c2
    move-result v2

    #@c3
    if-lez v2, :cond_8

    #@c5
    .line 2575
    move-object/from16 v0, p0

    #@c7
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@c9
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@cb
    new-instance v3, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v4, "Finished all broadcasts with "

    #@d3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v3

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@db
    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@dd
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e0
    move-result v4

    #@e1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    .line 2576
    const-string/jumbo v4, " remaining inflights"

    #@e8
    .line 2575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v3

    #@ec
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    #@f3
    .line 2577
    const/4 v10, 0x0

    #@f4
    :goto_3
    move-object/from16 v0, p0

    #@f6
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@f8
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@fa
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@fd
    move-result v2

    #@fe
    if-ge v10, v2, :cond_7

    #@100
    .line 2578
    move-object/from16 v0, p0

    #@102
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@104
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@106
    new-instance v3, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v4, "  Remaining #"

    #@10e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v3

    #@112
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v3

    #@116
    const-string/jumbo v4, ": "

    #@119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v3

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@121
    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@123
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@126
    move-result-object v4

    #@127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v3

    #@12b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v3

    #@12f
    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    #@132
    .line 2577
    add-int/lit8 v10, v10, 0x1

    #@134
    goto :goto_3

    #@135
    .line 2569
    :cond_6
    move-object/from16 v0, p0

    #@137
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@139
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@13b
    new-instance v3, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v4, "No in-flight alarm for "

    #@143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v3

    #@147
    move-object/from16 v0, p1

    #@149
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v3

    #@14d
    const-string/jumbo v4, " "

    #@150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v3

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v3

    #@15a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v3

    #@15e
    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@161
    goto/16 :goto_2

    #@163
    .line 2535
    :catchall_0
    move-exception v2

    #@164
    monitor-exit v16

    #@165
    throw v2

    #@166
    .line 2580
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    #@168
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@16a
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@16c
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16f
    :cond_8
    :goto_4
    monitor-exit v16

    #@170
    .line 2534
    return-void

    #@171
    .line 2584
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@175
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@177
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17a
    move-result v2

    #@17b
    if-lez v2, :cond_a

    #@17d
    .line 2585
    move-object/from16 v0, p0

    #@17f
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@181
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@183
    const/4 v3, 0x0

    #@184
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@187
    move-result-object v11

    #@188
    check-cast v11, Lcom/android/server/AlarmManagerService$InFlight;

    #@18a
    .line 2586
    .local v11, "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    #@18c
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@18e
    iget-object v3, v11, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    #@190
    iget-object v4, v11, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@192
    .line 2587
    iget v5, v11, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    #@194
    iget-object v6, v11, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@196
    const/4 v7, 0x0

    #@197
    .line 2586
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    #@19a
    goto :goto_4

    #@19b
    .line 2590
    .end local v11    # "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_a
    move-object/from16 v0, p0

    #@19d
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@19f
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@1a1
    const-string/jumbo v3, "Alarm wakelock still held but sent queue empty"

    #@1a4
    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    #@1a7
    .line 2591
    move-object/from16 v0, p0

    #@1a9
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@1ab
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1ad
    const/4 v3, 0x0

    #@1ae
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b1
    goto :goto_4
.end method
