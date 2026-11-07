.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$SharedLibraryAssets;,
        Landroid/app/ResourcesManager$PathCollector;,
        Landroid/app/ResourcesManager$ApkKey;,
        Landroid/app/ResourcesManager$UpdateHandler;,
        Landroid/app/ResourcesManager$ApkAssetsSupplier;,
        Landroid/app/ResourcesManager$ActivityResources;,
        Landroid/app/ResourcesManager$ActivityResource;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist RESOURCE_CACHE_DIR:Ljava/lang/String; = "/data/resource-cache/"

.field static final greylist-max-o TAG:Ljava/lang/String; = "ResourcesManager"

.field private static volatile greylist-max-o sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final greylist mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mApplicationOwnedApks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCachedApkAssets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ApkAssets;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mLocaleConfig:Landroid/app/LocaleConfig;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPendingAppInfoUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final greylist mResConfiguration:Landroid/content/res/Configuration;

.field private blacklist mResDisplayId:I

.field private final greylist mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSharedLibAssetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/ResourcesManager$SharedLibraryAssets;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindKeyForResourceImplLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindOrCreateResourcesImplForKeyLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mredirectResourcesToNewImplLocked(Landroid/app/ResourcesManager;Landroid/util/ArrayMap;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 142
    new-instance v0, Landroid/app/LocaleConfig;

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/LocaleConfig;-><init>(Landroid/os/LocaleList;)V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mLocaleConfig:Landroid/app/LocaleConfig;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    .line 298
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    .line 375
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 382
    new-instance v0, Landroid/app/ResourcesManager$UpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ResourcesManager$UpdateHandler;-><init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager-IA;)V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    .line 388
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    .line 392
    return-void
.end method

.method private blacklist addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "splitDirs"    # [Ljava/lang/String;

    .line 580
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 581
    if-eqz p2, :cond_10

    .line 582
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 584
    :cond_10
    return-void
.end method

