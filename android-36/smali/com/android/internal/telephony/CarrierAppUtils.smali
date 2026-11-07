.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 13
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    const-class v1, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v1

    .line 111
    :try_start_3
    const-class v0, Landroid/os/SystemConfigManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    .line 112
    .local v0, "config":Landroid/os/SystemConfigManager;
    nop

    .line 113
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v2

    move-object v7, v2

    .line 115
    .local v7, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 116
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v8

    .line 117
    .local v8, "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v5

    .line 118
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    move-object v3, p0

    move v6, p1

    move-object v9, p2

    .end local p0    # "callingPackage":Ljava/lang/String;
    .end local p1    # "userId":I
    .end local p2    # "context":Landroid/content/Context;
    .local v3, "callingPackage":Ljava/lang/String;
    .local v6, "userId":I
    .local v9, "context":Landroid/content/Context;
    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 121
    monitor-exit v1

    return-void

    .line 110
    .end local v0    # "config":Landroid/os/SystemConfigManager;
    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "userId":I
    .end local v7    # "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    .end local v9    # "context":Landroid/content/Context;
    :catchall_23
    move-exception v0

    move-object p0, v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_23

    throw p0
.end method

.method public static declared-synchronized blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V
    .registers 14
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "userId"    # I
    .param p3, "context"    # Landroid/content/Context;

    const-class v1, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v1

    .line 84
    :try_start_3
    const-class v0, Landroid/os/SystemConfigManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    .line 85
    .local v0, "config":Landroid/os/SystemConfigManager;
    nop

    .line 86
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v2

    move-object v7, v2

    .line 87
    .local v7, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 88
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v8

    .line 89
    .local v8, "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    invoke-static {p3, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v5

    .line 90
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move-object v9, p3

    .end local p0    # "callingPackage":Ljava/lang/String;
    .end local p1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local p2    # "userId":I
    .end local p3    # "context":Landroid/content/Context;
    .local v3, "callingPackage":Ljava/lang/String;
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    .local v6, "userId":I
    .local v9, "context":Landroid/content/Context;
    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 93
    monitor-exit v1

    return-void

    .line 83
    .end local v0    # "config":Landroid/os/SystemConfigManager;
    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "userId":I
    .end local v7    # "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    .end local v9    # "context":Landroid/content/Context;
    :catchall_23
    move-exception v0

    move-object p0, v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_23

    throw p0
.end method

