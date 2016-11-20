.class public Landroid/app/admin/DeviceAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminReceiver.java"


# static fields
.field public static final ACTION_BUGREPORT_FAILED:Ljava/lang/String; = "android.app.action.BUGREPORT_FAILED"

.field public static final ACTION_BUGREPORT_SHARE:Ljava/lang/String; = "android.app.action.BUGREPORT_SHARE"

.field public static final ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "android.app.action.BUGREPORT_SHARING_DECLINED"

.field public static final ACTION_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final ACTION_DEVICE_ADMIN_DISABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLED"

.field public static final ACTION_DEVICE_ADMIN_DISABLE_REQUESTED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

.field public static final ACTION_DEVICE_ADMIN_ENABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_ENABLED"

.field public static final ACTION_LOCK_TASK_ENTERING:Ljava/lang/String; = "android.app.action.LOCK_TASK_ENTERING"

.field public static final ACTION_LOCK_TASK_EXITING:Ljava/lang/String; = "android.app.action.LOCK_TASK_EXITING"

.field public static final ACTION_NOTIFY_PENDING_SYSTEM_UPDATE:Ljava/lang/String; = "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

.field public static final ACTION_PASSWORD_CHANGED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_CHANGED"

.field public static final ACTION_PASSWORD_EXPIRING:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_EXPIRING"

.field public static final ACTION_PASSWORD_FAILED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_FAILED"

.field public static final ACTION_PASSWORD_SUCCEEDED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_SUCCEEDED"

.field public static final ACTION_PROFILE_PROVISIONING_COMPLETE:Ljava/lang/String; = "android.app.action.PROFILE_PROVISIONING_COMPLETE"

.field public static final ACTION_SECURITY_LOGS_AVAILABLE:Ljava/lang/String; = "android.app.action.SECURITY_LOGS_AVAILABLE"

.field public static final BUGREPORT_FAILURE_FAILED_COMPLETING:I = 0x0

.field public static final BUGREPORT_FAILURE_FILE_NO_LONGER_AVAILABLE:I = 0x1

.field public static final DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

.field public static final EXTRA_BUGREPORT_FAILURE_REASON:Ljava/lang/String; = "android.app.extra.BUGREPORT_FAILURE_REASON"

.field public static final EXTRA_BUGREPORT_HASH:Ljava/lang/String; = "android.app.extra.BUGREPORT_HASH"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_RESPONSE:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_SENDER_UID:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_URI:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

.field public static final EXTRA_DISABLE_WARNING:Ljava/lang/String; = "android.app.extra.DISABLE_WARNING"

.field public static final EXTRA_LOCK_TASK_PACKAGE:Ljava/lang/String; = "android.app.extra.LOCK_TASK_PACKAGE"

.field public static final EXTRA_SYSTEM_UPDATE_RECEIVED_TIME:Ljava/lang/String; = "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private mManager:Landroid/app/admin/DevicePolicyManager;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "DevicePolicy"

    #@3
    sput-object v0, Landroid/app/admin/DeviceAdminReceiver;->TAG:Ljava/lang/String;

    #@5
    .line 70
    const/4 v0, 0x0

    #@6
    sput-boolean v0, Landroid/app/admin/DeviceAdminReceiver;->localLOGV:Z

    #@8
    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 375
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    #@6
    return-object v0

    #@7
    .line 378
    :cond_0
    const-string/jumbo v0, "device_policy"

    #@a
    .line 377
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@10
    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    #@12
    .line 379
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    #@14
    return-object v0
.end method

.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 389
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    #@6
    return-object v0

    #@7
    .line 391
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    #@9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@10
    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    #@12
    .line 392
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    #@14
    return-object v0
.end method

.method public onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "failureCode"    # I

    #@0
    .prologue
    .line 622
    return-void
.end method

.method public onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bugreportHash"    # Ljava/lang/String;

    #@0
    .prologue
    .line 606
    return-void
.end method

.method public onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 591
    return-void
.end method

.method public onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 423
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 434
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 408
    return-void
.end method

.method public onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 536
    return-void
.end method

.method public onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 545
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 445
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 488
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 456
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 467
    return-void