.method private blacklist appendLibAssetsLocked(Landroid/app/ResourcesManager$SharedLibraryAssets;)V
    .registers 10
    .param p1, "libAssets"    # Landroid/app/ResourcesManager$SharedLibraryAssets;

    .line 1723
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1724
    .local v0, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1725
    .local v1, "implCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_42

    .line 1726
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 1727
    .local v3, "key":Landroid/content/res/ResourcesKey;
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1728
    .local v4, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 1729
    .local v5, "impl":Landroid/content/res/ResourcesImpl;
    :goto_28
    if-nez v5, :cond_32

    .line 1730
    const-string v6, "ResourcesManager"

    const-string v7, "Found a null ResourcesImpl, skipped."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    goto :goto_3f

    .line 1734
    :cond_32
    invoke-virtual {p1}, Landroid/app/ResourcesManager$SharedLibraryAssets;->getResourcesKey()Landroid/content/res/ResourcesKey;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Landroid/app/ResourcesManager;->createNewResourceKeyIfNeeded(Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesKey;

    move-result-object v6

    .line 1735
    .local v6, "newKey":Landroid/content/res/ResourcesKey;
    if-eqz v6, :cond_3f

    .line 1736
    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v5    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v6    # "newKey":Landroid/content/res/ResourcesKey;
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1739
    .end local v2    # "i":I
    :cond_42
    invoke-direct {p0, v0}, Landroid/app/ResourcesManager;->redirectAllResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 1740
    return-void
.end method

.method private blacklist applyAllPendingAppInfoUpdates$ravenwood()V
    .registers 1

    .line 1503
    return-void
.end method

.method private blacklist applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V
    .registers 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "tmpConfig"    # Landroid/content/res/Configuration;
    .param p4, "key"    # Landroid/content/res/ResourcesKey;
    .param p5, "resourcesImpl"    # Landroid/content/res/ResourcesImpl;

    .line 1567
    invoke-virtual {p3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1568
    invoke-virtual {p4}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1569
    iget-object v0, p4, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1575
    :cond_e
    invoke-virtual {p5}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 1576
    .local v0, "daj":Landroid/view/DisplayAdjustments;
    if-eqz p2, :cond_1d

    .line 1577
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object v0, v1

    .line 1578
    invoke-virtual {v0, p2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1580
    :cond_1d
    invoke-virtual {v0, p3}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1581
    invoke-direct {p0, p4}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1583
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p5, p3, v1, p2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1584
    return-void
.end method

.method private static blacklist applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 6
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 513
    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 514
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 515
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 516
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v3, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 517
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    .line 518
    .local v1, "sl":I
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_37

    .line 519
    const/4 v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 520
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_43

    .line 523
    :cond_37
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 524
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 527
    :goto_43
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 528
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 529
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 530
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 531
    return-void
.end method

.method private blacklist applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 25
    .param p1, "oldSourceDirs"    # [Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1745
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-wide/16 v3, 0x2000

    :try_start_6
    const-string v0, "ResourcesManager#applyNewResourceDirsLocked"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1748
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1750
    .local v6, "baseCodePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 1751
    .local v0, "myUid":I
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v0, :cond_1b

    .line 1752
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    goto :goto_1d

    .line 1753
    :cond_1b
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    :goto_1d
    move-object v14, v5

    .line 1756
    .local v14, "newSplitDirs":[Ljava/lang/String;
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    .line 1757
    .local v7, "copiedSplitDirs":[Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1760
    .local v8, "copiedResourceDirs":[Ljava/lang/String;
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v0, :cond_34

    .line 1761
    invoke-direct {v1, v6, v7}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1764
    :cond_34
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v15, v5

    .line 1765
    .local v15, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1766
    .local v5, "implCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_41
    if-ge v9, v5, :cond_b5

    .line 1767
    iget-object v10, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/ResourcesKey;

    .line 1768
    .local v10, "key":Landroid/content/res/ResourcesKey;
    iget-object v11, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v11

    .line 1769
    .local v16, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v16, :cond_5e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/ResourcesImpl;

    goto :goto_5f

    :cond_5e
    const/4 v11, 0x0

    .line 1771
    .local v11, "impl":Landroid/content/res/ResourcesImpl;
    :goto_5f
    if-nez v11, :cond_68

    .line 1772
    move-wide/from16 v18, v3

    move/from16 v20, v5

    move/from16 v17, v9

    goto :goto_ae

    .line 1775
    :cond_68
    iget-object v12, v10, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_6 .. :try_end_6a} :catchall_c5

    if-eqz v12, :cond_8d

    :try_start_6c
    iget-object v12, v10, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1776
    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_86

    iget-object v12, v10, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_89

    .line 1777
    move-object/from16 v13, p1

    :try_start_78
    invoke-static {v13, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7f

    goto :goto_8f

    :cond_7f
    move-wide/from16 v18, v3

    move/from16 v20, v5

    move/from16 v17, v9

    goto :goto_ae

    .line 1776
    :cond_86
    move-object/from16 v13, p1

    goto :goto_8f

    .line 1793
    .end local v0    # "myUid":I
    .end local v5    # "implCount":I
    .end local v6    # "baseCodePath":Ljava/lang/String;
    .end local v7    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "key":Landroid/content/res/ResourcesKey;
    .end local v11    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "newSplitDirs":[Ljava/lang/String;
    .end local v15    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :catchall_89
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_c6

    .line 1775
    .restart local v0    # "myUid":I
    .restart local v5    # "implCount":I
    .restart local v6    # "baseCodePath":Ljava/lang/String;
    .restart local v7    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "key":Landroid/content/res/ResourcesKey;
    .restart local v11    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v14    # "newSplitDirs":[Ljava/lang/String;
    .restart local v15    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_8d
    move-object/from16 v13, p1

    .line 1778
    :goto_8f
    move v12, v5

    .end local v5    # "implCount":I
    .local v12, "implCount":I
    new-instance v5, Landroid/content/res/ResourcesKey;

    move/from16 v17, v9

    .end local v9    # "i":I
    .local v17, "i":I
    iget-object v9, v10, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;
    :try_end_96
    .catchall {:try_start_78 .. :try_end_96} :catchall_c5

    move-wide/from16 v18, v3

    :try_start_98
    iget v3, v10, Landroid/content/res/ResourcesKey;->mDisplayId:I

    move-object v4, v11

    .end local v11    # "impl":Landroid/content/res/ResourcesImpl;
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    iget-object v11, v10, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move/from16 v20, v12

    .end local v12    # "implCount":I
    .local v20, "implCount":I
    iget-object v12, v10, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v13, v10, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object/from16 v21, v10

    move v10, v3

    move-object/from16 v3, v21

    .end local v10    # "key":Landroid/content/res/ResourcesKey;
    .local v3, "key":Landroid/content/res/ResourcesKey;
    invoke-direct/range {v5 .. v13}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    invoke-virtual {v15, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :goto_ae
    add-int/lit8 v9, v17, 0x1

    move-wide/from16 v3, v18

    move/from16 v5, v20

    .end local v17    # "i":I
    .restart local v9    # "i":I
    goto :goto_41

    .end local v20    # "implCount":I
    .restart local v5    # "implCount":I
    :cond_b5
    move-wide/from16 v18, v3

    move/from16 v20, v5

    move/from16 v17, v9

    .line 1791
    .end local v5    # "implCount":I
    .end local v9    # "i":I
    .restart local v20    # "implCount":I
    invoke-direct {v1, v15}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_be
    .catchall {:try_start_98 .. :try_end_be} :catchall_c3

    .line 1793
    .end local v0    # "myUid":I
    .end local v6    # "baseCodePath":Ljava/lang/String;
    .end local v7    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v14    # "newSplitDirs":[Ljava/lang/String;
    .end local v15    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v20    # "implCount":I
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1794
    nop

    .line 1795
    return-void

    .line 1793
    :catchall_c3
    move-exception v0

    goto :goto_c8

    :catchall_c5
    move-exception v0

    :goto_c6
    move-wide/from16 v18, v3

    :goto_c8
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1794
    throw v0
.end method

.method private static blacklist cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1126
    .local p0, "references":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<TT;>;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 1127
    return-void
.end method

.method private static blacklist cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TC;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TC;",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1134
    .local p0, "referenceContainers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p2, "unwrappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<TC;Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 1135
    .local v0, "enqueuedRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-nez v0, :cond_7

    .line 1136
    return-void

    .line 1139
    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1140
    .local v1, "deadReferences":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/Reference<+TT;>;>;"
    :goto_c
    if-eqz v0, :cond_16

    .line 1141
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1140
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_c

    .line 1144
    :cond_16
    new-instance v2, Landroid/app/ResourcesManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, v1}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/util/HashSet;)V

    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 1148
    return-void
.end method

.method private static blacklist combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "resourceDirs"    # [Ljava/lang/String;
    .param p1, "overlayPaths"    # [Ljava/lang/String;

    .line 1812
    if-nez p0, :cond_9

    .line 1813
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1814
    :cond_9
    if-nez p1, :cond_12

    .line 1815
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1817
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    array-length v2, p0

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1818
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    if-ge v3, v1, :cond_27

    aget-object v4, p1, v3

    .line 1819
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1821
    :cond_27
    array-length v1, p0

    move v3, v2

    :goto_29
    if-ge v3, v1, :cond_39

    aget-object v4, p0, v3

    .line 1822
    .restart local v4    # "path":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 1823
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    .end local v4    # "path":Ljava/lang/String;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1826
    :cond_39
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static greylist-max-o countLiveReferences(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)I"
        }
    .end annotation

    .line 739
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v0, 0x0

    .line 740
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 741
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 742
    .local v3, "value":Ljava/lang/Object;, "TT;"
    :goto_19
    if-eqz v3, :cond_1d

    .line 743
    add-int/lit8 v0, v0, 0x1

    .line 745
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_1d
    goto :goto_5

    .line 746
    :cond_1e
    return v0
.end method

.method private blacklist createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .registers 13
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 1156
    const-string v0, "ResourcesManager#createApkAssetsSupplierNotLocked"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1164
    :try_start_7
    new-instance v0, Landroid/app/ResourcesManager$ApkAssetsSupplier;

    invoke-direct {v0, p0}, Landroid/app/ResourcesManager$ApkAssetsSupplier;-><init>(Landroid/app/ResourcesManager;)V

    .line 1165
    .local v0, "supplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1166
    .local v3, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "n":I
    :goto_15
    if-ge v4, v5, :cond_36

    .line 1167
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ResourcesManager$ApkKey;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_3b

    .line 1169
    .local v6, "apkKey":Landroid/app/ResourcesManager$ApkKey;
    :try_start_1d
    invoke-virtual {v0, v6}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_3b

    .line 1172
    goto :goto_33

    .line 1170
    :catch_21
    move-exception v7

    .line 1171
    .local v7, "e":Ljava/io/IOException;
    :try_start_22
    const-string v8, "ResourcesManager"

    const-string v9, "failed to preload asset path \'%s\'"

    iget-object v10, v6, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_3b

    .line 1166
    .end local v6    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1174
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_36
    nop

    .line 1176
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1174
    return-object v0

    .line 1176
    .end local v0    # "supplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .end local v3    # "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    :catchall_3b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1177
    throw v0
.end method

.method private blacklist createNewResourceKeyIfNeeded(Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesKey;
    .registers 5
    .param p1, "original"    # Landroid/content/res/ResourcesKey;
    .param p2, "library"    # Landroid/content/res/ResourcesKey;

    .line 1712
    new-instance v0, Landroid/app/ResourcesManager$PathCollector;

    invoke-direct {v0, p1}, Landroid/app/ResourcesManager$PathCollector;-><init>(Landroid/content/res/ResourcesKey;)V

    .line 1713
    .local v0, "collector":Landroid/app/ResourcesManager$PathCollector;
    invoke-virtual {v0, p2}, Landroid/app/ResourcesManager$PathCollector;->appendKey(Landroid/content/res/ResourcesKey;)V

    .line 1714
    invoke-virtual {v0}, Landroid/app/ResourcesManager$PathCollector;->isSameAsOriginal()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v0}, Landroid/app/ResourcesManager$PathCollector;->collectedKey()Landroid/content/res/ResourcesKey;

    move-result-object v1

    :goto_14
    return-object v1
.end method

.method private blacklist createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .registers 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 1193
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_3
    invoke-direct {p0, p1, p3}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 1200
    .local v1, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v1, :cond_c

    .line 1201
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1204
    :cond_c
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p2, v1, v2}, Landroid/app/ResourcesManager;->createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1205
    .end local v1    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private blacklist createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .registers 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "initialOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p5, "classLoader"    # Ljava/lang/ClassLoader;
    .param p6, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 1213
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    :try_start_3
    invoke-direct {p0, p2, p6}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_20

    move-object v7, v0

    .line 1220
    .local v7, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v7, :cond_13

    .line 1221
    :try_start_a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_d

    const/4 v0, 0x0

    return-object v0

    .line 1226
    .end local v7    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_d
    move-exception v0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    goto :goto_25

    .line 1224
    .restart local v7    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_13
    :try_start_13
    iget-object v8, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_20

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p3    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .end local p4    # "overrideDisplayId":Ljava/lang/Integer;
    .end local p5    # "classLoader":Ljava/lang/ClassLoader;
    .local v3, "activityToken":Landroid/os/IBinder;
    .local v4, "initialOverrideConfig":Landroid/content/res/Configuration;
    .local v5, "overrideDisplayId":Ljava/lang/Integer;
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    :try_start_1a
    invoke-direct/range {v2 .. v8}, Landroid/app/ResourcesManager;->createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1226
    .end local v3    # "activityToken":Landroid/os/IBinder;
    .end local v4    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .end local v5    # "overrideDisplayId":Ljava/lang/Integer;
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v7    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p3    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .restart local p4    # "overrideDisplayId":Ljava/lang/Integer;
    .restart local p5    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_20
    move-exception v0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p3    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .end local p4    # "overrideDisplayId":Ljava/lang/Integer;
    .end local p5    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v3    # "activityToken":Landroid/os/IBinder;
    .restart local v4    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .restart local v5    # "overrideDisplayId":Ljava/lang/Integer;
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_27

    throw v0

    :catchall_27
    move-exception v0

    goto :goto_25
.end method

.method private blacklist createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "initialOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;
    .param p5, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 941
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 943
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v3, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 947
    invoke-virtual {p6}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Landroid/content/res/CompatResources;

    invoke-direct {v1, p4}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_21

    .line 948
    :cond_1c
    new-instance v1, Landroid/content/res/Resources;

    invoke-direct {v1, p4}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_21
    nop

    .line 949
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 950
    iget-object v2, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 952
    new-instance v2, Landroid/app/ResourcesManager$ActivityResource;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/ResourcesManager$ActivityResource;-><init>(Landroid/app/ResourcesManager-IA;)V

    .line 953
    .local v2, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v3, v2, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    .line 955
    iget-object v3, v2, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 956
    iput-object p3, v2, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 957
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    return-object v1
.end method

.method private blacklist createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .registers 9
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 801
    invoke-virtual {p0, p1, p2}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v1

    .line 802
    .local v1, "assets":Landroid/content/res/AssetManager;
    if-nez v1, :cond_8

    .line 803
    const/4 v0, 0x0

    return-object v0

    .line 806
    :cond_8
    new-instance v4, Landroid/view/DisplayAdjustments;

    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v4, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 807
    .local v4, "daj":Landroid/view/DisplayAdjustments;
    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v4, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 809
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 810
    .local v3, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 811
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v0, Landroid/content/res/ResourcesImpl;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Z)V

    .line 816
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    return-object v0
.end method

.method private blacklist createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 967
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0, v1}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 969
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/content/res/CompatResources;

    invoke-direct {v0, p1}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_18

    .line 970
    :cond_13
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_18
    nop

    .line 971
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 972
    iget-object v1, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 973
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    return-object v0
.end method

.method private static blacklist extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "key"    # Landroid/content/res/ResourcesKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ResourcesKey;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;"
        }
    .end annotation

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v0, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 639
    new-instance v1, Landroid/app/ResourcesManager$ApkKey;

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_14
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 643
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_2b

    aget-object v5, v1, v4

    .line 644
    .local v5, "splitResDir":Ljava/lang/String;
    new-instance v6, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v6, v5, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    .end local v5    # "splitResDir":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 648
    :cond_2b
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v1, :cond_4b

    .line 649
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_34
    if-ge v5, v4, :cond_4b

    aget-object v6, v1, v5

    .line 651
    .local v6, "libDir":Ljava/lang/String;
    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 652
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v3, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v6    # "libDir":Ljava/lang/String;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 657
    :cond_4b
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 658
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_53
    if-ge v5, v4, :cond_62

    aget-object v6, v1, v5

    .line 659
    .local v6, "idmapPath":Ljava/lang/String;
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v2, v3}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v6    # "idmapPath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 663
    :cond_62
    return-object v0
