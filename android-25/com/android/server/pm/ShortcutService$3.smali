.class Lcom/android/server/pm/ShortcutService$3;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 2543
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/16 v10, -0x2710

    #@2
    .line 2546
    const-string/jumbo v9, "android.intent.extra.user_handle"

    #@5
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result v8

    #@9
    .line 2547
    .local v8, "userId":I
    if-ne v8, v10, :cond_0

    #@b
    .line 2548
    const-string/jumbo v9, "ShortcutService"

    #@e
    new-instance v10, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v11, "Intent broadcast does not contain user handle: "

    #@16
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v10

    #@1a
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v10

    #@1e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v10

    #@22
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 2549
    return-void

    #@26
    .line 2552
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 2556
    .local v0, "action":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2c
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@2f
    move-result-wide v6

    #@30
    .line 2558
    .local v6, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@32
    invoke-static {v9}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@35
    move-result-object v10

    #@36
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@37
    .line 2559
    :try_start_1
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@39
    invoke-virtual {v9, v8}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    move-result v9

    #@3d
    if-nez v9, :cond_1

    #@3f
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@40
    .line 2611
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@42
    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@45
    .line 2564
    return-void

    #@46
    .line 2569
    :cond_1
    :try_start_3
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@48
    invoke-virtual {v9, v8}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@4b
    move-result-object v5

    #@4c
    .line 2570
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4f
    :try_start_4
    monitor-exit v10

    #@50
    .line 2572
    const-string/jumbo v9, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    #@53
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@56
    move-result v9

    #@57
    if-eqz v9, :cond_2

    #@59
    .line 2611
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@5b
    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@5e
    .line 2574
    return-void

    #@5f
    .line 2558
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v9

    #@60
    :try_start_5
    monitor-exit v10

    #@61
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@62
    .line 2608
    :catch_0
    move-exception v1

    #@63
    .line 2609
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@65
    const-string/jumbo v10, "Exception in mPackageMonitor.onReceive"

    #@68
    invoke-virtual {v9, v10, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6b
    .line 2611
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@6d
    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@70
    .line 2545
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    #@71
    .line 2577
    .restart local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_2
    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@74
    move-result-object v2

    #@75
    .line 2578
    .local v2, "intentUri":Landroid/net/Uri;
    if-eqz v2, :cond_3

    #@77
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    .line 2580
    :goto_1
    if-nez v3, :cond_4

    #@7d
    .line 2581
    const-string/jumbo v9, "ShortcutService"

    #@80
    new-instance v10, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v11, "Intent broadcast does not contain package name: "

    #@88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v10

    #@90
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v10

    #@94
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@97
    .line 2611
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@99
    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@9c
    .line 2582
    return-void

    #@9d
    .line 2579
    :cond_3
    const/4 v3, 0x0

    #@9e
    .local v3, "packageName":Ljava/lang/String;
    goto :goto_1

    #@9f
    .line 2585
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    :try_start_8
    const-string/jumbo v9, "android.intent.extra.REPLACING"

    #@a2
    const/4 v10, 0x0

    #@a3
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@a6
    move-result v4

    #@a7
    .line 2587
    .local v4, "replacing":Z
    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    #@aa
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v9

    #@ae
    if-eqz v9, :cond_6

    #@b0
    .line 2589
    if-eqz v4, :cond_9

    #@b2
    .line 2590
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@b4
    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap5(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@b7
    .line 2611
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@b9
    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@bc
    goto :goto_0

    #@bd
    .line 2587
    :cond_6
    :try_start_9
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    #@c0
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v9

    #@c4
    if-eqz v9, :cond_7

    #@c6
    .line 2596
    if-nez v4, :cond_5

    #@c8
    .line 2597
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@ca
    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap4(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@cd
    goto :goto_2

    #@ce
    .line 2610
    .end local v2    # "intentUri":Landroid/net/Uri;
    .end local v4    # "replacing":Z
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_1
    move-exception v9

    #@cf
    .line 2611
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@d1
    invoke-virtual {v10, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@d4
    .line 2610
    throw v9

    #@d5
    .line 2587
    .restart local v2    # "intentUri":Landroid/net/Uri;
    .restart local v4    # "replacing":Z
    .restart local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_7
    :try_start_a
    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    #@d8
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@db
    move-result v9

    #@dc
    if-eqz v9, :cond_8

    #@de
    .line 2601
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@e0
    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap2(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@e3
    goto :goto_2

    #@e4
    .line 2587
    :cond_8
    const-string/jumbo v9, "android.intent.action.PACKAGE_DATA_CLEARED"

    #@e7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v9

    #@eb
    if-eqz v9, :cond_5

    #@ed
    .line 2605
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@ef
    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap3(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@f2
    goto :goto_2

    #@f3
    .line 2592
    :cond_9
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    #@f5
    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap1(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@f8
    goto :goto_2
.end method
