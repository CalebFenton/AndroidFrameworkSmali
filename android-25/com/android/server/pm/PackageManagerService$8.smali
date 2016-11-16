.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$flags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/IIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$userIds"    # [I
    .param p3, "val$action"    # Ljava/lang/String;
    .param p4, "val$pkg"    # Ljava/lang/String;
    .param p5, "val$extras"    # Landroid/os/Bundle;
    .param p6, "val$targetPkg"    # Ljava/lang/String;
    .param p7, "val$flags"    # I
    .param p8, "val$finishedReceiver"    # Landroid/content/IIntentReceiver;

    #@0
    .prologue
    .line 11403
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    #@4
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    #@8
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    #@a
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    #@c
    iput p7, p0, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    #@e
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    #@10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    #@0
    .prologue
    .line 11407
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v2

    #@4
    .line 11408
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v2, :cond_0

    #@6
    return-void

    #@7
    .line 11410
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    #@b
    if-nez v3, :cond_4

    #@d
    .line 11411
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    #@10
    move-result-object v17

    #@11
    .line 11415
    .local v17, "resolvedUserIds":[I
    :goto_0
    const/4 v3, 0x0

    #@12
    move-object/from16 v0, v17

    #@14
    array-length v0, v0

    #@15
    move/from16 v20, v0

    #@17
    move/from16 v19, v3

    #@19
    :goto_1
    move/from16 v0, v19

    #@1b
    move/from16 v1, v20

    #@1d
    if-ge v0, v1, :cond_7

    #@1f
    aget v15, v17, v19

    #@21
    .line 11416
    .local v15, "id":I
    new-instance v4, Landroid/content/Intent;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    #@27
    .line 11417
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    #@2b
    if-eqz v3, :cond_5

    #@2d
    const-string/jumbo v3, "package"

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    #@34
    const/4 v7, 0x0

    #@35
    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@38
    move-result-object v3

    #@39
    .line 11416
    :goto_2
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@3c
    .line 11418
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    #@40
    if-eqz v3, :cond_1

    #@42
    .line 11419
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    #@46
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@49
    .line 11421
    :cond_1
    move-object/from16 v0, p0

    #@4b
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    #@4d
    if-eqz v3, :cond_2

    #@4f
    .line 11422
    move-object/from16 v0, p0

    #@51
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    #@53
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@56
    .line 11425
    :cond_2
    const-string/jumbo v3, "android.intent.extra.UID"

    #@59
    const/4 v5, -0x1

    #@5a
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@5d
    move-result v18

    #@5e
    .line 11426
    .local v18, "uid":I
    if-lez v18, :cond_3

    #@60
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    #@63
    move-result v3

    #@64
    if-eq v3, v15, :cond_3

    #@66
    .line 11427
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppId(I)I

    #@69
    move-result v3

    #@6a
    invoke-static {v15, v3}, Landroid/os/UserHandle;->getUid(II)I

    #@6d
    move-result v18

    #@6e
    .line 11428
    const-string/jumbo v3, "android.intent.extra.UID"

    #@71
    move/from16 v0, v18

    #@73
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@76
    .line 11430
    :cond_3
    const-string/jumbo v3, "android.intent.extra.user_handle"

    #@79
    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@7c
    .line 11431
    move-object/from16 v0, p0

    #@7e
    iget v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    #@80
    const/high16 v5, 0x4000000

    #@82
    or-int/2addr v3, v5

    #@83
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@86
    .line 11439
    move-object/from16 v0, p0

    #@88
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    #@8a
    .line 11441
    move-object/from16 v0, p0

    #@8c
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    #@8e
    if-eqz v3, :cond_6

    #@90
    const/4 v13, 0x1

    #@91
    .line 11439
    :goto_3
    const/4 v3, 0x0

    #@92
    const/4 v5, 0x0

    #@93
    .line 11440
    const/4 v7, 0x0

    #@94
    const/4 v8, 0x0

    #@95
    const/4 v9, 0x0

    #@96
    const/4 v10, 0x0

    #@97
    const/4 v11, -0x1

    #@98
    .line 11441
    const/4 v12, 0x0

    #@99
    const/4 v14, 0x0

    #@9a
    .line 11439
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    #@9d
    .line 11415
    add-int/lit8 v3, v19, 0x1

    #@9f
    move/from16 v19, v3

    #@a1
    goto/16 :goto_1

    #@a3
    .line 11413
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v17    # "resolvedUserIds":[I
    .end local v18    # "uid":I
    :cond_4
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    #@a7
    move-object/from16 v17, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a9
    .restart local v17    # "resolvedUserIds":[I
    goto/16 :goto_0

    #@ab
    .line 11417
    .restart local v15    # "id":I
    :cond_5
    const/4 v3, 0x0

    #@ac
    goto :goto_2

    #@ad
    .line 11441
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v18    # "uid":I
    :cond_6
    const/4 v13, 0x0

    #@ae
    goto :goto_3

    #@af
    .line 11443
    .end local v2    # "am":Landroid/app/IActivityManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v17    # "resolvedUserIds":[I
    .end local v18    # "uid":I
    :catch_0
    move-exception v16

    #@b0
    .line 11405
    :cond_7
    return-void
.end method
