.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;
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
    .line 153
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@3
    move-result-wide v0

    #@4
    .line 154
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@7
    move-result-wide v2

    #@8
    .line 153
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static filterRecentlyUsedApps(Ljava/util/Collection;JJ)V
    .locals 9
    .param p1, "estimatedPreviousSystemUseTime"    # J
    .param p3, "dexOptLRUThresholdInMills"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    .local p0, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@3
    move-result v3

    #@4
    .line 75
    .local v3, "total":I
    const/4 v2, 0x0

    #@5
    .line 76
    .local v2, "skipped":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    #@15
    .line 78
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@18
    move-result-wide v4

    #@19
    .line 79
    .local v4, "then":J
    sub-long v6, p1, p3

    #@1b
    cmp-long v6, v4, v6

    #@1d
    if-gez v6, :cond_0

    #@1f
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@22
    .line 86
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 72
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "then":J
    :cond_1
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
    .line 55
    const/4 v4, 0x0

    #@1
    .line 57
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
    .line 61
    .end local v4    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    #@11
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@14
    .line 62
    .local v1, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    #@16
    .line 63
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
    .line 64
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@28
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_1

    #@2e
    .line 67
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v1

    #@2f
    .line 59
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
    .line 105
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v10, Ljava/util/ArrayList;

    #@2
    invoke-direct {v10, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5
    .line 106
    .local v10, "remainingPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v11, Ljava/util/LinkedList;

    #@7
    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    #@a
    .line 109
    .local v11, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v8

    #@e
    .local v8, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v12

    #@12
    if-eqz v12, :cond_1

    #@14
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v7

    #@18
    check-cast v7, Landroid/content/pm/PackageParser$Package;

    #@1a
    .line 110
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-boolean v12, v7, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    #@1c
    if-eqz v12, :cond_0

    #@1e
    .line 114
    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 117
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@25
    .line 120
    new-instance v1, Landroid/content/Intent;

    #@27
    const-string/jumbo v12, "android.intent.action.PRE_BOOT_COMPLETED"

    #@2a
    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2d
    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const/4 v12, 0x0

    #@2e
    invoke-static {v1, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    #@31
    move-result-object v9

    #@32
    .line 122
    .local v9, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v8

    #@36
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v12

    #@3a
    if-eqz v12, :cond_3

    #@3c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v7

    #@40
    check-cast v7, Landroid/content/pm/PackageParser$Package;

    #@42
    .line 123
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v12, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@44
    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v12

    #@48
    if-eqz v12, :cond_2

    #@4a
    .line 128
    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@4d
    goto :goto_1

    #@4e
    .line 131
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@51
    .line 134
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v8

    #@55
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v12

    #@59
    if-eqz v12, :cond_5

    #@5b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v7

    #@5f
    check-cast v7, Landroid/content/pm/PackageParser$Package;

    #@61
    .line 135
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-static {v7}, Lcom/android/server/pm/PackageDexOptimizer;->isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z

    #@64
    move-result v12

    #@65
    if-eqz v12, :cond_4

    #@67
    .line 140
    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_2

    #@6b
    .line 143
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_5
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@6e
    .line 147
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    #@71
    move-result v12

    #@72
    if-nez v12, :cond_6

    #@74
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    #@77
    move-result v12

    #@78
    if-eqz v12, :cond_6

    #@7a
    .line 152
    new-instance v12, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;

    #@7c
    invoke-direct {v12}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;-><init>()V

    #@7f
    invoke-static {v10, v12}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    #@82
    move-result-object v4

    #@83
    check-cast v4, Landroid/content/pm/PackageParser$Package;

    #@85
    .line 159
    .local v4, "lastUsed":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    #@88
    move-result-wide v2

    #@89
    .line 161
    .local v2, "estimatedPreviousSystemUseTime":J
    const-wide/16 v12, 0x0

    #@8b
    cmp-long v12, v2, v12

    #@8d
    if-eqz v12, :cond_6

    #@8f
    .line 163
    const-wide/32 v12, 0x240c8400

    #@92
    .line 162
    invoke-static {v10, v2, v3, v12, v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->filterRecentlyUsedApps(Ljava/util/Collection;JJ)V

    #@95
    .line 166
    .end local v2    # "estimatedPreviousSystemUseTime":J
    .end local v4    # "lastUsed":Landroid/content/pm/PackageParser$Package;
    :cond_6
    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    #@98
    .line 170
    new-instance v0, Ljava/util/HashSet;

    #@9a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@9d
    .line 171
    .local v0, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a0
    move-result-object v6

    #@a1
    .local v6, "p$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@a4
    move-result v12

    #@a5
    if-eqz v12, :cond_7

    #@a7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@aa
    move-result-object v5

    #@ab
    check-cast v5, Landroid/content/pm/PackageParser$Package;

    #@ad
    .line 172
    .local v5, "p":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1, v5}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibraries(Landroid/content/pm/PackageParser$Package;)Ljava/util/Collection;

    #@b0
    move-result-object v12

    #@b1
    invoke-interface {v0, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@b4
    goto :goto_3

    #@b5
    .line 174
    .end local v5    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@b8
    move-result v12

    #@b9
    if-nez v12, :cond_8

    #@bb
    .line 177
    invoke-interface {v0, v11}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@be
    .line 179
    :cond_8
    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    #@c1
    .line 192
    return-object v11
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
    .line 201
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
    .line 202
    :catch_0
    move-exception v0

    #@c
    .line 203
    .local v0, "ee":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method
