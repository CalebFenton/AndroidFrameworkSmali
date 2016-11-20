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
    .line 455
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 458
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 459
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@9
    .line 460
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->getSendingUserId()I

    #@c
    move-result v5

    #@d
    .line 459
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@10
    move-result v2

    #@11
    .line 462
    .local v2, "userHandle":I
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    #@14
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 463
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@1c
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    #@1e
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    #@21
    move-result v4

    #@22
    if-ne v2, v4, :cond_0

    #@24
    .line 464
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@26
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap3(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    if-eqz v4, :cond_0

    #@2c
    .line 465
    new-instance v1, Landroid/content/IntentFilter;

    #@2e
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@31
    .line 466
    .local v1, "filterConsent":Landroid/content/IntentFilter;
    const-string/jumbo v4, "com.android.server.action.BUGREPORT_SHARING_DECLINED"

    #@34
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@37
    .line 467
    const-string/jumbo v4, "com.android.server.action.BUGREPORT_SHARING_ACCEPTED"

    #@3a
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3d
    .line 468
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@3f
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@41
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@43
    invoke-static {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-get0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/content/BroadcastReceiver;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@4a
    .line 469
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4c
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@4e
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    #@51
    move-result-object v4

    #@52
    const-string/jumbo v5, "DevicePolicyManagerService"

    #@55
    .line 471
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@57
    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@59
    .line 472
    const/4 v7, 0x3

    #@5a
    .line 471
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/RemoteBugreportUtils;->buildNotification(Landroid/content/Context;I)Landroid/app/Notification;

    #@5d
    move-result-object v6

    #@5e
    .line 473
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@60
    .line 470
    const v8, 0x28700e57

    #@63
    .line 469
    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@66
    .line 475
    .end local v1    # "filterConsent":Landroid/content/IntentFilter;
    :cond_0
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    #@69
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v4

    #@6d
    if-nez v4, :cond_1

    #@6f
    .line 476
    const-string/jumbo v4, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    #@72
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v4

    #@76
    .line 475
    if-eqz v4, :cond_2

    #@78
    .line 481
    :cond_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@7a
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@7c
    new-instance v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;

    #@7e
    invoke-direct {v5, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;I)V

    #@81
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@84
    .line 488
    :cond_2
    const-string/jumbo v4, "android.intent.action.USER_UNLOCKED"

    #@87
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v4

    #@8b
    if-nez v4, :cond_3

    #@8d
    .line 489
    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    #@90
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v4

    #@94
    .line 488
    if-nez v4, :cond_3

    #@96
    .line 490
    const-string/jumbo v4, "android.security.STORAGE_CHANGED"

    #@99
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v4

    #@9d
    .line 488
    if-eqz v4, :cond_4

    #@9f
    .line 491
    :cond_3
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@a2
    const/4 v5, -0x1

    #@a3
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@a6
    move-result v3

    #@a7
    .line 492
    .local v3, "userId":I
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;

    #@a9
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@ab
    invoke-direct {v4, v5, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;)V

    #@ae
    const/4 v5, 0x1

    #@af
    new-array v5, v5, [Ljava/lang/Integer;

    #@b1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v6

    #@b5
    aput-object v6, v5, v10

    #@b7
    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@ba
    .line 494
    .end local v3    # "userId":I
    :cond_4
    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    #@bd
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v4

    #@c1
    if-eqz v4, :cond_6

    #@c3
    .line 495
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@c5
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap5(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@c8
    .line 457
    :cond_5
    :goto_0
    return-void

    #@c9
    .line 496
    :cond_6
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    #@cc
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result v4

    #@d0
    if-eqz v4, :cond_7

    #@d2
    .line 497
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@d4
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap5(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@d7
    .line 498
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@d9
    invoke-virtual {v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    #@dc
    goto :goto_0

    #@dd
    .line 499
    :cond_7
    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    #@e0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v4

    #@e4
    if-eqz v4, :cond_8

    #@e6
    .line 500
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@e8
    monitor-enter v5

    #@e9
    .line 502
    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@eb
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@ed
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    #@f0
    .line 503
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@f2
    invoke-static {v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap16(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f5
    monitor-exit v5

    #@f6
    .line 505
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@f8
    invoke-static {v4, v9, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@fb
    goto :goto_0

    #@fc
    .line 500
    :catchall_0
    move-exception v4

    #@fd
    monitor-exit v5

    #@fe
    throw v4

    #@ff
    .line 506
    :cond_8
    const-string/jumbo v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@102
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@105
    move-result v4

    #@106
    if-eqz v4, :cond_9

    #@108
    .line 507
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@10a
    invoke-static {v4, v9, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@10d
    goto :goto_0

    #@10e
    .line 508
    :cond_9
    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    #@111
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@114
    move-result v4

    #@115
    if-nez v4, :cond_a

    #@117
    .line 509
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    #@11a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11d
    move-result v4

    #@11e
    if-eqz v4, :cond_b

    #@120
    .line 510
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    #@123
    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@126
    move-result v4

    #@127
    .line 508
    if-eqz v4, :cond_b

    #@129
    .line 511
    :cond_a
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@12b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@12e
    move-result-object v5

    #@12f
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@132
    move-result-object v5

    #@133
    invoke-static {v4, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@136
    goto :goto_0

    #@137
    .line 512
    :cond_b
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    #@13a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13d
    move-result v4

    #@13e
    if-eqz v4, :cond_c

    #@140
    .line 513
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    #@143
    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@146
    move-result v4

    #@147
    if-eqz v4, :cond_d

    #@149
    .line 515
    :cond_c
    const-string/jumbo v4, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@14c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14f
    move-result v4

    #@150
    if-eqz v4, :cond_5

    #@152
    .line 516
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@154
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap4(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@157
    goto/16 :goto_0

    #@159
    .line 514
    :cond_d
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@15b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@15e
    move-result-object v5

    #@15f
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@162
    move-result-object v5

    #@163
    invoke-static {v4, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@166
    goto/16 :goto_0
.end method
