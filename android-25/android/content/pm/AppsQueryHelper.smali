.class public Landroid/content/pm/AppsQueryHelper;
.super Ljava/lang/Object;
.source "AppsQueryHelper.java"


# static fields
.field public static GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

.field public static GET_IMES:I

.field public static GET_NON_LAUNCHABLE_APPS:I

.field public static GET_REQUIRED_FOR_SYSTEM_USER:I


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    #@3
    .line 47
    const/4 v0, 0x2

    #@4
    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    #@6
    .line 52
    const/4 v0, 0x4

    #@7
    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    #@9
    .line 57
    const/16 v0, 0x8

    #@b
    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    #@d
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/content/pm/AppsQueryHelper;-><init>(Landroid/content/pm/IPackageManager;)V

    #@7
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageManager;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@5
    .line 62
    return-void
.end method


# virtual methods
.method protected getAllApps(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    const/16 v2, 0x2200

    #@4
    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 173
    :catch_0
    move-exception v0

    #@e
    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method protected getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    const/4 v2, 0x1

    #@3
    new-array v2, v2, [Ljava/lang/String;

    #@5
    const/4 v3, 0x0

    #@6
    aput-object p1, v2, v3

    #@8
    const/4 v3, 0x0

    #@9
    invoke-interface {v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 207
    :catch_0
    move-exception v0

    #@13
    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1
.end method

.method public queryApps(IZLandroid/os/UserHandle;)Ljava/util/List;
    .locals 22
    .param p1, "flags"    # I
    .param p2, "systemAppsOnly"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    sget v20, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    #@2
    and-int v20, v20, p1

    #@4
    if-lez v20, :cond_3

    #@6
    const/4 v10, 0x1

    #@7
    .line 79
    .local v10, "nonLaunchableApps":Z
    :goto_0
    sget v20, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    #@9
    and-int v20, v20, p1

    #@b
    if-lez v20, :cond_4

    #@d
    const/4 v9, 0x1

    #@e
    .line 80
    .local v9, "interactAcrossUsers":Z
    :goto_1
    sget v20, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    #@10
    and-int v20, v20, p1

    #@12
    if-lez v20, :cond_5

    #@14
    const/4 v7, 0x1

    #@15
    .line 81
    .local v7, "imes":Z
    :goto_2
    sget v20, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    #@17
    and-int v20, v20, p1

    #@19
    if-lez v20, :cond_6

    #@1b
    const/4 v15, 0x1

    #@1c
    .line 82
    .local v15, "requiredForSystemUser":Z
    :goto_3
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    #@20
    move-object/from16 v20, v0

    #@22
    if-nez v20, :cond_0

    #@24
    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@27
    move-result v20

    #@28
    move-object/from16 v0, p0

    #@2a
    move/from16 v1, v20

    #@2c
    invoke-virtual {v0, v1}, Landroid/content/pm/AppsQueryHelper;->getAllApps(I)Ljava/util/List;

    #@2f
    move-result-object v20

    #@30
    move-object/from16 v0, v20

    #@32
    move-object/from16 v1, p0

    #@34
    iput-object v0, v1, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    #@36
    .line 86
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    #@38
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@3b
    .line 87
    .local v18, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    #@3d
    .line 88
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    #@41
    move-object/from16 v20, v0

    #@43
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@46
    move-result v3

    #@47
    .line 89
    .local v3, "allAppsSize":I
    const/4 v6, 0x0

    #@48
    .local v6, "i":I
    :goto_4
    if-ge v6, v3, :cond_7

    #@4a
    .line 90
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    #@4e
    move-object/from16 v20, v0

    #@50
    move-object/from16 v0, v20

    #@52
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v4

    #@56
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    #@58
    .line 91
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_1

    #@5a
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@5d
    move-result v20

    #@5e
    if-eqz v20, :cond_2

    #@60
    .line 94
    :cond_1
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@62
    move-object/from16 v20, v0

    #@64
    move-object/from16 v0, v18

    #@66
    move-object/from16 v1, v20

    #@68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6b
    .line 89
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@6d
    goto :goto_4

    #@6e
    .line 78
    .end local v3    # "allAppsSize":I
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "i":I
    .end local v7    # "imes":Z
    .end local v9    # "interactAcrossUsers":Z
    .end local v10    # "nonLaunchableApps":Z
    .end local v15    # "requiredForSystemUser":Z
    .end local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v10, 0x0

    #@6f
    .restart local v10    # "nonLaunchableApps":Z
    goto :goto_0

    #@70
    .line 79
    :cond_4
    const/4 v9, 0x0

    #@71
    .restart local v9    # "interactAcrossUsers":Z
    goto :goto_1

    #@72
    .line 80
    :cond_5
    const/4 v7, 0x0

    #@73
    .restart local v7    # "imes":Z
    goto :goto_2

    #@74
    .line 81
    :cond_6
    const/4 v15, 0x0

    #@75
    .restart local v15    # "requiredForSystemUser":Z
    goto :goto_3

    #@76
    .line 96
    .restart local v3    # "allAppsSize":I
    .restart local v6    # "i":I
    .restart local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    return-object v18

    #@77
    .line 99
    .end local v3    # "allAppsSize":I
    .end local v6    # "i":I
    :cond_8
    if-eqz v10, :cond_c

    #@79
    .line 100
    new-instance v20, Landroid/content/Intent;

    #@7b
    const-string/jumbo v21, "android.intent.action.MAIN"

    #@7e
    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@81
    const-string/jumbo v21, "android.intent.category.LAUNCHER"

    #@84
    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@87
    move-result-object v8

    #@88
    .line 102
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@8b
    move-result v20

    #@8c
    .line 101
    move-object/from16 v0, p0

    #@8e
    move/from16 v1, v20

    #@90
    invoke-virtual {v0, v8, v1}, Landroid/content/pm/AppsQueryHelper;->queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    #@93
    move-result-object v16

    #@94
    .line 104
    .local v16, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/util/ArraySet;

    #@96
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    #@99
    .line 105
    .local v5, "appsWithLaunchers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@9c
    move-result v17

    #@9d
    .line 106
    .local v17, "resolveInfosSize":I
    const/4 v6, 0x0

    #@9e
    .restart local v6    # "i":I
    :goto_5
    move/from16 v0, v17

    #@a0
    if-ge v6, v0, :cond_9

    #@a2
    .line 107
    move-object/from16 v0, v16

    #@a4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a7
    move-result-object v20

    #@a8
    check-cast v20, Landroid/content/pm/ResolveInfo;

    #@aa
    move-object/from16 v0, v20

    #@ac
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@ae
    move-object/from16 v20, v0

    #@b0
    move-object/from16 v0, v20

    #@b2
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@b4
    move-object/from16 v20, v0

    #@b6
    move-object/from16 v0, v20

    #@b8
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@bb
    .line 106
    add-int/lit8 v6, v6, 0x1

    #@bd
    goto :goto_5

    #@be
    .line 109
    :cond_9
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    #@c2
    move-object/from16 v20, v0

    #@c4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@c7
    move-result v3

    #@c8
    .line 110
    .restart local v3    # "allAppsSize":I
    const/4 v6, 0x0

    #@c9
    :goto_6
    if-ge v6, v3, :cond_c

    #@cb
    .line 111
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    #@cf
    move-object/from16 v20, v0

    #@d1
    move-object/from16 v0, v20

    #@d3
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d6
    move-result-object v4

    #@d7
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    #@d9
    .line 112
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_a

    #@db
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@de
    move-result v20

    #@df
    if-eqz v20, :cond_b

    #@e1
    .line 115
    :cond_a
    iget-object v12, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@e3
    .line 116
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@e6
    move-result v20

    #@e7
    if-nez v20, :cond_b

    #@e9
    .line 117
    move-object/from16 v0, v18

    #@eb
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ee
    .line 110
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    #@f0
    goto :goto_6

    #@f1
    .line 121
    .end local v3    # "allAppsSize":I
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "appsWithLaunchers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "resolveInfosSize":I
    :cond_c
    if-eqz v9, :cond_f

    #@f3
    .line 123
    const-string/jumbo v20, "android.permission.INTERACT_ACROSS_USERS"

    #@f6
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@f9
    move-result v21

    #@fa
    .line 122
    move-object/from16 v0, p0

    #@fc
    move-object/from16 v1, v20

    #@fe
    move/from16 v2, v21

    #@100
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppsQueryHelper;->getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;

    #@103
    move-result-object v13

    #@104
    .line 124
    .local v13, "packagesHoldingPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@107
    move-result v14

    #@108
    .line 125
    .local v14, "packagesHoldingPermissionsSize":I
    const/4 v6, 0x0

    #@109
    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v14, :cond_f

    #@10b
    .line 126
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10e
    move-result-object v11

    #@10f
    check-cast v11, Landroid/content/pm/PackageInfo;

    #@111
    .line 127
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz p2, :cond_d

    #@113
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@115
    move-object/from16 v20, v0

    #@117
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@11a
    move-result v20

    #@11b
    if-eqz v20, :cond_e

    #@11d
    .line 130
    :cond_d
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@11f
    move-object/from16 v20, v0

    #@121
    move-object/from16 v0, v18

    #@123
    move-object/from16 v1, v20

    #@125
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@128
    move-result v20

    #@129
    if-nez v20, :cond_e

    #@12b
    .line 131
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@12d
    move-object/from16 v20, v0

    #@12f
    move-object/from16 v0, v18

    #@131
    move-object/from16 v1, v20

    #@133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@136
    .line 125
    :cond_e
    add-int/lit8 v6, v6, 0x1

    #@138
    goto :goto_7

    #@139
    .line 136
    .end local v6    # "i":I
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "packagesHoldingPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14    # "packagesHoldingPermissionsSize":I
    :cond_f
    if-eqz v7, :cond_12

    #@13b
    .line 138
    new-instance v20, Landroid/content/Intent;

    #@13d
    const-string/jumbo v21, "android.view.InputMethod"

    #@140
    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@143
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@146
    move-result v21

    #@147
    .line 137
    move-object/from16 v0, p0

    #@149
    move-object/from16 v1, v20

    #@14b
    move/from16 v2, v21

    #@14d
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppsQueryHelper;->queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    #@150
    move-result-object v16

    #@151
    .line 139
    .restart local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@154
    move-result v17

    #@155
    .line 141
    .restart local v17    # "resolveInfosSize":I
    const/4 v6, 0x0

    #@156
    .restart local v6    # "i":I
    :goto_8
    move/from16 v0, v17

    #@158
    if-ge v6, v0, :cond_12

    #@15a
    .line 142
    move-object/from16 v0, v16

    #@15c
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15f
    move-result-object v20

    #@160
    check-cast v20, Landroid/content/pm/ResolveInfo;

    #@162
    move-object/from16 v0, v20

    #@164
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@166
    move-object/from16 v19, v0

    #@168
    .line 143
    .local v19, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz p2, :cond_10

    #@16a
    move-object/from16 v0, v19

    #@16c
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16e
    move-object/from16 v20, v0

    #@170
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@173
    move-result v20

    #@174
    if-eqz v20, :cond_11

    #@176
    .line 146
    :cond_10
    move-object/from16 v0, v19

    #@178
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@17a
    move-object/from16 v20, v0

    #@17c
    move-object/from16 v0, v18

    #@17e
    move-object/from16 v1, v20

    #@180
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@183
    move-result v20

    #@184
    if-nez v20, :cond_11

    #@186
    .line 147
    move-object/from16 v0, v19

    #@188
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@18a
    move-object/from16 v20, v0

    #@18c
    move-object/from16 v0, v18

    #@18e
    move-object/from16 v1, v20

    #@190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@193
    .line 141
    :cond_11
    add-int/lit8 v6, v6, 0x1

    #@195
    goto :goto_8

    #@196
    .line 152
    .end local v6    # "i":I
    .end local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "resolveInfosSize":I
    .end local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_12
    if-eqz v15, :cond_15

    #@198
    .line 153
    move-object/from16 v0, p0

    #@19a
    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    #@19c
    move-object/from16 v20, v0

    #@19e
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@1a1
    move-result v3

    #@1a2
    .line 154
    .restart local v3    # "allAppsSize":I
    const/4 v6, 0x0

    #@1a3
    .restart local v6    # "i":I
    :goto_9
    if-ge v6, v3, :cond_15

    #@1a5
    .line 155
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    #@1a9
    move-object/from16 v20, v0

    #@1ab
    move-object/from16 v0, v20

    #@1ad
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b0
    move-result-object v4

    #@1b1
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    #@1b3
    .line 156
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_13

    #@1b5
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@1b8
    move-result v20

    #@1b9
    if-eqz v20, :cond_14

    #@1bb
    .line 159
    :cond_13
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isRequiredForSystemUser()Z

    #@1be
    move-result v20

    #@1bf
    if-eqz v20, :cond_14

    #@1c1
    .line 160
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@1c3
    move-object/from16 v20, v0

    #@1c5
    move-object/from16 v0, v18

    #@1c7
    move-object/from16 v1, v20

    #@1c9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1cc
    .line 154
    :cond_14
    add-int/lit8 v6, v6, 0x1

    #@1ce
    goto :goto_9

    #@1cf
    .line 164
    .end local v3    # "allAppsSize":I
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "i":I
    :cond_15
    return-object v18
.end method

.method protected queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    const/4 v2, 0x0

    #@3
    .line 182
    const/16 v3, 0x2200

    #@5
    .line 181
    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 185
    :catch_0
    move-exception v0

    #@f
    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method protected queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    const/4 v2, 0x0

    #@3
    .line 194
    const v3, 0x8080

    #@6
    .line 193
    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 196
    :catch_0
    move-exception v0

    #@10
    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1
.end method