.end method

.method public onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 513
    return-void
.end method

.method public onReadyForUserInitialization(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 526
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v12

    #@4
    .line 646
    .local v12, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.app.action.ACTION_PASSWORD_CHANGED"

    #@7
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_1

    #@d
    .line 647
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    #@10
    .line 643
    :cond_0
    :goto_0
    return-void

    #@11
    .line 648
    :cond_1
    const-string/jumbo v6, "android.app.action.ACTION_PASSWORD_FAILED"

    #@14
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_2

    #@1a
    .line 649
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    #@1d
    goto :goto_0

    #@1e
    .line 650
    :cond_2
    const-string/jumbo v6, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    #@21
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_3

    #@27
    .line 651
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    #@2a
    goto :goto_0

    #@2b
    .line 652
    :cond_3
    const-string/jumbo v6, "android.app.action.DEVICE_ADMIN_ENABLED"

    #@2e
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_4

    #@34
    .line 653
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    #@37
    goto :goto_0

    #@38
    .line 654
    :cond_4
    const-string/jumbo v6, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    #@3b
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_5

    #@41
    .line 655
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    #@44
    move-result-object v20

    #@45
    .line 656
    .local v20, "res":Ljava/lang/CharSequence;
    if-eqz v20, :cond_0

    #@47
    .line 657
    const/4 v6, 0x1

    #@48
    move-object/from16 v0, p0

    #@4a
    invoke-virtual {v0, v6}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    #@4d
    move-result-object v15

    #@4e
    .line 658
    .local v15, "extras":Landroid/os/Bundle;
    const-string/jumbo v6, "android.app.extra.DISABLE_WARNING"

    #@51
    move-object/from16 v0, v20

    #@53
    invoke-virtual {v15, v6, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@56
    goto :goto_0

    #@57
    .line 660
    .end local v15    # "extras":Landroid/os/Bundle;
    .end local v20    # "res":Ljava/lang/CharSequence;
    :cond_5
    const-string/jumbo v6, "android.app.action.DEVICE_ADMIN_DISABLED"

    #@5a
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_6

    #@60
    .line 661
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    #@63
    goto :goto_0

    #@64
    .line 662
    :cond_6
    const-string/jumbo v6, "android.app.action.ACTION_PASSWORD_EXPIRING"

    #@67
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v6

    #@6b
    if-eqz v6, :cond_7

    #@6d
    .line 663
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V

    #@70
    goto :goto_0

    #@71
    .line 664
    :cond_7
    const-string/jumbo v6, "android.app.action.PROFILE_PROVISIONING_COMPLETE"

    #@74
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v6

    #@78
    if-eqz v6, :cond_8

    #@7a
    .line 665
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V

    #@7d
    goto :goto_0

    #@7e
    .line 666
    :cond_8
    const-string/jumbo v6, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    #@81
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_9

    #@87
    .line 667
    const-string/jumbo v6, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    #@8a
    const/4 v7, -0x1

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@90
    move-result v9

    #@91
    .line 668
    .local v9, "uid":I
    const-string/jumbo v6, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    #@94
    move-object/from16 v0, p2

    #@96
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@99
    move-result-object v10

    #@9a
    check-cast v10, Landroid/net/Uri;

    #@9c
    .line 669
    .local v10, "uri":Landroid/net/Uri;
    const-string/jumbo v6, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@a4
    move-result-object v11

    #@a5
    .local v11, "alias":Ljava/lang/String;
    move-object/from16 v6, p0

    #@a7
    move-object/from16 v7, p1

    #@a9
    move-object/from16 v8, p2

    #@ab
    .line 670
    invoke-virtual/range {v6 .. v11}, Landroid/app/admin/DeviceAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    #@ae
    move-result-object v14

    #@af
    .line 671
    .local v14, "chosenAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b1
    invoke-virtual {v0, v14}, Landroid/content/BroadcastReceiver;->setResultData(Ljava/lang/String;)V

    #@b4
    goto/16 :goto_0

    #@b6
    .line 672
    .end local v9    # "uid":I
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "alias":Ljava/lang/String;
    .end local v14    # "chosenAlias":Ljava/lang/String;
    :cond_9
    const-string/jumbo v6, "android.app.action.LOCK_TASK_ENTERING"

    #@b9
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v6

    #@bd
    if-eqz v6, :cond_a

    #@bf
    .line 673
    const-string/jumbo v6, "android.app.extra.LOCK_TASK_PACKAGE"

    #@c2
    move-object/from16 v0, p2

    #@c4
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@c7
    move-result-object v17

    #@c8
    .line 674
    .local v17, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ca
    move-object/from16 v1, p1

    #@cc
    move-object/from16 v2, p2

    #@ce
    move-object/from16 v3, v17

    #@d0
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    #@d3
    goto/16 :goto_0

    #@d5
    .line 675
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_a
    const-string/jumbo v6, "android.app.action.LOCK_TASK_EXITING"

    #@d8
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@db
    move-result v6

    #@dc
    if-eqz v6, :cond_b

    #@de
    .line 676
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 677
    :cond_b
    const-string/jumbo v6, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    #@e6
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v6

    #@ea
    if-eqz v6, :cond_c

    #@ec
    .line 678
    const-string/jumbo v6, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    #@ef
    const-wide/16 v22, -0x1

    #@f1
    move-object/from16 v0, p2

    #@f3
    move-wide/from16 v1, v22

    #@f5
    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    #@f8
    move-result-wide v18

    #@f9
    .line 679
    .local v18, "receivedTime":J
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, p1

    #@fd
    move-object/from16 v2, p2

    #@ff
    move-wide/from16 v3, v18

    #@101
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/admin/DeviceAdminReceiver;->onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V

    #@104
    goto/16 :goto_0

    #@106
    .line 680
    .end local v18    # "receivedTime":J
    :cond_c
    const-string/jumbo v6, "android.app.action.BUGREPORT_SHARING_DECLINED"

    #@109
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v6

    #@10d
    if-eqz v6, :cond_d

    #@10f
    .line 681
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V

    #@112
    goto/16 :goto_0

    #@114
    .line 682
    :cond_d
    const-string/jumbo v6, "android.app.action.BUGREPORT_SHARE"

    #@117
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11a
    move-result v6

    #@11b
    if-eqz v6, :cond_e

    #@11d
    .line 683
    const-string/jumbo v6, "android.app.extra.BUGREPORT_HASH"

    #@120
    move-object/from16 v0, p2

    #@122
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@125
    move-result-object v13

    #@126
    .line 684
    .local v13, "bugreportFileHash":Ljava/lang/String;
    move-object/from16 v0, p0

    #@128
    move-object/from16 v1, p1

    #@12a
    move-object/from16 v2, p2

    #@12c
    invoke-virtual {v0, v1, v2, v13}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    #@12f
    goto/16 :goto_0

    #@131
    .line 685
    .end local v13    # "bugreportFileHash":Ljava/lang/String;
    :cond_e
    const-string/jumbo v6, "android.app.action.BUGREPORT_FAILED"

    #@134
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@137
    move-result v6

    #@138
    if-eqz v6, :cond_f

    #@13a
    .line 686
    const-string/jumbo v6, "android.app.extra.BUGREPORT_FAILURE_REASON"

    #@13d
    .line 687
    const/4 v7, 0x0

    #@13e
    .line 686
    move-object/from16 v0, p2

    #@140
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@143
    move-result v16

    #@144
    .line 688
    .local v16, "failureCode":I
    move-object/from16 v0, p0

    #@146
    move-object/from16 v1, p1

    #@148
    move-object/from16 v2, p2

    #@14a
    move/from16 v3, v16

    #@14c
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V

    #@14f
    goto/16 :goto_0

    #@151
    .line 689
    .end local v16    # "failureCode":I
    :cond_f
    const-string/jumbo v6, "android.app.action.SECURITY_LOGS_AVAILABLE"

    #@154
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@157
    move-result v6

    #@158
    if-eqz v6, :cond_0

    #@15a
    .line 690
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    #@15d
    goto/16 :goto_0
.end method

.method public onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 634
    return-void
.end method

.method public onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receivedTime"    # J

    #@0
    .prologue
    .line 579
    return-void
.end method
