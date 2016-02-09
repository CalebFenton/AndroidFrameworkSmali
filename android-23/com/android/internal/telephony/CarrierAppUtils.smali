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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V
    .locals 4
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "userId"    # I

    #@0
    .prologue
    const-class v2, Lcom/android/internal/telephony/CarrierAppUtils;

    #@2
    monitor-enter v2

    #@3
    .line 66
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    .line 67
    const v3, 0x1070034

    #@a
    .line 66
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 68
    .local v0, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 62
    return-void

    #@13
    .end local v0    # "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
.end method

.method public static disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I[Ljava/lang/String;)V
    .locals 16
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "userId"    # I
    .param p4, "systemCarrierAppsDisabledUntilUsed"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 77
    move-object/from16 v0, p1

    #@2
    move/from16 v1, p3

    #@4
    move-object/from16 v2, p4

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;

    #@9
    move-result-object v11

    #@a
    .line 79
    .local v11, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v11, :cond_0

    #@c
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 80
    :cond_0
    return-void

    #@13
    .line 83
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    #@15
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 86
    .local v13, "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v10

    #@1c
    .local v10, "ai$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_8

    #@22
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v9

    #@26
    check-cast v9, Landroid/content/pm/ApplicationInfo;

    #@28
    .line 87
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2a
    .line 89
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@2c
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@2f
    move-result v3

    #@30
    .line 90
    const/4 v5, 0x1

    #@31
    .line 89
    if-ne v3, v5, :cond_6

    #@33
    const/4 v14, 0x1

    #@34
    .line 94
    .local v14, "hasPrivileges":Z
    :goto_1
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_4

    #@3a
    .line 95
    if-eqz v14, :cond_7

    #@3c
    .line 96
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@3e
    if-eqz v3, :cond_3

    #@40
    .line 97
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@42
    .line 98
    const/4 v5, 0x4

    #@43
    .line 97
    if-ne v3, v5, :cond_7

    #@45
    .line 99
    :cond_3
    const-string/jumbo v3, "CarrierAppUtils"

    #@48
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "Update state("

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    const-string/jumbo v6, "): ENABLED for user "

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    move/from16 v0, p3

    #@61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 102
    const/4 v5, 0x1

    #@6d
    .line 103
    const/4 v6, 0x1

    #@6e
    move-object/from16 v3, p1

    #@70
    move/from16 v7, p3

    #@72
    move-object/from16 v8, p0

    #@74
    .line 101
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@77
    .line 116
    :cond_4
    :goto_2
    if-eqz v14, :cond_2

    #@79
    .line 117
    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7b
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    goto :goto_0

    #@7f
    .line 128
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "ai$iterator":Ljava/util/Iterator;
    .end local v14    # "hasPrivileges":Z
    :catch_0
    move-exception v12

    #@80
    .line 129
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CarrierAppUtils"

    #@83
    const-string/jumbo v5, "Could not reach PackageManager"

    #@86
    invoke-static {v3, v5, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@89
    .line 76
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    return-void

    #@8a
    .line 89
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "ai$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v14, 0x0

    #@8b
    .restart local v14    # "hasPrivileges":Z
    goto :goto_1

    #@8c
    .line 104
    :cond_7
    if-nez v14, :cond_4

    #@8e
    .line 105
    :try_start_1
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@90
    if-nez v3, :cond_4

    #@92
    .line 107
    const-string/jumbo v3, "CarrierAppUtils"

    #@95
    new-instance v5, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v6, "Update state("

    #@9d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    .line 108
    const-string/jumbo v6, "): DISABLED_UNTIL_USED for user "

    #@a8
    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v5

    #@ac
    move/from16 v0, p3

    #@ae
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v5

    #@b6
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    .line 110
    const/4 v5, 0x4

    #@ba
    const/4 v6, 0x0

    #@bb
    move-object/from16 v3, p1

    #@bd
    move/from16 v7, p3

    #@bf
    move-object/from16 v8, p0

    #@c1
    .line 109
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@c4
    goto :goto_2

    #@c5
    .line 121
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "hasPrivileges":Z
    :cond_8
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    #@c8
    move-result v3

    #@c9
    if-nez v3, :cond_5

    #@cb
    .line 124
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@ce
    move-result v3

    #@cf
    new-array v15, v3, [Ljava/lang/String;

    #@d1
    .line 125
    .local v15, "packageNames":[Ljava/lang/String;
    invoke-interface {v13, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d4
    .line 126
    move-object/from16 v0, p1

    #@d6
    move/from16 v1, p3

    #@d8
    invoke-interface {v0, v15, v1}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@db
    goto :goto_3
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
    .line 178
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 179
    const v2, 0x1070034

    #@7
    .line 178
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 180
    .local v0, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private static getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;
    .locals 8
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
    const/4 v7, 0x0

    #@2
    .line 187
    if-eqz p2, :cond_0

    #@4
    .line 188
    array-length v6, p2

    #@5
    if-nez v6, :cond_1

    #@7
    .line 189
    :cond_0
    return-object v7

    #@8
    .line 191
    :cond_1
    const/4 v1, 0x0

    #@9
    .line 193
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@b
    array-length v6, p2

    #@c
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    .line 194
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_1
    array-length v6, p2

    #@10
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_0
    if-ge v5, v6, :cond_4

    #@12
    aget-object v4, p2, v5

    #@14
    .line 196
    .local v4, "packageName":Ljava/lang/String;
    const v7, 0x8000

    #@17
    .line 195
    invoke-interface {p0, v4, v7, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@1a
    move-result-object v0

    #@1b
    .line 197
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    #@1d
    .line 194
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 201
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_2

    #@26
    .line 204
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@29
    goto :goto_1

    #@2a
    .line 206
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@2b
    .local v3, "e":Landroid/os/RemoteException;
    move-object v1, v2

    #@2c
    .line 207
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_2
    const-string/jumbo v5, "CarrierAppUtils"

    #@2f
    const-string/jumbo v6, "Could not reach PackageManager"

    #@32
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    .line 209
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v1

    #@36
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    move-object v1, v2

    #@37
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_3

    #@38
    .line 206
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v3

    #@39
    .restart local v3    # "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public static getDefaultCarrierApps(Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    #@1
    .line 143
    invoke-static {p0, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 144
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    #@7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 145
    :cond_0
    return-object v6

    #@e
    .line 151
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@11
    move-result v5

    #@12
    add-int/lit8 v3, v5, -0x1

    #@14
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    #@16
    .line 152
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@1c
    .line 153
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1e
    .line 155
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@21
    move-result v5

    #@22
    .line 156
    const/4 v6, 0x1

    #@23
    .line 155
    if-ne v5, v6, :cond_3

    #@25
    const/4 v2, 0x1

    #@26
    .line 157
    .local v2, "hasPrivileges":Z
    :goto_1
    if-nez v2, :cond_2

    #@28
    .line 158
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@2b
    .line 151
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 155
    .end local v2    # "hasPrivileges":Z
    :cond_3
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "hasPrivileges":Z
    goto :goto_1

    #@30
    .line 162
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "hasPrivileges":Z
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    return-object v1
.end method
