.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitoringCertNotificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@0
    .prologue
    .line 2663
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@3
    return-void
.end method

.method private getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2763
    const/4 v1, 0x0

    #@2
    .line 2765
    .local v1, "conn":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4
    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v6, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    #@9
    move-result-object v1

    #@a
    .line 2766
    .local v1, "conn":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@d
    move-result-object v6

    #@e
    invoke-interface {v6}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    .line 2767
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@18
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1b
    move-result v6

    #@1c
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@1f
    .line 2768
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@20
    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@23
    move-result v6

    #@24
    if-ge v4, v6, :cond_0

    #@26
    .line 2769
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v6

    #@2a
    check-cast v6, Lcom/android/internal/util/ParcelableString;

    #@2c
    iget-object v6, v6, Lcom/android/internal/util/ParcelableString;->string:Ljava/lang/String;

    #@2e
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 2768
    add-int/lit8 v4, v4, 0x1

    #@33
    goto :goto_0

    #@34
    .line 2778
    :cond_0
    if-eqz v1, :cond_1

    #@36
    .line 2779
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@39
    .line 2771
    :cond_1
    return-object v5

    #@3a
    .line 2775
    .end local v0    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .end local v4    # "i":I
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    #@3b
    .line 2776
    .local v2, "e":Ljava/lang/AssertionError;
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    #@3d
    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 2777
    .end local v2    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v6

    #@42
    .line 2778
    if-eqz v1, :cond_2

    #@44
    .line 2779
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@47
    .line 2777
    :cond_2
    throw v6

    #@48
    .line 2772
    :catch_1
    move-exception v3

    #@49
    .line 2773
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    .line 2778
    if-eqz v1, :cond_3

    #@52
    .line 2779
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@55
    .line 2774
    :cond_3
    return-object v7
.end method

