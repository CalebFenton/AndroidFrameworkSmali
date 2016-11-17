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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;I)V
    .locals 4
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "userId"    # I

    #@0
    .prologue
    const-class v2, Lcom/android/internal/telephony/CarrierAppUtils;

    #@2
    monitor-enter v2

    #@3
    .line 89
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    .line 90
    const v3, 0x1070038

    #@a
    .line 89
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 92
    .local v0, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    const/4 v1, 0x0

    #@f
    .line 91
    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 85
    return-void

    #@14
    .end local v0    # "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
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
    .line 67
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    .line 68
    const v3, 0x1070038

    #@a
    .line 67
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 69
    .local v0, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 63
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
    .line 100
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
    .line 102
    .local v11, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v11, :cond_0

    #@c
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 103
    :cond_0
    return-void

    #@13
    .line 106
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    #@15
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 109
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
    if-eqz v3, :cond_9

    #@22
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v9

    #@26
    check-cast v9, Landroid/content/pm/ApplicationInfo;

    #@28
    .line 110
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2a
    .line 111
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_7

    #@2c
    .line 112
    move-object/from16 v0, p2

    #@2e
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@31
    move-result v3

    #@32
    .line 113
    const/4 v5, 0x1

    #@33
    .line 112
    if-ne v3, v5, :cond_6

    #@35
    const/4 v14, 0x1

    #@36
    .line 117
    .local v14, "hasPrivileges":Z
    :goto_1
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_4

    #@3c
    .line 118
    if-eqz v14, :cond_8

    #@3e
    .line 119
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@40
    if-eqz v3, :cond_3

    #@42
    .line 120
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@44
    .line 121
    const/4 v5, 0x4

    #@45
    .line 120
    if-ne v3, v5, :cond_8

    #@47
    .line 122
    :cond_3
    const-string/jumbo v3, "CarrierAppUtils"

    #@4a
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "Update state("

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    const-string/jumbo v6, "): ENABLED for user "

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    move/from16 v0, p3

    #@63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 125
    const/4 v5, 0x1

    #@6f
    .line 126
    const/4 v6, 0x1

    #@70
    move-object/from16 v3, p1

    #@72
    move/from16 v7, p3

    #@74
    move-object/from16 v8, p0

    #@76
    .line 124
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@79
    .line 139
    :cond_4
    :goto_2
    if-eqz v14, :cond_2

    #@7b
    .line 140
    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7d
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    goto :goto_0

    #@81
    .line 151
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "ai$iterator":Ljava/util/Iterator;
    .end local v14    # "hasPrivileges":Z
    :catch_0
    move-exception v12

    #@82
    .line 152
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CarrierAppUtils"

    #@85
    const-string/jumbo v5, "Could not reach PackageManager"

    #@88
    invoke-static {v3, v5, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8b
    .line 99
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    return-void

    #@8c
    .line 112
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "ai$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v14, 0x0

    #@8d
    .restart local v14    # "hasPrivileges":Z
    goto :goto_1

    #@8e
    .line 111
    .end local v14    # "hasPrivileges":Z
    :cond_7
    const/4 v14, 0x0

    #@8f
    .restart local v14    # "hasPrivileges":Z
    goto :goto_1

    #@90
    .line 127
    :cond_8
    if-nez v14, :cond_4

    #@92
    .line 128
    :try_start_1
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@94
    if-nez v3, :cond_4

    #@96
    .line 130
    const-string/jumbo v3, "CarrierAppUtils"

    #@99
    new-instance v5, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v6, "Update state("

    #@a1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    .line 131
    const-string/jumbo v6, "): DISABLED_UNTIL_USED for user "

    #@ac
    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    move/from16 v0, p3

    #@b2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 133
    const/4 v5, 0x4

    #@be
    const/4 v6, 0x0

    #@bf
    move-object/from16 v3, p1

    #@c1
    move/from16 v7, p3

    #@c3
    move-object/from16 v8, p0

    #@c5
    .line 132
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@c8
    goto :goto_2

    #@c9
    .line 144
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "hasPrivileges":Z
    :cond_9
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    #@cc
    move-result v3

    #@cd
    if-nez v3, :cond_5

    #@cf
    .line 147
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@d2
    move-result v3

    #@d3
    new-array v15, v3, [Ljava/lang/String;

    #@d5
    .line 148
    .local v15, "packageNames":[Ljava/lang/String;
    invoke-interface {v13, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d8
    .line 149
    move-object/from16 v0, p1

    #@da
    move/from16 v1, p3

    #@dc
    invoke-interface {v0, v15, v1}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@df
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
    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 202
    const v2, 0x1070038

    #@7
    .line 201
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 203
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
    .line 210
    if-eqz p2, :cond_0

    #@4
    .line 211
    array-length v6, p2

    #@5
    if-nez v6, :cond_1

    #@7
    .line 212
    :cond_0
    return-object v7

    #@8
    .line 214
    :cond_1
    const/4 v1, 0x0

    #@9
    .line 216
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
    .line 217
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
    .line 219
    .local v4, "packageName":Ljava/lang/String;
    const v7, 0x8000

    #@17
    .line 218
    invoke-interface {p0, v4, v7, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@1a
    move-result-object v0

    #@1b
    .line 220
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    #@1d
    .line 217
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 224
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_2

    #@26
    .line 227
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@29
    goto :goto_1

    #@2a
    .line 229
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@2b
    .local v3, "e":Landroid/os/RemoteException;
    move-object v1, v2

    #@2c
    .line 230
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_2
    const-string/jumbo v5, "CarrierAppUtils"

    #@2f
    const-string/jumbo v6, "Could not reach PackageManager"

    #@32
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    .line 232
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
    .line 229
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v3

    #@39
    .restart local v3    # "e":Landroid/os/RemoteException;
    goto :goto_2
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
    .line 166
    invoke-static {p0, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    .line 167
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    #@9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@c
    move-result v7

    #@d
    if-eqz v7, :cond_1

    #@f
    .line 168
    :cond_0
    return-object v8

    #@10
    .line 174
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
    .line 175
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@1e
    .line 176
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@20
    .line 178
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@23
    move-result v7

    #@24
    if-ne v7, v5, :cond_3

    #@26
    move v2, v5

    #@27
    .line 180
    .local v2, "hasPrivileges":Z
    :goto_1
    if-nez v2, :cond_2

    #@29
    .line 181
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@2c
    .line 174
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@2e
    goto :goto_0

    #@2f
    .end local v2    # "hasPrivileges":Z
    :cond_3
    move v2, v6

    #@30
    .line 178
    goto :goto_1

    #@31
    .line 185
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    return-object v1
.end method
