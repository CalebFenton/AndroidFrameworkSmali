.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 2443
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 2444
    new-instance v0, Landroid/content/IntentFilter;

    #@7
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@a
    .line 2445
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    #@d
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10
    .line 2446
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    #@13
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@16
    .line 2447
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@19
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1c
    .line 2448
    const-string/jumbo v2, "package"

    #@1f
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@22
    .line 2449
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@29
    .line 2451
    new-instance v1, Landroid/content/IntentFilter;

    #@2b
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@2e
    .line 2452
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@31
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@34
    .line 2453
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    #@37
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 2454
    const-string/jumbo v2, "android.intent.action.UID_REMOVED"

    #@3d
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40
    .line 2455
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@47
    .line 2443
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2460
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@3
    iget-object v10, v10, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v10

    #@6
    .line 2461
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 2462
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    #@b
    .line 2463
    .local v5, "pkgList":[Ljava/lang/String;
    const-string/jumbo v11, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@e
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v11

    #@12
    if-eqz v11, :cond_2

    #@14
    .line 2464
    const-string/jumbo v11, "android.intent.extra.PACKAGES"

    #@17
    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    .line 2465
    .local v5, "pkgList":[Ljava/lang/String;
    array-length v11, v5

    #@1c
    :goto_0
    if-ge v9, v11, :cond_1

    #@1e
    aget-object v3, v5, v9

    #@20
    .line 2466
    .local v3, "packageName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@22
    invoke-virtual {v12, v3}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    #@25
    move-result v12

    #@26
    if-eqz v12, :cond_0

    #@28
    .line 2467
    const/4 v9, -0x1

    #@29
    invoke-virtual {p0, v9}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v10

    #@2d
    .line 2468
    return-void

    #@2e
    .line 2465
    :cond_0
    add-int/lit8 v9, v9, 0x1

    #@30
    goto :goto_0

    #@31
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v10

    #@32
    .line 2471
    return-void

    #@33
    .line 2472
    .local v5, "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v11, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@36
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v11

    #@3a
    if-eqz v11, :cond_5

    #@3c
    .line 2473
    const-string/jumbo v11, "android.intent.extra.changed_package_list"

    #@3f
    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 2498
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v5, :cond_a

    #@45
    array-length v11, v5

    #@46
    if-lez v11, :cond_a

    #@48
    .line 2499
    array-length v11, v5

    #@49
    :goto_2
    if-ge v9, v11, :cond_a

    #@4b
    aget-object v4, v5, v9

    #@4d
    .line 2500
    .local v4, "pkg":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@4f
    invoke-virtual {v12, v4}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    #@52
    .line 2501
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@54
    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    #@56
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 2502
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@5b
    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@5d
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    #@60
    move-result v12

    #@61
    add-int/lit8 v2, v12, -0x1

    #@63
    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_9

    #@65
    .line 2503
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@67
    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@69
    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6c
    move-result-object v7

    #@6d
    check-cast v7, Landroid/util/ArrayMap;

    #@6f
    .line 2504
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v12

    #@73
    if-eqz v12, :cond_4

    #@75
    .line 2505
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@78
    move-result v12

    #@79
    if-gtz v12, :cond_4

    #@7b
    .line 2506
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@7d
    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@7f
    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->removeAt(I)V

    #@82
    .line 2502
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@84
    goto :goto_3

    #@85
    .line 2474
    .end local v2    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v7    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "android.intent.action.USER_STOPPED"

    #@88
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v11

    #@8c
    if-eqz v11, :cond_6

    #@8e
    .line 2475
    const-string/jumbo v11, "android.intent.extra.user_handle"

    #@91
    const/4 v12, -0x1

    #@92
    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@95
    move-result v8

    #@96
    .line 2476
    .local v8, "userHandle":I
    if-ltz v8, :cond_3

    #@98
    .line 2477
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@9a
    invoke-virtual {v11, v8}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    goto :goto_1

    #@9e
    .line 2460
    .end local v0    # "action":Ljava/lang/String;
    .end local v5    # "pkgList":[Ljava/lang/String;
    .end local v8    # "userHandle":I
    :catchall_0
    move-exception v9

    #@9f
    monitor-exit v10

    #@a0
    throw v9

    #@a1
    .line 2479
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string/jumbo v11, "android.intent.action.UID_REMOVED"

    #@a4
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v11

    #@a8
    if-eqz v11, :cond_7

    #@aa
    .line 2480
    const-string/jumbo v11, "android.intent.extra.UID"

    #@ad
    const/4 v12, -0x1

    #@ae
    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@b1
    move-result v6

    #@b2
    .line 2481
    .local v6, "uid":I
    if-ltz v6, :cond_3

    #@b4
    .line 2482
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@b6
    iget-object v11, v11, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@b8
    invoke-virtual {v11, v6}, Landroid/util/SparseLongArray;->delete(I)V

    #@bb
    goto :goto_1

    #@bc
    .line 2485
    .end local v6    # "uid":I
    :cond_7
    const-string/jumbo v11, "android.intent.action.PACKAGE_REMOVED"

    #@bf
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v11

    #@c3
    if-eqz v11, :cond_8

    #@c5
    .line 2486
    const-string/jumbo v11, "android.intent.extra.REPLACING"

    #@c8
    const/4 v12, 0x0

    #@c9
    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cc
    move-result v11

    #@cd
    .line 2485
    if-eqz v11, :cond_8

    #@cf
    monitor-exit v10

    #@d0
    .line 2488
    return-void

    #@d1
    .line 2490
    :cond_8
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@d4
    move-result-object v1

    #@d5
    .line 2491
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_3

    #@d7
    .line 2492
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@da
    move-result-object v4

    #@db
    .line 2493
    .restart local v4    # "pkg":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@dd
    .line 2494
    const/4 v11, 0x1

    #@de
    new-array v5, v11, [Ljava/lang/String;

    #@e0
    .end local v5    # "pkgList":[Ljava/lang/String;
    const/4 v11, 0x0

    #@e1
    aput-object v4, v5, v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e3
    .local v5, "pkgList":[Ljava/lang/String;
    goto/16 :goto_1

    #@e5
    .line 2499
    .end local v1    # "data":Landroid/net/Uri;
    .end local v5    # "pkgList":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    #@e7
    goto/16 :goto_2

    #@e9
    .end local v2    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_a
    monitor-exit v10

    #@ea
    .line 2459
    return-void
.end method
