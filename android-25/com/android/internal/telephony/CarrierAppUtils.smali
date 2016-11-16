.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/content/ContentResolver;I)V
    .locals 9
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "userId"    # I

    #@0
    .prologue
    const-class v8, Lcom/android/internal/telephony/CarrierAppUtils;

    #@2
    monitor-enter v8

    #@3
    .line 104
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@6
    move-result-object v7

    #@7
    .line 105
    .local v7, "config":Lcom/android/server/SystemConfig;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@a
    move-result-object v0

    #@b
    .line 106
    const v1, 0x1070038

    #@e
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 108
    .local v5, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    #@15
    move-result-object v6

    #@16
    .line 110
    .local v6, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    #@17
    move-object v0, p0

    #@18
    move-object v1, p1

    #@19
    move-object v3, p2

    #@1a
    move v4, p3

    #@1b
    .line 109
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I[Ljava/lang/String;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v8

    #@1f
    .line 100
    return-void

    #@20
    .end local v5    # "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    .end local v6    # "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "config":Lcom/android/server/SystemConfig;
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v8

    #@22
    throw v0
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V
    .locals 9
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "userId"    # I

    #@0
    .prologue
    const-class v8, Lcom/android/internal/telephony/CarrierAppUtils;

    #@2
    monitor-enter v8

    #@3
    .line 78
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@6
    move-result-object v7

    #@7
    .line 79
    .local v7, "config":Lcom/android/server/SystemConfig;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@a
    move-result-object v0

    #@b
    .line 80
    const v1, 0x1070038

    #@e
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 82
    .local v5, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    #@15
    move-result-object v6

    #@16
    .local v6, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v0, p0

    #@17
    move-object v1, p1

    #@18
    move-object v2, p2

    #@19
    move-object v3, p3

    #@1a
    move v4, p4

    #@1b
    .line 83
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I[Ljava/lang/String;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v8

    #@1f
    .line 74
    return-void

    #@20
    .end local v5    # "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    .end local v6    # "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "config":Lcom/android/server/SystemConfig;
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v8

    #@22
    throw v0
.end method

.method public static disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I[Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 23
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "userId"    # I
    .param p5, "systemCarrierAppsDisabledUntilUsed"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I[",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    .local p6, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p1

    #@2
    move/from16 v1, p4

    #@4
    move-object/from16 v2, p5

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;

    #@9
    move-result-object v17

    #@a
    .line 123
    .local v17, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v17, :cond_0

    #@c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 124
    :cond_0
    return-void

    #@13
    .line 127
    :cond_1
    move-object/from16 v0, p1

    #@15
    move/from16 v1, p4

    #@17
    move-object/from16 v2, p6

    #@19
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArrayMap;)Ljava/util/Map;

    #@1c
    move-result-object v16

    #@1d
    .line 132
    .local v16, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    new-instance v19, Ljava/util/ArrayList;

    #@1f
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@22
    .line 135
    .local v19, "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "carrier_apps_handled"

    #@25
    const/4 v5, 0x0

    #@26
    .line 134
    move-object/from16 v0, p3

    #@28
    move/from16 v1, p4

    #@2a
    invoke-static {v0, v3, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@2d
    move-result v3

    #@2e
    .line 135
    const/4 v5, 0x1

    #@2f
    .line 134
    if-ne v3, v5, :cond_8

    #@31
    const/16 v21, 0x1

    #@33
    .line 138
    .local v21, "hasRunOnce":Z
    :goto_0
    :try_start_0
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v12

    #@37
    .local v12, "ai$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_f

    #@3d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v11

    #@41
    check-cast v11, Landroid/content/pm/ApplicationInfo;

    #@43
    .line 139
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@45
    .line 140
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_a

    #@47
    .line 141
    move-object/from16 v0, p2

    #@49
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@4c
    move-result v3

    #@4d
    .line 142
    const/4 v5, 0x1

    #@4e
    .line 141
    if-ne v3, v5, :cond_9

    #@50
    const/16 v20, 0x1

    #@52
    .line 144
    .local v20, "hasPrivileges":Z
    :goto_2
    if-eqz v20, :cond_c

    #@54
    .line 147
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_4

    #@5a
    .line 148
    iget v3, v11, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@5c
    if-eqz v3, :cond_3

    #@5e
    .line 150
    iget v3, v11, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@60
    .line 151
    const/4 v5, 0x4

    #@61
    .line 150
    if-ne v3, v5, :cond_4

    #@63
    .line 152
    :cond_3
    const-string/jumbo v3, "CarrierAppUtils"

    #@66
    new-instance v5, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v6, "Update state("

    #@6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    const-string/jumbo v6, "): ENABLED for user "

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    move/from16 v0, p4

    #@7f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 156
    const/4 v5, 0x1

    #@8b
    .line 157
    const/4 v6, 0x1

    #@8c
    move-object/from16 v3, p1

    #@8e
    move/from16 v7, p4

    #@90
    move-object/from16 v8, p0

    #@92
    .line 154
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@95
    .line 163
    :cond_4
    move-object/from16 v0, v16

    #@97
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    move-result-object v15

    #@9b
    check-cast v15, Ljava/util/List;

    #@9d
    .line 164
    .local v15, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v15, :cond_b

    #@9f
    .line 165
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a2
    move-result-object v14

    #@a3
    .local v14, "associatedApp$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@a6
    move-result v3

    #@a7
    if-eqz v3, :cond_b

    #@a9
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ac
    move-result-object v13

    #@ad
    check-cast v13, Landroid/content/pm/ApplicationInfo;

    #@af
    .line 166
    .local v13, "associatedApp":Landroid/content/pm/ApplicationInfo;
    iget v3, v13, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@b1
    if-eqz v3, :cond_6

    #@b3
    .line 168
    iget v3, v13, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@b5
    .line 169
    const/4 v5, 0x4

    #@b6
    .line 168
    if-ne v3, v5, :cond_5

    #@b8
    .line 170
    :cond_6
    const-string/jumbo v3, "CarrierAppUtils"

    #@bb
    new-instance v5, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v6, "Update associated state("

    #@c3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v5

    #@c7
    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@c9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v5

    #@cd
    .line 171
    const-string/jumbo v6, "): ENABLED for user "

    #@d0
    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v5

    #@d4
    move/from16 v0, p4

    #@d6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v5

    #@da
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v5

    #@de
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 173
    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@e3
    .line 174
    const/4 v7, 0x1

    #@e4
    .line 175
    const/4 v8, 0x1

    #@e5
    move-object/from16 v5, p1

    #@e7
    move/from16 v9, p4

    #@e9
    move-object/from16 v10, p0

    #@eb
    .line 172
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@ee
    goto :goto_3

    #@ef
    .line 239
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "ai$iterator":Ljava/util/Iterator;
    .end local v13    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "associatedApp$iterator":Ljava/util/Iterator;
    .end local v15    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "hasPrivileges":Z
    :catch_0
    move-exception v18

    #@f0
    .line 240
    .local v18, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CarrierAppUtils"

    #@f3
    const-string/jumbo v5, "Could not reach PackageManager"

    #@f6
    move-object/from16 v0, v18

    #@f8
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@fb
    .line 120
    .end local v18    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_4
    return-void

    #@fc
    .line 134
    .end local v21    # "hasRunOnce":Z
    :cond_8
    const/16 v21, 0x0

    #@fe
    .restart local v21    # "hasRunOnce":Z
    goto/16 :goto_0

    #@100
    .line 141
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "ai$iterator":Ljava/util/Iterator;
    :cond_9
    const/16 v20, 0x0

    #@102
    goto/16 :goto_2

    #@104
    .line 140
    :cond_a
    const/16 v20, 0x0

    #@106
    goto/16 :goto_2

    #@108
    .line 183
    .restart local v15    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "hasPrivileges":Z
    :cond_b
    :try_start_1
    iget-object v3, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@10a
    move-object/from16 v0, v19

    #@10c
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10f
    goto/16 :goto_1

    #@111
    .line 187
    .end local v15    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_c
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@114
    move-result v3

    #@115
    if-nez v3, :cond_d

    #@117
    .line 188
    iget v3, v11, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@119
    if-nez v3, :cond_d

    #@11b
    .line 190
    const-string/jumbo v3, "CarrierAppUtils"

    #@11e
    new-instance v5, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v6, "Update state("

    #@126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v5

    #@12a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v5

    #@12e
    .line 191
    const-string/jumbo v6, "): DISABLED_UNTIL_USED for user "

    #@131
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    move/from16 v0, p4

    #@137
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v5

    #@13b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v5

    #@13f
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@142
    .line 194
    const/4 v5, 0x4

    #@143
    .line 195
    const/4 v6, 0x0

    #@144
    move-object/from16 v3, p1

    #@146
    move/from16 v7, p4

    #@148
    move-object/from16 v8, p0

    #@14a
    .line 192
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@14d
    .line 203
    :cond_d
    if-nez v21, :cond_2

    #@14f
    .line 204
    move-object/from16 v0, v16

    #@151
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@154
    move-result-object v15

    #@155
    check-cast v15, Ljava/util/List;

    #@157
    .line 205
    .restart local v15    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v15, :cond_2

    #@159
    .line 206
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15c
    move-result-object v14

    #@15d
    .restart local v14    # "associatedApp$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@160
    move-result v3

    #@161
    if-eqz v3, :cond_2

    #@163
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@166
    move-result-object v13

    #@167
    check-cast v13, Landroid/content/pm/ApplicationInfo;

    #@169
    .line 207
    .restart local v13    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    iget v3, v13, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@16b
    if-nez v3, :cond_e

    #@16d
    .line 209
    const-string/jumbo v3, "CarrierAppUtils"

    #@170
    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    #@172
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@175
    const-string/jumbo v6, "Update associated state("

    #@178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v5

    #@17c
    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@17e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v5

    #@182
    .line 211
    const-string/jumbo v6, "): DISABLED_UNTIL_USED for user "

    #@185
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v5

    #@189
    move/from16 v0, p4

    #@18b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v5

    #@18f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v5

    #@193
    .line 209
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@196
    .line 213
    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@198
    .line 214
    const/4 v7, 0x4

    #@199
    .line 216
    const/4 v8, 0x0

    #@19a
    move-object/from16 v5, p1

    #@19c
    move/from16 v9, p4

    #@19e
    move-object/from16 v10, p0

    #@1a0
    .line 212
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@1a3
    goto :goto_5

    #@1a4
    .line 227
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "associatedApp$iterator":Ljava/util/Iterator;
    .end local v15    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "hasPrivileges":Z
    :cond_f
    if-nez v21, :cond_10

    #@1a6
    .line 229
    const-string/jumbo v3, "carrier_apps_handled"

    #@1a9
    const/4 v5, 0x1

    #@1aa
    .line 228
    move-object/from16 v0, p3

    #@1ac
    move/from16 v1, p4

    #@1ae
    invoke-static {v0, v3, v5, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@1b1
    .line 232
    :cond_10
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    #@1b4
    move-result v3

    #@1b5
    if-nez v3, :cond_7

    #@1b7
    .line 235
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@1ba
    move-result v3

    #@1bb
    new-array v0, v3, [Ljava/lang/String;

    #@1bd
    move-object/from16 v22, v0

    #@1bf
    .line 236
    .local v22, "packageNames":[Ljava/lang/String;
    move-object/from16 v0, v19

    #@1c1
    move-object/from16 v1, v22

    #@1c3
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1c6
    .line 237
    move-object/from16 v0, p1

    #@1c8
    move-object/from16 v1, v22

    #@1ca
    move/from16 v2, p4

    #@1cc
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1cf
    goto/16 :goto_4
.end method

.method private static getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 351
    const v2, 0x8000

    #@4
    .line 350
    :try_start_0
    invoke-interface {p0, p2, v2, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    .line 352
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 353
    return-object v0

    #@11
    .line 355
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@12
    .line 356
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CarrierAppUtils"

    #@15
    const-string/jumbo v3, "Could not reach PackageManager"

    #@18
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 358
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public static getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 289
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 290
    const v2, 0x1070038

    #@7
    .line 289
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 291
    .local v0, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private static getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .param p2, "systemCarrierAppsDisabledUntilUsed"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 299
    if-eqz p2, :cond_0

    #@3
    .line 300
    array-length v4, p2

    #@4
    if-nez v4, :cond_1

    #@6
    .line 301
    :cond_0
    return-object v5

    #@7
    .line 303
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@9
    array-length v4, p2

    #@a
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 304
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    array-length v4, p2

    #@f
    if-ge v2, v4, :cond_3

    #@11
    .line 305
    aget-object v3, p2, v2

    #@13
    .line 307
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    #@16
    move-result-object v0

    #@17
    .line 308
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    #@19
    .line 309
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    .line 304
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 312
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public static getDefaultCarrierApps(Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)Ljava/util/List;
    .locals 9
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 254
    invoke-static {p0, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    .line 255
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    #@9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@c
    move-result v7

    #@d
    if-eqz v7, :cond_1

    #@f
    .line 256
    :cond_0
    return-object v8

    #@10
    .line 262
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@13
    move-result v7

    #@14
    add-int/lit8 v3, v7, -0x1

    #@16
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    #@18
    .line 263
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@1e
    .line 264
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@20
    .line 266
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@23
    move-result v7

    #@24
    if-ne v7, v5, :cond_3

    #@26
    move v2, v5

    #@27
    .line 268
    .local v2, "hasPrivileges":Z
    :goto_1
    if-nez v2, :cond_2

    #@29
    .line 269
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@2c
    .line 262
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@2e
    goto :goto_0

    #@2f
    .end local v2    # "hasPrivileges":Z
    :cond_3
    move v2, v6

    #@30
    .line 266
    goto :goto_1

    #@31
    .line 273
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method private static getDefaultCarrierAssociatedAppsHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArrayMap;)Ljava/util/Map;
    .locals 9
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    .local p2, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    #@3
    move-result v7

    #@4
    .line 320
    .local v7, "size":I
    new-instance v3, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v3, v7}, Landroid/util/ArrayMap;-><init>(I)V

    #@9
    .line 321
    .local v3, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    const/4 v5, 0x0

    #@a
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_4

    #@c
    .line 322
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Ljava/lang/String;

    #@12
    .line 324
    .local v4, "carrierAppPackage":Ljava/lang/String;
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/util/List;

    #@18
    .line 325
    .local v2, "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@19
    .local v6, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1c
    move-result v8

    #@1d
    if-ge v6, v8, :cond_3

    #@1f
    .line 328
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    check-cast v8, Ljava/lang/String;

    #@25
    .line 327
    invoke-static {p0, p1, v8}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v0

    #@29
    .line 331
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@2b
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_1

    #@31
    .line 325
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@33
    goto :goto_1

    #@34
    .line 332
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Ljava/util/List;

    #@3a
    .line 333
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v1, :cond_2

    #@3c
    .line 334
    new-instance v1, Ljava/util/ArrayList;

    #@3e
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 335
    .restart local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 337
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_2

    #@48
    .line 321
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 341
    .end local v2    # "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "carrierAppPackage":Ljava/lang/String;
    .end local v6    # "j":I
    :cond_4
    return-object v3
.end method
