.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@0
    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

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
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 470
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@a
    .line 471
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->getSendingUserId()I

    #@d
    move-result v5

    #@e
    .line 470
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@11
    move-result v2

    #@12
    .line 473
    .local v2, "userHandle":I
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    #@15
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 474
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@1d
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    #@1f
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    #@22
    move-result v4

    #@23
    if-ne v2, v4, :cond_0

    #@25
    .line 475
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@27
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap4(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    .line 476
    new-instance v1, Landroid/content/IntentFilter;

    #@2f
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@32
    .line 477
    .local v1, "filterConsent":Landroid/content/IntentFilter;
    const-string/jumbo v4, "com.android.server.action.BUGREPORT_SHARING_DECLINED"

    #@35
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@38
    .line 478
    const-string/jumbo v4, "com.android.server.action.BUGREPORT_SHARING_ACCEPTED"

    #@3b
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3e
    .line 479
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@40
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@42
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@44
    invoke-static {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-get0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/content/BroadcastReceiver;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@4b
    .line 480
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4d
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@4f
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    #@52
    move-result-object v4

    #@53
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@56
    .line 482
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@58
    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@5a
    .line 483
    const/4 v7, 0x3

    #@5b
    .line 482
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/RemoteBugreportUtils;->buildNotification(Landroid/content/Context;I)Landroid/app/Notification;

    #@5e
    move-result-object v6

    #@5f
    .line 484
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@61
    .line 481
    const v8, 0x28700e57

    #@64
    .line 480
    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@67
    .line 486
    .end local v1    # "filterConsent":Landroid/content/IntentFilter;
    :cond_0
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    #@6a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v4

    #@6e
    if-nez v4, :cond_1

    #@70
    .line 487
    const-string/jumbo v4, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    #@73
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v4

    #@77
    .line 486
    if-eqz v4, :cond_2

    #@79
    .line 492
    :cond_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@7b
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@7d
    new-instance v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;

    #@7f
    invoke-direct {v5, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;I)V

    #@82
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@85
    .line 500
    :cond_2
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    #@88
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_3

    #@8e
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@90
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    #@92
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    #@95
    move-result v4

    #@96
    if-eqz v4, :cond_7

    #@98
    .line 505
    :cond_3
    :goto_0
    const-string/jumbo v4, "android.intent.action.USER_UNLOCKED"

    #@9b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v4

    #@9f
    if-nez v4, :cond_4

    #@a1
    .line 506
    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    #@a4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v4

    #@a8
    .line 505
    if-nez v4, :cond_4

    #@aa
    .line 507
    const-string/jumbo v4, "android.security.STORAGE_CHANGED"

    #@ad
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v4

    #@b1
    .line 505
    if-eqz v4, :cond_5

    #@b3
    .line 508
    :cond_4
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@b6
    const/4 v5, -0x1

    #@b7
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@ba
    move-result v3

    #@bb
    .line 509
    .local v3, "userId":I
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;

    #@bd
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@bf
    invoke-direct {v4, v5, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;)V

    #@c2
    new-array v5, v11, [Ljava/lang/Integer;

    #@c4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v6

    #@c8
    aput-object v6, v5, v10

    #@ca
    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@cd
    .line 511
    .end local v3    # "userId":I
    :cond_5
    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    #@d0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v4

    #@d4
    if-eqz v4, :cond_8

    #@d6
    .line 512
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@d8
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@db
    .line 468
    :cond_6
    :goto_1
    return-void

    #@dc
    .line 501
    :cond_7
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@de
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    #@e1
    move-result v4

    #@e2
    if-nez v4, :cond_3

    #@e4
    .line 502
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@e6
    invoke-static {v4, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap20(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    #@e9
    .line 503
    const-string/jumbo v4, "DevicePolicyManagerService"

    #@ec
    const-string/jumbo v5, "Fix backup for device that is not in Device Owner mode."

    #@ef
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    goto :goto_0

    #@f3
    .line 513
    :cond_8
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    #@f6
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f9
    move-result v4

    #@fa
    if-eqz v4, :cond_9

    #@fc
    .line 514
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@fe
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@101
    .line 515
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@103
    invoke-virtual {v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    #@106
    goto :goto_1

    #@107
    .line 516
    :cond_9
    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    #@10a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10d
    move-result v4

    #@10e
    if-eqz v4, :cond_a

    #@110
    .line 517
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@112
    monitor-enter v5

    #@113
    .line 519
    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@115
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@117
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    #@11a
    .line 520
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@11c
    invoke-static {v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap17(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11f
    monitor-exit v5

    #@120
    .line 522
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@122
    invoke-static {v4, v9, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap7(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@125
    goto :goto_1

    #@126
    .line 517
    :catchall_0
    move-exception v4

    #@127
    monitor-exit v5

    #@128
    throw v4

    #@129
    .line 523
    :cond_a
    const-string/jumbo v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@12c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12f
    move-result v4

    #@130
    if-eqz v4, :cond_b

    #@132
    .line 524
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@134
    invoke-static {v4, v9, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap7(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@137
    goto :goto_1

    #@138
    .line 525
    :cond_b
    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    #@13b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13e
    move-result v4

    #@13f
    if-nez v4, :cond_c

    #@141
    .line 526
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    #@144
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@147
    move-result v4

    #@148
    if-eqz v4, :cond_d

    #@14a
    .line 527
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    #@14d
    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@150
    move-result v4

    #@151
    .line 525
    if-eqz v4, :cond_d

    #@153
    .line 528
    :cond_c
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@155
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@158
    move-result-object v5

    #@159
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@15c
    move-result-object v5

    #@15d
    invoke-static {v4, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap7(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@160
    goto/16 :goto_1

    #@162
    .line 529
    :cond_d
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    #@165
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@168
    move-result v4

    #@169
    if-eqz v4, :cond_e

    #@16b
    .line 530
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    #@16e
    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@171
    move-result v4

    #@172
    if-eqz v4, :cond_f

    #@174
    .line 532
    :cond_e
    const-string/jumbo v4, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@177
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17a
    move-result v4

    #@17b
    if-eqz v4, :cond_6

    #@17d
    .line 533
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@17f
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap5(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@182
    goto/16 :goto_1

    #@184
    .line 531
    :cond_f
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@186
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@189
    move-result-object v5

    #@18a
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@18d
    move-result-object v5

    #@18e
    invoke-static {v4, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap7(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@191
    goto/16 :goto_1
.end method
