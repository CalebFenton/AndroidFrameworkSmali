.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "val$_foregroundNoti"    # Landroid/app/Notification;
    .param p3, "val$localPackageName"    # Ljava/lang/String;
    .param p4, "val$appUid"    # I
    .param p5, "val$appPid"    # I
    .param p6, "val$localForegroundId"    # I

    #@0
    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    #@4
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    #@6
    iput p4, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    #@8
    iput p5, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    #@a
    iput p6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    #@0
    .prologue
    .line 437
    const-class v2, Lcom/android/server/notification/NotificationManagerInternal;

    #@2
    .line 436
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    #@8
    .line 438
    .local v1, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v1, :cond_0

    #@a
    .line 439
    return-void

    #@b
    .line 441
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v8, v0, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    #@f
    .line 443
    .local v8, "localForegroundNoti":Landroid/app/Notification;
    :try_start_0
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@12
    move-result-object v2

    #@13
    if-nez v2, :cond_2

    #@15
    .line 448
    const-string/jumbo v2, "ActivityManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Attempted to start a foreground service ("

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    .line 449
    move-object/from16 v0, p0

    #@26
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@28
    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@2a
    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 450
    const-string/jumbo v4, ") with a broken notification (no icon: "

    #@31
    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 452
    const-string/jumbo v4, ")"

    #@3c
    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 454
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@4b
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@4d
    .line 455
    move-object/from16 v0, p0

    #@4f
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@51
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@53
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@55
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@58
    move-result-object v3

    #@59
    .line 454
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@5c
    move-result-object v11

    #@5d
    .line 456
    .local v11, "appName":Ljava/lang/CharSequence;
    if-nez v11, :cond_1

    #@5f
    .line 457
    move-object/from16 v0, p0

    #@61
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@63
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@65
    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 459
    :cond_1
    const/4 v12, 0x0

    #@68
    .line 461
    .local v12, "ctx":Landroid/content/Context;
    :try_start_1
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@6c
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@6e
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@70
    .line 462
    move-object/from16 v0, p0

    #@72
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@74
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@76
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@78
    const/4 v4, 0x0

    #@79
    .line 461
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@7c
    move-result-object v12

    #@7d
    .line 464
    .local v12, "ctx":Landroid/content/Context;
    new-instance v15, Landroid/app/Notification$Builder;

    #@7f
    invoke-direct {v15, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@82
    .line 467
    .local v15, "notiBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    #@84
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@86
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@88
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    #@8a
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@8d
    .line 470
    const/16 v2, 0x40

    #@8f
    const/4 v3, 0x1

    #@90
    invoke-virtual {v15, v2, v3}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    #@93
    .line 473
    const/4 v2, -0x2

    #@94
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@97
    .line 475
    new-instance v17, Landroid/content/Intent;

    #@99
    .line 476
    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@9c
    .line 475
    move-object/from16 v0, v17

    #@9e
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a1
    .line 477
    .local v17, "runningIntent":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    #@a4
    .line 478
    move-object/from16 v0, p0

    #@a6
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@a8
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@aa
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@ac
    const/4 v4, 0x0

    #@ad
    .line 477
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@b0
    move-result-object v2

    #@b1
    move-object/from16 v0, v17

    #@b3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@b6
    .line 479
    move-object/from16 v0, p0

    #@b8
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@ba
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@bc
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@be
    const/4 v3, 0x0

    #@bf
    .line 480
    const/high16 v4, 0x8000000

    #@c1
    .line 479
    move-object/from16 v0, v17

    #@c3
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@c6
    move-result-object v16

    #@c7
    .line 481
    .local v16, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@c9
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@cb
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@cd
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@cf
    .line 482
    const v3, 0x1060059

    #@d2
    .line 481
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    #@d5
    move-result v2

    #@d6
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@d9
    .line 485
    move-object/from16 v0, p0

    #@db
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@dd
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@df
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@e1
    const/4 v3, 0x1

    #@e2
    new-array v3, v3, [Ljava/lang/Object;

    #@e4
    .line 488
    const/4 v4, 0x0

    #@e5
    aput-object v11, v3, v4

    #@e7
    .line 486
    const v4, 0x1040342

    #@ea
    .line 485
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@ed
    move-result-object v2

    #@ee
    .line 484
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@f1
    .line 490
    move-object/from16 v0, p0

    #@f3
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@f5
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@f7
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@f9
    const/4 v3, 0x1

    #@fa
    new-array v3, v3, [Ljava/lang/Object;

    #@fc
    .line 493
    const/4 v4, 0x0

    #@fd
    aput-object v11, v3, v4

    #@ff
    .line 491
    const v4, 0x1040343

    #@102
    .line 490
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@105
    move-result-object v2

    #@106
    .line 489
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@109
    .line 494
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@10c
    .line 496
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@10f
    move-result-object v8

    #@110
    .line 500
    .end local v11    # "appName":Ljava/lang/CharSequence;
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v15    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v16    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "runningIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@113
    move-result-object v2

    #@114
    if-nez v2, :cond_3

    #@116
    .line 505
    new-instance v2, Ljava/lang/RuntimeException;

    #@118
    new-instance v3, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v4, "invalid service notification: "

    #@120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v3

    #@124
    .line 506
    move-object/from16 v0, p0

    #@126
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@128
    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@12a
    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v3

    #@12e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v3

    #@132
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@135
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@136
    .line 514
    :catch_0
    move-exception v14

    #@137
    .line 515
    .local v14, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "ActivityManager"

    #@13a
    const-string/jumbo v3, "Error showing notification for service"

    #@13d
    invoke-static {v2, v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@140
    .line 518
    move-object/from16 v0, p0

    #@142
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@144
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@146
    move-object/from16 v0, p0

    #@148
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@14a
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@150
    .line 519
    const/4 v5, 0x0

    #@151
    const/4 v6, 0x0

    #@152
    const/4 v7, 0x1

    #@153
    .line 518
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    #@156
    .line 520
    move-object/from16 v0, p0

    #@158
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@15a
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget v3, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    #@160
    move-object/from16 v0, p0

    #@162
    iget v4, v0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    #@164
    move-object/from16 v0, p0

    #@166
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    #@168
    .line 521
    new-instance v6, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v7, "Bad notification for startForeground: "

    #@170
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v6

    #@174
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v6

    #@178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v6

    #@17c
    .line 520
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    #@17f
    .line 435
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    #@180
    .line 508
    :cond_3
    const/4 v2, 0x1

    #@181
    :try_start_3
    new-array v9, v2, [I

    #@183
    .line 509
    .local v9, "outId":[I
    move-object/from16 v0, p0

    #@185
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    #@187
    move-object/from16 v0, p0

    #@189
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    #@18b
    .line 510
    move-object/from16 v0, p0

    #@18d
    iget v4, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    #@18f
    move-object/from16 v0, p0

    #@191
    iget v5, v0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    #@193
    move-object/from16 v0, p0

    #@195
    iget v7, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    #@197
    .line 511
    move-object/from16 v0, p0

    #@199
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@19b
    iget v10, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    #@19d
    .line 510
    const/4 v6, 0x0

    #@19e
    .line 509
    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    #@1a1
    .line 513
    move-object/from16 v0, p0

    #@1a3
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@1a5
    iput-object v8, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    #@1a7
    goto :goto_1

    #@1a8
    .line 497
    .end local v9    # "outId":[I
    .restart local v11    # "appName":Ljava/lang/CharSequence;
    :catch_1
    move-exception v13

    #@1a9
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method
