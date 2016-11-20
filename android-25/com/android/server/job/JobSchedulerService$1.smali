.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 406
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v13, "android.intent.action.PACKAGE_CHANGED"

    #@7
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v13

    #@b
    if-eqz v13, :cond_4

    #@d
    .line 409
    move-object/from16 v0, p0

    #@f
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@11
    move-object/from16 v0, p2

    #@13
    invoke-static {v13, v0}, Lcom/android/server/job/JobSchedulerService;->-wrap2(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    .line 410
    .local v7, "pkgName":Ljava/lang/String;
    const-string/jumbo v13, "android.intent.extra.UID"

    #@1a
    const/4 v14, -0x1

    #@1b
    move-object/from16 v0, p2

    #@1d
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@20
    move-result v8

    #@21
    .line 411
    .local v8, "pkgUid":I
    if-eqz v7, :cond_3

    #@23
    const/4 v13, -0x1

    #@24
    if-eq v8, v13, :cond_3

    #@26
    .line 413
    const-string/jumbo v13, "android.intent.extra.changed_component_name_list"

    #@29
    .line 412
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 414
    .local v2, "changedComponents":[Ljava/lang/String;
    if-eqz v2, :cond_1

    #@31
    .line 415
    const/4 v13, 0x0

    #@32
    array-length v14, v2

    #@33
    :goto_0
    if-ge v13, v14, :cond_1

    #@35
    aget-object v3, v2, v13

    #@37
    .line 416
    .local v3, "component":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v15

    #@3b
    if-eqz v15, :cond_2

    #@3d
    .line 421
    :try_start_0
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    #@40
    move-result v12

    #@41
    .line 422
    .local v12, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@44
    move-result-object v9

    #@45
    .line 423
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v9, v7, v12}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    #@48
    move-result v10

    #@49
    .line 424
    .local v10, "state":I
    const/4 v13, 0x2

    #@4a
    if-eq v10, v13, :cond_0

    #@4c
    .line 425
    const/4 v13, 0x3

    #@4d
    if-ne v10, v13, :cond_1

    #@4f
    .line 430
    :cond_0
    move-object/from16 v0, p0

    #@51
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@53
    const/4 v14, 0x1

    #@54
    invoke-virtual {v13, v8, v14}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 401
    .end local v2    # "changedComponents":[Ljava/lang/String;
    .end local v3    # "component":Ljava/lang/String;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkgUid":I
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "state":I
    .end local v12    # "userId":I
    :cond_1
    :goto_1
    return-void

    #@58
    .line 415
    .restart local v2    # "changedComponents":[Ljava/lang/String;
    .restart local v3    # "component":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgUid":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 449
    .end local v2    # "changedComponents":[Ljava/lang/String;
    .end local v3    # "component":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "JobSchedulerService"

    #@5e
    new-instance v14, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v15, "PACKAGE_CHANGED for "

    #@66
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v14

    #@6a
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v14

    #@6e
    const-string/jumbo v15, " / uid "

    #@71
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v14

    #@75
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v14

    #@79
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v14

    #@7d
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    goto :goto_1

    #@81
    .line 451
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkgUid":I
    :cond_4
    const-string/jumbo v13, "android.intent.action.PACKAGE_REMOVED"

    #@84
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v13

    #@88
    if-eqz v13, :cond_5

    #@8a
    .line 454
    const-string/jumbo v13, "android.intent.extra.REPLACING"

    #@8d
    const/4 v14, 0x0

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@93
    move-result v13

    #@94
    if-nez v13, :cond_1

    #@96
    .line 455
    const-string/jumbo v13, "android.intent.extra.UID"

    #@99
    const/4 v14, -0x1

    #@9a
    move-object/from16 v0, p2

    #@9c
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9f
    move-result v11

    #@a0
    .line 459
    .local v11, "uidRemoved":I
    move-object/from16 v0, p0

    #@a2
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@a4
    const/4 v14, 0x1

    #@a5
    invoke-virtual {v13, v11, v14}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V

    #@a8
    goto :goto_1

    #@a9
    .line 461
    .end local v11    # "uidRemoved":I
    :cond_5
    const-string/jumbo v13, "android.intent.action.USER_REMOVED"

    #@ac
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v13

    #@b0
    if-eqz v13, :cond_6

    #@b2
    .line 462
    const-string/jumbo v13, "android.intent.extra.user_handle"

    #@b5
    const/4 v14, 0x0

    #@b6
    move-object/from16 v0, p2

    #@b8
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@bb
    move-result v12

    #@bc
    .line 466
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    #@be
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@c0
    invoke-virtual {v13, v12}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    #@c3
    goto :goto_1

    #@c4
    .line 467
    .end local v12    # "userId":I
    :cond_6
    const-string/jumbo v13, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@c7
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v13

    #@cb
    if-eqz v13, :cond_8

    #@cd
    .line 470
    const-string/jumbo v13, "android.intent.extra.UID"

    #@d0
    const/4 v14, -0x1

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@d6
    move-result v8

    #@d7
    .line 471
    .restart local v8    # "pkgUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@da
    move-result-object v13

    #@db
    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@de
    move-result-object v7

    #@df
    .line 472
    .restart local v7    # "pkgName":Ljava/lang/String;
    const/4 v13, -0x1

    #@e0
    if-eq v8, v13, :cond_1

    #@e2
    .line 474
    move-object/from16 v0, p0

    #@e4
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@e6
    iget-object v14, v13, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@e8
    monitor-enter v14

    #@e9
    .line 475
    :try_start_1
    move-object/from16 v0, p0

    #@eb
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@ed
    iget-object v13, v13, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@ef
    invoke-virtual {v13, v8}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f2
    move-result-object v6

    #@f3
    .local v6, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v14

    #@f4
    .line 477
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@f7
    move-result v13

    #@f8
    add-int/lit8 v5, v13, -0x1

    #@fa
    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_1

    #@fc
    .line 478
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ff
    move-result-object v13

    #@100
    check-cast v13, Lcom/android/server/job/controllers/JobStatus;

    #@102
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@105
    move-result-object v13

    #@106
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v13

    #@10a
    if-eqz v13, :cond_7

    #@10c
    .line 483
    const/4 v13, -0x1

    #@10d
    move-object/from16 v0, p0

    #@10f
    invoke-virtual {v0, v13}, Lcom/android/server/job/JobSchedulerService$1;->setResultCode(I)V

    #@112
    goto/16 :goto_1

    #@114
    .line 474
    .end local v5    # "i":I
    .end local v6    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v13

    #@115
    monitor-exit v14

    #@116
    throw v13

    #@117
    .line 477
    .restart local v5    # "i":I
    .restart local v6    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_7
    add-int/lit8 v5, v5, -0x1

    #@119
    goto :goto_2

    #@11a
    .line 488
    .end local v5    # "i":I
    .end local v6    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkgUid":I
    :cond_8
    const-string/jumbo v13, "android.intent.action.PACKAGE_RESTARTED"

    #@11d
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@120
    move-result v13

    #@121
    if-eqz v13, :cond_1

    #@123
    .line 490
    const-string/jumbo v13, "android.intent.extra.UID"

    #@126
    const/4 v14, -0x1

    #@127
    move-object/from16 v0, p2

    #@129
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@12c
    move-result v8

    #@12d
    .line 491
    .restart local v8    # "pkgUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@130
    move-result-object v13

    #@131
    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@134
    move-result-object v7

    #@135
    .line 492
    .restart local v7    # "pkgName":Ljava/lang/String;
    const/4 v13, -0x1

    #@136
    if-eq v8, v13, :cond_1

    #@138
    .line 496
    move-object/from16 v0, p0

    #@13a
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@13c
    invoke-virtual {v13, v7, v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;I)V

    #@13f
    goto/16 :goto_1

    #@141
    .line 432
    .restart local v2    # "changedComponents":[Ljava/lang/String;
    .restart local v3    # "component":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@142
    .local v4, "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method
