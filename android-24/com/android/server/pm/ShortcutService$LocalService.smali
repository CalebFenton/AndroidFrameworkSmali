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
        Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$LocalService$-void_onSystemLocaleChangedNoLock__LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method static synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$2(JLandroid/util/ArraySet;Landroid/content/ComponentName;ILandroid/content/pm/ShortcutInfo;)Z
    .locals 6
    .param p0, "changedSince"    # J
    .param p2, "ids"    # Landroid/util/ArraySet;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "queryFlags"    # I
    .param p5, "si"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1780
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    #@4
    move-result-wide v2

    #@5
    cmp-long v2, v2, p0

    #@7
    if-gez v2, :cond_0

    #@9
    .line 1781
    return v4

    #@a
    .line 1783
    :cond_0
    if-eqz p2, :cond_1

    #@c
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_3

    #@16
    .line 1786
    :cond_1
    if-eqz p3, :cond_2

    #@18
    .line 1787
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getActivityComponent()Landroid/content/ComponentName;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_4

    #@22
    .line 1791
    :cond_2
    and-int/lit8 v2, p4, 0x1

    #@24
    if-eqz v2, :cond_5

    #@26
    .line 1792
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@29
    move-result v0

    #@2a
    .line 1794
    :goto_0
    and-int/lit8 v2, p4, 0x2

    #@2c
    if-eqz v2, :cond_6

    #@2e
    .line 1795
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@31
    move-result v1

    #@32
    .line 1796
    :goto_1
    if-nez v0, :cond_7

    #@34
    :goto_2
    return v1

    #@35
    .line 1784
    :cond_3
    return v4

    #@36
    .line 1788
    :cond_4
    return v4

    #@37
    .line 1791
    :cond_5
    const/4 v0, 0x0

    #@38
    .local v0, "matchDynamic":Z
    goto :goto_0

    #@39
    .line 1794
    .end local v0    # "matchDynamic":Z
    :cond_6
    const/4 v1, 0x0

    #@3a
    .local v1, "matchPinned":Z
    goto :goto_1

    #@3b
    .line 1796
    .end local v1    # "matchPinned":Z
    :cond_7
    const/4 v1, 0x1

    #@3c
    goto :goto_2
.end method

