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
    .line 451
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
    .line 454
    const-class v2, Lcom/android/server/notification/NotificationManagerInternal;

    #@2
    .line 453
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    #@8
    .line 455
    .local v1, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v1, :cond_0

    #@a
    .line 456
    return-void

    #@b
    .line 458
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v8, v0, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    #@f
    .line 460
    .local v8, "localForegroundNoti":Landroid/app/Notification;
    :try_start_0
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@12
    move-result-object v2

    #@13
    if-nez v2, :cond_2

    #@15
    .line 465
    invoke-static {}, Lcom/android/server/am/ServiceRecord;->-get0()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Attempted to start a foreground service ("

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 466
    move-object/from16 v0, p0

    #@27
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@29
    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@2b
    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 467
    const-string/jumbo v4, ") with a broken notification (no icon: "

    #@32
    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 469
    const-string/jumbo v4, ")"

    #@3d
    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 471
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@4c
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@4e
    .line 472
    move-object/from16 v0, p0

    #@50
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@52
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@54
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@56
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@59
    move-result-object v3

    #@5a
    .line 471
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@5d
    move-result-object v11

    #@5e
    .line 473
    .local v11, "appName":Ljava/lang/CharSequence;
    if-nez v11, :cond_1

    #@60
    .line 474
    move-object/from16 v0, p0

    #@62
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@64
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@66
    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    .line 476
    :cond_1
    const/4 v12, 0x0

    #@69
    .line 478
    .local v12, "ctx":Landroid/content/Context;
    :try_start_1
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@6d
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@6f
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@71
    .line 479
    move-object/from16 v0, p0

    #@73
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@75
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@77
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@79
    new-instance v4, Landroid/os/UserHandle;

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@7f
    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    #@81
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    #@84
    const/4 v5, 0x0

    #@85
    .line 478
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@88
    move-result-object v12

    #@89
    .line 481
    .local v12, "ctx":Landroid/content/Context;
    new-instance v15, Landroid/app/Notification$Builder;

    #@8b
    invoke-direct {v15, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@8e
    .line 484
    .local v15, "notiBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    #@90
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@92
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@94
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    #@96
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@99
    .line 487
    const/16 v2, 0x40

    #@9b
    const/4 v3, 0x1

    #@9c
    invoke-virtual {v15, v2, v3}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@9f
    .line 490
    const/4 v2, -0x2

    #@a0
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@a3
    .line 492
    new-instance v17, Landroid/content/Intent;

    #@a5
    .line 493
    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@a8
    .line 492
    move-object/from16 v0, v17

    #@aa
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ad
    .line 494
    .local v17, "runningIntent":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    #@b0
    .line 495
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@b4
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@b6
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@b8
    const/4 v4, 0x0

    #@b9
    .line 494
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@bc
    move-result-object v2

    #@bd
    move-object/from16 v0, v17

    #@bf
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@c2
    .line 496
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@c6
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@c8
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@ca
    const/4 v3, 0x0

    #@cb
    .line 497
    const/high16 v4, 0x8000000

    #@cd
    .line 496
    move-object/from16 v0, v17

    #@cf
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@d2
    move-result-object v16

    #@d3
    .line 498
    .local v16, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@d5
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@d7
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@d9
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@db
    .line 499
    const v3, 0x1060059

    #@de
    .line 498
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    #@e1
    move-result v2

    #@e2
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@e5
    .line 502
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@e9
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@eb
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@ed
    const/4 v3, 0x1

    #@ee
    new-array v3, v3, [Ljava/lang/Object;

    #@f0
    .line 505
    const/4 v4, 0x0

    #@f1
    aput-object v11, v3, v4

    #@f3
    .line 503
    const v4, 0x104036a

    #@f6
    .line 502
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@f9
    move-result-object v2

    #@fa
    .line 501
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@fd
    .line 507
    move-object/from16 v0, p0

    #@ff
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@101
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@103
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@105
    const/4 v3, 0x1

    #@106
    new-array v3, v3, [Ljava/lang/Object;

    #@108
    .line 510
    const/4 v4, 0x0

    #@109
    aput-object v11, v3, v4

    #@10b
    .line 508
    const v4, 0x104036b

    #@10e
    .line 507
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@111
    move-result-object v2

    #@112
    .line 506
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@115
    .line 511
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@118
    .line 513
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@11b
    move-result-object v8

    #@11c
    .line 517
    .end local v11    # "appName":Ljava/lang/CharSequence;
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v15    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v16    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "runningIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@11f
    move-result-object v2

    #@120
    if-nez v2, :cond_3

    #@122
    .line 522
    new-instance v2, Ljava/lang/RuntimeException;

    #@124
    new-instance v3, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v4, "invalid service notification: "

    #@12c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v3

    #@130
    .line 523
    move-object/from16 v0, p0

    #@132
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@134
    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    #@136
    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v3

    #@13a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v3

    #@13e
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@141
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@142
    .line 531
    :catch_0
    move-exception v14

    #@143
    .line 532
    .local v14, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ServiceRecord;->-get0()Ljava/lang/String;

    #@146
    move-result-object v2

    #@147
    const-string/jumbo v3, "Error showing notification for service"

    #@14a
    invoke-static {v2, v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14d
    .line 535
    move-object/from16 v0, p0

    #@14f
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@151
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@153
    move-object/from16 v0, p0

    #@155
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@157
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@159
    move-object/from16 v0, p0

    #@15b
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@15d
    .line 536
    const/4 v5, 0x0

    #@15e
    const/4 v6, 0x0

    #@15f
    const/4 v7, 0x0

    #@160
    .line 535
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    #@163
    .line 537
    move-object/from16 v0, p0

    #@165
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@167
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@169
    move-object/from16 v0, p0

    #@16b
    iget v3, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget v4, v0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    #@171
    move-object/from16 v0, p0

    #@173
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    #@175
    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    const-string/jumbo v7, "Bad notification for startForeground: "

    #@17d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v6

    #@181
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v6

    #@185
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v6

    #@189
    .line 537
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    #@18c
    .line 452
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    #@18d
    .line 525
    :cond_3
    const/4 v2, 0x1

    #@18e
    :try_start_3
    new-array v9, v2, [I

    #@190
    .line 526
    .local v9, "outId":[I
    move-object/from16 v0, p0

    #@192
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    #@194
    move-object/from16 v0, p0

    #@196
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    #@198
    .line 527
    move-object/from16 v0, p0

    #@19a
    iget v4, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget v5, v0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget v7, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    #@1a4
    .line 528
    move-object/from16 v0, p0

    #@1a6
    iget-object v6, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@1a8
    iget v10, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    #@1aa
    .line 527
    const/4 v6, 0x0

    #@1ab
    .line 526
    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    #@1ae
    .line 530
    move-object/from16 v0, p0

    #@1b0
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    #@1b2
    iput-object v8, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    #@1b4
    goto :goto_1

    #@1b5
    .line 514
    .end local v9    # "outId":[I
    .restart local v11    # "appName":Ljava/lang/CharSequence;
    :catch_1
    move-exception v13

    #@1b6
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method
