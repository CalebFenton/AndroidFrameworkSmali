.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl1;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl2;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl3;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl5;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl6;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-void_sortPackagesByUsageDate_java_util_List_pkgs_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final SEVEN_DAYS_IN_MILLISECONDS:J = 0x240c8400L


# direct methods
.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$1(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 4
    .param p0, "pkg1"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkg2"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@3
    move-result-wide v0

    #@4
    .line 78
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@7
    move-result-wide v2

    #@8
    .line 77
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$2(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    #@2
    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$3(Landroid/util/ArraySet;Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkgNames"    # Landroid/util/ArraySet;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 130
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$4(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$5(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 4
    .param p0, "pkg1"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkg2"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@3
    move-result-wide v0

    #@4
    .line 147
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@7
    move-result-wide v2

    #@8
    .line 146
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$6(JLandroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "cutoffTime"    # J
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 157
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@3
    move-result-wide v0

    #@4
    cmp-long v0, v0, p0

    #@6
    if-ltz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$7(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 160
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$8(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 165
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .param p4, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p0, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .local p2, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .local p3, "sortTemp":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    #@10
    .line 91
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 92
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    goto :goto_0

    #@1a
    .line 96
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    #@1d
    .line 97
    invoke-interface {p2, p3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    #@20
    .line 99
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v2

    #@24
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_3

    #@2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    #@30
    .line 100
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@33
    .line 103
    invoke-virtual {p4, v1}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibraries(Landroid/content/pm/PackageParser$Package;)Ljava/util/Collection;

    #@36
    move-result-object v0

    #@37
    .line 104
    .local v0, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_2

    #@3d
    .line 105
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    #@40
    .line 106
    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@43
    .line 107
    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    #@46
    goto :goto_1

    #@47
    .line 111
    .end local v0    # "deps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->clear()V

    #@4a
    .line 89
    return-void
.end method

.method private static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    const/4 v4, 0x0

    #@1
    .line 54
    .local v4, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v5

    #@5
    const/4 v6, 0x0

    #@6
    const/4 v7, 0x0

    #@7
    invoke-interface {v5, p0, v6, v7, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v4

    #@f
    .line 58
    .end local v4    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    #@11
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@14
    .line 59
    .local v1, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    #@16
    .line 60
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v3

    #@1a
    .local v3, "ri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@26
    .line 61
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@28
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_1

    #@2e
    .line 64
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v1

    #@2f
    .line 56
    .end local v1    # "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    #@30
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 14
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 119
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@2
    invoke-direct {v7, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5
    .line 120
    .local v7, "remainingPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v9, Ljava/util/LinkedList;

    #@7
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    #@a
    .line 121
    .local v9, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v10, Ljava/util/ArrayList;

    #@c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v11

    #@10
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    .line 124
    .local v10, "sortTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v11, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;

    #@15
    invoke-direct {v11}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;-><init>()V

    #@18
    invoke-static {v11, v9, v7, v10, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    #@1b
    .line 128
    new-instance v4, Landroid/content/Intent;

    #@1d
    const-string/jumbo v11, "android.intent.action.PRE_BOOT_COMPLETED"

    #@20
    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@23
    .line 129
    .local v4, "intent":Landroid/content/Intent;
    const/4 v11, 0x0

    #@24
    invoke-static {v4, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    #@27
    move-result-object v6

    #@28
    .line 130
    .local v6, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v11, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl1;

    #@2a
    invoke-direct {v11, v6}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl1;-><init>(Landroid/util/ArraySet;)V

    #@2d
    invoke-static {v11, v9, v7, v10, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    #@30
    .line 134
    new-instance v11, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl2;

    #@32
    invoke-direct {v11}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl2;-><init>()V

    #@35
    invoke-static {v11, v9, v7, v10, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    #@38
    .line 140
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@3b
    move-result v11

    #@3c
    if-nez v11, :cond_1

    #@3e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    #@41
    move-result v11

    #@42
    if-eqz v11, :cond_1

    #@44
    .line 145
    new-instance v11, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl3;

    #@46
    invoke-direct {v11}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl3;-><init>()V

    #@49
    invoke-static {v7, v11}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    #@4c
    move-result-object v5

    #@4d
    check-cast v5, Landroid/content/pm/PackageParser$Package;

    #@4f
    .line 152
    .local v5, "lastUsed":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@52
    move-result-wide v2

    #@53
    .line 154
    .local v2, "estimatedPreviousSystemUseTime":J
    const-wide/16 v12, 0x0

    #@55
    cmp-long v11, v2, v12

    #@57
    if-eqz v11, :cond_0

    #@59
    .line 155
    const-wide/32 v12, 0x240c8400

    #@5c
    sub-long v0, v2, v12

    #@5e
    .line 157
    .local v0, "cutoffTime":J
    new-instance v8, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;

    #@60
    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;-><init>(J)V

    #@63
    .line 162
    .end local v0    # "cutoffTime":J
    .local v8, "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :goto_0
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    #@66
    .line 167
    .end local v2    # "estimatedPreviousSystemUseTime":J
    .end local v5    # "lastUsed":Landroid/content/pm/PackageParser$Package;
    :goto_1
    invoke-static {v8, v9, v7, v10, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    #@69
    .line 175
    return-object v9

    #@6a
    .line 160
    .end local v8    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v2    # "estimatedPreviousSystemUseTime":J
    .restart local v5    # "lastUsed":Landroid/content/pm/PackageParser$Package;
    :cond_0
    new-instance v8, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl5;

    #@6c
    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl5;-><init>()V

    #@6f
    .restart local v8    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    goto :goto_0

    #@70
    .line 165
    .end local v2    # "estimatedPreviousSystemUseTime":J
    .end local v5    # "lastUsed":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :cond_1
    new-instance v8, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl6;

    #@72
    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl6;-><init>()V

    #@75
    .restart local v8    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    goto :goto_1
.end method

.method public static packagesToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 191
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 192
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/content/pm/PackageParser$Package;

    #@15
    .line 193
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_0

    #@1b
    .line 194
    const-string/jumbo v3, ", "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 196
    :cond_0
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 198
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    return-object v3
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Llibcore/io/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 185
    :catch_0
    move-exception v0

    #@c
    .line 186
    .local v0, "ee":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 72
    .local p0, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 73
    return-void

    #@7
    .line 76
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$-void_sortPackagesByUsageDate_java_util_List_pkgs_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;

    #@9
    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$-void_sortPackagesByUsageDate_java_util_List_pkgs_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;-><init>()V

    #@c
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@f
    .line 71
    return-void
.end method