.method static synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$3(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 1825
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
    .line 1734
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
    const/4 v4, 0x0

    #@1
    .line 1819
    const-string/jumbo v0, "packageName"

    #@4
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@7
    .line 1820
    const-string/jumbo v0, "shortcutId"

    #@a
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@d
    .line 1822
    new-instance v2, Ljava/util/ArrayList;

    #@f
    const/4 v0, 0x1

    #@10
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    .line 1823
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-virtual {v0, p3, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@18
    move-result-object v0

    #@19
    .line 1824
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1b
    .line 1825
    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;

    #@1d
    invoke-direct {v3, p4}, Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;-><init>(Ljava/lang/String;)V

    #@20
    move-object v5, p2

    #@21
    move v6, p1

    #@22
    .line 1823
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    #@25
    .line 1827
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_0

    #@2b
    const/4 v0, 0x0

    #@2c
    :goto_0
    return-object v0

    #@2d
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@33
    goto :goto_0
.end method

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V
    .locals 15
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
    .line 1775
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez p4, :cond_0

    #@2
    const/4 v6, 0x0

    #@3
    .line 1778
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@5
    move-object/from16 v0, p3

    #@7
    move/from16 v1, p9

    #@9
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@c
    move-result-object v2

    #@d
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@f
    .line 1779
    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;

    #@11
    move-wide/from16 v4, p5

    #@13
    move-object/from16 v7, p7

    #@15
    move/from16 v8, p8

    #@17
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;-><init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;I)V

    #@1a
    move-object v7, v2

    #@1b
    move-object v8, v9

    #@1c
    move-object/from16 v9, p10

    #@1e
    move-object v10, v3

    #@1f
    move/from16 v11, p11

    #@21
    move-object/from16 v12, p2

    #@23
    move/from16 v13, p1

    #@25
    .line 1778
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/ShortcutPackage;->findAll(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    #@28
    .line 1774
    return-void

    #@29
    .line 1776
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    #@2b
    move-object/from16 v0, p4

    #@2d
    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@30
    .local v6, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0
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
    .line 1763
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
    .line 1762
    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V

    #@19
    .line 0
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$4()V
    .locals 1

    #@0
    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-wrap6(Lcom/android/server/pm/ShortcutService;)V

    #@5
    .line 0
    return-void
.end method

.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    #@0
    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1875
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get0(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

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
    .line 1873
    return-void

    #@18
    .line 1874
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public createShortcutIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1854
    const-string/jumbo v1, "packageName can\'t be empty"

    #@4
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@7
    .line 1855
    const-string/jumbo v1, "shortcutId can\'t be empty"

    #@a
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@d
    .line 1857
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@f
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    monitor-enter v2

    #@14
    .line 1858
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@16
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@19
    move-result-object v1

    #@1a
    .line 1859
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1c
    .line 1858
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@1f
    .line 1862
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    #@22
    move-result-object v0

    #@23
    .line 1865
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_1

    #@25
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_0

    #@2b
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 1868
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v1

    #@35
    monitor-exit v2

    #@36
    return-object v1

    #@37
    :cond_1
    monitor-exit v2

    #@38
    .line 1866
    return-object v4

    #@39
    .line 1857
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
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
    .line 1901
    const-string/jumbo v2, "callingPackage"

    #@4
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1902
    const-string/jumbo v2, "packageName"

    #@a
    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1903
    const-string/jumbo v2, "shortcutId"

    #@10
    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 1905
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-static {v2}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    monitor-enter v3

    #@1a
    .line 1906
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1c
    invoke-virtual {v2, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@1f
    move-result-object v2

    #@20
    .line 1907
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@22
    .line 1906
    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@25
    .line 1909
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@27
    invoke-virtual {v2, p3, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@2e
    move-result-object v1

    #@2f
    .line 1911
    .local v1, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_0

    #@31
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_0

    #@37
    .line 1915
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    if-nez v2, :cond_1

    #@3d
    .line 1916
    const-string/jumbo v2, "ShortcutService"

    #@40
    const-string/jumbo v4, "null bitmap detected in getShortcutIconFd()"

    #@43
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit v3

    #@47
    .line 1917
    return-object v6

    #@48
    :cond_0
    monitor-exit v3

    #@49
    .line 1912
    return-object v6

    #@4a
    .line 1920
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    #@4c
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@53
    .line 1921
    const/high16 v4, 0x10000000

    #@55
    .line 1919
    invoke-static {v2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    move-result-object v2

    #@59
    monitor-exit v3

    #@5a
    return-object v2

    #@5b
    .line 1922
    :catch_0
    move-exception v0

    #@5c
    .line 1923
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string/jumbo v2, "ShortcutService"

    #@5f
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "Icon file not found: "

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7a
    monitor-exit v3

    #@7b
    .line 1924
    return-object v6

    #@7c
    .line 1905
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v2

    #@7d
    monitor-exit v3

    #@7e
    throw v2
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1882
    const-string/jumbo v1, "callingPackage"

    #@3
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1883
    const-string/jumbo v1, "packageName"

    #@9
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1884
    const-string/jumbo v1, "shortcutId"

    #@f
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 1886
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@14
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    monitor-enter v2

    #@19
    .line 1887
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1b
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@1e
    move-result-object v1

    #@1f
    .line 1888
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@21
    .line 1887
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@24
    .line 1890
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@26
    invoke-virtual {v1, p3, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@2d
    move-result-object v0

    #@2e
    .line 1892
    .local v0, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    #@30
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_0

    #@36
    .line 1893
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result v1

    #@3a
    :goto_0
    monitor-exit v2

    #@3b
    .line 1892
    return v1

    #@3c
    .line 1893
    :cond_0
    const/4 v1, 0x0

    #@3d
    goto :goto_0

    #@3e
    .line 1886
    .end local v0    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    #@3f
    monitor-exit v2

    #@40
    throw v1
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
    .line 1742
    .local p6, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    #@2
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1744
    .local v15, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v4, p8, 0x4

    #@7
    if-nez v4, :cond_1

    #@9
    .line 1745
    const/16 v16, 0x3

    #@b
    .line 1747
    .local v16, "cloneFlag":I
    :goto_0
    if-nez p5, :cond_0

    #@d
    .line 1748
    const/16 p6, 0x0

    #@f
    .line 1751
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@13
    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@16
    move-result-object v17

    #@17
    monitor-enter v17

    #@18
    .line 1752
    :try_start_0
    move-object/from16 v0, p0

    #@1a
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1c
    move-object/from16 v0, p2

    #@1e
    move/from16 v1, p9

    #@20
    move/from16 v2, p1

    #@22
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@25
    move-result-object v4

    #@26
    .line 1753
    move-object/from16 v0, p0

    #@28
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2a
    .line 1752
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@2d
    .line 1755
    if-eqz p5, :cond_2

    #@2f
    move-object/from16 v5, p0

    #@31
    move/from16 v6, p1

    #@33
    move-object/from16 v7, p2

    #@35
    move-object/from16 v8, p5

    #@37
    move-object/from16 v9, p6

    #@39
    move-wide/from16 v10, p3

    #@3b
    move-object/from16 v12, p7

    #@3d
    move/from16 v13, p8

    #@3f
    move/from16 v14, p9

    #@41
    .line 1756
    invoke-direct/range {v5 .. v16}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    :goto_1
    monitor-exit v17

    #@45
    .line 1768
    return-object v15

    #@46
    .line 1746
    .end local v16    # "cloneFlag":I
    .restart local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/16 v16, 0x4

    #@48
    .restart local v16    # "cloneFlag":I
    goto :goto_0

    #@49
    .line 1760
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v9, p6

    #@4b
    .line 1761
    .local v9, "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    #@4d
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@4f
    move/from16 v0, p9

    #@51
    invoke-virtual {v4, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@54
    move-result-object v4

    #@55
    new-instance v5, Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;

    #@57
    move-object/from16 v6, p0

    #@59
    move/from16 v7, p1

    #@5b
    move-object/from16 v8, p2

    #@5d
    move-wide/from16 v10, p3

    #@5f
    move-object/from16 v12, p7

    #@61
    move/from16 v13, p8

    #@63
    move/from16 v14, p9

    #@65
    invoke-direct/range {v5 .. v16}, Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V

    #@68
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    goto :goto_1

    #@6c
    .line 1751
    .end local v9    # "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    #@6d
    monitor-exit v17

    #@6e
    throw v4
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;)Z
    .locals 1
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1803
    const-string/jumbo v1, "packageName"

    #@3
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    .line 1804
    const-string/jumbo v1, "shortcutId"

    #@9
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@c
    .line 1806
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@e
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    monitor-enter v2

    #@13
    .line 1807
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@18
    move-result-object v1

    #@19
    .line 1808
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1b
    .line 1807
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@1e
    .line 1810
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    #@21
    move-result-object v0

    #@22
    .line 1812
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    #@24
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v1

    #@28
    :goto_0
    monitor-exit v2

    #@29
    return v1

    #@2a
    :cond_0
    const/4 v1, 0x0

    #@2b
    goto :goto_0

    #@2c
    .line 1806
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit v2

    #@2e
    throw v1
.end method

.method public onSystemLocaleChangedNoLock()V
    .locals 0

    #@0
    .prologue
    .line 1942
    return-void
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
    .line 1835
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "packageName"

    #@3
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    .line 1836
    const-string/jumbo v1, "shortcutIds"

    #@9
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1838
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@e
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    monitor-enter v2

    #@13
    .line 1840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@15
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@18
    move-result-object v0

    #@19
    .line 1841
    .local v0, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@1e
    .line 1844
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@20
    .line 1843
    invoke-virtual {v0, v1, p5, p3, p4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 1846
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    #@26
    invoke-virtual {v1, p3, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@29
    .line 1833
    return-void

    #@2a
    .line 1838
    .end local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method