.end method

.method private greylist-max-o findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 6
    .param p1, "resourceImpl"    # Landroid/content/res/ResourcesImpl;

    .line 868
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 869
    .local v0, "refCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_25

    .line 870
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 871
    .local v2, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v2, :cond_22

    invoke-virtual {v2, p1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 872
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    return-object v3

    .line 869
    .end local v2    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 875
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .registers 6
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 851
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 853
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAppliedSharedLibsHash()I

    move-result v1

    iget-object v2, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-eq v1, v2, :cond_22

    .line 854
    :cond_12
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 855
    if-eqz v0, :cond_22

    .line 856
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :cond_22
    return-object v0
.end method

.method private blacklist findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 11
    .param p1, "targetActivityToken"    # Landroid/os/IBinder;
    .param p2, "targetKey"    # Landroid/content/res/ResourcesKey;
    .param p3, "targetClassLoader"    # Ljava/lang/ClassLoader;

    .line 916
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 919
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 920
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_b
    const/4 v3, 0x0

    if-ge v2, v1, :cond_3f

    .line 921
    iget-object v4, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResource;

    .line 922
    .local v4, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    .line 923
    .local v5, "resources":Landroid/content/res/Resources;
    if-nez v5, :cond_21

    goto :goto_29

    .line 924
    :cond_21
    invoke-virtual {v5}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 923
    invoke-direct {p0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v3

    .line 926
    .local v3, "key":Landroid/content/res/ResourcesKey;
    :goto_29
    if-eqz v3, :cond_3c

    .line 927
    invoke-virtual {v5}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 928
    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 929
    return-object v5

    .line 920
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 933
    .end local v2    # "index":I
    :cond_3f
    return-object v3
.end method

.method private greylist-max-o findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 6
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 826
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 827
    .local v0, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    goto :goto_13

    :cond_12
    move-object v2, v1

    .line 828
    .local v2, "impl":Landroid/content/res/ResourcesImpl;
    :goto_13
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 829
    return-object v2

    .line 831
    :cond_20
    return-object v1
.end method

.method private blacklist generateConfig(Landroid/content/res/ResourcesKey;)Landroid/content/res/Configuration;
    .registers 5
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 784
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v0

    .line 785
    .local v0, "hasOverrideConfig":Z
    if-eqz v0, :cond_15

    .line 786
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 787
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_19

    .line 790
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_15
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 792
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :goto_19
    return-object v1
.end method

.method private blacklist generateDisplayId(Landroid/content/res/ResourcesKey;)I
    .registers 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 796
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    goto :goto_a

    :cond_8
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    :goto_a
    return v0
.end method

.method private blacklist getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 498
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 499
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 500
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_12

    .line 501
    iget v2, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 502
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    :goto_13
    if-eqz v2, :cond_1f

    .line 503
    sget-object v3, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 504
    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 503
    invoke-virtual {v2, v1, v3, p1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    goto :goto_22

    .line 506
    :cond_1f
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 508
    :goto_22
    return-object v1
.end method

.method public static greylist getInstance()Landroid/app/ResourcesManager;
    .registers 3

    .line 410
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 411
    .local v0, "rm":Landroid/app/ResourcesManager;
    if-nez v0, :cond_19

    .line 412
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 413
    :try_start_7
    sget-object v2, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    move-object v0, v2

    .line 414
    if-nez v0, :cond_14

    .line 415
    new-instance v2, Landroid/app/ResourcesManager;

    invoke-direct {v2}, Landroid/app/ResourcesManager;-><init>()V

    move-object v0, v2

    sput-object v2, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 417
    :cond_14
    monitor-exit v1

    goto :goto_19

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2

    .line 419
    :cond_19
    :goto_19
    return-object v0
.end method

.method private greylist-max-o getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 905
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 906
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    if-nez v0, :cond_16

    .line 907
    new-instance v1, Landroid/app/ResourcesManager$ActivityResources;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager-IA;)V

    move-object v0, v1

    .line 908
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :cond_16
    return-object v0
.end method

.method static synthetic blacklist lambda$cleanupReferences$1(Ljava/util/function/Function;Ljava/util/HashSet;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "unwrappingFunction"    # Ljava/util/function/Function;
    .param p1, "deadReferences"    # Ljava/util/HashSet;
    .param p2, "refContainer"    # Ljava/lang/Object;

    .line 1145
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1146
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v0, :cond_11

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method static synthetic blacklist lambda$createResourcesForActivityLocked$0(Landroid/app/ResourcesManager$ActivityResource;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "r"    # Landroid/app/ResourcesManager$ActivityResource;

    .line 945
    iget-object v0, p0, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static greylist-max-o overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist rebaseActivityOverrideConfig(Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;
    .registers 21
    .param p1, "activityResource"    # Landroid/app/ResourcesManager$ActivityResource;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 1409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1410
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v4, 0x0

    if-nez v3, :cond_12

    .line 1411
    return-object v4

    .line 1416
    :cond_12
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v5

    .line 1417
    .local v5, "oldKey":Landroid/content/res/ResourcesKey;
    if-nez v5, :cond_39

    .line 1418
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1419
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1418
    const-string v7, "ResourcesManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-object v4

    .line 1424
    :cond_39
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    move-object v13, v6

    .line 1425
    .local v13, "rebasedOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_44

    .line 1426
    invoke-virtual {v13, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1429
    :cond_44
    iget-object v6, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 1430
    .local v6, "overrideDisplayId":Ljava/lang/Integer;
    if-eqz v6, :cond_66

    .line 1431
    new-instance v7, Landroid/view/DisplayAdjustments;

    invoke-direct {v7, v13}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 1432
    .local v7, "displayAdjustments":Landroid/view/DisplayAdjustments;
    invoke-virtual {v7}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v9, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1433
    iget-object v8, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v7, v8}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1435
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8, v7}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 1436
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-static {v8, v13}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1439
    .end local v7    # "displayAdjustments":Landroid/view/DisplayAdjustments;
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    :cond_66
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1440
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move/from16 v16, v7

    .line 1441
    .local v16, "hasOverrideConfig":Z
    if-eqz v16, :cond_79

    .line 1442
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v13, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1445
    :cond_79
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    if-eqz v7, :cond_8c

    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1446
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_8c

    .line 1450
    iget-object v7, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1454
    :cond_8c
    if-eqz v6, :cond_94

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v12, v4

    goto :goto_96

    :cond_94
    move/from16 v12, p3

    .line 1457
    .end local p3    # "displayId":I
    .local v12, "displayId":I
    :goto_96
    new-instance v7, Landroid/content/res/ResourcesKey;

    iget-object v8, v5, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v10, v5, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v11, v5, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v14, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v15, v5, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    invoke-direct/range {v7 .. v15}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1466
    .local v7, "newKey":Landroid/content/res/ResourcesKey;
    return-object v7
.end method

.method private blacklist rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V
    .registers 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "overridesActivityDisplay"    # Z

    .line 1067
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    nop

    .line 1069
    :try_start_4
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v1

    .line 1071
    .local v1, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget v2, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 1072
    iget v2, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    iput v2, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 1076
    :cond_11
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1077
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1078
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_26

    .line 1080
    .end local v2    # "config":Landroid/content/res/Configuration;
    :cond_24
    iget-object v2, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 1083
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :goto_26
    if-eqz p3, :cond_44

    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1084
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_44

    .line 1085
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1087
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v2, v3

    .line 1093
    :cond_3e
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1096
    :cond_44
    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1097
    .end local v1    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v2    # "config":Landroid/content/res/Configuration;
    monitor-exit v0

    .line 1098
    return-void

    .line 1097
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private blacklist rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V
    .registers 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "overrideDisplay"    # I

    .line 1107
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1109
    .local v0, "temp":Landroid/content/res/Configuration;
    new-instance v1, Landroid/view/DisplayAdjustments;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 1110
    .local v1, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1112
    invoke-virtual {p0, p2, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1113
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-static {v2, v0}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1115
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1116
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1118
    :cond_23
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1119
    return-void
.end method

.method private blacklist redirectAllResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 1882
    .local p1, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v0, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ResourcesManager;->mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0, v1}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 1885
    iget-object v0, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1886
    .local v0, "resourcesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_6c

    .line 1887
    iget-object v2, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1888
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 1889
    .local v3, "r":Landroid/content/res/Resources;
    :goto_22
    if-nez v3, :cond_25

    .line 1890
    goto :goto_69

    .line 1892
    :cond_25
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    .line 1893
    .local v4, "key":Landroid/content/res/ResourcesKey;
    if-eqz v4, :cond_43

    .line 1894
    invoke-direct {p0, v4}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v5

    .line 1895
    .local v5, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v5, :cond_3b

    .line 1898
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1899
    .end local v5    # "impl":Landroid/content/res/ResourcesImpl;
    goto :goto_69

    .line 1896
    .restart local v5    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_3b
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    const-string v7, "failed to redirect ResourcesImpl"

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1904
    .end local v5    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_43
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    .line 1905
    .local v5, "oldImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v5, :cond_69

    .line 1906
    invoke-virtual {v5}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 1908
    .local v6, "oldAssets":Landroid/content/res/AssetManager;
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v7

    if-eq v6, v7, :cond_69

    .line 1909
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1910
    new-instance v7, Landroid/content/res/ResourcesImpl;

    invoke-direct {v7, v5}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    .line 1911
    .local v7, "newImpl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1912
    .end local v7    # "newImpl":Landroid/content/res/ResourcesImpl;
    goto :goto_69

    .line 1913
    :cond_62
    const-string v7, "ResourcesManager"

    const-string v8, "Skip appending shared library asset paths for the Resources as its assets are not up to date."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "key":Landroid/content/res/ResourcesKey;
    .end local v5    # "oldImpl":Landroid/content/res/ResourcesImpl;
    .end local v6    # "oldAssets":Landroid/content/res/AssetManager;
    :cond_69
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1920
    .end local v1    # "i":I
    :cond_6c
    return-void
.end method

.method private greylist-max-o redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 1833
    .local p1, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1834
    return-void

    .line 1838
    :cond_7
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1839
    .local v0, "resourcesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const-string v2, "failed to redirect ResourcesImpl"

    const/4 v3, 0x0

    if-ge v1, v0, :cond_44

    .line 1840
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1841
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1842
    .local v3, "r":Landroid/content/res/Resources;
    :cond_23
    if-eqz v3, :cond_41

    .line 1843
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1844
    .local v5, "key":Landroid/content/res/ResourcesKey;
    if-eqz v5, :cond_41

    .line 1845
    invoke-direct {p0, v5}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v6

    .line 1846
    .local v6, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v6, :cond_3b

    .line 1849
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_41

    .line 1847
    :cond_3b
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v7, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1839
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v6    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1855
    .end local v1    # "i":I
    :cond_44
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResources;

    .line 1856
    .local v4, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1857
    .local v5, "resCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_61
    if-ge v6, v5, :cond_98

    .line 1858
    iget-object v7, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1859
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ResourcesManager$ActivityResource;

    .line 1860
    .local v7, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    if-eqz v7, :cond_76

    .line 1861
    iget-object v8, v7, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Resources;

    goto :goto_77

    :cond_76
    move-object v8, v3

    .line 1862
    .local v8, "r":Landroid/content/res/Resources;
    :goto_77
    if-eqz v8, :cond_95

    .line 1863
    invoke-virtual {v8}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesKey;

    .line 1864
    .local v9, "key":Landroid/content/res/ResourcesKey;
    if-eqz v9, :cond_95

    .line 1865
    invoke-direct {p0, v9}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v10

    .line 1866
    .local v10, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v10, :cond_8f

    .line 1870
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_95

    .line 1867
    :cond_8f
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1857
    .end local v7    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v10    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_95
    :goto_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 1874
    .end local v4    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v5    # "resCount":I
    .end local v6    # "i":I
    :cond_98
    goto :goto_4e

    .line 1875
    :cond_99
    return-void
.end method

.method private blacklist resourcesKeyFromAssets(Landroid/content/res/AssetManager;)Landroid/content/res/ResourcesKey;
    .registers 16
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v0, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v1, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_40

    aget-object v6, v2, v5

    .line 670
    .local v6, "asset":Landroid/content/res/ApkAssets;
    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->isSystem()Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 671
    goto :goto_3d

    .line 673
    :cond_22
    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->isOverlay()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 674
    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 675
    :cond_30
    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->isSharedLib()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 676
    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    .end local v6    # "asset":Landroid/content/res/ApkAssets;
    :cond_3d
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 679
    :cond_40
    new-instance v6, Landroid/content/res/ResourcesKey;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    .line 680
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 679
    return-object v6
.end method

.method public static greylist setInstance(Landroid/app/ResourcesManager;)Landroid/app/ResourcesManager;
    .registers 3
    .param p0, "resourcesManager"    # Landroid/app/ResourcesManager;

    .line 401
    const-class v0, Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 402
    :try_start_3
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 403
    .local v1, "oldResourceManager":Landroid/app/ResourcesManager;
    sput-object p0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 404
    monitor-exit v0

    return-object v1

    .line 405
    .end local v1    # "oldResourceManager":Landroid/app/ResourcesManager;
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method


# virtual methods
.method public greylist appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAsset"    # Ljava/lang/String;

    .line 1594
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method public blacklist appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 25
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAssets"    # [Ljava/lang/String;

    .line 1604
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1607
    :try_start_7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1609
    .local v0, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1610
    .local v4, "implCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    if-ge v5, v4, :cond_84

    .line 1611
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 1612
    .local v6, "key":Landroid/content/res/ResourcesKey;
    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 1613
    .local v7, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v7, :cond_2e

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    .line 1614
    .local v8, "impl":Landroid/content/res/ResourcesImpl;
    :goto_2f
    if-eqz v8, :cond_7d

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_8b

    move-object/from16 v10, p1

    :try_start_35
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 1615
    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 1616
    .local v9, "newLibAssets":[Ljava/lang/String;
    array-length v11, v2

    const/4 v12, 0x0

    :goto_3f
    if-ge v12, v11, :cond_4f

    aget-object v13, v2, v12

    .line 1617
    .local v13, "libAsset":Ljava/lang/String;
    const-class v14, Ljava/lang/String;

    .line 1618
    invoke-static {v14, v9, v13}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object v9, v14

    .line 1616
    .end local v13    # "libAsset":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 1621
    :cond_4f
    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v9, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7a

    .line 1622
    new-instance v13, Landroid/content/res/ResourcesKey;

    iget-object v14, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget v12, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v2

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v20, v2

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object/from16 v21, v2

    move-object/from16 v17, v9

    move-object/from16 v16, v11

    move/from16 v18, v12

    .end local v9    # "newLibAssets":[Ljava/lang/String;
    .local v17, "newLibAssets":[Ljava/lang/String;
    invoke-direct/range {v13 .. v21}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    invoke-virtual {v0, v8, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    .line 1621
    .end local v17    # "newLibAssets":[Ljava/lang/String;
    .restart local v9    # "newLibAssets":[Ljava/lang/String;
    :cond_7a
    move-object/from16 v17, v9

    .end local v9    # "newLibAssets":[Ljava/lang/String;
    .restart local v17    # "newLibAssets":[Ljava/lang/String;
    goto :goto_7f

    .line 1614
    .end local v17    # "newLibAssets":[Ljava/lang/String;
    :cond_7d
    move-object/from16 v10, p1

    .line 1610
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v8    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_7f
    :goto_7f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    goto :goto_13

    :cond_84
    move-object/from16 v10, p1

    .line 1635
    .end local v5    # "i":I
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 1636
    .end local v0    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v4    # "implCount":I
    monitor-exit v3

    .line 1637
    return-void

    .line 1636
    :catchall_8b
    move-exception v0

    move-object/from16 v10, p1

    :goto_8e
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_35 .. :try_end_8f} :catchall_90

    throw v0

    :catchall_90
    move-exception v0

    goto :goto_8e
.end method

.method public blacklist appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "oldSourceDirs"    # [Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1472
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1473
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1479
    :cond_e
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_32

    .line 1480
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1481
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1479
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1484
    .end local v1    # "i":I
    :cond_32
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    monitor-exit v0

    .line 1486
    return-void

    .line 1485
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public final blacklist applyAllPendingAppInfoUpdates()V
    .registers 7

    .line 1490
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1491
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-eqz v1, :cond_29

    .line 1492
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_e
    if-ge v1, v2, :cond_26

    .line 1493
    iget-object v3, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1494
    .local v3, "appInfo":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v4, v5}, Landroid/app/ResourcesManager;->applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1492
    .end local v3    # "appInfo":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1496
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_26
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1498
    :cond_29
    monitor-exit v0

    .line 1499
    return-void

    .line 1498
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .line 535
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_17

    .line 537
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 538
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 540
    :cond_17
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 541
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final blacklist applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .registers 18
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 1507
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v7, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1509
    const-wide/16 v8, 0x2000

    :try_start_9
    const-string v0, "ResourcesManager#applyConfigurationToResources"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1512
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_97

    const/4 v10, 0x0

    if-nez v0, :cond_1f

    if-nez v3, :cond_1f

    .line 1517
    nop

    .line 1554
    :try_start_1a
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v7
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_9d

    .line 1517
    return v10

    .line 1520
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1521
    .local v0, "changes":I
    if-eqz v3, :cond_3c

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1522
    invoke-virtual {v1, v3}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1523
    :cond_33
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v3, v1}, Landroid/content/res/CompatibilityInfo;->getCompatibilityChangesForConfig(Landroid/content/res/CompatibilityInfo;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1524
    iput-object v3, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1530
    :cond_3c
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_44

    .line 1531
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1534
    :cond_44
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;

    move-result-object v1

    move-object v11, v1

    .line 1535
    .local v11, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v2, v11, v3}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1537
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 1539
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 1541
    .local v4, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    move v13, v1

    .local v13, "i":I
    :goto_5d
    if-ltz v13, :cond_8f

    .line 1542
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1543
    .local v5, "key":Landroid/content/res/ResourcesKey;
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    move-object v14, v1

    .line 1544
    .local v14, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v14, :cond_7a

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    goto :goto_7b

    :cond_7a
    const/4 v1, 0x0

    :goto_7b
    move-object v6, v1

    .line 1545
    .local v6, "r":Landroid/content/res/ResourcesImpl;
    if-eqz v6, :cond_83

    .line 1546
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V

    goto :goto_88

    .line 1548
    :cond_83
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_88
    .catchall {:try_start_1f .. :try_end_88} :catchall_97

    .line 1541
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v6    # "r":Landroid/content/res/ResourcesImpl;
    .end local v14    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :goto_88
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_5d

    .line 1552
    .end local v13    # "i":I
    :cond_8f
    if-eqz v0, :cond_92

    move v10, v12

    .line 1554
    :cond_92
    :try_start_92
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v7

    .line 1552
    return v10

    .line 1554
    .end local v0    # "changes":I
    .end local v4    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v11    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catchall_97
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1555
    nop

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "compat":Landroid/content/res/CompatibilityInfo;
    throw v0

    .line 1556
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "compat":Landroid/content/res/CompatibilityInfo;
    :catchall_9d
    move-exception v0

    monitor-exit v7
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_9d

    throw v0
.end method

.method protected greylist createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .registers 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method protected greylist createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;
    .registers 12
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 707
    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->setNoInit()Landroid/content/res/AssetManager$Builder;

    move-result-object v0

    .line 709
    .local v0, "builder":Landroid/content/res/AssetManager$Builder;
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v1

    .line 710
    .local v1, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_12
    if-ge v2, v3, :cond_68

    .line 711
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ApkKey;

    .line 713
    .local v4, "apkKey":Landroid/app/ResourcesManager$ApkKey;
    nop

    .line 714
    if-eqz p2, :cond_22

    :try_start_1d
    invoke-virtual {p2, v4}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v5

    goto :goto_26

    :cond_22
    invoke-virtual {p0, v4}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v5

    .line 713
    :goto_26
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_2a

    .line 726
    goto :goto_54

    .line 715
    :catch_2a
    move-exception v5

    .line 716
    .local v5, "e":Ljava/io/IOException;
    iget-boolean v6, v4, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    const-string v7, "ResourcesManager"

    if-eqz v6, :cond_41

    .line 717
    iget-object v6, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "failed to add overlay path \'%s\'"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 718
    :cond_41
    iget-boolean v6, v4, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v6, :cond_57

    .line 719
    iget-object v6, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "asset path \'%s\' does not exist or contains no resources"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v4    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 723
    .restart local v4    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_57
    iget-object v6, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "failed to add asset path \'%s\'"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    const/4 v6, 0x0

    return-object v6

    .line 729
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_68
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-eqz v2, :cond_7a

    .line 730
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_70
    if-ge v4, v3, :cond_7a

    aget-object v5, v2, v4

    .line 731
    .local v5, "loader":Landroid/content/res/loader/ResourcesLoader;
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager$Builder;->addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;

    .line 730
    .end local v5    # "loader":Landroid/content/res/loader/ResourcesLoader;
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 735
    :cond_7a
    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v2

    return-object v2
.end method

.method public blacklist createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 32
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1015
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p11

    const-wide/16 v9, 0x2000

    :try_start_8
    const-string v0, "ResourcesManager#createBaseActivityResources"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1017
    new-instance v11, Landroid/content/res/ResourcesKey;

    .line 1020
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1025
    if-nez v8, :cond_19

    const/4 v0, 0x0

    :goto_16
    move-object/from16 v19, v0

    goto :goto_23

    :cond_19
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/res/loader/ResourcesLoader;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_80

    goto :goto_16

    :goto_23
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    :try_start_2f
    invoke-direct/range {v11 .. v19}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_7a

    move-object v3, v11

    .line 1026
    .local v3, "key":Landroid/content/res/ResourcesKey;
    if-eqz p10, :cond_38

    move-object/from16 v6, p10

    goto :goto_3d

    :cond_38
    :try_start_38
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_80

    move-object v6, v0

    .line 1033
    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    :goto_3d
    :try_start_3d
    iget-object v4, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_74

    .line 1035
    :try_start_40
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 1036
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_69

    .line 1039
    move/from16 v11, p7

    move-object/from16 v12, p8

    :try_start_48
    invoke-virtual {v1, v2, v12, v11}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 1041
    iget-object v4, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_70

    .line 1042
    :try_start_4e
    invoke-direct {v1, v2, v3, v6}, Landroid/app/ResourcesManager;->findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1044
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_59

    .line 1045
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_66

    .line 1054
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1045
    return-object v0

    .line 1047
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_59
    :try_start_59
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_66

    .line 1050
    :try_start_5a
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_70

    .line 1054
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1050
    return-object v0

    .line 1047
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resDir":Ljava/lang/String;
    .end local p3    # "splitResDirs":[Ljava/lang/String;
    .end local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .end local p5    # "overlayPaths":[Ljava/lang/String;
    .end local p6    # "libDirs":[Ljava/lang/String;
    .end local p7    # "displayId":I
    .end local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :try_start_68
    throw v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_70

    .line 1036
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resDir":Ljava/lang/String;
    .restart local p3    # "splitResDirs":[Ljava/lang/String;
    .restart local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .restart local p5    # "overlayPaths":[Ljava/lang/String;
    .restart local p6    # "libDirs":[Ljava/lang/String;
    .restart local p7    # "displayId":I
    .restart local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :catchall_69
    move-exception v0

    move/from16 v11, p7

    move-object/from16 v12, p8

    :goto_6e
    :try_start_6e
    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_72

    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resDir":Ljava/lang/String;
    .end local p3    # "splitResDirs":[Ljava/lang/String;
    .end local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .end local p5    # "overlayPaths":[Ljava/lang/String;
    .end local p6    # "libDirs":[Ljava/lang/String;
    .end local p7    # "displayId":I
    .end local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :try_start_6f
    throw v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 1054
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resDir":Ljava/lang/String;
    .restart local p3    # "splitResDirs":[Ljava/lang/String;
    .restart local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .restart local p5    # "overlayPaths":[Ljava/lang/String;
    .restart local p6    # "libDirs":[Ljava/lang/String;
    .restart local p7    # "displayId":I
    .restart local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :catchall_70
    move-exception v0

    goto :goto_87

    .line 1036
    .restart local v3    # "key":Landroid/content/res/ResourcesKey;
    :catchall_72
    move-exception v0

    goto :goto_6e

    .line 1054
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    :catchall_74
    move-exception v0

    move/from16 v11, p7

    move-object/from16 v12, p8

    goto :goto_87

    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p10    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_7a
    move-exception v0

    move/from16 v11, v16

    move-object/from16 v12, v17

    goto :goto_85

    :catchall_80
    move-exception v0

    move/from16 v11, p7

    move-object/from16 v12, p8

    :goto_85
    move-object/from16 v6, p10

    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    :goto_87
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1055
    throw v0
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;

    .line 755
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v1

    .line 757
    .local v1, "refs":I
    iget-object v2, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ActivityResources;

    .line 758
    .local v3, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    invoke-virtual {v3}, Landroid/app/ResourcesManager$ActivityResources;->countLiveReferences()I

    move-result v4

    add-int/2addr v1, v4

    .line 759
    .end local v3    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    goto :goto_13

    .line 760
    :cond_25
    move v2, v1

    .line 761
    .local v2, "references":I
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v3

    .line 762
    .end local v1    # "refs":I
    .local v3, "resImpls":I
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_7c

    .line 764
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 765
    :try_start_34
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v0

    .line 766
    .local v0, "liveAssets":I
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_79

    .line 768
    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v1, p2, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 769
    .local v1, "pw":Landroid/util/IndentingPrintWriter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_55

    .line 770
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 769
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 772
    .end local v4    # "i":I
    :cond_55
    const-string v4, "ResourcesManager:"

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 774
    const-string/jumbo v4, "total apks: "

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 776
    const-string/jumbo v4, "resources: "

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 778
    const-string/jumbo v4, "resource impls: "

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 780
    return-void

    .line 766
    .end local v0    # "liveAssets":I
    .end local v1    # "pw":Landroid/util/IndentingPrintWriter;
    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0

    .line 762
    .end local v2    # "references":I
    .end local v3    # "resImpls":I
    :catchall_7c
    move-exception v1

    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public greylist-max-o getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 552
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 553
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v0, :cond_8

    .line 555
    const/4 v1, 0x0

    return-object v1

    .line 557
    :cond_8
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 3

    .line 469
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    sget-object v1, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "da"    # Landroid/view/DisplayAdjustments;

    .line 477
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 478
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 479
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_10

    .line 480
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 481
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    :goto_11
    if-eqz v2, :cond_2f

    .line 482
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 483
    .local v3, "dajConfig":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    .line 484
    iget v5, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    if-ne v5, p1, :cond_2a

    sget-object v5, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v5, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 485
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    goto :goto_2b

    :cond_2a
    move-object v5, v3

    .line 483
    :goto_2b
    invoke-virtual {v2, v1, v4, v5}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 486
    .end local v3    # "dajConfig":Landroid/content/res/Configuration;
    goto :goto_32

    .line 487
    :cond_2f
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 489
    :goto_32
    return-object v1
.end method

.method public blacklist getLocaleConfig()Landroid/app/LocaleConfig;
    .registers 2

    .line 1926
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLocaleConfig:Landroid/app/LocaleConfig;

    return-object v0
.end method

.method public blacklist getRegisteredResourcePaths()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/ResourcesManager$SharedLibraryAssets;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 32
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1274
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p11

    const-wide/16 v9, 0x2000

    :try_start_8
    const-string v0, "ResourcesManager#getResources"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1275
    new-instance v11, Landroid/content/res/ResourcesKey;

    .line 1278
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1280
    if-eqz p7, :cond_1a

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1b

    :cond_1a
    const/4 v0, -0x1

    :goto_1b
    move/from16 v16, v0

    .line 1283
    const/4 v0, 0x0

    if-nez v8, :cond_24

    const/4 v3, 0x0

    :goto_21
    move-object/from16 v19, v3

    goto :goto_2d

    :cond_24
    new-array v3, v0, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v8, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/loader/ResourcesLoader;

    goto :goto_21

    :goto_2d
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v15, p6

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    invoke-direct/range {v11 .. v19}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    move-object v3, v11

    .line 1284
    .local v3, "key":Landroid/content/res/ResourcesKey;
    if-eqz p10, :cond_40

    move-object/from16 v6, p10

    goto :goto_45

    :cond_40
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_73

    move-object v6, v4

    .line 1288
    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    :goto_45
    :try_start_45
    invoke-direct {v1, v3}, Landroid/app/ResourcesManager;->createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;

    move-result-object v7

    .line 1290
    .local v7, "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    if-eqz p7, :cond_52

    .line 1291
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/app/ResourcesManager;->rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V

    .line 1295
    :cond_52
    if-eqz v2, :cond_68

    .line 1296
    new-instance v4, Landroid/content/res/Configuration;

    iget-object v5, v3, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1297
    .local v4, "initialOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p7, :cond_5e

    const/4 v0, 0x1

    :cond_5e
    invoke-direct {v1, v2, v3, v0}, Landroid/app/ResourcesManager;->rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V

    .line 1298
    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v7}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1300
    .end local v4    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .local v0, "resources":Landroid/content/res/Resources;
    goto :goto_6c

    .line 1301
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_68
    invoke-direct {v1, v3, v6, v7}, Landroid/app/ResourcesManager;->createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_6c
    .catchall {:try_start_45 .. :try_end_6c} :catchall_71

    .line 1303
    .restart local v0    # "resources":Landroid/content/res/Resources;
    :goto_6c
    nop

    .line 1305
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1303
    return-object v0

    .line 1305
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    :catchall_71
    move-exception v0

    goto :goto_76

    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p10    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_73
    move-exception v0

    move-object/from16 v6, p10

    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    :goto_76
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1306
    throw v0
.end method

.method public blacklist initializeApplicationPaths(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "splitDirs"    # [Ljava/lang/String;

    .line 565
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 567
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 569
    :cond_e
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist-max-o invalidatePath(Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v0, "implsToFlush":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ResourcesImpl;>;"
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_8
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_36

    .line 431
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 432
    .local v3, "key":Landroid/content/res/ResourcesKey;
    invoke-virtual {v3, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 433
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesImpl;

    .line 434
    .local v4, "resImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v4, :cond_33

    .line 435
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "resImpl":Landroid/content/res/ResourcesImpl;
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 439
    .end local v2    # "i":I
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_c5

    .line 440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 441
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 443
    .end local v1    # "i":I
    :cond_4a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 444
    .local v2, "assetsToClose":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 445
    :try_start_53
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5b
    if-ltz v1, :cond_87

    .line 446
    iget-object v4, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ApkKey;

    .line 447
    .local v4, "key":Landroid/app/ResourcesManager$ApkKey;
    iget-object v5, v4, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 448
    iget-object v5, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 449
    .local v5, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    if-eqz v5, :cond_7e

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ApkAssets;

    goto :goto_7f

    :cond_7e
    const/4 v6, 0x0

    .line 450
    .local v6, "apkAssets":Landroid/content/res/ApkAssets;
    :goto_7f
    if-eqz v6, :cond_84

    .line 451
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v4    # "key":Landroid/app/ResourcesManager$ApkKey;
    .end local v5    # "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    .end local v6    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_5b

    .line 455
    .end local v1    # "i":I
    :cond_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_53 .. :try_end_88} :catchall_c2

    .line 456
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9b

    .line 457
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ApkAssets;

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->close()V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 459
    .end local v1    # "i":I
    :cond_9b
    const-string v1, "ResourcesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalidated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 460
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asset managers that referenced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 455
    :catchall_c2
    move-exception v1

    :try_start_c3
    monitor-exit v3
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v1

    .line 439
    .end local v2    # "assetsToClose":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    :catchall_c5
    move-exception v2

    :try_start_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v2
.end method

.method public greylist-max-o isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .registers 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 887
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    if-eqz p1, :cond_10

    :try_start_5
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ResourcesManager$ActivityResources;

    goto :goto_11

    .line 900
    :catchall_e
    move-exception v1

    goto :goto_37

    .line 889
    :cond_10
    const/4 v1, 0x0

    .line 890
    .local v1, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1b

    .line 891
    if-nez p2, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    monitor-exit v0

    return v2

    .line 895
    :cond_1b
    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    if-eqz p2, :cond_32

    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_32

    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 897
    invoke-virtual {p2, v4}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_32

    goto :goto_34

    :cond_32
    move v2, v3

    goto :goto_35

    :cond_34
    :goto_34
    nop

    :goto_35
    monitor-exit v0

    .line 895
    return v2

    .line 900
    .end local v1    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_e

    throw v1
.end method

.method public blacklist loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .registers 8
    .param p1, "key"    # Landroid/app/ResourcesManager$ApkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 599
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 600
    .local v1, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_5c

    .line 601
    if-eqz v1, :cond_1d

    .line 602
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ApkAssets;

    .line 603
    .local v0, "apkAssets":Landroid/content/res/ApkAssets;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 604
    return-object v0

    .line 608
    .end local v0    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_1d
    const/4 v0, 0x0

    .line 609
    .local v0, "flags":I
    iget-boolean v2, p1, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v2, :cond_24

    .line 610
    or-int/lit8 v0, v0, 0x2

    .line 612
    :cond_24
    iget-object v2, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 613
    or-int/lit8 v0, v0, 0x10

    move v2, v0

    goto :goto_33

    .line 612
    :cond_32
    move v2, v0

    .line 615
    .end local v0    # "flags":I
    .local v2, "flags":I
    :goto_33
    iget-boolean v0, p1, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-eqz v0, :cond_43

    .line 616
    iget-object v0, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ResourcesManager;->overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v3, v0

    .local v0, "apkAssets":Landroid/content/res/ApkAssets;
    goto :goto_4a

    .line 618
    .end local v0    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_43
    iget-object v0, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v3, v0

    .line 621
    .local v3, "apkAssets":Landroid/content/res/ApkAssets;
    :goto_4a
    iget-object v4, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 622
    :try_start_4d
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    monitor-exit v4

    .line 625
    return-object v3

    .line 623
    :catchall_59
    move-exception v0

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_59

    throw v0

    .line 600
    .end local v1    # "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    .end local v2    # "flags":I
    .end local v3    # "apkAssets":Landroid/content/res/ApkAssets;
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public blacklist registerAllResourcesReference(Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 2057
    invoke-static {}, Landroid/content/res/Flags;->registerResourcePaths()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2058
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2059
    :try_start_9
    iget-object v1, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ResourcesManager;->mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v1, v2}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 2060
    iget-object v1, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/app/ResourcesManager;->mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v1

    .line 2064
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist registerResourcePaths(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 10
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 159
    invoke-static {}, Landroid/content/res/Flags;->registerResourcePaths()Z

    move-result v0

    if-nez v0, :cond_7

    .line 160
    return-void

    .line 163
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 164
    .local v0, "application":Landroid/app/Application;
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    .line 165
    .local v2, "currentAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_18
    new-instance v3, Landroid/app/ResourcesManager$SharedLibraryAssets;

    invoke-direct {v3, p2, v2, v1}, Landroid/app/ResourcesManager$SharedLibraryAssets;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;Landroid/app/ResourcesManager-IA;)V

    .line 166
    .local v3, "sharedLibAssets":Landroid/app/ResourcesManager$SharedLibraryAssets;
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_20
    iget-object v4, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 168
    const-string v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package resources\' paths for uniqueId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has already been registered, this is a no-op."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit v1

    return-void

    .line 172
    :cond_48
    iget-object v4, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-direct {p0, v3}, Landroid/app/ResourcesManager;->appendLibAssetsLocked(Landroid/app/ResourcesManager$SharedLibraryAssets;)V

    .line 174
    const-string v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The following library key has been added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 175
    invoke-virtual {v3}, Landroid/app/ResourcesManager$SharedLibraryAssets;->getResourcesKey()Landroid/content/res/ResourcesKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_6e
    move-exception v4

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_20 .. :try_end_70} :catchall_6e

    throw v4
.end method

.method public blacklist setLocaleConfig(Landroid/app/LocaleConfig;)V
    .registers 3
    .param p1, "localeConfig"    # Landroid/app/LocaleConfig;

    .line 1933
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1934
    invoke-virtual {p1}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1935
    iput-object p1, p0, Landroid/app/ResourcesManager;->mLocaleConfig:Landroid/app/LocaleConfig;

    .line 1937
    :cond_14
    return-void
.end method

.method public blacklist updateResourceImplAssetsWithRegisteredLibs(Landroid/content/res/AssetManager;Z)Landroid/util/Pair;
    .registers 12
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "reuseAssets"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Z)",
            "Landroid/util/Pair<",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/content/res/Flags;->registerResourcePaths()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 188
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 194
    :cond_11
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_14
    iget-object v2, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 196
    .local v2, "size":I
    if-eqz v2, :cond_f3

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    if-ne p1, v3, :cond_24

    goto/16 :goto_f3

    .line 199
    :cond_24
    new-instance v3, Landroid/app/ResourcesManager$PathCollector;

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->resourcesKeyFromAssets(Landroid/content/res/AssetManager;)Landroid/content/res/ResourcesKey;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ResourcesManager$PathCollector;-><init>(Landroid/content/res/ResourcesKey;)V

    .line 200
    .local v3, "collector":Landroid/app/ResourcesManager$PathCollector;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    if-ge v4, v2, :cond_42

    .line 201
    iget-object v5, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ResourcesManager$SharedLibraryAssets;

    invoke-virtual {v5}, Landroid/app/ResourcesManager$SharedLibraryAssets;->getResourcesKey()Landroid/content/res/ResourcesKey;

    move-result-object v5

    .line 202
    .local v5, "libraryKey":Landroid/content/res/ResourcesKey;
    invoke-virtual {v3, v5}, Landroid/app/ResourcesManager$PathCollector;->appendKey(Landroid/content/res/ResourcesKey;)V

    .line 200
    .end local v5    # "libraryKey":Landroid/content/res/ResourcesKey;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 204
    .end local v4    # "i":I
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_fe

    .line 205
    invoke-virtual {v3}, Landroid/app/ResourcesManager$PathCollector;->isSameAsOriginal()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 206
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 208
    :cond_53
    if-eqz p2, :cond_6a

    .line 209
    invoke-virtual {v3}, Landroid/app/ResourcesManager$PathCollector;->collectedKey()Landroid/content/res/ResourcesKey;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->addPresetApkKeys(Ljava/util/List;)V

    .line 210
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 212
    :cond_6a
    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->setNoInit()Landroid/content/res/AssetManager$Builder;

    move-result-object v0

    .line 213
    .local v0, "newAssetsBuilder":Landroid/content/res/AssetManager$Builder;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v4

    array-length v5, v4

    :goto_78
    if-ge v1, v5, :cond_9b

    aget-object v6, v4, v1

    .line 216
    .local v6, "asset":Landroid/content/res/ApkAssets;
    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->isSystem()Z

    move-result v7

    if-nez v7, :cond_98

    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v7

    if-nez v7, :cond_98

    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->isOverlay()Z

    move-result v7

    if-nez v7, :cond_98

    .line 217
    invoke-virtual {v6}, Landroid/content/res/ApkAssets;->isSharedLib()Z

    move-result v7

    if-eqz v7, :cond_95

    .line 218
    goto :goto_98

    .line 220
    :cond_95
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;

    .line 213
    .end local v6    # "asset":Landroid/content/res/ApkAssets;
    :cond_98
    :goto_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 222
    :cond_9b
    invoke-virtual {v3}, Landroid/app/ResourcesManager$PathCollector;->collectedKey()Landroid/content/res/ResourcesKey;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ApkKey;

    .line 224
    .local v4, "key":Landroid/app/ResourcesManager$ApkKey;
    :try_start_b3
    invoke-virtual {p0, v4}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v5

    .line 225
    .local v5, "asset":Landroid/content/res/ApkAssets;
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ba} :catch_bc

    .line 228
    nop

    .end local v5    # "asset":Landroid/content/res/ApkAssets;
    goto :goto_d5

    .line 226
    :catch_bc
    move-exception v5

    .line 227
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "ResourcesManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t load assets for key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v4    # "key":Landroid/app/ResourcesManager$ApkKey;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_d5
    goto :goto_a7

    .line 230
    :cond_d6
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/AssetManager$Builder;)V

    invoke-interface {v1, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 231
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 197
    .end local v0    # "newAssetsBuilder":Landroid/content/res/AssetManager$Builder;
    .end local v3    # "collector":Landroid/app/ResourcesManager$PathCollector;
    :cond_f3
    :goto_f3
    :try_start_f3
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 204
    .end local v2    # "size":I
    :catchall_fe
    move-exception v1

    monitor-exit v0
    :try_end_100
    .catchall {:try_start_f3 .. :try_end_100} :catchall_fe

    throw v1
.end method

.method public blacklist updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .registers 20
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 1322
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-wide/16 v4, 0x2000

    :try_start_8
    const-string v0, "ResourcesManager#updateResourcesForActivity"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1324
    const/4 v0, -0x1

    if-eq v3, v0, :cond_86

    .line 1327
    iget-object v6, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_8e

    .line 1328
    nop

    .line 1329
    :try_start_14
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 1331
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    if-eq v7, v3, :cond_1e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    .line 1332
    .local v7, "movedToDifferentDisplay":Z
    :goto_1f
    iget-object v8, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v8, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    if-nez v7, :cond_2e

    .line 1335
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_83

    .line 1398
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1335
    return-void

    .line 1340
    :cond_2e
    :try_start_2e
    new-instance v8, Landroid/content/res/Configuration;

    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1343
    .local v8, "oldConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_3d

    .line 1344
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v9, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_42

    .line 1346
    :cond_3d
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->unset()V

    .line 1350
    :goto_42
    iput v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    .line 1355
    invoke-virtual {v1}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1370
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1371
    .local v9, "refCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4e
    if-ge v10, v9, :cond_7d

    .line 1372
    iget-object v11, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1373
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ResourcesManager$ActivityResource;

    .line 1375
    .local v11, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    iget-object v12, v11, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Resources;

    .line 1376
    .local v12, "resources":Landroid/content/res/Resources;
    if-nez v12, :cond_63

    .line 1377
    goto :goto_7a

    .line 1380
    :cond_63
    invoke-direct {v1, v11, v2, v3}, Landroid/app/ResourcesManager;->rebaseActivityOverrideConfig(Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;

    move-result-object v13

    .line 1382
    .local v13, "newKey":Landroid/content/res/ResourcesKey;
    if-nez v13, :cond_6a

    .line 1383
    goto :goto_7a

    .line 1388
    :cond_6a
    nop

    .line 1389
    invoke-direct {v1, v13}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v14

    .line 1390
    .local v14, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v14, :cond_7a

    invoke-virtual {v12}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v15

    if-eq v14, v15, :cond_7a

    .line 1393
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1371
    .end local v11    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v14    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_7a
    :goto_7a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 1396
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v7    # "movedToDifferentDisplay":Z
    .end local v8    # "oldConfig":Landroid/content/res/Configuration;
    .end local v9    # "refCount":I
    .end local v10    # "i":I
    :cond_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_2e .. :try_end_7e} :catchall_83

    .line 1398
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1399
    nop

    .line 1400
    return-void

    .line 1396
    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    :try_start_85
    throw v0

    .line 1325
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p3    # "displayId":I
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "displayId can not be INVALID_DISPLAY"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    throw v0
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8e

    .line 1398
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p3    # "displayId":I
    :catchall_8e
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1399
    throw v0
.end method
