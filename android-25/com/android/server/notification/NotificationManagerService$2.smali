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
    .line 679
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
    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v12

    #@4
    .line 683
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_0

    #@6
    .line 684
    return-void

    #@7
    .line 687
    :cond_0
    const/16 v21, 0x0

    #@9
    .line 688
    .local v21, "queryRestart":Z
    const/16 v20, 0x0

    #@b
    .line 689
    .local v20, "queryRemove":Z
    const/16 v17, 0x0

    #@d
    .line 690
    .local v17, "packageChanged":Z
    const/4 v13, 0x1

    #@e
    .line 691
    .local v13, "cancelNotifications":Z
    const/4 v10, 0x5

    #@f
    .line 693
    .local v10, "reason":I
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    #@12
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 694
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    #@1b
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v20

    #@1f
    .line 693
    .local v20, "queryRemove":Z
    if-nez v20, :cond_1

    #@21
    .line 695
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    #@24
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    .line 693
    if-nez v2, :cond_1

    #@2a
    .line 696
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    #@2d
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v17

    #@31
    .line 693
    .local v17, "packageChanged":Z
    if-nez v17, :cond_1

    #@33
    .line 697
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@36
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v21

    #@3a
    .line 693
    .local v21, "queryRestart":Z
    if-nez v21, :cond_1

    #@3c
    .line 698
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@3f
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    .line 693
    if-nez v2, :cond_1

    #@45
    .line 699
    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    #@48
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    .line 693
    if-eqz v2, :cond_10

    #@4e
    .line 700
    .end local v17    # "packageChanged":Z
    .end local v20    # "queryRemove":Z
    .end local v21    # "queryRestart":Z
    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@51
    .line 701
    const/4 v3, -0x1

    #@52
    .line 700
    move-object/from16 v0, p2

    #@54
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@57
    move-result v9

    #@58
    .line 702
    .local v9, "changeUserId":I
    const/16 v18, 0x0

    #@5a
    .line 703
    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v20, :cond_5

    #@5c
    .line 704
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    #@5f
    const/4 v3, 0x0

    #@60
    move-object/from16 v0, p2

    #@62
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_4

    #@68
    const/16 v22, 0x0

    #@6a
    .line 705
    .local v22, "removingPackage":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@6c
    if-eqz v2, :cond_2

    #@6e
    const-string/jumbo v2, "NotificationService"

    #@71
    new-instance v3, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v4, "action="

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    const-string/jumbo v4, " removing="

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    move/from16 v0, v22

    #@8a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 706
    :cond_2
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@98
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_6

    #@9e
    .line 707
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    #@a1
    move-object/from16 v0, p2

    #@a3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@a6
    move-result-object v18

    #@a7
    .line 746
    .local v18, "pkgList":[Ljava/lang/String;
    :goto_1
    if-eqz v18, :cond_f

    #@a9
    move-object/from16 v0, v18

    #@ab
    array-length v2, v0

    #@ac
    if-lez v2, :cond_f

    #@ae
    .line 747
    const/4 v2, 0x0

    #@af
    move-object/from16 v0, v18

    #@b1
    array-length v0, v0

    #@b2
    move/from16 v25, v0

    #@b4
    move/from16 v24, v2

    #@b6
    :goto_2
    move/from16 v0, v24

    #@b8
    move/from16 v1, v25

    #@ba
    if-ge v0, v1, :cond_f

    #@bc
    aget-object v5, v18, v24

    #@be
    .line 748
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v13, :cond_3

    #@c0
    .line 749
    move-object/from16 v0, p0

    #@c2
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c4
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    #@c7
    move-result v3

    #@c8
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()I

    #@cb
    move-result v4

    #@cc
    if-eqz v21, :cond_e

    #@ce
    const/4 v8, 0x0

    #@cf
    :goto_3
    const/4 v6, 0x0

    #@d0
    const/4 v7, 0x0

    #@d1
    .line 750
    const/4 v11, 0x0

    #@d2
    .line 749
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@d5
    .line 747
    :cond_3
    add-int/lit8 v2, v24, 0x1

    #@d7
    move/from16 v24, v2

    #@d9
    goto :goto_2

    #@da
    .line 704
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v22    # "removingPackage":Z
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_4
    const/16 v22, 0x1

    #@dc
    .restart local v22    # "removingPackage":Z
    goto :goto_0

    #@dd
    .line 703
    .end local v22    # "removingPackage":Z
    :cond_5
    const/16 v22, 0x0

    #@df
    .restart local v22    # "removingPackage":Z
    goto :goto_0

    #@e0
    .line 708
    :cond_6
    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    #@e3
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v2

    #@e7
    if-eqz v2, :cond_7

    #@e9
    .line 709
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    #@ec
    move-object/from16 v0, p2

    #@ee
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@f1
    move-result-object v18

    #@f2
    .line 710
    .local v18, "pkgList":[Ljava/lang/String;
    const/16 v10, 0xe

    #@f4
    goto :goto_1

    #@f5
    .line 711
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_7
    if-eqz v21, :cond_8

    #@f7
    .line 712
    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    #@fa
    move-object/from16 v0, p2

    #@fc
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@ff
    move-result-object v18

    #@100
    .local v18, "pkgList":[Ljava/lang/String;
    goto :goto_1

    #@101
    .line 714
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@104
    move-result-object v23

    #@105
    .line 715
    .local v23, "uri":Landroid/net/Uri;
    if-nez v23, :cond_9

    #@107
    .line 716
    return-void

    #@108
    .line 718
    :cond_9
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@10b
    move-result-object v5

    #@10c
    .line 719
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-nez v5, :cond_a

    #@10e
    .line 720
    return-void

    #@10f
    .line 722
    :cond_a
    if-eqz v17, :cond_c

    #@111
    .line 725
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@114
    move-result-object v19

    #@115
    .line 727
    .local v19, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    #@116
    if-eq v9, v2, :cond_d

    #@118
    move v2, v9

    #@119
    .line 726
    :goto_4
    move-object/from16 v0, v19

    #@11b
    invoke-interface {v0, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@11e
    move-result v16

    #@11f
    .line 729
    .local v16, "enabled":I
    const/4 v2, 0x1

    #@120
    move/from16 v0, v16

    #@122
    if-eq v0, v2, :cond_b

    #@124
    .line 730
    if-nez v16, :cond_c

    #@126
    .line 731
    :cond_b
    const/4 v13, 0x0

    #@127
    .line 743
    .end local v16    # "enabled":I
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_c
    :goto_5
    const/4 v2, 0x1

    #@128
    new-array v0, v2, [Ljava/lang/String;

    #@12a
    move-object/from16 v18, v0

    #@12c
    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    #@12d
    aput-object v5, v18, v2

    #@12f
    .local v18, "pkgList":[Ljava/lang/String;
    goto/16 :goto_1

    #@131
    .line 728
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_d
    const/4 v2, 0x0

    #@132
    goto :goto_4

    #@133
    .line 733
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v15

    #@134
    .line 736
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@136
    if-eqz v2, :cond_c

    #@138
    .line 737
    const-string/jumbo v2, "NotificationService"

    #@13b
    const-string/jumbo v3, "Exception trying to look up app enabled setting"

    #@13e
    invoke-static {v2, v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@141
    goto :goto_5

    #@142
    .line 749
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v23    # "uri":Landroid/net/Uri;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_e
    const/4 v8, 0x1

    #@143
    goto :goto_3

    #@144
    .line 754
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    #@146
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@148
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@14b
    move-result-object v2

    #@14c
    move/from16 v0, v22

    #@14e
    move-object/from16 v1, v18

    #@150
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@153
    .line 755
    move-object/from16 v0, p0

    #@155
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@157
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@15a
    move-result-object v2

    #@15b
    move/from16 v0, v22

    #@15d
    move-object/from16 v1, v18

    #@15f
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@162
    .line 756
    move-object/from16 v0, p0

    #@164
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@166
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@169
    move-result-object v2

    #@16a
    move/from16 v0, v22

    #@16c
    move-object/from16 v1, v18

    #@16e
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@171
    .line 757
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@175
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@178
    move-result-object v2

    #@179
    move/from16 v0, v22

    #@17b
    move-object/from16 v1, v18

    #@17d
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(Z[Ljava/lang/String;)V

    #@180
    .line 681
    .end local v9    # "changeUserId":I
    .end local v18    # "pkgList":[Ljava/lang/String;
    .end local v22    # "removingPackage":Z
    :cond_10
    return-void

    #@181
    .line 739
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v9    # "changeUserId":I
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v22    # "removingPackage":Z
    .restart local v23    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v14

    #@182
    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method
