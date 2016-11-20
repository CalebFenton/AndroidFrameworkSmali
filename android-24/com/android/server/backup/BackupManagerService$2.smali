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
    .line 1860
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
    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 1865
    .local v4, "action":Ljava/lang/String;
    const/16 v21, 0x0

    #@6
    .line 1866
    .local v21, "replacing":Z
    const/4 v5, 0x0

    #@7
    .line 1867
    .local v5, "added":Z
    const/4 v7, 0x0

    #@8
    .line 1868
    .local v7, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@b
    move-result-object v12

    #@c
    .line 1869
    .local v12, "extras":Landroid/os/Bundle;
    const/16 v19, 0x0

    #@e
    .line 1870
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
    .line 1871
    const-string/jumbo v27, "android.intent.action.PACKAGE_REMOVED"

    #@1c
    move-object/from16 v0, v27

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v27

    #@22
    .line 1870
    if-nez v27, :cond_0

    #@24
    .line 1872
    const-string/jumbo v27, "android.intent.action.PACKAGE_CHANGED"

    #@27
    move-object/from16 v0, v27

    #@29
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v27

    #@2d
    .line 1870
    if-eqz v27, :cond_a

    #@2f
    .line 1873
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@32
    move-result-object v26

    #@33
    .line 1874
    .local v26, "uri":Landroid/net/Uri;
    if-nez v26, :cond_1

    #@35
    .line 1875
    return-void

    #@36
    .line 1877
    :cond_1
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@39
    move-result-object v20

    #@3a
    .line 1878
    .local v20, "pkgName":Ljava/lang/String;
    if-eqz v20, :cond_2

    #@3c
    .line 1879
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
    .line 1881
    :cond_2
    const-string/jumbo v27, "android.intent.action.PACKAGE_CHANGED"

    #@4b
    move-object/from16 v0, v27

    #@4d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v7

    #@51
    .line 1884
    .local v7, "changed":Z
    if-eqz v7, :cond_7

    #@53
    .line 1887
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
    .line 1905
    .local v9, "components":[Ljava/lang/String;
    const/16 v24, 0x1

    #@60
    .line 1906
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
    .line 1907
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
    .line 1908
    .local v10, "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v10, :cond_4

    #@85
    .line 1910
    iget-object v0, v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    #@87
    move-object/from16 v22, v0

    #@89
    .line 1912
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
    .line 1913
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
    .line 1914
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@b3
    move-result-object v8

    #@b4
    .line 1919
    .local v8, "className":Ljava/lang/String;
    const/4 v15, 0x0

    #@b5
    .line 1920
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
    .line 1921
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
    .line 1923
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@ca
    move-result-object v13

    #@cb
    .line 1924
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
    .line 1925
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
    .line 1926
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
    .line 1927
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
    .line 1928
    const/4 v15, 0x1

    #@126
    .line 1932
    .end local v13    # "flatName":Ljava/lang/String;
    :cond_3
    if-nez v15, :cond_4

    #@128
    .line 1935
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
    .line 1941
    if-eqz v24, :cond_5

    #@12d
    .line 1945
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
    .line 1946
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
    .line 1954
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v9    # "components":[Ljava/lang/String;
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v24    # "tryBind":Z
    :cond_5
    :goto_1
    return-void

    #@14f
    .line 1920
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
    .line 1906
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
    .line 1948
    .end local v9    # "components":[Ljava/lang/String;
    .end local v24    # "tryBind":Z
    :catch_0
    move-exception v11

    #@157
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@158
    .line 1957
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
    .line 1958
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
    .line 1967
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
    .line 1968
    :cond_9
    return-void

    #@178
    .line 1959
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
    .line 1960
    const/4 v5, 0x1

    #@184
    .line 1961
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
    .line 1962
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
    .line 1963
    const/4 v5, 0x0

    #@19c
    .line 1964
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
    .line 1971
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
    .line 1972
    .local v25, "uid":I
    if-eqz v5, :cond_12

    #@1b3
    .line 1973
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
    .line 1974
    if-eqz v21, :cond_d

    #@1c2
    .line 1979
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
    .line 1981
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
    .line 1984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1e2
    move-result-wide v16

    #@1e3
    .line 1985
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
    .line 1987
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
    .line 1988
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/content/pm/PackageInfo;)Z

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
    .line 1989
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
    .line 1990
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
    .line 2003
    :goto_4
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
    .line 2004
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
    .line 2005
    .restart local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v10, :cond_f

    #@25d
    .line 2009
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
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@26e
    :goto_5
    :try_start_6
    monitor-exit v30
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    #@26f
    .line 1985
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :goto_6
    add-int/lit8 v27, v28, 0x1

    #@271
    move/from16 v28, v27

    #@273
    goto/16 :goto_3

    #@275
    .line 1973
    .end local v16    # "now":J
    .end local v18    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v27

    #@276
    monitor-exit v28

    #@277
    throw v27

    #@278
    .line 1995
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    .restart local v16    # "now":J
    .restart local v18    # "packageName":Ljava/lang/String;
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    #@27a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27c
    move-object/from16 v27, v0

    #@27e
    move-object/from16 v0, v27

    #@280
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@282
    move-object/from16 v30, v0

    #@284
    monitor-enter v30
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    #@285
    .line 1996
    :try_start_8
    move-object/from16 v0, p0

    #@287
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@289
    move-object/from16 v27, v0

    #@28b
    move-object/from16 v0, v27

    #@28d
    move-object/from16 v1, v18

    #@28f
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@292
    :try_start_9
    monitor-exit v30

    #@293
    .line 1998
    move-object/from16 v0, p0

    #@295
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@297
    move-object/from16 v27, v0

    #@299
    invoke-static/range {v27 .. v27}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Lcom/android/server/backup/BackupManagerService;)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    #@29c
    goto :goto_4

    #@29d
    .line 2015
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v11

    #@29e
    .line 2018
    .restart local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v27, "BackupManagerService"

    #@2a1
    new-instance v30, Ljava/lang/StringBuilder;

    #@2a3
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@2a6
    const-string/jumbo v31, "Can\'t resolve new app "

    #@2a9
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ac
    move-result-object v30

    #@2ad
    move-object/from16 v0, v30

    #@2af
    move-object/from16 v1, v18

    #@2b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v30

    #@2b5
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b8
    move-result-object v30

    #@2b9
    move-object/from16 v0, v27

    #@2bb
    move-object/from16 v1, v30

    #@2bd
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c0
    goto :goto_6

    #@2c1
    .line 1995
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    :catchall_2
    move-exception v27

    #@2c2
    :try_start_a
    monitor-exit v30

    #@2c3
    throw v27
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    #@2c4
    .line 2011
    .restart local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c8
    move-object/from16 v27, v0

    #@2ca
    move-object/from16 v0, v27

    #@2cc
    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@2cf
    goto :goto_5

    #@2d0
    .line 2003
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_3
    move-exception v27

    #@2d1
    :try_start_c
    monitor-exit v30

    #@2d2
    throw v27
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_1

    #@2d3
    .line 2025
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    #@2d5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d7
    move-object/from16 v27, v0

    #@2d9
    const-string/jumbo v28, "@pm@"

    #@2dc
    invoke-static/range {v27 .. v28}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@2df
    .line 1861
    .end local v16    # "now":J
    :cond_11
    :goto_7
    return-void

    #@2e0
    .line 2027
    :cond_12
    if-nez v21, :cond_11

    #@2e2
    .line 2033
    move-object/from16 v0, p0

    #@2e4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e6
    move-object/from16 v27, v0

    #@2e8
    move-object/from16 v0, v27

    #@2ea
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@2ec
    move-object/from16 v28, v0

    #@2ee
    monitor-enter v28

    #@2ef
    .line 2034
    :try_start_d
    move-object/from16 v0, p0

    #@2f1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2f3
    move-object/from16 v27, v0

    #@2f5
    move-object/from16 v0, v27

    #@2f7
    move-object/from16 v1, v19

    #@2f9
    move/from16 v2, v25

    #@2fb
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    #@2fe
    monitor-exit v28

    #@2ff
    goto :goto_7

    #@300
    .line 2033
    :catchall_4
    move-exception v27

    #@301
    monitor-exit v28

    #@302
    throw v27
.end method
