.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v12

    #@4
    .line 679
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_0

    #@6
    .line 680
    return-void

    #@7
    .line 683
    :cond_0
    const/16 v22, 0x0

    #@9
    .line 684
    .local v22, "queryRestart":Z
    const/16 v20, 0x0

    #@b
    .line 685
    .local v20, "queryRemove":Z
    const/16 v17, 0x0

    #@d
    .line 686
    .local v17, "packageChanged":Z
    const/4 v13, 0x1

    #@e
    .line 688
    .local v13, "cancelNotifications":Z
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    #@11
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 689
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    #@1a
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v20

    #@1e
    .line 688
    .local v20, "queryRemove":Z
    if-nez v20, :cond_1

    #@20
    .line 690
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    #@23
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 688
    if-nez v2, :cond_1

    #@29
    .line 691
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    #@2c
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v17

    #@30
    .line 688
    .local v17, "packageChanged":Z
    if-nez v17, :cond_1

    #@32
    .line 692
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@35
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v22

    #@39
    .line 688
    .local v22, "queryRestart":Z
    if-nez v22, :cond_1

    #@3b
    .line 693
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@3e
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v2

    #@42
    .line 688
    if-eqz v2, :cond_e

    #@44
    .line 694
    .end local v17    # "packageChanged":Z
    .end local v20    # "queryRemove":Z
    .end local v22    # "queryRestart":Z
    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@47
    .line 695
    const/4 v3, -0x1

    #@48
    .line 694
    move-object/from16 v0, p2

    #@4a
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@4d
    move-result v9

    #@4e
    .line 696
    .local v9, "changeUserId":I
    const/16 v18, 0x0

    #@50
    .line 697
    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v20, :cond_4

    #@52
    .line 698
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    #@55
    const/4 v3, 0x0

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@5b
    move-result v21

    #@5c
    .line 699
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@5e
    if-eqz v2, :cond_2

    #@60
    const-string/jumbo v2, "NotificationService"

    #@63
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v4, "action="

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    const-string/jumbo v4, " queryReplace="

    #@76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    move/from16 v0, v21

    #@7c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 700
    :cond_2
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@8a
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v2

    #@8e
    if-eqz v2, :cond_5

    #@90
    .line 701
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    #@93
    move-object/from16 v0, p2

    #@95
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@98
    move-result-object v18

    #@99
    .line 737
    .local v18, "pkgList":[Ljava/lang/String;
    :goto_1
    if-eqz v18, :cond_d

    #@9b
    move-object/from16 v0, v18

    #@9d
    array-length v2, v0

    #@9e
    if-lez v2, :cond_d

    #@a0
    .line 738
    const/4 v2, 0x0

    #@a1
    move-object/from16 v0, v18

    #@a3
    array-length v0, v0

    #@a4
    move/from16 v25, v0

    #@a6
    move/from16 v24, v2

    #@a8
    :goto_2
    move/from16 v0, v24

    #@aa
    move/from16 v1, v25

    #@ac
    if-ge v0, v1, :cond_d

    #@ae
    aget-object v5, v18, v24

    #@b0
    .line 739
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v13, :cond_3

    #@b2
    .line 740
    move-object/from16 v0, p0

    #@b4
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b6
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    #@b9
    move-result v3

    #@ba
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()I

    #@bd
    move-result v4

    #@be
    if-eqz v22, :cond_c

    #@c0
    const/4 v8, 0x0

    #@c1
    :goto_3
    const/4 v6, 0x0

    #@c2
    const/4 v7, 0x0

    #@c3
    .line 741
    const/4 v10, 0x5

    #@c4
    const/4 v11, 0x0

    #@c5
    .line 740
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@c8
    .line 738
    :cond_3
    add-int/lit8 v2, v24, 0x1

    #@ca
    move/from16 v24, v2

    #@cc
    goto :goto_2

    #@cd
    .line 697
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_4
    const/16 v21, 0x0

    #@cf
    .local v21, "queryReplace":Z
    goto :goto_0

    #@d0
    .line 702
    .end local v21    # "queryReplace":Z
    :cond_5
    if-eqz v22, :cond_6

    #@d2
    .line 703
    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    #@d5
    move-object/from16 v0, p2

    #@d7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@da
    move-result-object v18

    #@db
    .local v18, "pkgList":[Ljava/lang/String;
    goto :goto_1

    #@dc
    .line 705
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@df
    move-result-object v23

    #@e0
    .line 706
    .local v23, "uri":Landroid/net/Uri;
    if-nez v23, :cond_7

    #@e2
    .line 707
    return-void

    #@e3
    .line 709
    :cond_7
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    .line 710
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-nez v5, :cond_8

    #@e9
    .line 711
    return-void

    #@ea
    .line 713
    :cond_8
    if-eqz v17, :cond_a

    #@ec
    .line 716
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@ef
    move-result-object v19

    #@f0
    .line 718
    .local v19, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    #@f1
    if-eq v9, v2, :cond_b

    #@f3
    move v2, v9

    #@f4
    .line 717
    :goto_4
    move-object/from16 v0, v19

    #@f6
    invoke-interface {v0, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@f9
    move-result v16

    #@fa
    .line 720
    .local v16, "enabled":I
    const/4 v2, 0x1

    #@fb
    move/from16 v0, v16

    #@fd
    if-eq v0, v2, :cond_9

    #@ff
    .line 721
    if-nez v16, :cond_a

    #@101
    .line 722
    :cond_9
    const/4 v13, 0x0

    #@102
    .line 734
    .end local v16    # "enabled":I
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_a
    :goto_5
    const/4 v2, 0x1

    #@103
    new-array v0, v2, [Ljava/lang/String;

    #@105
    move-object/from16 v18, v0

    #@107
    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    #@108
    aput-object v5, v18, v2

    #@10a
    .local v18, "pkgList":[Ljava/lang/String;
    goto :goto_1

    #@10b
    .line 719
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_b
    const/4 v2, 0x0

    #@10c
    goto :goto_4

    #@10d
    .line 724
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v15

    #@10e
    .line 727
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@110
    if-eqz v2, :cond_a

    #@112
    .line 728
    const-string/jumbo v2, "NotificationService"

    #@115
    const-string/jumbo v3, "Exception trying to look up app enabled setting"

    #@118
    invoke-static {v2, v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11b
    goto :goto_5

    #@11c
    .line 740
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v23    # "uri":Landroid/net/Uri;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_c
    const/4 v8, 0x1

    #@11d
    goto :goto_3

    #@11e
    .line 745
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    #@120
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@122
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@125
    move-result-object v2

    #@126
    move/from16 v0, v21

    #@128
    move-object/from16 v1, v18

    #@12a
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@12d
    .line 746
    move-object/from16 v0, p0

    #@12f
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@131
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@134
    move-result-object v2

    #@135
    move/from16 v0, v21

    #@137
    move-object/from16 v1, v18

    #@139
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@13c
    .line 747
    move-object/from16 v0, p0

    #@13e
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@140
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@143
    move-result-object v2

    #@144
    move/from16 v0, v21

    #@146
    move-object/from16 v1, v18

    #@148
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@14b
    .line 677
    .end local v9    # "changeUserId":I
    .end local v18    # "pkgList":[Ljava/lang/String;
    :cond_e
    return-void

    #@14c
    .line 730
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v9    # "changeUserId":I
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v23    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v14

    #@14d
    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method
