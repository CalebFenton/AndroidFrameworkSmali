.class public Landroid/content/pm/AppsQueryHelper;
.super Ljava/lang/Object;
.source "AppsQueryHelper.java"


# static fields
.field public static greylist-max-o GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

.field public static greylist-max-o GET_IMES:I

.field public static greylist-max-o GET_NON_LAUNCHABLE_APPS:I

.field public static greylist-max-o GET_REQUIRED_FOR_SYSTEM_USER:I


# instance fields
.field private greylist-max-o mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x1

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    .line 47
    const/4 v0, 0x2

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    .line 52
    const/4 v0, 0x4

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    .line 57
    const/16 v0, 0x8

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 67
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/AppsQueryHelper;-><init>(Landroid/content/pm/IPackageManager;)V

    .line 68
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/IPackageManager;)V
    .registers 2
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 64
    return-void
.end method


# virtual methods
.method protected greylist-max-o getAllApps(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x2200

    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 171
    return-object v0

    .line 174
    :catch_d
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected greylist-max-o getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 211
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 211
    return-object v0

    .line 213
    :catch_11
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o queryApps(IZLandroid/os/UserHandle;)Ljava/util/List;
    .registers 18
    .param p1, "flags"    # I
    .param p2, "systemAppsOnly"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    sget v0, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v1

    .line 79
    .local v0, "nonLaunchableApps":Z
    :goto_a
    sget v3, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    and-int/2addr v3, p1

    if-lez v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    .line 80
    .local v3, "interactAcrossUsers":Z
    :goto_12
    sget v4, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    and-int/2addr v4, p1

    if-lez v4, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v1

    .line 81
    .local v4, "imes":Z
    :goto_1a
    sget v5, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    and-int/2addr v5, p1

    if-lez v5, :cond_20

    move v1, v2

    .line 82
    .local v1, "requiredForSystemUser":Z
    :cond_20
    iget-object v2, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    if-nez v2, :cond_2e

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/pm/AppsQueryHelper;->getAllApps(I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 86
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_58

    .line 88
    iget-object v5, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 89
    .local v5, "allAppsSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    if-ge v6, v5, :cond_57

    .line 90
    iget-object v7, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 91
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_4f

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 92
    goto :goto_54

    .line 94
    :cond_4f
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 96
    .end local v6    # "i":I
    :cond_57
    return-object v2

    .line 99
    .end local v5    # "allAppsSize":I
    :cond_58
    if-eqz v0, :cond_b4

    .line 100
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 101
    .local v5, "intent":Landroid/content/Intent;
    nop

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 101
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/AppsQueryHelper;->queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 104
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 105
    .local v7, "appsWithLaunchers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 106
    .local v8, "resolveInfosSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7a
    if-ge v9, v8, :cond_8c

    .line 107
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    .line 109
    .end local v9    # "i":I
    :cond_8c
    iget-object v9, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 110
    .local v9, "allAppsSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_93
    if-ge v10, v9, :cond_b4

    .line 111
    iget-object v11, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 112
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_a6

    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v12

    if-nez v12, :cond_a6

    .line 113
    goto :goto_b1

    .line 115
    :cond_a6
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 116
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b1

    .line 117
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_b1
    :goto_b1
    add-int/lit8 v10, v10, 0x1

    goto :goto_93

    .line 121
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "appsWithLaunchers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "resolveInfosSize":I
    .end local v9    # "allAppsSize":I
    .end local v10    # "i":I
    :cond_b4
    if-eqz v3, :cond_e9

    .line 122
    nop

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 122
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v6, v5}, Landroid/content/pm/AppsQueryHelper;->getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 124
    .local v5, "packagesHoldingPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 125
    .local v6, "packagesHoldingPermissionsSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c6
    if-ge v7, v6, :cond_e9

    .line 126
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 127
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz p2, :cond_d9

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_d9

    .line 128
    goto :goto_e6

    .line 130
    :cond_d9
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e6

    .line 131
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_e6
    :goto_e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_c6

    .line 136
    .end local v5    # "packagesHoldingPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "packagesHoldingPermissionsSize":I
    .end local v7    # "i":I
    :cond_e9
    if-eqz v4, :cond_124

    .line 137
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.view.InputMethod"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 137
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/AppsQueryHelper;->queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 139
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 141
    .local v6, "resolveInfosSize":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_ff
    if-ge v7, v6, :cond_124

    .line 142
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 143
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz p2, :cond_114

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_114

    .line 144
    goto :goto_121

    .line 146
    :cond_114
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_121

    .line 147
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_121
    :goto_121
    add-int/lit8 v7, v7, 0x1

    goto :goto_ff

    .line 152
    .end local v5    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "resolveInfosSize":I
    .end local v7    # "i":I
    :cond_124
    if-eqz v1, :cond_14e

    .line 153
    iget-object v5, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 154
    .local v5, "allAppsSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12d
    if-ge v6, v5, :cond_14e

    .line 155
    iget-object v7, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 156
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_140

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_140

    .line 157
    goto :goto_14b

    .line 159
    :cond_140
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isRequiredForSystemUser()Z

    move-result v8

    if-eqz v8, :cond_14b

    .line 160
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_14b
    :goto_14b
    add-int/lit8 v6, v6, 0x1

    goto :goto_12d

    .line 164
    .end local v5    # "allAppsSize":I
    .end local v6    # "i":I
    :cond_14e
    return-object v2
.end method

.method protected greylist-max-o queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_14

    const/4 v2, 0x0

    const-wide/32 v3, 0xc2200

    move-object v1, p1

    move v5, p2

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    :try_start_8
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 182
    return-object p1

    .line 188
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "userId":I
    :catch_14
    move-exception v0

    move-object v1, p1

    move v5, p2

    move-object p1, v0

    .line 189
    .end local p2    # "userId":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method protected greylist-max-o queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_14

    const/4 v2, 0x0

    const-wide/32 v3, 0xc8080

    move-object v1, p1

    move v5, p2

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    :try_start_8
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 196
    return-object p1

    .line 202
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "userId":I
    :catch_14
    move-exception v0

    move-object v1, p1

    move v5, p2

    move-object p1, v0

    .line 203
    .end local p2    # "userId":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method
