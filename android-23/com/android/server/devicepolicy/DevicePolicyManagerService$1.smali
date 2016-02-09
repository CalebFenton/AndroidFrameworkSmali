.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
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
    .line 352
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 356
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@9
    .line 357
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->getSendingUserId()I

    #@c
    move-result v3

    #@d
    .line 356
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@10
    move-result v1

    #@11
    .line 358
    .local v1, "userHandle":I
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    #@14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 359
    const-string/jumbo v2, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 358
    if-eqz v2, :cond_1

    #@23
    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@25
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    #@27
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;

    #@29
    invoke-direct {v3, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V

    #@2c
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2f
    .line 369
    :cond_1
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-nez v2, :cond_2

    #@38
    .line 370
    const-string/jumbo v2, "android.security.STORAGE_CHANGED"

    #@3b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    .line 369
    if-eqz v2, :cond_3

    #@41
    .line 371
    :cond_2
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;

    #@43
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@45
    invoke-direct {v2, v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;)V

    #@48
    const/4 v3, 0x1

    #@49
    new-array v3, v3, [Landroid/content/Intent;

    #@4b
    aput-object p2, v3, v4

    #@4d
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@50
    .line 373
    :cond_3
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@53
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_5

    #@59
    .line 374
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@5b
    invoke-virtual {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    #@5e
    .line 354
    :cond_4
    :goto_0
    return-void

    #@5f
    .line 375
    :cond_5
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    #@62
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v2

    #@66
    if-nez v2, :cond_6

    #@68
    .line 376
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@6b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v2

    #@6f
    .line 375
    if-eqz v2, :cond_8

    #@71
    .line 378
    :cond_6
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    #@74
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_7

    #@7a
    .line 380
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@7c
    monitor-enter v3

    #@7d
    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@7f
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    #@81
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    monitor-exit v3

    #@85
    .line 384
    :cond_7
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@87
    invoke-static {v2, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap4(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@8a
    goto :goto_0

    #@8b
    .line 380
    :catchall_0
    move-exception v2

    #@8c
    monitor-exit v3

    #@8d
    throw v2

    #@8e
    .line 385
    :cond_8
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    #@91
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v2

    #@95
    if-nez v2, :cond_9

    #@97
    .line 386
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    #@9a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v2

    #@9e
    if-eqz v2, :cond_a

    #@a0
    .line 387
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    #@a3
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@a6
    move-result v2

    #@a7
    .line 385
    if-eqz v2, :cond_a

    #@a9
    .line 388
    :cond_9
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@ab
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap4(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@b6
    goto :goto_0

    #@b7
    .line 389
    :cond_a
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    #@ba
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v2

    #@be
    if-eqz v2, :cond_b

    #@c0
    .line 390
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    #@c3
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@c6
    move-result v2

    #@c7
    if-eqz v2, :cond_c

    #@c9
    .line 392
    :cond_b
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@cc
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result v2

    #@d0
    if-eqz v2, :cond_4

    #@d2
    .line 393
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@d4
    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap3(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@d7
    goto :goto_0

    #@d8
    .line 391
    :cond_c
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@da
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@dd
    move-result-object v3

    #@de
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@e1
    move-result-object v3

    #@e2
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap4(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@e5
    goto/16 :goto_0
.end method
