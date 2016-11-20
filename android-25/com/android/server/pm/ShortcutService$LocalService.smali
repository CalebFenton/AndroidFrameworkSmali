.class Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method static synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$2(JLandroid/util/ArraySet;Landroid/content/ComponentName;ILandroid/content/pm/ShortcutInfo;)Z
    .locals 4
    .param p0, "changedSince"    # J
    .param p2, "ids"    # Landroid/util/ArraySet;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "queryFlags"    # I
    .param p5, "si"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2308
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    #@5
    move-result-wide v0

    #@6
    cmp-long v0, v0, p0

    #@8
    if-gez v0, :cond_0

    #@a
    .line 2309
    return v2

    #@b
    .line 2311
    :cond_0
    if-eqz p2, :cond_1

    #@d
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 2314
    :cond_1
    if-eqz p3, :cond_2

    #@19
    .line 2315
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 2316
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_4

    #@29
    .line 2320
    :cond_2
    and-int/lit8 v0, p4, 0x1

    #@2b
    if-eqz v0, :cond_5

    #@2d
    .line 2321
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@30
    move-result v0

    #@31
    .line 2320
    if-eqz v0, :cond_5

    #@33
    .line 2322
    return v3

    #@34
    .line 2312
    :cond_3
    return v2

    #@35
    .line 2317
    :cond_4
    return v2

    #@36
    .line 2324
    :cond_5
    and-int/lit8 v0, p4, 0x2

    #@38
    if-eqz v0, :cond_6

    #@3a
    .line 2325
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@3d
    move-result v0

    #@3e
    .line 2324
    if-eqz v0, :cond_6

    #@40
    .line 2326
    return v3

    #@41
    .line 2328
    :cond_6
    and-int/lit8 v0, p4, 0x8

    #@43
    if-eqz v0, :cond_7

    #@45
    .line 2329
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@48
    move-result v0

    #@49
    .line 2328
    if-eqz v0, :cond_7

    #@4b
    .line 2330
    return v3

    #@4c
    .line 2332
    :cond_7
    return v2
.end method

