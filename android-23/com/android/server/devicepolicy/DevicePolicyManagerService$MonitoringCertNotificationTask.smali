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
        "Landroid/content/Intent;",
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
    .line 1853
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

.method private manageNotification(Landroid/os/UserHandle;)V
    .locals 19
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1869
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@6
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1870
    return-void

    #@f
    .line 1874
    :cond_0
    const/4 v12, 0x0

    #@10
    .line 1876
    .local v12, "hasCert":Z
    :try_start_0
    move-object/from16 v0, p0

    #@12
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@14
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-static {v1, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    #@1b
    move-result-object v13

    #@1c
    .line 1878
    .local v13, "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_1

    #@2e
    .line 1879
    const/4 v12, 0x1

    #@2f
    .line 1884
    :cond_1
    :try_start_2
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    #@32
    .line 1891
    .end local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    if-nez v12, :cond_2

    #@34
    .line 1892
    move-object/from16 v0, p0

    #@36
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@38
    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;

    #@3b
    move-result-object v1

    #@3c
    .line 1893
    const/4 v2, 0x0

    #@3d
    const v4, 0x10400e6

    #@40
    .line 1892
    move-object/from16 v0, p1

    #@42
    invoke-virtual {v1, v2, v4, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@45
    .line 1894
    return-void

    #@46
    .line 1881
    .restart local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v9

    #@47
    .line 1882
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@4a
    const-string/jumbo v2, "Could not connect to KeyChain service"

    #@4d
    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    .line 1884
    :try_start_4
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    #@53
    goto :goto_0

    #@54
    .line 1886
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v10

    #@55
    .line 1887
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    #@5c
    goto :goto_0

    #@5d
    .line 1883
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v1

    #@5e
    .line 1884
    :try_start_5
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@61
    .line 1883
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    #@62
    .line 1888
    .end local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_2
    move-exception v11

    #@63
    .line 1889
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@66
    const-string/jumbo v2, "Could not connect to KeyChain service"

    #@69
    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    goto :goto_0

    #@6d
    .line 1900
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_2
    move-object/from16 v0, p0

    #@6f
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@71
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    #@74
    move-result-object v16

    #@75
    .line 1901
    .local v16, "ownerName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@77
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@79
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@7c
    move-result v2

    #@7d
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap1(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_3

    #@83
    .line 1902
    move-object/from16 v0, p0

    #@85
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@87
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@89
    const v2, 0x10400e8

    #@8c
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    .line 1903
    .local v7, "contentText":Ljava/lang/String;
    const v17, 0x108065f

    #@93
    .line 1912
    .local v17, "smallIconId":I
    :goto_1
    new-instance v3, Landroid/content/Intent;

    #@95
    const-string/jumbo v1, "com.android.settings.MONITORING_CERT_INFO"

    #@98
    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9b
    .line 1914
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    #@9e
    .line 1913
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@a1
    .line 1915
    const-string/jumbo v1, "com.android.settings"

    #@a4
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@a7
    .line 1916
    move-object/from16 v0, p0

    #@a9
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@ab
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@ad
    const/4 v2, 0x0

    #@ae
    .line 1917
    const/high16 v4, 0x8000000

    #@b0
    const/4 v5, 0x0

    #@b1
    move-object/from16 v6, p1

    #@b3
    .line 1916
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@b6
    move-result-object v15

    #@b7
    .line 1921
    .local v15, "notifyIntent":Landroid/app/PendingIntent;
    :try_start_6
    move-object/from16 v0, p0

    #@b9
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@bb
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@bd
    const-string/jumbo v2, "android"

    #@c0
    const/4 v4, 0x0

    #@c1
    move-object/from16 v0, p1

    #@c3
    invoke-virtual {v1, v2, v4, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    #@c6
    move-result-object v18

    #@c7
    .line 1926
    .local v18, "userContext":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification$Builder;

    #@c9
    move-object/from16 v0, v18

    #@cb
    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@ce
    move/from16 v0, v17

    #@d0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@d3
    move-result-object v1

    #@d4
    .line 1928
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@d8
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@da
    const v4, 0x10400e6

    #@dd
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@e0
    move-result-object v2

    #@e1
    .line 1926
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@e4
    move-result-object v1

    #@e5
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@e8
    move-result-object v1

    #@e9
    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@ec
    move-result-object v1

    #@ed
    .line 1931
    const/4 v2, 0x1

    #@ee
    .line 1926
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@f1
    move-result-object v1

    #@f2
    .line 1932
    const/4 v2, 0x0

    #@f3
    .line 1926
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    #@f6
    move-result-object v1

    #@f7
    .line 1933
    move-object/from16 v0, p0

    #@f9
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@fb
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@fd
    .line 1934
    const v4, 0x1060059

    #@100
    .line 1933
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    #@103
    move-result v2

    #@104
    .line 1926
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@107
    move-result-object v1

    #@108
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@10b
    move-result-object v14

    #@10c
    .line 1937
    .local v14, "noti":Landroid/app/Notification;
    move-object/from16 v0, p0

    #@10e
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@110
    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;

    #@113
    move-result-object v1

    #@114
    .line 1938
    const/4 v2, 0x0

    #@115
    const v4, 0x10400e6

    #@118
    .line 1937
    move-object/from16 v0, p1

    #@11a
    invoke-virtual {v1, v2, v4, v14, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@11d
    .line 1868
    return-void

    #@11e
    .line 1904
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v14    # "noti":Landroid/app/Notification;
    .end local v15    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v17    # "smallIconId":I
    .end local v18    # "userContext":Landroid/content/Context;
    :cond_3
    if-eqz v16, :cond_4

    #@120
    .line 1905
    move-object/from16 v0, p0

    #@122
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@124
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@126
    const/4 v2, 0x1

    #@127
    new-array v2, v2, [Ljava/lang/Object;

    #@129
    const/4 v4, 0x0

    #@12a
    aput-object v16, v2, v4

    #@12c
    const v4, 0x10400e9

    #@12f
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@132
    move-result-object v7

    #@133
    .line 1906
    .restart local v7    # "contentText":Ljava/lang/String;
    const v17, 0x108065f

    #@136
    .restart local v17    # "smallIconId":I
    goto/16 :goto_1

    #@138
    .line 1908
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v17    # "smallIconId":I
    :cond_4
    move-object/from16 v0, p0

    #@13a
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@13c
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@13e
    const v2, 0x10400e7

    #@141
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@144
    move-result-object v7

    #@145
    .line 1909
    .restart local v7    # "contentText":Ljava/lang/String;
    const v17, 0x108008a

    #@148
    .restart local v17    # "smallIconId":I
    goto/16 :goto_1

    #@14a
    .line 1922
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v15    # "notifyIntent":Landroid/app/PendingIntent;
    :catch_3
    move-exception v8

    #@14b
    .line 1923
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@14e
    new-instance v2, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v4, "Create context as "

    #@156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v2

    #@15a
    move-object/from16 v0, p1

    #@15c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v2

    #@160
    const-string/jumbo v4, " failed"

    #@163
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v2

    #@167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v2

    #@16b
    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16e
    .line 1924
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1855
    check-cast p1, [Landroid/content/Intent;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1856
    const/4 v3, 0x0

    #@2
    aget-object v3, p1, v3

    #@4
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@7
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    .line 1858
    .local v0, "userHandle":I
    if-ne v0, v5, :cond_0

    #@d
    .line 1859
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@f
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@11
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/content/pm/UserInfo;

    #@25
    .line 1860
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@28
    move-result-object v3

    #@29
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->manageNotification(Landroid/os/UserHandle;)V

    #@2c
    goto :goto_0

    #@2d
    .line 1863
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    new-instance v3, Landroid/os/UserHandle;

    #@2f
    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@32
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->manageNotification(Landroid/os/UserHandle;)V

    #@35
    .line 1865
    :cond_1
    const/4 v3, 0x0

    #@36
    return-object v3
.end method
