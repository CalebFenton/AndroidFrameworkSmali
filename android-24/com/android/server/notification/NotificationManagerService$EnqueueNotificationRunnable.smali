.class Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnqueueNotificationRunnable"
.end annotation


# instance fields
.field private final r:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "userId"    # I
    .param p3, "r"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 2602
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2603
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    #@7
    .line 2604
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@9
    .line 2602
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    #@0
    .prologue
    .line 2610
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4
    iget-object v0, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@6
    move-object/from16 v16, v0

    #@8
    monitor-enter v16

    #@9
    .line 2611
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@d
    iget-object v12, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@f
    .line 2612
    .local v12, "n":Landroid/service/notification/StatusBarNotification;
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@11
    if-eqz v6, :cond_0

    #@13
    const-string/jumbo v6, "NotificationService"

    #@16
    new-instance v7, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v17, "EnqueueNotificationRunnable.run for: "

    #@1e
    move-object/from16 v0, v17

    #@20
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@27
    move-result-object v17

    #@28
    move-object/from16 v0, v17

    #@2a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 2613
    :cond_0
    move-object/from16 v0, p0

    #@37
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@39
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v14

    #@43
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    #@45
    .line 2614
    .local v14, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v14, :cond_1

    #@47
    .line 2616
    move-object/from16 v0, p0

    #@49
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@4b
    invoke-virtual {v6, v14}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    #@4e
    .line 2619
    :cond_1
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@51
    move-result v1

    #@52
    .line 2620
    .local v1, "callingUid":I
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    #@55
    move-result v2

    #@56
    .line 2621
    .local v2, "callingPid":I
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@59
    move-result-object v13

    #@5a
    .line 2622
    .local v13, "notification":Landroid/app/Notification;
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 2623
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@61
    move-result v4

    #@62
    .line 2624
    .local v4, "id":I
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    .line 2625
    .local v5, "tag":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap3(I)Z

    #@69
    move-result v6

    #@6a
    if-nez v6, :cond_6

    #@6c
    .line 2626
    const-string/jumbo v6, "android"

    #@6f
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v11

    #@73
    .line 2630
    :goto_0
    move-object/from16 v0, p0

    #@75
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@7b
    invoke-static {v6, v7, v14, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->-wrap22(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    #@7e
    .line 2634
    const-string/jumbo v6, "com.android.providers.downloads"

    #@81
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_2

    #@87
    .line 2635
    const-string/jumbo v6, "DownloadManager"

    #@8a
    const/4 v7, 0x2

    #@8b
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8e
    move-result v6

    #@8f
    .line 2634
    if-eqz v6, :cond_4

    #@91
    .line 2636
    :cond_2
    const/4 v8, 0x0

    #@92
    .line 2637
    .local v8, "enqueueStatus":I
    if-eqz v14, :cond_3

    #@94
    .line 2638
    const/4 v8, 0x1

    #@95
    .line 2641
    :cond_3
    move-object/from16 v0, p0

    #@97
    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    #@99
    invoke-virtual {v13}, Landroid/app/Notification;->toString()Ljava/lang/String;

    #@9c
    move-result-object v7

    #@9d
    .line 2640
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    #@a0
    .line 2645
    .end local v8    # "enqueueStatus":I
    :cond_4
    move-object/from16 v0, p0

    #@a2
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a4
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@a7
    move-result-object v6

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@ac
    invoke-virtual {v6, v7}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    #@af
    .line 2647
    move-object/from16 v0, p0

    #@b1
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b3
    invoke-static {v6, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap2(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    #@b6
    move-result v10

    #@b7
    .line 2650
    .local v10, "isPackageSuspended":Z
    move-object/from16 v0, p0

    #@b9
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@bb
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@be
    move-result v6

    #@bf
    if-eqz v6, :cond_5

    #@c1
    .line 2651
    move-object/from16 v0, p0

    #@c3
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c5
    invoke-static {v6, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    #@c8
    move-result v6

    #@c9
    if-eqz v6, :cond_5

    #@cb
    .line 2650
    if-eqz v10, :cond_8

    #@cd
    .line 2652
    :cond_5
    if-nez v11, :cond_8

    #@cf
    .line 2653
    if-eqz v10, :cond_7

    #@d1
    .line 2654
    const-string/jumbo v6, "NotificationService"

    #@d4
    const-string/jumbo v7, "Suppressing notification from package due to package suspended by administrator."

    #@d7
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@da
    .line 2656
    move-object/from16 v0, p0

    #@dc
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@de
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    #@e1
    move-result-object v6

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@e6
    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e9
    :goto_1
    monitor-exit v16

    #@ea
    .line 2661
    return-void

    #@eb
    .line 2625
    .end local v10    # "isPackageSuspended":Z
    :cond_6
    const/4 v11, 0x1

    #@ec
    .local v11, "isSystemNotification":Z
    goto :goto_0

    #@ed
    .line 2658
    .end local v11    # "isSystemNotification":Z
    .restart local v10    # "isPackageSuspended":Z
    :cond_7
    :try_start_1
    const-string/jumbo v6, "NotificationService"

    #@f0
    const-string/jumbo v7, "Suppressing notification from package by user request."

    #@f3
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 2659
    move-object/from16 v0, p0

    #@f8
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@fa
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    #@fd
    move-result-object v6

    #@fe
    move-object/from16 v0, p0

    #@100
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@102
    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@105
    goto :goto_1

    #@106
    .line 2610
    .end local v1    # "callingUid":I
    .end local v2    # "callingPid":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v5    # "tag":Ljava/lang/String;
    .end local v10    # "isPackageSuspended":Z
    .end local v12    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v14    # "old":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v6

    #@107
    monitor-exit v16

    #@108
    throw v6

    #@109
    .line 2666
    .restart local v1    # "callingUid":I
    .restart local v2    # "callingPid":I
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "id":I
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v10    # "isPackageSuspended":Z
    .restart local v12    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v13    # "notification":Landroid/app/Notification;
    .restart local v14    # "old":Lcom/android/server/notification/NotificationRecord;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    #@10b
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@10d
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@110
    move-result-object v6

    #@111
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->isEnabled()Z

    #@114
    move-result v6

    #@115
    if-eqz v6, :cond_9

    #@117
    .line 2667
    move-object/from16 v0, p0

    #@119
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@11b
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@11e
    move-result-object v6

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@123
    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onNotificationEnqueued(Lcom/android/server/notification/NotificationRecord;)V

    #@126
    .line 2672
    :cond_9
    move-object/from16 v0, p0

    #@128
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@12a
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@12d
    move-result-object v7

    #@12e
    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    #@131
    move-result v9

    #@132
    .line 2673
    .local v9, "index":I
    if-gez v9, :cond_b

    #@134
    .line 2674
    move-object/from16 v0, p0

    #@136
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@138
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@13e
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@141
    .line 2675
    move-object/from16 v0, p0

    #@143
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@145
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    #@148
    move-result-object v6

    #@149
    move-object/from16 v0, p0

    #@14b
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@14d
    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    #@150
    .line 2686
    :goto_2
    move-object/from16 v0, p0

    #@152
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@154
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@156
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@159
    move-result-object v7

    #@15a
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@15e
    move-object/from16 v17, v0

    #@160
    move-object/from16 v0, v17

    #@162
    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@165
    .line 2690
    iget v6, v13, Landroid/app/Notification;->flags:I

    #@167
    and-int/lit8 v6, v6, 0x40

    #@169
    if-eqz v6, :cond_a

    #@16b
    .line 2691
    iget v6, v13, Landroid/app/Notification;->flags:I

    #@16d
    or-int/lit8 v6, v6, 0x22

    #@16f
    iput v6, v13, Landroid/app/Notification;->flags:I

    #@171
    .line 2695
    :cond_a
    move-object/from16 v0, p0

    #@173
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@175
    move-object/from16 v0, p0

    #@177
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@179
    invoke-static {v6, v7}, Lcom/android/server/notification/NotificationManagerService;->-wrap12(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    #@17c
    .line 2696
    move-object/from16 v0, p0

    #@17e
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@180
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@183
    move-result-object v6

    #@184
    move-object/from16 v0, p0

    #@186
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@188
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@18a
    invoke-virtual {v6, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    #@18d
    .line 2698
    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@190
    move-result-object v6

    #@191
    if-eqz v6, :cond_d

    #@193
    .line 2699
    if-eqz v14, :cond_c

    #@195
    iget-object v15, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@197
    .line 2700
    :goto_3
    move-object/from16 v0, p0

    #@199
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@19b
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@19e
    move-result-object v6

    #@19f
    invoke-virtual {v6, v12, v15}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    #@1a2
    .line 2713
    :goto_4
    move-object/from16 v0, p0

    #@1a4
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@1aa
    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1ad
    monitor-exit v16

    #@1ae
    .line 2608
    return-void

    #@1af
    .line 2677
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    #@1b1
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1b3
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1b5
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b8
    move-result-object v14

    #@1b9
    .end local v14    # "old":Lcom/android/server/notification/NotificationRecord;
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    #@1bb
    .line 2678
    .restart local v14    # "old":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    #@1bd
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1bf
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@1c5
    invoke-virtual {v6, v9, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1c8
    .line 2679
    move-object/from16 v0, p0

    #@1ca
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1cc
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    #@1cf
    move-result-object v6

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@1d4
    invoke-virtual {v6, v7, v14}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    #@1d7
    .line 2681
    iget v6, v13, Landroid/app/Notification;->flags:I

    #@1d9
    .line 2682
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@1dc
    move-result-object v7

    #@1dd
    iget v7, v7, Landroid/app/Notification;->flags:I

    #@1df
    and-int/lit8 v7, v7, 0x40

    #@1e1
    .line 2681
    or-int/2addr v6, v7

    #@1e2
    iput v6, v13, Landroid/app/Notification;->flags:I

    #@1e4
    .line 2683
    move-object/from16 v0, p0

    #@1e6
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    #@1e8
    const/4 v7, 0x1

    #@1e9
    iput-boolean v7, v6, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    #@1eb
    goto/16 :goto_2

    #@1ed
    .line 2699
    :cond_c
    const/4 v15, 0x0

    #@1ee
    .local v15, "oldSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_3

    #@1ef
    .line 2702
    .end local v15    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    :cond_d
    const-string/jumbo v6, "NotificationService"

    #@1f2
    new-instance v7, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    const-string/jumbo v17, "Not posting notification without small icon: "

    #@1fa
    move-object/from16 v0, v17

    #@1fc
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v7

    #@200
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v7

    #@204
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v7

    #@208
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20b
    .line 2703
    if-eqz v14, :cond_e

    #@20d
    iget-boolean v6, v14, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    #@20f
    if-eqz v6, :cond_f

    #@211
    .line 2709
    :cond_e
    :goto_5
    const-string/jumbo v6, "NotificationService"

    #@214
    new-instance v7, Ljava/lang/StringBuilder;

    #@216
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@219
    const-string/jumbo v17, "WARNING: In a future release this will crash the app: "

    #@21c
    move-object/from16 v0, v17

    #@21e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v7

    #@222
    .line 2710
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@225
    move-result-object v17

    #@226
    .line 2709
    move-object/from16 v0, v17

    #@228
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v7

    #@22c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22f
    move-result-object v7

    #@230
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@233
    goto/16 :goto_4

    #@235
    .line 2704
    :cond_f
    move-object/from16 v0, p0

    #@237
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@239
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@23c
    move-result-object v6

    #@23d
    invoke-virtual {v6, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@240
    goto :goto_5
.end method