.method static synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$3(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 2372
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 2252
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@3
    return-void
.end method

.method private getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 7
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2358
    const-string/jumbo v2, "packageName"

    #@5
    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@8
    .line 2359
    const-string/jumbo v2, "shortcutId"

    #@b
    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@e
    .line 2361
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@10
    invoke-virtual {v2, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@13
    .line 2362
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@18
    .line 2364
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1a
    invoke-virtual {v2, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@21
    move-result-object v0

    #@22
    .line 2366
    .local v0, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_0

    #@24
    .line 2367
    return-object v6

    #@25
    .line 2370
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@27
    const/4 v2, 0x1

    #@28
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@2b
    .line 2372
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;

    #@2d
    invoke-direct {v2, p4}, Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;-><init>(Ljava/lang/String;)V

    #@30
    move-object v4, p2

    #@31
    move v5, p1

    #@32
    .line 2371
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    #@35
    .line 2374
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_1

    #@3b
    move-object v2, v6

    #@3c
    :goto_0
    return-object v2

    #@3d
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@43
    goto :goto_0
.end method

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V
    .locals 13
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "changedSince"    # J
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .param p11, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2297
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez p4, :cond_0

    #@2
    const/4 v6, 0x0

    #@3
    .line 2300
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@5
    move/from16 v0, p9

    #@7
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@a
    move-result-object v3

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@10
    move-result-object v2

    #@11
    .line 2302
    .local v2, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v2, :cond_1

    #@13
    .line 2303
    return-void

    #@14
    .line 2298
    .end local v2    # "p":Lcom/android/server/pm/ShortcutPackage;
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    #@16
    move-object/from16 v0, p4

    #@18
    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@1b
    .local v6, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    #@1c
    .line 2307
    .end local v6    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "p":Lcom/android/server/pm/ShortcutPackage;
    :cond_1
    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;

    #@1e
    move-wide/from16 v4, p5

    #@20
    move-object/from16 v7, p7

    #@22
    move/from16 v8, p8

    #@24
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;-><init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;I)V

    #@27
    move-object v7, v2

    #@28
    move-object/from16 v8, p10

    #@2a
    move-object v9, v3

    #@2b
    move/from16 v10, p11

    #@2d
    move-object v11, p2

    #@2e
    move v12, p1

    #@2f
    .line 2306
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    #@32
    .line 2296
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$1(ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;ILcom/android/server/pm/ShortcutPackage;)V
    .locals 14
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "shortcutIdsF"    # Ljava/util/List;
    .param p4, "changedSince"    # J
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "queryFlags"    # I
    .param p8, "userId"    # I
    .param p9, "ret"    # Ljava/util/ArrayList;
    .param p10, "cloneFlag"    # I
    .param p11, "p"    # Lcom/android/server/pm/ShortcutPackage;

    #@0
    .prologue
    .line 2285
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move-object/from16 v3, p2

    #@8
    move-object/from16 v5, p3

    #@a
    move-wide/from16 v6, p4

    #@c
    move-object/from16 v8, p6

    #@e
    move/from16 v9, p7

    #@10
    move/from16 v10, p8

    #@12
    move-object/from16 v11, p9

    #@14
    move/from16 v12, p10

    #@16
    .line 2284
    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V

    #@19
    .line 0
    return-void
.end method

.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    #@0
    .prologue
    .line 2429
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 2430
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get1(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    #@c
    move-result-object v2

    #@d
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    #@13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 2428
    return-void

    #@18
    .line 2429
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Landroid/content/Intent;
    .locals 6
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2405
    const-string/jumbo v1, "packageName can\'t be empty"

    #@4
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@7
    .line 2406
    const-string/jumbo v1, "shortcutId can\'t be empty"

    #@a
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@d
    .line 2408
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@f
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    monitor-enter v2

    #@14
    .line 2409
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@16
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@19
    .line 2410
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1b
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@1e
    .line 2412
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@20
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    #@27
    .line 2416
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    #@2a
    move-result-object v0

    #@2b
    .line 2419
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    #@2d
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_0

    #@33
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_0

    #@39
    .line 2423
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    move-result-object v1

    #@3d
    monitor-exit v2

    #@3e
    return-object v1

    #@3f
    .line 2420
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ShortcutService"

    #@42
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v4, "Shortcut "

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, " does not exist or disabled"

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    monitor-exit v2

    #@61
    .line 2421
    return-object v5

    #@62
    .line 2408
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    #@63
    monitor-exit v2

    #@64
    throw v1
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2464
    const-string/jumbo v3, "callingPackage"

    #@4
    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 2465
    const-string/jumbo v3, "packageName"

    #@a
    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 2466
    const-string/jumbo v3, "shortcutId"

    #@10
    invoke-static {p4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 2468
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    monitor-enter v4

    #@1a
    .line 2469
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1c
    invoke-virtual {v3, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@1f
    .line 2470
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@21
    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@24
    .line 2472
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@26
    invoke-virtual {v3, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    #@2d
    .line 2475
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2f
    invoke-virtual {v3, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result-object v1

    #@37
    .line 2477
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v1, :cond_0

    #@39
    monitor-exit v4

    #@3a
    .line 2478
    return-object v7

    #@3b
    .line 2481
    :cond_0
    :try_start_1
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@3e
    move-result-object v2

    #@3f
    .line 2482
    .local v2, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v2, :cond_1

    #@41
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_1

    #@47
    .line 2486
    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    if-nez v3, :cond_2

    #@4d
    .line 2487
    const-string/jumbo v3, "ShortcutService"

    #@50
    const-string/jumbo v5, "null bitmap detected in getShortcutIconFd()"

    #@53
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    monitor-exit v4

    #@57
    .line 2488
    return-object v7

    #@58
    :cond_1
    monitor-exit v4

    #@59
    .line 2483
    return-object v7

    #@5a
    .line 2491
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/File;

    #@5c
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@63
    .line 2492
    const/high16 v5, 0x10000000

    #@65
    .line 2490
    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@68
    move-result-object v3

    #@69
    monitor-exit v4

    #@6a
    return-object v3

    #@6b
    .line 2493
    :catch_0
    move-exception v0

    #@6c
    .line 2494
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v3, "ShortcutService"

    #@6f
    new-instance v5, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v6, "Icon file not found: "

    #@77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8a
    monitor-exit v4

    #@8b
    .line 2495
    return-object v7

    #@8c
    .line 2468
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v2    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v3

    #@8d
    monitor-exit v4

    #@8e
    throw v3
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2437
    const-string/jumbo v3, "callingPackage"

    #@4
    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 2438
    const-string/jumbo v3, "packageName"

    #@a
    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 2439
    const-string/jumbo v3, "shortcutId"

    #@10
    invoke-static {p4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 2441
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    monitor-enter v3

    #@1a
    .line 2442
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1c
    invoke-virtual {v4, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@1f
    .line 2443
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@21
    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@24
    .line 2445
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@26
    invoke-virtual {v4, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    #@2d
    .line 2448
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2f
    invoke-virtual {v4, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result-object v0

    #@37
    .line 2450
    .local v0, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_0

    #@39
    monitor-exit v3

    #@3a
    .line 2451
    return v2

    #@3b
    .line 2454
    :cond_0
    :try_start_1
    invoke-virtual {v0, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@3e
    move-result-object v1

    #@3f
    .line 2455
    .local v1, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_1

    #@41
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_1

    #@47
    .line 2456
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    move-result v2

    #@4b
    :cond_1
    monitor-exit v3

    #@4c
    .line 2455
    return v2

    #@4d
    .line 2441
    .end local v0    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v1    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit v3

    #@4f
    throw v2
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;
    .locals 19
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "changedSince"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2260
    .local p6, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    #@2
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2263
    .local v15, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v5, p8, 0x4

    #@7
    if-eqz v5, :cond_1

    #@9
    const/4 v4, 0x1

    #@a
    .line 2264
    .local v4, "cloneKeyFieldOnly":Z
    :goto_0
    if-eqz v4, :cond_2

    #@c
    const/16 v16, 0x4

    #@e
    .line 2266
    .local v16, "cloneFlag":I
    :goto_1
    if-nez p5, :cond_0

    #@10
    .line 2267
    const/16 p6, 0x0

    #@12
    .line 2270
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    #@14
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@16
    invoke-static {v5}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@19
    move-result-object v17

    #@1a
    monitor-enter v17

    #@1b
    .line 2271
    :try_start_0
    move-object/from16 v0, p0

    #@1d
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1f
    move/from16 v0, p9

    #@21
    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@24
    .line 2272
    move-object/from16 v0, p0

    #@26
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@28
    move/from16 v0, p1

    #@2a
    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@2d
    .line 2274
    move-object/from16 v0, p0

    #@2f
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@31
    move-object/from16 v0, p2

    #@33
    move/from16 v1, p9

    #@35
    move/from16 v2, p1

    #@37
    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    #@3e
    .line 2277
    if-eqz p5, :cond_3

    #@40
    move-object/from16 v5, p0

    #@42
    move/from16 v6, p1

    #@44
    move-object/from16 v7, p2

    #@46
    move-object/from16 v8, p5

    #@48
    move-object/from16 v9, p6

    #@4a
    move-wide/from16 v10, p3

    #@4c
    move-object/from16 v12, p7

    #@4e
    move/from16 v13, p8

    #@50
    move/from16 v14, p9

    #@52
    .line 2278
    invoke-direct/range {v5 .. v16}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    :goto_2
    monitor-exit v17

    #@56
    .line 2290
    return-object v15

    #@57
    .line 2263
    .end local v4    # "cloneKeyFieldOnly":Z
    .end local v16    # "cloneFlag":I
    .restart local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    #@58
    goto :goto_0

    #@59
    .line 2265
    .restart local v4    # "cloneKeyFieldOnly":Z
    :cond_2
    const/16 v16, 0xb

    #@5b
    .restart local v16    # "cloneFlag":I
    goto :goto_1

    #@5c
    .line 2282
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v9, p6

    #@5e
    .line 2283
    .local v9, "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    #@60
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@62
    move/from16 v0, p9

    #@64
    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@67
    move-result-object v18

    #@68
    new-instance v5, Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;

    #@6a
    move-object/from16 v6, p0

    #@6c
    move/from16 v7, p1

    #@6e
    move-object/from16 v8, p2

    #@70
    move-wide/from16 v10, p3

    #@72
    move-object/from16 v12, p7

    #@74
    move/from16 v13, p8

    #@76
    move/from16 v14, p9

    #@78
    invoke-direct/range {v5 .. v16}, Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V

    #@7b
    move-object/from16 v0, v18

    #@7d
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    goto :goto_2

    #@81
    .line 2270
    .end local v9    # "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    #@82
    monitor-exit v17

    #@83
    throw v5
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;)Z
    .locals 1
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2503
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 2339
    const-string/jumbo v1, "packageName"

    #@3
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    .line 2340
    const-string/jumbo v1, "shortcutId"

    #@9
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@c
    .line 2342
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@e
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    monitor-enter v2

    #@13
    .line 2343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@18
    .line 2344
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1a
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@1d
    .line 2346
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1f
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    #@26
    .line 2349
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    #@29
    move-result-object v0

    #@2a
    .line 2351
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    #@2c
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v1

    #@30
    :goto_0
    monitor-exit v2

    #@31
    return v1

    #@32
    :cond_0
    const/4 v1, 0x0

    #@33
    goto :goto_0

    #@34
    .line 2342
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2382
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "packageName"

    #@3
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    .line 2383
    const-string/jumbo v1, "shortcutIds"

    #@9
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 2385
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@e
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    monitor-enter v2

    #@13
    .line 2386
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@18
    .line 2387
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1a
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@1d
    .line 2390
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1f
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@22
    move-result-object v0

    #@23
    .line 2391
    .local v0, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    #@26
    .line 2393
    invoke-virtual {v0, p5, p3, p4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    .line 2395
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2c
    invoke-virtual {v1, p3, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@2f
    .line 2397
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@31
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@34
    .line 2380
    return-void

    #@35
    .line 2385
    .end local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method
