.class Lcom/android/server/notification/NotificationManagerService$8;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$opPkg:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILandroid/os/UserHandle;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "val$notification"    # Landroid/app/Notification;
    .param p3, "val$pkg"    # Ljava/lang/String;
    .param p4, "val$callingUid"    # I
    .param p5, "val$opPkg"    # Ljava/lang/String;
    .param p6, "val$id"    # I
    .param p7, "val$tag"    # Ljava/lang/String;
    .param p8, "val$callingPid"    # I
    .param p9, "val$user"    # Landroid/os/UserHandle;
    .param p10, "val$userId"    # I
    .param p11, "val$isSystemNotification"    # Z

    #@0
    .prologue
    .line 2081
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@4
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@6
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@8
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$opPkg:Ljava/lang/String;

    #@a
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    #@c
    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    #@e
    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    #@10
    iput-object p9, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$user:Landroid/os/UserHandle;

    #@12
    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$userId:I

    #@14
    iput-boolean p11, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$isSystemNotification:Z

    #@16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    #@0
    .prologue
    .line 2085
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@6
    move-object/from16 v23, v0

    #@8
    monitor-enter v23

    #@9
    .line 2090
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@d
    move-object/from16 v0, p0

    #@f
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@11
    iget v4, v4, Landroid/app/Notification;->priority:I

    #@13
    const/4 v5, -0x2

    #@14
    .line 2091
    const/4 v6, 0x2

    #@15
    .line 2090
    invoke-static {v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    #@18
    move-result v4

    #@19
    iput v4, v3, Landroid/app/Notification;->priority:I

    #@1b
    .line 2093
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@1f
    iget v3, v3, Landroid/app/Notification;->flags:I

    #@21
    and-int/lit16 v3, v3, 0x80

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 2094
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@29
    iget v3, v3, Landroid/app/Notification;->priority:I

    #@2b
    const/4 v4, 0x2

    #@2c
    if-ge v3, v4, :cond_0

    #@2e
    .line 2095
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@32
    const/4 v4, 0x2

    #@33
    iput v4, v3, Landroid/app/Notification;->priority:I

    #@35
    .line 2104
    :cond_0
    move-object/from16 v0, p0

    #@37
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@39
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@3c
    move-result-object v3

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@41
    move-object/from16 v0, p0

    #@43
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@45
    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/RankingHelper;->getPackagePeekable(Ljava/lang/String;I)Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_2

    #@4b
    .line 2105
    move-object/from16 v0, p0

    #@4d
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@4f
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@51
    if-nez v3, :cond_1

    #@53
    .line 2106
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@57
    new-instance v4, Landroid/os/Bundle;

    #@59
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@5c
    iput-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@5e
    .line 2108
    :cond_1
    move-object/from16 v0, p0

    #@60
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@62
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@64
    const-string/jumbo v4, "headsup"

    #@67
    .line 2109
    const/4 v5, 0x0

    #@68
    .line 2108
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@6b
    .line 2113
    :cond_2
    move-object/from16 v0, p0

    #@6d
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@6f
    iget v3, v3, Landroid/app/Notification;->priority:I

    #@71
    mul-int/lit8 v9, v3, 0xa

    #@73
    .line 2116
    .local v9, "score":I
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    #@75
    .line 2117
    move-object/from16 v0, p0

    #@77
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$opPkg:Ljava/lang/String;

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    #@85
    move-object/from16 v0, p0

    #@87
    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@89
    move-object/from16 v0, p0

    #@8b
    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@91
    .line 2118
    move-object/from16 v0, p0

    #@93
    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$user:Landroid/os/UserHandle;

    #@95
    .line 2116
    invoke-direct/range {v2 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@98
    .line 2119
    .local v2, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v22, Lcom/android/server/notification/NotificationRecord;

    #@9a
    move-object/from16 v0, v22

    #@9c
    invoke-direct {v0, v2, v9}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;I)V

    #@9f
    .line 2120
    .local v22, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    #@a1
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a3
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@a5
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    move-result-object v20

    #@ad
    check-cast v20, Lcom/android/server/notification/NotificationRecord;

    #@af
    .line 2121
    .local v20, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v20, :cond_3

    #@b1
    .line 2123
    move-object/from16 v0, v22

    #@b3
    move-object/from16 v1, v20

    #@b5
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    #@b8
    .line 2128
    :cond_3
    move-object/from16 v0, p0

    #@ba
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@bc
    move-object/from16 v0, p0

    #@be
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    #@c4
    move-object/from16 v0, v22

    #@c6
    move-object/from16 v1, v20

    #@c8
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap14(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    #@cb
    .line 2130
    move-object/from16 v0, p0

    #@cd
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    #@d7
    move-object/from16 v0, v22

    #@d9
    move-object/from16 v1, v20

    #@db
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    #@de
    move-result v18

    #@df
    .line 2134
    .local v18, "ignoreNotification":Z
    move-object/from16 v0, p0

    #@e1
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@e3
    const-string/jumbo v4, "com.android.providers.downloads"

    #@e6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v3

    #@ea
    if-eqz v3, :cond_4

    #@ec
    .line 2135
    const-string/jumbo v3, "DownloadManager"

    #@ef
    const/4 v4, 0x2

    #@f0
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@f3
    move-result v3

    #@f4
    .line 2134
    if-eqz v3, :cond_6

    #@f6
    .line 2136
    :cond_4
    const/16 v17, 0x0

    #@f8
    .line 2137
    .local v17, "enqueueStatus":I
    if-eqz v18, :cond_7

    #@fa
    .line 2138
    const/16 v17, 0x2

    #@fc
    .line 2142
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    #@fe
    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@100
    move-object/from16 v0, p0

    #@102
    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    #@104
    .line 2143
    move-object/from16 v0, p0

    #@106
    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@108
    move-object/from16 v0, p0

    #@10a
    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    #@110
    move-object/from16 v0, p0

    #@112
    iget v15, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$userId:I

    #@114
    move-object/from16 v0, p0

    #@116
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@118
    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    #@11b
    move-result-object v16

    #@11c
    .line 2142
    invoke-static/range {v10 .. v17}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11f
    .line 2147
    .end local v17    # "enqueueStatus":I
    :cond_6
    if-eqz v18, :cond_8

    #@121
    monitor-exit v23

    #@122
    .line 2148
    return-void

    #@123
    .line 2139
    .restart local v17    # "enqueueStatus":I
    :cond_7
    if-eqz v20, :cond_5

    #@125
    .line 2140
    const/16 v17, 0x1

    #@127
    goto :goto_0

    #@128
    .line 2151
    .end local v17    # "enqueueStatus":I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    #@12a
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@12c
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@12f
    move-result-object v3

    #@130
    move-object/from16 v0, v22

    #@132
    invoke-virtual {v3, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    #@135
    .line 2156
    move-object/from16 v0, p0

    #@137
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@13d
    move-object/from16 v0, p0

    #@13f
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@141
    invoke-static {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap3(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    #@144
    move-result v3

    #@145
    if-eqz v3, :cond_a

    #@147
    .line 2165
    :cond_9
    :goto_1
    move-object/from16 v0, v22

    #@149
    iget v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14b
    const/16 v4, -0x14

    #@14d
    if-ge v3, v4, :cond_b

    #@14f
    monitor-exit v23

    #@150
    .line 2167
    return-void

    #@151
    .line 2157
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    #@153
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$isSystemNotification:Z

    #@155
    if-nez v3, :cond_9

    #@157
    .line 2158
    const/16 v3, -0x3e8

    #@159
    move-object/from16 v0, v22

    #@15b
    iput v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    #@15d
    .line 2159
    const-string/jumbo v3, "NotificationService"

    #@160
    new-instance v4, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v5, "Suppressing notification from package "

    #@168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v4

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v4

    #@174
    .line 2160
    const-string/jumbo v5, " by user request."

    #@177
    .line 2159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v4

    #@17b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v4

    #@17f
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@182
    .line 2161
    move-object/from16 v0, p0

    #@184
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@186
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    #@189
    move-result-object v3

    #@18a
    move-object/from16 v0, v22

    #@18c
    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@18f
    goto :goto_1

    #@190
    .line 2085
    .end local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v9    # "score":I
    .end local v18    # "ignoreNotification":Z
    .end local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v22    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    #@191
    monitor-exit v23

    #@192
    throw v3

    #@193
    .line 2170
    .restart local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v9    # "score":I
    .restart local v18    # "ignoreNotification":Z
    .restart local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    .restart local v22    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    #@195
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@197
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@19a
    move-result-object v4

    #@19b
    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    #@19e
    move-result v19

    #@19f
    .line 2171
    .local v19, "index":I
    if-gez v19, :cond_d

    #@1a1
    .line 2172
    move-object/from16 v0, p0

    #@1a3
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1a5
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1a7
    move-object/from16 v0, v22

    #@1a9
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ac
    .line 2173
    move-object/from16 v0, p0

    #@1ae
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1b0
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    #@1b3
    move-result-object v3

    #@1b4
    move-object/from16 v0, v22

    #@1b6
    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    #@1b9
    .line 2184
    :goto_2
    move-object/from16 v0, p0

    #@1bb
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1bd
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@1bf
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@1c2
    move-result-object v4

    #@1c3
    move-object/from16 v0, v22

    #@1c5
    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c8
    .line 2188
    move-object/from16 v0, p0

    #@1ca
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@1cc
    iget v3, v3, Landroid/app/Notification;->flags:I

    #@1ce
    and-int/lit8 v3, v3, 0x40

    #@1d0
    if-eqz v3, :cond_c

    #@1d2
    .line 2189
    move-object/from16 v0, p0

    #@1d4
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@1d6
    iget v4, v3, Landroid/app/Notification;->flags:I

    #@1d8
    or-int/lit8 v4, v4, 0x22

    #@1da
    iput v4, v3, Landroid/app/Notification;->flags:I

    #@1dc
    .line 2193
    :cond_c
    move-object/from16 v0, p0

    #@1de
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1e0
    move-object/from16 v0, v22

    #@1e2
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap7(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    #@1e5
    .line 2194
    move-object/from16 v0, p0

    #@1e7
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1e9
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@1ec
    move-result-object v3

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1f1
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1f3
    invoke-virtual {v3, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    #@1f6
    .line 2196
    move-object/from16 v0, p0

    #@1f8
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@1fa
    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@1fd
    move-result-object v3

    #@1fe
    if-eqz v3, :cond_f

    #@200
    .line 2197
    if-eqz v20, :cond_e

    #@202
    move-object/from16 v0, v20

    #@204
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@206
    move-object/from16 v21, v0

    #@208
    .line 2198
    :goto_3
    move-object/from16 v0, p0

    #@20a
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@20c
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@20f
    move-result-object v3

    #@210
    move-object/from16 v0, v21

    #@212
    invoke-virtual {v3, v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    #@215
    .line 2211
    :goto_4
    move-object/from16 v0, p0

    #@217
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@219
    move-object/from16 v0, v22

    #@21b
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap8(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@21e
    monitor-exit v23

    #@21f
    .line 2083
    return-void

    #@220
    .line 2175
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    #@222
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@224
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@226
    move/from16 v0, v19

    #@228
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22b
    move-result-object v20

    #@22c
    .end local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    check-cast v20, Lcom/android/server/notification/NotificationRecord;

    #@22e
    .line 2176
    .restart local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    #@230
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@232
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@234
    move/from16 v0, v19

    #@236
    move-object/from16 v1, v22

    #@238
    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@23b
    .line 2177
    move-object/from16 v0, p0

    #@23d
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@23f
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    #@242
    move-result-object v3

    #@243
    move-object/from16 v0, v22

    #@245
    move-object/from16 v1, v20

    #@247
    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    #@24a
    .line 2179
    move-object/from16 v0, p0

    #@24c
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@24e
    iget v4, v3, Landroid/app/Notification;->flags:I

    #@250
    .line 2180
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@253
    move-result-object v5

    #@254
    iget v5, v5, Landroid/app/Notification;->flags:I

    #@256
    and-int/lit8 v5, v5, 0x40

    #@258
    .line 2179
    or-int/2addr v4, v5

    #@259
    iput v4, v3, Landroid/app/Notification;->flags:I

    #@25b
    .line 2181
    const/4 v3, 0x1

    #@25c
    move-object/from16 v0, v22

    #@25e
    iput-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    #@260
    goto/16 :goto_2

    #@262
    .line 2197
    :cond_e
    const/16 v21, 0x0

    #@264
    .local v21, "oldSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_3

    #@265
    .line 2200
    .end local v21    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    :cond_f
    const-string/jumbo v3, "NotificationService"

    #@268
    new-instance v4, Ljava/lang/StringBuilder;

    #@26a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26d
    const-string/jumbo v5, "Not posting notification without small icon: "

    #@270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v4

    #@274
    move-object/from16 v0, p0

    #@276
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    #@278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v4

    #@27c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27f
    move-result-object v4

    #@280
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@283
    .line 2201
    if-eqz v20, :cond_10

    #@285
    move-object/from16 v0, v20

    #@287
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    #@289
    if-eqz v3, :cond_11

    #@28b
    .line 2207
    :cond_10
    :goto_5
    const-string/jumbo v3, "NotificationService"

    #@28e
    new-instance v4, Ljava/lang/StringBuilder;

    #@290
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@293
    const-string/jumbo v5, "WARNING: In a future release this will crash the app: "

    #@296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@299
    move-result-object v4

    #@29a
    .line 2208
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@29d
    move-result-object v5

    #@29e
    .line 2207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v4

    #@2a2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a5
    move-result-object v4

    #@2a6
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a9
    goto/16 :goto_4

    #@2ab
    .line 2202
    :cond_11
    move-object/from16 v0, p0

    #@2ad
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2af
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@2b2
    move-result-object v3

    #@2b3
    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2b6
    goto :goto_5
.end method