.method public static blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    .registers 38
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "userId"    # I
    .param p6, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 144
    .local p4, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    const-string v6, "CarrierAppUtils"

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 145
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 146
    const-string v0, "legacy_permission"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/permission/LegacyPermissionManager;

    .line 147
    .local v8, "permissionManager":Landroid/permission/LegacyPermissionManager;
    move-object/from16 v9, p4

    invoke-static {v4, v9, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 149
    .local v10, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v10, :cond_32a

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    goto/16 :goto_32e

    .line 153
    :cond_2e
    move-object/from16 v11, p5

    invoke-static {v4, v11, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v12

    .line 156
    .local v12, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 157
    .local v13, "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 159
    invoke-virtual {v3}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 158
    const-string v14, "carrier_apps_handled"

    const/4 v15, 0x0

    invoke-static {v3, v14, v15, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 163
    .local v9, "carrierAppsHandledSdk":I
    if-eqz v9, :cond_4b

    const/16 v16, 0x1

    goto :goto_4d

    :cond_4b
    move/from16 v16, v15

    .line 164
    .local v16, "hasRunEver":Z
    :goto_4d
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v9, v15, :cond_53

    const/4 v15, 0x1

    goto :goto_54

    :cond_53
    const/4 v15, 0x0

    .line 167
    .local v15, "hasRunForSdk":Z
    :goto_54
    :try_start_54
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_58
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2e5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ApplicationInfo;
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_54 .. :try_end_64} :catch_31b

    move-object/from16 v19, v18

    .line 168
    .local v19, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v19

    move-object/from16 v19, v10

    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    .local v19, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_6a
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_6c} :catch_2dd

    .line 169
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_80

    .line 170
    :try_start_6e
    invoke-virtual {v2, v10}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v11
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_72} :catch_77

    const/4 v2, 0x1

    if-ne v11, v2, :cond_80

    const/4 v2, 0x1

    goto :goto_81

    .line 325
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    :catch_77
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v24, v12

    move/from16 v27, v15

    goto/16 :goto_324

    .line 170
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_80
    const/4 v2, 0x0

    .line 174
    .local v2, "hasPrivileges":Z
    :goto_81
    const/4 v11, 0x0

    :try_start_82
    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 176
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_82 .. :try_end_8b} :catch_2dd

    .line 177
    .local v11, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    if-eqz v11, :cond_b9

    .line 178
    :try_start_8d
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_91
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    move-object/from16 v22, v21

    .line 179
    .local v22, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    move/from16 v21, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v11

    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .local v2, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    .local v21, "hasPrivileges":Z
    .local v22, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    iget-object v11, v2, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    .local v23, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    invoke-virtual {v7, v11, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_af
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8d .. :try_end_af} :catch_77

    .line 181
    .end local v23    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    move/from16 v2, v21

    move-object/from16 v11, v22

    goto :goto_91

    .line 178
    .end local v21    # "hasPrivileges":Z
    .end local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .local v2, "hasPrivileges":Z
    .restart local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    :cond_b4
    move/from16 v21, v2

    move-object/from16 v22, v11

    .end local v2    # "hasPrivileges":Z
    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .restart local v21    # "hasPrivileges":Z
    .restart local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    goto :goto_bd

    .line 177
    .end local v21    # "hasPrivileges":Z
    .end local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .restart local v2    # "hasPrivileges":Z
    .restart local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    :cond_b9
    move/from16 v21, v2

    move-object/from16 v22, v11

    .line 184
    .end local v2    # "hasPrivileges":Z
    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .restart local v21    # "hasPrivileges":Z
    .restart local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    :goto_bd
    :try_start_bd
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v5, v2, v11}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bd .. :try_end_ce} :catch_2dd

    .line 186
    .local v2, "enabledSetting":I
    const-string v11, "Update associated state ("

    move-object/from16 v20, v7

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .local v20, "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "Update state ("

    const/high16 v23, 0x800000

    if-eqz v21, :cond_1e2

    .line 189
    :try_start_d8
    invoke-static {v0, v2}, Lcom/android/internal/telephony/CarrierAppUtils;->shouldUpdateEnabledState(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v24
    :try_end_dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_dc} :catch_1db

    move/from16 v25, v2

    .end local v2    # "enabledSetting":I
    .local v25, "enabledSetting":I
    const-string v2, "): ENABLED for user "

    if-eqz v24, :cond_128

    .line 190
    move-object/from16 v24, v12

    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .local v24, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :try_start_e4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v5, v7, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    .line 193
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 194
    const/4 v12, 0x2

    invoke-virtual {v7, v10, v12}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 196
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 197
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 198
    const/4 v12, 0x1

    invoke-virtual {v7, v10, v12, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_122
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e4 .. :try_end_122} :catch_123

    goto :goto_12a

    .line 325
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v21    # "hasPrivileges":Z
    .end local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v25    # "enabledSetting":I
    :catch_123
    move-exception v0

    move/from16 v27, v15

    goto/16 :goto_324

    .line 189
    .end local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v21    # "hasPrivileges":Z
    .restart local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .restart local v25    # "enabledSetting":I
    :cond_128
    move-object/from16 v24, v12

    .line 205
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :goto_12a
    if-eqz v22, :cond_1d1

    .line 206
    :try_start_12c
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_130
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    .line 207
    .local v12, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    nop

    .line 208
    move-object/from16 v26, v7

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7
    :try_end_143
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12c .. :try_end_143} :catch_1cc

    move/from16 v27, v15

    const/4 v15, 0x0

    .end local v15    # "hasRunForSdk":Z
    .local v27, "hasRunForSdk":Z
    :try_start_146
    invoke-virtual {v5, v7, v15}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    .line 209
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v15, v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 210
    invoke-virtual {v7, v15}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v7

    .line 212
    .local v7, "associatedAppEnabledSetting":I
    iget-object v15, v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v15, v15, v23

    if-eqz v15, :cond_160

    const/4 v15, 0x1

    goto :goto_161

    :cond_160
    const/4 v15, 0x0

    .line 220
    .local v15, "associatedAppInstalled":Z
    :goto_161
    if-eqz v7, :cond_16f

    move/from16 v28, v15

    .end local v15    # "associatedAppInstalled":Z
    .local v28, "associatedAppInstalled":Z
    const/4 v15, 0x4

    if-eq v7, v15, :cond_171

    if-nez v28, :cond_16b

    goto :goto_171

    :cond_16b
    move-object/from16 v30, v2

    const/4 v2, 0x1

    goto :goto_1c0

    .end local v28    # "associatedAppInstalled":Z
    .restart local v15    # "associatedAppInstalled":Z
    :cond_16f
    move/from16 v28, v15

    .line 225
    .end local v15    # "associatedAppInstalled":Z
    .restart local v28    # "associatedAppInstalled":Z
    :cond_171
    :goto_171
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v29, v7

    .end local v7    # "associatedAppEnabledSetting":I
    .local v29, "associatedAppEnabledSetting":I
    iget-object v7, v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v15, 0x0

    invoke-virtual {v5, v7, v15}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    .line 229
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v15, v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 230
    move-object/from16 v30, v2

    const/4 v2, 0x2

    invoke-virtual {v7, v15, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 232
    nop

    .line 233
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 232
    const/4 v15, 0x0

    invoke-virtual {v5, v1, v15, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 234
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v15, v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v7, v15, v2, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 240
    .end local v12    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    .end local v28    # "associatedAppInstalled":Z
    .end local v29    # "associatedAppEnabledSetting":I
    :goto_1c0
    move-object/from16 v7, v26

    move/from16 v15, v27

    move-object/from16 v2, v30

    goto/16 :goto_130

    .line 206
    .end local v27    # "hasRunForSdk":Z
    .local v15, "hasRunForSdk":Z
    :cond_1c8
    move/from16 v27, v15

    const/4 v2, 0x1

    .end local v15    # "hasRunForSdk":Z
    .restart local v27    # "hasRunForSdk":Z
    goto :goto_1d4

    .line 325
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v21    # "hasPrivileges":Z
    .end local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v25    # "enabledSetting":I
    .end local v27    # "hasRunForSdk":Z
    .restart local v15    # "hasRunForSdk":Z
    :catch_1cc
    move-exception v0

    move/from16 v27, v15

    .end local v15    # "hasRunForSdk":Z
    .restart local v27    # "hasRunForSdk":Z
    goto/16 :goto_324

    .line 205
    .end local v27    # "hasRunForSdk":Z
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v15    # "hasRunForSdk":Z
    .restart local v21    # "hasPrivileges":Z
    .restart local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .restart local v25    # "enabledSetting":I
    :cond_1d1
    move/from16 v27, v15

    const/4 v2, 0x1

    .line 244
    .end local v15    # "hasRunForSdk":Z
    .restart local v27    # "hasRunForSdk":Z
    :goto_1d4
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_146 .. :try_end_1d9} :catch_319

    goto/16 :goto_2cd

    .line 325
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v21    # "hasPrivileges":Z
    .end local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v25    # "enabledSetting":I
    .end local v27    # "hasRunForSdk":Z
    .local v12, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v15    # "hasRunForSdk":Z
    :catch_1db
    move-exception v0

    move-object/from16 v24, v12

    move/from16 v27, v15

    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v15    # "hasRunForSdk":Z
    .restart local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v27    # "hasRunForSdk":Z
    goto/16 :goto_324

    .line 253
    .end local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v27    # "hasRunForSdk":Z
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "enabledSetting":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v15    # "hasRunForSdk":Z
    .restart local v21    # "hasPrivileges":Z
    .restart local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    :cond_1e2
    move/from16 v25, v2

    move-object/from16 v24, v12

    move/from16 v27, v15

    const/4 v2, 0x1

    .end local v2    # "enabledSetting":I
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v15    # "hasRunForSdk":Z
    .restart local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v25    # "enabledSetting":I
    .restart local v27    # "hasRunForSdk":Z
    const/4 v12, 0x3

    const-string v15, "): DISABLED_UNTIL_USED for user "

    if-nez v16, :cond_228

    :try_start_1ee
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v18

    if-nez v18, :cond_228

    if-nez v25, :cond_228

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v2, v2, v23

    if-eqz v2, :cond_228

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v10, v12}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 271
    :cond_228
    if-eqz v22, :cond_2cb

    .line 272
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    .line 273
    .local v7, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    if-eqz v16, :cond_254

    if-nez v27, :cond_250

    iget v12, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    move-object/from16 v26, v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v26, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v0, -0x1

    if-eq v12, v0, :cond_252

    iget v0, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    if-le v0, v9, :cond_252

    iget v0, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v12, :cond_252

    goto :goto_256

    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_250
    move-object/from16 v26, v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_252
    const/4 v0, 0x0

    goto :goto_257

    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_254
    move-object/from16 v26, v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_256
    const/4 v0, 0x1

    .line 278
    .local v0, "allowDisable":Z
    :goto_257
    nop

    .line 279
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    move/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "allowDisable":Z
    .local v28, "allowDisable":Z
    invoke-virtual {v5, v12, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v12

    .line 280
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v12, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 281
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "associatedAppEnabledSetting":I
    iget-object v12, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v12, v12, v23

    if-eqz v12, :cond_279

    const/4 v12, 0x1

    goto :goto_27a

    :cond_279
    const/4 v12, 0x0

    .line 293
    .local v12, "associatedAppInstalled":Z
    :goto_27a
    if-eqz v28, :cond_2ba

    if-nez v0, :cond_2ba

    if-eqz v12, :cond_2ba

    .line 297
    move/from16 v29, v0

    .end local v0    # "associatedAppEnabledSetting":I
    .restart local v29    # "associatedAppEnabledSetting":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 303
    move-object/from16 v30, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    goto :goto_2bf

    .line 293
    .end local v29    # "associatedAppEnabledSetting":I
    .restart local v0    # "associatedAppEnabledSetting":I
    :cond_2ba
    move/from16 v29, v0

    move-object/from16 v30, v2

    const/4 v2, 0x3

    .line 306
    .end local v0    # "associatedAppEnabledSetting":I
    .end local v7    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    .end local v12    # "associatedAppInstalled":Z
    .end local v28    # "allowDisable":Z
    :goto_2bf
    move-object/from16 v1, p0

    move v12, v2

    move-object/from16 v0, v26

    move-object/from16 v2, v30

    goto/16 :goto_22e

    .line 272
    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2c8
    move-object/from16 v26, v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_2cd

    .line 271
    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2cb
    move-object/from16 v26, v0

    .line 309
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v21    # "hasPrivileges":Z
    .end local v22    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v25    # "enabledSetting":I
    :goto_2cd
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p5

    move-object/from16 v10, v19

    move-object/from16 v7, v20

    move-object/from16 v12, v24

    move/from16 v15, v27

    goto/16 :goto_58

    .line 325
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v27    # "hasRunForSdk":Z
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    .local v12, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v15    # "hasRunForSdk":Z
    :catch_2dd
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v24, v12

    move/from16 v27, v15

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v15    # "hasRunForSdk":Z
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v27    # "hasRunForSdk":Z
    goto :goto_324

    .line 312
    .end local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v27    # "hasRunForSdk":Z
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .local v10, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v15    # "hasRunForSdk":Z
    :cond_2e5
    move-object/from16 v20, v7

    move-object/from16 v19, v10

    move-object/from16 v24, v12

    move/from16 v27, v15

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v15    # "hasRunForSdk":Z
    .restart local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v27    # "hasRunForSdk":Z
    if-eqz v16, :cond_2f1

    if-nez v27, :cond_2fa

    .line 313
    :cond_2f1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 314
    invoke-virtual {v3}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 313
    invoke-static {v3, v14, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 317
    :cond_2fa
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_318

    .line 320
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 321
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 322
    nop

    .line 323
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/util/TelephonyUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 322
    invoke-virtual {v8, v0, v1, v2, v7}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_318
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ee .. :try_end_318} :catch_319

    .line 327
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_318
    goto :goto_329

    .line 325
    :catch_319
    move-exception v0

    goto :goto_324

    .end local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v27    # "hasRunForSdk":Z
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v15    # "hasRunForSdk":Z
    :catch_31b
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    move-object/from16 v24, v12

    move/from16 v27, v15

    .line 326
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v15    # "hasRunForSdk":Z
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v27    # "hasRunForSdk":Z
    :goto_324
    const-string v1, "Could not reach PackageManager"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_329
    return-void

    .line 149
    .end local v9    # "carrierAppsHandledSdk":I
    .end local v13    # "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "hasRunEver":Z
    .end local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v24    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v27    # "hasRunForSdk":Z
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_32a
    move-object/from16 v20, v7

    move-object/from16 v19, v10

    .line 150
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_32e
    return-void
.end method

.method private static blacklist getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 447
    :try_start_0
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 449
    const v1, 0x20108000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_18

    .line 453
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_17

    .line 454
    return-object v0

    .line 458
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_17
    goto :goto_20

    .line 456
    :catch_18
    move-exception v0

    .line 457
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "CarrierAppUtils"

    const-string v2, "Could not reach PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 125
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "userContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 390
    const-class v0, Landroid/os/SystemConfigManager;

    .line 391
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    .line 392
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v0

    .line 393
    .local v0, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .param p0, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 399
    .local p1, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_2e

    .line 400
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2e

    .line 404
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 406
    .local v2, "packageName":Ljava/lang/String;
    nop

    .line 407
    invoke-static {p0, v2, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 408
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2c

    .line 409
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2c
    goto :goto_16

    .line 412
    :cond_2d
    return-object v0

    .line 401
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDefaultCarrierApps(Landroid/telephony/TelephonyManager;ILandroid/content/Context;)Ljava/util/List;
    .registers 9
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 356
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_30

    .line 363
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_2f

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 365
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 366
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 367
    invoke-virtual {p0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_26

    move v5, v2

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    .line 369
    .local v5, "hasPrivileges":Z
    :goto_27
    if-nez v5, :cond_2c

    .line 370
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 363
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "hasPrivileges":Z
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 374
    .end local v1    # "i":I
    :cond_2f
    return-object v0

    .line 357
    :cond_30
    :goto_30
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .registers 15
    .param p0, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;",
            ">;>;"
        }
    .end annotation

    .line 418
    .local p1, "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 419
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 421
    .local v1, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 422
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 423
    .local v4, "carrierAppPackage":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 424
    .local v5, "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_62

    .line 425
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/CarrierAssociatedAppEntry;

    .line 426
    .local v7, "associatedApp":Landroid/os/CarrierAssociatedAppEntry;
    iget-object v8, v7, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    .line 427
    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 430
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_5f

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_5f

    .line 431
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 432
    .local v9, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    if-nez v9, :cond_55

    .line 433
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 434
    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_55
    new-instance v10, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    iget v11, v7, Landroid/os/CarrierAssociatedAppEntry;->addedInSdk:I

    invoke-direct {v10, v8, v11}, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v7    # "associatedApp":Landroid/os/CarrierAssociatedAppEntry;
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    :cond_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 439
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    .end local v4    # "carrierAppPackage":Ljava/lang/String;
    .end local v5    # "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;"
    .end local v6    # "j":I
    :cond_62
    goto :goto_11

    .line 440
    :cond_63
    return-object v1
.end method

.method private static blacklist isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 130
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$disableCarrierAppsUntilPrivileged$0(Ljava/lang/Boolean;)V
    .registers 1
    .param p0, "isSuccess"    # Ljava/lang/Boolean;

    .line 323
    return-void
.end method

.method private static blacklist shouldUpdateEnabledState(Landroid/content/pm/ApplicationInfo;I)Z
    .registers 7
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "enabledSetting"    # I

    .line 331
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCarrierAppUpdateEnabledStateLogic()Z

    move-result v0

    const/high16 v1, 0x800000

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v0, :cond_1d

    .line 332
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p1, :cond_1a

    if-eq p1, v4, :cond_1a

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1b

    :cond_1a
    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    return v2

    .line 338
    :cond_1d
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_25

    if-eqz p1, :cond_2e

    :cond_25
    if-eq p1, v4, :cond_2e

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v3

    :cond_2e
    :goto_2e
    return v2
.end method
