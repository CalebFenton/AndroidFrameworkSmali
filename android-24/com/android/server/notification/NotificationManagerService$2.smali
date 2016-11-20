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
    .line 674
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
    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v12

    #@4
    .line 678
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_0

    #@6
    .line 679
    return-void

    #@7
    .line 682
    :cond_0
    const/16 v22, 0x0

    #@9
    .line 683
    .local v22, "queryRestart":Z
    const/16 v20, 0x0

    #@b
    .line 684
    .local v20, "queryRemove":Z
    const/16 v17, 0x0

    #@d
    .line 685
    .local v17, "packageChanged":Z
    const/4 v13, 0x1

    #@e
    .line 686
    .local v13, "cancelNotifications":Z
    const/4 v10, 0x5

    #@f
    .line 688
    .local v10, "reason":I
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    #@12
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 689
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    #@1b
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v20

    #@1f
    .line 688
    .local v20, "queryRemove":Z
    if-nez v20, :cond_1

    #@21
    .line 690
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    #@24
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    .line 688
    if-nez v2, :cond_1

    #@2a
    .line 691
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    #@2d
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v17

    #@31
    .line 688
    .local v17, "packageChanged":Z
    if-nez v17, :cond_1

    #@33
    .line 692
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@36
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v22

    #@3a
    .line 688
    .local v22, "queryRestart":Z
    if-nez v22, :cond_1

    #@3c
    .line 693
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@3f
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    .line 688
    if-nez v2, :cond_1

    #@45
    .line 694
    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    #@48
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    .line 688
    if-eqz v2, :cond_f

    #@4e
    .line 695
    .end local v17    # "packageChanged":Z
    .end local v20    # "queryRemove":Z
    .end local v22    # "queryRestart":Z
    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@51
    .line 696
    const/4 v3, -0x1

    #@52
    .line 695
    move-object/from16 v0, p2

    #@54
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@57
    move-result v9

    #@58
    .line 697
    .local v9, "changeUserId":I
    const/16 v18, 0x0

    #@5a
    .line 698
    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v20, :cond_4

    #@5c
    .line 699
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    #@5f
    const/4 v3, 0x0

    #@60
    move-object/from16 v0, p2

    #@62
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@65
    move-result v21

    #@66
    .line 700
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@68
    if-eqz v2, :cond_2

    #@6a
    const-string/jumbo v2, "NotificationService"

    #@6d
    new-instance v3, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v4, "action="

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    const-string/jumbo v4, " queryReplace="

    #@80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    move/from16 v0, v21

    #@86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 701
    :cond_2
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@94
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v2

    #@98
    if-eqz v2, :cond_5

    #@9a
    .line 702
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@a2
    move-result-object v18

    #@a3
    .line 741
    .local v18, "pkgList":[Ljava/lang/String;
    :goto_1
    if-eqz v18, :cond_e

    #@a5
    move-object/from16 v0, v18

    #@a7
    array-length v2, v0

    #@a8
    if-lez v2, :cond_e

    #@aa
    .line 742
    const/4 v2, 0x0

    #@ab
    move-object/from16 v0, v18

    #@ad
    array-length v0, v0

    #@ae
    move/from16 v25, v0

    #@b0
    move/from16 v24, v2

    #@b2
    :goto_2
    move/from16 v0, v24

    #@b4
    move/from16 v1, v25

    #@b6
    if-ge v0, v1, :cond_e

    #@b8
    aget-object v5, v18, v24

    #@ba
    .line 743
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v13, :cond_3

    #@bc
    .line 744
    move-object/from16 v0, p0

    #@be
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c0
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    #@c3
    move-result v3

    #@c4
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()I

    #@c7
    move-result v4

    #@c8
    if-eqz v22, :cond_d

    #@ca
    const/4 v8, 0x0

    #@cb
    :goto_3
    const/4 v6, 0x0

    #@cc
    const/4 v7, 0x0

    #@cd
    .line 745
    const/4 v11, 0x0

    #@ce
    .line 744
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@d1
    .line 742
    :cond_3
    add-int/lit8 v2, v24, 0x1

    #@d3
    move/from16 v24, v2

    #@d5
    goto :goto_2

    #@d6
    .line 698
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_4
    const/16 v21, 0x0

    #@d8
    .local v21, "queryReplace":Z
    goto :goto_0

    #@d9
    .line 703
    .end local v21    # "queryReplace":Z
    :cond_5
    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    #@dc
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v2

    #@e0
    if-eqz v2, :cond_6

    #@e2
    .line 704
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    #@e5
    move-object/from16 v0, p2

    #@e7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@ea
    move-result-object v18

    #@eb
    .line 705
    .local v18, "pkgList":[Ljava/lang/String;
    const/16 v10, 0xe

    #@ed
    goto :goto_1

    #@ee
    .line 706
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_6
    if-eqz v22, :cond_7

    #@f0
    .line 707
    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    #@f3
    move-object/from16 v0, p2

    #@f5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@f8
    move-result-object v18

    #@f9
    .local v18, "pkgList":[Ljava/lang/String;
    goto :goto_1

    #@fa
    .line 709
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@fd
    move-result-object v23

    #@fe
    .line 710
    .local v23, "uri":Landroid/net/Uri;
    if-nez v23, :cond_8

    #@100
    .line 711
    return-void

    #@101
    .line 713
    :cond_8
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@104
    move-result-object v5

    #@105
    .line 714
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-nez v5, :cond_9

    #@107
    .line 715
    return-void

    #@108
    .line 717
    :cond_9
    if-eqz v17, :cond_b

    #@10a
    .line 720
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@10d
    move-result-object v19

    #@10e
    .line 722
    .local v19, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    #@10f
    if-eq v9, v2, :cond_c

    #@111
    move v2, v9

    #@112
    .line 721
    :goto_4
    move-object/from16 v0, v19

    #@114
    invoke-interface {v0, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@117
    move-result v16

    #@118
    .line 724
    .local v16, "enabled":I
    const/4 v2, 0x1

    #@119
    move/from16 v0, v16

    #@11b
    if-eq v0, v2, :cond_a

    #@11d
    .line 725
    if-nez v16, :cond_b

    #@11f
    .line 726
    :cond_a
    const/4 v13, 0x0

    #@120
    .line 738
    .end local v16    # "enabled":I
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_b
    :goto_5
    const/4 v2, 0x1

    #@121
    new-array v0, v2, [Ljava/lang/String;

    #@123
    move-object/from16 v18, v0

    #@125
    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    #@126
    aput-object v5, v18, v2

    #@128
    .local v18, "pkgList":[Ljava/lang/String;
    goto/16 :goto_1

    #@12a
    .line 723
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_c
    const/4 v2, 0x0

    #@12b
    goto :goto_4

    #@12c
    .line 728
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v15

    #@12d
    .line 731
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@12f
    if-eqz v2, :cond_b

    #@131
    .line 732
    const-string/jumbo v2, "NotificationService"

    #@134
    const-string/jumbo v3, "Exception trying to look up app enabled setting"

    #@137
    invoke-static {v2, v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13a
    goto :goto_5

    #@13b
    .line 744
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v23    # "uri":Landroid/net/Uri;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_d
    const/4 v8, 0x1

    #@13c
    goto :goto_3

    #@13d
    .line 749
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    #@13f
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@141
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@144
    move-result-object v2

    #@145
    move/from16 v0, v21

    #@147
    move-object/from16 v1, v18

    #@149
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@14c
    .line 750
    move-object/from16 v0, p0

    #@14e
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@150
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@153
    move-result-object v2

    #@154
    move/from16 v0, v21

    #@156
    move-object/from16 v1, v18

    #@158
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@15b
    .line 751
    move-object/from16 v0, p0

    #@15d
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@15f
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@162
    move-result-object v2

    #@163
    move/from16 v0, v21

    #@165
    move-object/from16 v1, v18

    #@167
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@16a
    .line 752
    move-object/from16 v0, p0

    #@16c
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@16e
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@171
    move-result-object v2

    #@172
    move/from16 v0, v21

    #@174
    move-object/from16 v1, v18

    #@176
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@179
    .line 676
    .end local v9    # "changeUserId":I
    .end local v18    # "pkgList":[Ljava/lang/String;
    :cond_f
    return-void

    #@17a
    .line 734
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v9    # "changeUserId":I
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v23    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v14

    #@17b
    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method