.method private manageNotification(Landroid/os/UserHandle;)V
    .locals 19
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 2679
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@6
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 2680
    return-void

    #@f
    .line 2686
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v15

    #@13
    .line 2692
    .local v15, "pendingCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@17
    monitor-enter v2

    #@18
    .line 2693
    :try_start_1
    move-object/from16 v0, p0

    #@1a
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@1f
    move-result v4

    #@20
    invoke-virtual {v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@23
    move-result-object v16

    #@24
    .line 2696
    .local v16, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v16

    #@26
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    #@28
    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 2697
    move-object/from16 v0, p0

    #@30
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@32
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@35
    move-result v4

    #@36
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap15(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    #@39
    .line 2700
    :cond_1
    move-object/from16 v0, v16

    #@3b
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    #@3d
    invoke-interface {v15, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit v2

    #@41
    .line 2703
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_2

    #@47
    .line 2704
    move-object/from16 v0, p0

    #@49
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4b
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@4d
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    #@50
    move-result-object v1

    #@51
    .line 2705
    const/4 v2, 0x0

    #@52
    const v4, 0x1140001

    #@55
    .line 2704
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v1, v2, v4, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@5a
    .line 2706
    return-void

    #@5b
    .line 2687
    .end local v15    # "pendingCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catch_0
    move-exception v9

    #@5c
    .line 2688
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@5f
    const-string/jumbo v2, "Could not retrieve certificates from KeyChain service"

    #@62
    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@65
    .line 2689
    return-void

    #@66
    .line 2692
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "pendingCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    #@67
    monitor-exit v2

    #@68
    throw v1

    #@69
    .line 2712
    .restart local v16    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@6c
    move-result v14

    #@6d
    .line 2713
    .local v14, "parentUserId":I
    move-object/from16 v0, p0

    #@6f
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@71
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@74
    move-result v2

    #@75
    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    #@78
    move-result-object v1

    #@79
    if-eqz v1, :cond_3

    #@7b
    .line 2714
    move-object/from16 v0, p0

    #@7d
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@7f
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@81
    const/4 v2, 0x1

    #@82
    new-array v2, v2, [Ljava/lang/Object;

    #@84
    .line 2715
    move-object/from16 v0, p0

    #@86
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@88
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@8b
    move-result v5

    #@8c
    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerName(I)Ljava/lang/String;

    #@8f
    move-result-object v4

    #@90
    const/4 v5, 0x0

    #@91
    aput-object v4, v2, v5

    #@93
    .line 2714
    const v4, 0x1040106

    #@96
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    .line 2716
    .local v7, "contentText":Ljava/lang/String;
    const v17, 0x10806dc

    #@9d
    .line 2717
    .local v17, "smallIconId":I
    move-object/from16 v0, p0

    #@9f
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@a1
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@a4
    move-result v2

    #@a5
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap2(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)I

    #@a8
    move-result v14

    #@a9
    .line 2727
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@ac
    move-result v12

    #@ad
    .line 2728
    .local v12, "numberOfCertificates":I
    new-instance v3, Landroid/content/Intent;

    #@af
    const-string/jumbo v1, "com.android.settings.MONITORING_CERT_INFO"

    #@b2
    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b5
    .line 2729
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    #@b8
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@bb
    .line 2730
    const-string/jumbo v1, "com.android.settings"

    #@be
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@c1
    .line 2731
    const-string/jumbo v1, "android.settings.extra.number_of_certificates"

    #@c4
    invoke-virtual {v3, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c7
    .line 2732
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    #@ca
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@cd
    move-result v2

    #@ce
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@d1
    .line 2733
    move-object/from16 v0, p0

    #@d3
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@d5
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@d7
    .line 2735
    new-instance v6, Landroid/os/UserHandle;

    #@d9
    invoke-direct {v6, v14}, Landroid/os/UserHandle;-><init>(I)V

    #@dc
    .line 2733
    const/4 v2, 0x0

    #@dd
    .line 2734
    const/high16 v4, 0x8000000

    #@df
    const/4 v5, 0x0

    #@e0
    .line 2733
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@e3
    move-result-object v11

    #@e4
    .line 2739
    .local v11, "notifyIntent":Landroid/app/PendingIntent;
    :try_start_2
    move-object/from16 v0, p0

    #@e6
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@e8
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@ea
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@ed
    move-result-object v13

    #@ee
    .line 2740
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f0
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@f2
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@f4
    const/4 v2, 0x0

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v1, v13, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@fa
    move-result-object v18

    #@fb
    .line 2745
    .local v18, "userContext":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification$Builder;

    #@fd
    move-object/from16 v0, v18

    #@ff
    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@102
    move/from16 v0, v17

    #@104
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@107
    move-result-object v1

    #@108
    .line 2747
    move-object/from16 v0, p0

    #@10a
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@10c
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@10e
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@111
    move-result-object v2

    #@112
    .line 2748
    const v4, 0x1140001

    #@115
    .line 2747
    invoke-virtual {v2, v4, v12}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    #@118
    move-result-object v2

    #@119
    .line 2745
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@11c
    move-result-object v1

    #@11d
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@120
    move-result-object v1

    #@121
    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@124
    move-result-object v1

    #@125
    .line 2751
    const/4 v2, 0x1

    #@126
    .line 2745
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@129
    move-result-object v1

    #@12a
    .line 2752
    const/4 v2, 0x0

    #@12b
    .line 2745
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    #@12e
    move-result-object v1

    #@12f
    .line 2753
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@133
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@135
    .line 2754
    const v4, 0x1060059

    #@138
    .line 2753
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    #@13b
    move-result v2

    #@13c
    .line 2745
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@13f
    move-result-object v1

    #@140
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@143
    move-result-object v10

    #@144
    .line 2757
    .local v10, "noti":Landroid/app/Notification;
    move-object/from16 v0, p0

    #@146
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@148
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@14a
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    #@14d
    move-result-object v1

    #@14e
    .line 2758
    const/4 v2, 0x0

    #@14f
    const v4, 0x1140001

    #@152
    .line 2757
    move-object/from16 v0, p1

    #@154
    invoke-virtual {v1, v2, v4, v10, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@157
    .line 2678
    return-void

    #@158
    .line 2718
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v10    # "noti":Landroid/app/Notification;
    .end local v11    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v12    # "numberOfCertificates":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v17    # "smallIconId":I
    .end local v18    # "userContext":Landroid/content/Context;
    :cond_3
    move-object/from16 v0, p0

    #@15a
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@15c
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    #@15f
    move-result v1

    #@160
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@163
    move-result v2

    #@164
    if-ne v1, v2, :cond_4

    #@166
    .line 2719
    move-object/from16 v0, p0

    #@168
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@16a
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@16c
    const/4 v2, 0x1

    #@16d
    new-array v2, v2, [Ljava/lang/Object;

    #@16f
    .line 2720
    move-object/from16 v0, p0

    #@171
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@173
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    #@176
    move-result-object v4

    #@177
    const/4 v5, 0x0

    #@178
    aput-object v4, v2, v5

    #@17a
    .line 2719
    const v4, 0x1040106

    #@17d
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@180
    move-result-object v7

    #@181
    .line 2721
    .restart local v7    # "contentText":Ljava/lang/String;
    const v17, 0x10806dc

    #@184
    .restart local v17    # "smallIconId":I
    goto/16 :goto_0

    #@186
    .line 2723
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v17    # "smallIconId":I
    :cond_4
    move-object/from16 v0, p0

    #@188
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@18a
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@18c
    const v2, 0x1040104

    #@18f
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@192
    move-result-object v7

    #@193
    .line 2724
    .restart local v7    # "contentText":Ljava/lang/String;
    const v17, 0x108008a

    #@196
    .restart local v17    # "smallIconId":I
    goto/16 :goto_0

    #@198
    .line 2741
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v11    # "notifyIntent":Landroid/app/PendingIntent;
    .restart local v12    # "numberOfCertificates":I
    :catch_1
    move-exception v8

    #@199
    .line 2742
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@19c
    new-instance v2, Ljava/lang/StringBuilder;

    #@19e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1
    const-string/jumbo v4, "Create context as "

    #@1a4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v2

    #@1a8
    move-object/from16 v0, p1

    #@1aa
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v2

    #@1ae
    const-string/jumbo v4, " failed"

    #@1b1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v2

    #@1b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v2

    #@1b9
    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1bc
    .line 2743
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2665
    check-cast p1, [Ljava/lang/Integer;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    #@0
    .prologue
    .line 2666
    const/4 v3, 0x0

    #@1
    aget-object v3, p1, v3

    #@3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@6
    move-result v0

    #@7
    .line 2668
    .local v0, "userHandle":I
    const/4 v3, -0x1

    #@8
    if-ne v0, v3, :cond_0

    #@a
    .line 2669
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@c
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@e
    const/4 v4, 0x1

    #@f
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/pm/UserInfo;

    #@23
    .line 2670
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@26
    move-result-object v3

    #@27
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->manageNotification(Landroid/os/UserHandle;)V

    #@2a
    goto :goto_0

    #@2b
    .line 2673
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->manageNotification(Landroid/os/UserHandle;)V

    #@32
    .line 2675
    :cond_1
    const/4 v3, 0x0

    #@33
    return-object v3
.end method
