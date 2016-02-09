.class Lcom/android/server/backup/BackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    .line 1732
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 1737
    .local v4, "action":Ljava/lang/String;
    const/16 v21, 0x0

    #@6
    .line 1738
    .local v21, "replacing":Z
    const/4 v5, 0x0

    #@7
    .line 1739
    .local v5, "added":Z
    const/4 v7, 0x0

    #@8
    .line 1740
    .local v7, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@b
    move-result-object v12

    #@c
    .line 1741
    .local v12, "extras":Landroid/os/Bundle;
    const/16 v19, 0x0

    #@e
    .line 1742
    .local v19, "pkgList":[Ljava/lang/String;
    const-string/jumbo v27, "android.intent.action.PACKAGE_ADDED"

    #@11
    move-object/from16 v0, v27

    #@13
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v27

    #@17
    if-nez v27, :cond_0

    #@19
    .line 1743
    const-string/jumbo v27, "android.intent.action.PACKAGE_REMOVED"

    #@1c
    move-object/from16 v0, v27

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v27

    #@22
    .line 1742
    if-nez v27, :cond_0

    #@24
    .line 1744
    const-string/jumbo v27, "android.intent.action.PACKAGE_CHANGED"

    #@27
    move-object/from16 v0, v27

    #@29
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v27

    #@2d
    .line 1742
    if-eqz v27, :cond_a

    #@2f
    .line 1745
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@32
    move-result-object v26

    #@33
    .line 1746
    .local v26, "uri":Landroid/net/Uri;
    if-nez v26, :cond_1

    #@35
    .line 1747
    return-void

    #@36
    .line 1749
    :cond_1
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@39
    move-result-object v20

    #@3a
    .line 1750
    .local v20, "pkgName":Ljava/lang/String;
    if-eqz v20, :cond_2

    #@3c
    .line 1751
    const/16 v27, 0x1

    #@3e
    move/from16 v0, v27

    #@40
    new-array v0, v0, [Ljava/lang/String;

    #@42
    move-object/from16 v19, v0

    #@44
    .end local v19    # "pkgList":[Ljava/lang/String;
    const/16 v27, 0x0

    #@46
    aput-object v20, v19, v27

    #@48
    .line 1753
    :cond_2
    const-string/jumbo v27, "android.intent.action.PACKAGE_CHANGED"

    #@4b
    move-object/from16 v0, v27

    #@4d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v7

    #@51
    .line 1756
    .local v7, "changed":Z
    if-eqz v7, :cond_7

    #@53
    .line 1759
    :try_start_0
    const-string/jumbo v27, "android.intent.extra.changed_component_name_list"

    #@56
    move-object/from16 v0, p2

    #@58
    move-object/from16 v1, v27

    #@5a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    .line 1777
    .local v9, "components":[Ljava/lang/String;
    const/16 v24, 0x1

    #@60
    .line 1778
    .local v24, "tryBind":Z
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@64
    move-object/from16 v27, v0

    #@66
    move-object/from16 v0, v27

    #@68
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@6a
    move-object/from16 v28, v0

    #@6c
    monitor-enter v28
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 1779
    :try_start_1
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@71
    move-object/from16 v27, v0

    #@73
    move-object/from16 v0, v27

    #@75
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@77
    move-object/from16 v27, v0

    #@79
    move-object/from16 v0, v27

    #@7b
    move-object/from16 v1, v20

    #@7d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    move-result-object v10

    #@81
    check-cast v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    #@83
    .line 1780
    .local v10, "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v10, :cond_4

    #@85
    .line 1782
    iget-object v0, v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    #@87
    move-object/from16 v22, v0

    #@89
    .line 1784
    .local v22, "svc":Landroid/content/pm/ServiceInfo;
    new-instance v23, Landroid/content/ComponentName;

    #@8b
    move-object/from16 v0, v22

    #@8d
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8f
    move-object/from16 v27, v0

    #@91
    move-object/from16 v0, v22

    #@93
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@95
    move-object/from16 v29, v0

    #@97
    move-object/from16 v0, v23

    #@99
    move-object/from16 v1, v27

    #@9b
    move-object/from16 v2, v29

    #@9d
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a0
    .line 1785
    .local v23, "svcName":Landroid/content/ComponentName;
    move-object/from16 v0, v22

    #@a2
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@a4
    move-object/from16 v27, v0

    #@a6
    move-object/from16 v0, v27

    #@a8
    move-object/from16 v1, v20

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v27

    #@ae
    if-eqz v27, :cond_4

    #@b0
    .line 1786
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@b3
    move-result-object v8

    #@b4
    .line 1791
    .local v8, "className":Ljava/lang/String;
    const/4 v15, 0x0

    #@b5
    .line 1792
    .local v15, "isTransport":Z
    const/4 v14, 0x0

    #@b6
    .local v14, "i":I
    :goto_0
    array-length v0, v9

    #@b7
    move/from16 v27, v0

    #@b9
    move/from16 v0, v27

    #@bb
    if-ge v14, v0, :cond_3

    #@bd
    .line 1793
    aget-object v27, v9, v14

    #@bf
    move-object/from16 v0, v27

    #@c1
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v27

    #@c5
    if-eqz v27, :cond_6

    #@c7
    .line 1795
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@ca
    move-result-object v13

    #@cb
    .line 1796
    .local v13, "flatName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@cf
    move-object/from16 v27, v0

    #@d1
    move-object/from16 v0, v27

    #@d3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@d5
    move-object/from16 v27, v0

    #@d7
    move-object/from16 v0, v27

    #@d9
    invoke-virtual {v0, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@dc
    .line 1797
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e0
    move-object/from16 v27, v0

    #@e2
    move-object/from16 v0, v27

    #@e4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@e6
    move-object/from16 v27, v0

    #@e8
    move-object/from16 v0, v27

    #@ea
    move-object/from16 v1, v20

    #@ec
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ef
    .line 1798
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f3
    move-object/from16 v27, v0

    #@f5
    move-object/from16 v0, v27

    #@f7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@f9
    move-object/from16 v27, v0

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@ff
    move-object/from16 v29, v0

    #@101
    move-object/from16 v0, v29

    #@103
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@105
    move-object/from16 v29, v0

    #@107
    move-object/from16 v0, v29

    #@109
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10c
    move-result-object v29

    #@10d
    move-object/from16 v0, v27

    #@10f
    move-object/from16 v1, v29

    #@111
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@114
    .line 1799
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@118
    move-object/from16 v27, v0

    #@11a
    move-object/from16 v0, v27

    #@11c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@11e
    move-object/from16 v27, v0

    #@120
    move-object/from16 v0, v27

    #@122
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@125
    .line 1800
    const/4 v15, 0x1

    #@126
    .line 1804
    .end local v13    # "flatName":Ljava/lang/String;
    :cond_3
    if-nez v15, :cond_4

    #@128
    .line 1807
    const/16 v24, 0x0

    #@12a
    .end local v8    # "className":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "isTransport":Z
    .end local v22    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v23    # "svcName":Landroid/content/ComponentName;
    :cond_4
    :try_start_2
    monitor-exit v28

    #@12b
    .line 1813
    if-eqz v24, :cond_5

    #@12d
    .line 1817
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@131
    move-object/from16 v27, v0

    #@133
    invoke-static/range {v27 .. v27}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@136
    move-result-object v27

    #@137
    const/16 v28, 0x0

    #@139
    move-object/from16 v0, v27

    #@13b
    move-object/from16 v1, v20

    #@13d
    move/from16 v2, v28

    #@13f
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@142
    move-result-object v6

    #@143
    .line 1818
    .local v6, "app":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@147
    move-object/from16 v27, v0

    #@149
    move-object/from16 v0, v27

    #@14b
    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V

    #@14e
    .line 1826
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v9    # "components":[Ljava/lang/String;
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v24    # "tryBind":Z
    :cond_5
    :goto_1
    return-void

    #@14f
    .line 1792
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "components":[Ljava/lang/String;
    .restart local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .restart local v14    # "i":I
    .restart local v15    # "isTransport":Z
    .restart local v22    # "svc":Landroid/content/pm/ServiceInfo;
    .restart local v23    # "svcName":Landroid/content/ComponentName;
    .restart local v24    # "tryBind":Z
    :cond_6
    add-int/lit8 v14, v14, 0x1

    #@151
    goto/16 :goto_0

    #@153
    .line 1778
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v14    # "i":I
    .end local v15    # "isTransport":Z
    .end local v22    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v23    # "svcName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v27

    #@154
    monitor-exit v28

    #@155
    throw v27
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@156
    .line 1820
    .end local v9    # "components":[Ljava/lang/String;
    .end local v24    # "tryBind":Z
    :catch_0
    move-exception v11

    #@157
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@158
    .line 1829
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    const-string/jumbo v27, "android.intent.action.PACKAGE_ADDED"

    #@15b
    move-object/from16 v0, v27

    #@15d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@160
    move-result v5

    #@161
    .line 1830
    .local v5, "added":Z
    const-string/jumbo v27, "android.intent.extra.REPLACING"

    #@164
    const/16 v28, 0x0

    #@166
    move-object/from16 v0, v27

    #@168
    move/from16 v1, v28

    #@16a
    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@16d
    move-result v21

    #@16e
    .line 1839
    .end local v5    # "added":Z
    .end local v7    # "changed":Z
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v21    # "replacing":Z
    .end local v26    # "uri":Landroid/net/Uri;
    :cond_8
    :goto_2
    if-eqz v19, :cond_9

    #@170
    move-object/from16 v0, v19

    #@172
    array-length v0, v0

    #@173
    move/from16 v27, v0

    #@175
    if-nez v27, :cond_c

    #@177
    .line 1840
    :cond_9
    return-void

    #@178
    .line 1831
    .local v5, "added":Z
    .local v7, "changed":Z
    .restart local v19    # "pkgList":[Ljava/lang/String;
    .restart local v21    # "replacing":Z
    :cond_a
    const-string/jumbo v27, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@17b
    move-object/from16 v0, v27

    #@17d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@180
    move-result v27

    #@181
    if-eqz v27, :cond_b

    #@183
    .line 1832
    const/4 v5, 0x1

    #@184
    .line 1833
    const-string/jumbo v27, "android.intent.extra.changed_package_list"

    #@187
    move-object/from16 v0, p2

    #@189
    move-object/from16 v1, v27

    #@18b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@18e
    move-result-object v19

    #@18f
    .local v19, "pkgList":[Ljava/lang/String;
    goto :goto_2

    #@190
    .line 1834
    .local v19, "pkgList":[Ljava/lang/String;
    :cond_b
    const-string/jumbo v27, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@193
    move-object/from16 v0, v27

    #@195
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@198
    move-result v27

    #@199
    if-eqz v27, :cond_8

    #@19b
    .line 1835
    const/4 v5, 0x0

    #@19c
    .line 1836
    const-string/jumbo v27, "android.intent.extra.changed_package_list"

    #@19f
    move-object/from16 v0, p2

    #@1a1
    move-object/from16 v1, v27

    #@1a3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@1a6
    move-result-object v19

    #@1a7
    .local v19, "pkgList":[Ljava/lang/String;
    goto :goto_2

    #@1a8
    .line 1843
    .end local v5    # "added":Z
    .end local v7    # "changed":Z
    .end local v19    # "pkgList":[Ljava/lang/String;
    .end local v21    # "replacing":Z
    :cond_c
    const-string/jumbo v27, "android.intent.extra.UID"

    #@1ab
    move-object/from16 v0, v27

    #@1ad
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@1b0
    move-result v25

    #@1b1
    .line 1844
    .local v25, "uid":I
    if-eqz v5, :cond_12

    #@1b3
    .line 1845
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b7
    move-object/from16 v27, v0

    #@1b9
    move-object/from16 v0, v27

    #@1bb
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@1bd
    move-object/from16 v28, v0

    #@1bf
    monitor-enter v28

    #@1c0
    .line 1846
    if-eqz v21, :cond_d

    #@1c2
    .line 1849
    :try_start_3
    move-object/from16 v0, p0

    #@1c4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1c6
    move-object/from16 v27, v0

    #@1c8
    move-object/from16 v0, v27

    #@1ca
    move-object/from16 v1, v19

    #@1cc
    move/from16 v2, v25

    #@1ce
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    #@1d1
    .line 1851
    :cond_d
    move-object/from16 v0, p0

    #@1d3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d5
    move-object/from16 v27, v0

    #@1d7
    move-object/from16 v0, v27

    #@1d9
    move-object/from16 v1, v19

    #@1db
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1de
    monitor-exit v28

    #@1df
    .line 1854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1e2
    move-result-wide v16

    #@1e3
    .line 1855
    .local v16, "now":J
    const/16 v27, 0x0

    #@1e5
    move-object/from16 v0, v19

    #@1e7
    array-length v0, v0

    #@1e8
    move/from16 v29, v0

    #@1ea
    move/from16 v28, v27

    #@1ec
    :goto_3
    move/from16 v0, v28

    #@1ee
    move/from16 v1, v29

    #@1f0
    if-ge v0, v1, :cond_10

    #@1f2
    aget-object v18, v19, v28

    #@1f4
    .line 1857
    .local v18, "packageName":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1f8
    move-object/from16 v27, v0

    #@1fa
    invoke-static/range {v27 .. v27}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@1fd
    move-result-object v27

    #@1fe
    const/16 v30, 0x0

    #@200
    move-object/from16 v0, v27

    #@202
    move-object/from16 v1, v18

    #@204
    move/from16 v2, v30

    #@206
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@209
    move-result-object v6

    #@20a
    .line 1858
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@20d
    move-result v27

    #@20e
    if-eqz v27, :cond_e

    #@210
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@212
    move-object/from16 v27, v0

    #@214
    invoke-static/range {v27 .. v27}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@217
    move-result v27

    #@218
    if-eqz v27, :cond_e

    #@21a
    .line 1859
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@21e
    move-object/from16 v27, v0

    #@220
    move-object/from16 v0, v27

    #@222
    move-object/from16 v1, v18

    #@224
    move-wide/from16 v2, v16

    #@226
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    #@229
    .line 1860
    move-object/from16 v0, p0

    #@22b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@22d
    move-object/from16 v27, v0

    #@22f
    const-wide/16 v30, 0x0

    #@231
    move-object/from16 v0, v27

    #@233
    move-wide/from16 v1, v30

    #@235
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    #@238
    .line 1865
    :cond_e
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@23c
    move-object/from16 v27, v0

    #@23e
    move-object/from16 v0, v27

    #@240
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@242
    move-object/from16 v30, v0

    #@244
    monitor-enter v30
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    #@245
    .line 1866
    :try_start_5
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@249
    move-object/from16 v27, v0

    #@24b
    move-object/from16 v0, v27

    #@24d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@24f
    move-object/from16 v27, v0

    #@251
    move-object/from16 v0, v27

    #@253
    move-object/from16 v1, v18

    #@255
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@258
    move-result-object v10

    #@259
    check-cast v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    #@25b
    .line 1867
    .restart local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v10, :cond_f

    #@25d
    .line 1871
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@261
    move-object/from16 v27, v0

    #@263
    iget-object v0, v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    #@265
    move-object/from16 v31, v0

    #@267
    move-object/from16 v0, v27

    #@269
    move-object/from16 v1, v31

    #@26b
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@26e
    :goto_4
    :try_start_6
    monitor-exit v30
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    #@26f
    .line 1855
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :goto_5
    add-int/lit8 v27, v28, 0x1

    #@271
    move/from16 v28, v27

    #@273
    goto/16 :goto_3

    #@275
    .line 1845
    .end local v16    # "now":J
    .end local v18    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v27

    #@276
    monitor-exit v28

    #@277
    throw v27

    #@278
    .line 1873
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    .restart local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .restart local v16    # "now":J
    .restart local v18    # "packageName":Ljava/lang/String;
    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    #@27a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27c
    move-object/from16 v27, v0

    #@27e
    move-object/from16 v0, v27

    #@280
    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@283
    goto :goto_4

    #@284
    .line 1865
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_2
    move-exception v27

    #@285
    :try_start_8
    monitor-exit v30

    #@286
    throw v27
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    #@287
    .line 1877
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v11

    #@288
    .line 1880
    .restart local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v27, "BackupManagerService"

    #@28b
    new-instance v30, Ljava/lang/StringBuilder;

    #@28d
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@290
    const-string/jumbo v31, "Can\'t resolve new app "

    #@293
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v30

    #@297
    move-object/from16 v0, v30

    #@299
    move-object/from16 v1, v18

    #@29b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v30

    #@29f
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a2
    move-result-object v30

    #@2a3
    move-object/from16 v0, v27

    #@2a5
    move-object/from16 v1, v30

    #@2a7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2aa
    goto :goto_5

    #@2ab
    .line 1887
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    #@2ad
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2af
    move-object/from16 v27, v0

    #@2b1
    const-string/jumbo v28, "@pm@"

    #@2b4
    invoke-static/range {v27 .. v28}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@2b7
    .line 1733
    .end local v16    # "now":J
    :cond_11
    :goto_6
    return-void

    #@2b8
    .line 1889
    :cond_12
    if-nez v21, :cond_11

    #@2ba
    .line 1892
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2be
    move-object/from16 v27, v0

    #@2c0
    move-object/from16 v0, v27

    #@2c2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@2c4
    move-object/from16 v28, v0

    #@2c6
    monitor-enter v28

    #@2c7
    .line 1893
    :try_start_9
    move-object/from16 v0, p0

    #@2c9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2cb
    move-object/from16 v27, v0

    #@2cd
    move-object/from16 v0, v27

    #@2cf
    move-object/from16 v1, v19

    #@2d1
    move/from16 v2, v25

    #@2d3
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@2d6
    monitor-exit v28

    #@2d7
    goto :goto_6

    #@2d8
    .line 1892
    :catchall_3
    move-exception v27

    #@2d9
    monitor-exit v28

    #@2da
    throw v27
.end method
