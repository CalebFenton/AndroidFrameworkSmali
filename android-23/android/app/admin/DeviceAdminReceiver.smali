.class public Landroid/app/admin/DeviceAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminReceiver.java"


# static fields
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

.field public static final ACTION_READY_FOR_USER_INITIALIZATION:Ljava/lang/String; = "android.app.action.READY_FOR_USER_INITIALIZATION"

.field public static final DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

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
    .line 65
    const-string/jumbo v0, "DevicePolicy"

    #@3
    sput-object v0, Landroid/app/admin/DeviceAdminReceiver;->TAG:Ljava/lang/String;

    #@5
    .line 66
    const/4 v0, 0x0

    #@6
    sput-boolean v0, Landroid/app/admin/DeviceAdminReceiver;->localLOGV:Z

    #@8
    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
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
    .line 293
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 294
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    #@6
    return-object v0

    #@7
    .line 297
    :cond_0
    const-string/jumbo v0, "device_policy"

    #@a
    .line 296
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@10
    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    #@12
    .line 298
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    #@14
    return-object v0
.end method

.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 308
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    #@6
    return-object v0

    #@7
    .line 310
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    #@9
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminReceiver;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@10
    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    #@12
    .line 311
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    #@14
    return-object v0
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
    .line 493
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
    .line 342
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
    .line 353
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 327
    return-void
.end method

.method public onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 466
    return-void
.end method

.method public onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 475
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 365
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 408
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 376
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 387
    return-void
.end method

.method public onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 433
    return-void
.end method

.method public onReadyForUserInitialization(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 456
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v10

    #@4
    .line 521
    .local v10, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.app.action.ACTION_PASSWORD_CHANGED"

    #@7
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 522
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    #@10
    .line 518
    :cond_0
    :goto_0
    return-void

    #@11
    .line 523
    :cond_1
    const-string/jumbo v4, "android.app.action.ACTION_PASSWORD_FAILED"

    #@14
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 524
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    #@1d
    goto :goto_0

    #@1e
    .line 525
    :cond_2
    const-string/jumbo v4, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    #@21
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 526
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    #@2a
    goto :goto_0

    #@2b
    .line 527
    :cond_3
    const-string/jumbo v4, "android.app.action.DEVICE_ADMIN_ENABLED"

    #@2e
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_4

    #@34
    .line 528
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    #@37
    goto :goto_0

    #@38
    .line 529
    :cond_4
    const-string/jumbo v4, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    #@3b
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_5

    #@41
    .line 530
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    #@44
    move-result-object v16

    #@45
    .line 531
    .local v16, "res":Ljava/lang/CharSequence;
    if-eqz v16, :cond_0

    #@47
    .line 532
    const/4 v4, 0x1

    #@48
    move-object/from16 v0, p0

    #@4a
    invoke-virtual {v0, v4}, Landroid/app/admin/DeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    #@4d
    move-result-object v12

    #@4e
    .line 533
    .local v12, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "android.app.extra.DISABLE_WARNING"

    #@51
    move-object/from16 v0, v16

    #@53
    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@56
    goto :goto_0

    #@57
    .line 535
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v16    # "res":Ljava/lang/CharSequence;
    :cond_5
    const-string/jumbo v4, "android.app.action.DEVICE_ADMIN_DISABLED"

    #@5a
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_6

    #@60
    .line 536
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    #@63
    goto :goto_0

    #@64
    .line 537
    :cond_6
    const-string/jumbo v4, "android.app.action.ACTION_PASSWORD_EXPIRING"

    #@67
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v4

    #@6b
    if-eqz v4, :cond_7

    #@6d
    .line 538
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V

    #@70
    goto :goto_0

    #@71
    .line 539
    :cond_7
    const-string/jumbo v4, "android.app.action.PROFILE_PROVISIONING_COMPLETE"

    #@74
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_8

    #@7a
    .line 540
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V

    #@7d
    goto :goto_0

    #@7e
    .line 541
    :cond_8
    const-string/jumbo v4, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    #@81
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_9

    #@87
    .line 542
    const-string/jumbo v4, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    #@8a
    const/4 v5, -0x1

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@90
    move-result v7

    #@91
    .line 543
    .local v7, "uid":I
    const-string/jumbo v4, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    #@94
    move-object/from16 v0, p2

    #@96
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@99
    move-result-object v8

    #@9a
    check-cast v8, Landroid/net/Uri;

    #@9c
    .line 544
    .local v8, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    .local v9, "alias":Ljava/lang/String;
    move-object/from16 v4, p0

    #@a7
    move-object/from16 v5, p1

    #@a9
    move-object/from16 v6, p2

    #@ab
    .line 545
    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/DeviceAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    #@ae
    move-result-object v11

    #@af
    .line 546
    .local v11, "chosenAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b1
    invoke-virtual {v0, v11}, Landroid/app/admin/DeviceAdminReceiver;->setResultData(Ljava/lang/String;)V

    #@b4
    goto/16 :goto_0

    #@b6
    .line 547
    .end local v7    # "uid":I
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "alias":Ljava/lang/String;
    .end local v11    # "chosenAlias":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "android.app.action.LOCK_TASK_ENTERING"

    #@b9
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v4

    #@bd
    if-eqz v4, :cond_a

    #@bf
    .line 548
    const-string/jumbo v4, "android.app.extra.LOCK_TASK_PACKAGE"

    #@c2
    move-object/from16 v0, p2

    #@c4
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@c7
    move-result-object v13

    #@c8
    .line 549
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ca
    move-object/from16 v1, p1

    #@cc
    move-object/from16 v2, p2

    #@ce
    invoke-virtual {v0, v1, v2, v13}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 550
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "android.app.action.LOCK_TASK_EXITING"

    #@d6
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d9
    move-result v4

    #@da
    if-eqz v4, :cond_b

    #@dc
    .line 551
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V

    #@df
    goto/16 :goto_0

    #@e1
    .line 552
    :cond_b
    const-string/jumbo v4, "android.app.action.READY_FOR_USER_INITIALIZATION"

    #@e4
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e7
    move-result v4

    #@e8
    if-eqz v4, :cond_c

    #@ea
    .line 553
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onReadyForUserInitialization(Landroid/content/Context;Landroid/content/Intent;)V

    #@ed
    goto/16 :goto_0

    #@ef
    .line 554
    :cond_c
    const-string/jumbo v4, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    #@f2
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f5
    move-result v4

    #@f6
    if-eqz v4, :cond_0

    #@f8
    .line 555
    const-string/jumbo v4, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    #@fb
    const-wide/16 v18, -0x1

    #@fd
    move-object/from16 v0, p2

    #@ff
    move-wide/from16 v1, v18

    #@101
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    #@104
    move-result-wide v14

    #@105
    .line 556
    .local v14, "receivedTime":J
    move-object/from16 v0, p0

    #@107
    move-object/from16 v1, p1

    #@109
    move-object/from16 v2, p2

    #@10b
    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/app/admin/DeviceAdminReceiver;->onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V

    #@10e
    goto/16 :goto_0
.end method

.method public onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receivedTime"    # J

    #@0
    .prologue
    .line 509
    return-void
.end method
