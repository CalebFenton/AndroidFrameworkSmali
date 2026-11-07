.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;,
        Landroid/content/res/AssetManager$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ACCESS_BUFFER:I = 0x3

.field public static final whitelist ACCESS_RANDOM:I = 0x1

.field public static final whitelist ACCESS_STREAMING:I = 0x2

.field public static final whitelist ACCESS_UNKNOWN:I = 0x0

.field public static final blacklist COOKIE_UNKNOWN:I = -0x1

.field private static final greylist-max-o DEBUG_REFS:Z = false

.field public static final greylist-max-o FRAMEWORK_APK_PATH:Ljava/lang/String;

.field private static final blacklist FRAMEWORK_APK_PATH_DEVICE:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final blacklist FRAMEWORK_APK_PATH_RAVENWOOD:Ljava/lang/String; = "ravenwood-data/framework-res.apk"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static final greylist-max-o sEmptyApkAssets:[Landroid/content/res/ApkAssets;

.field private static final greylist-max-o sSync:Ljava/lang/Object;

.field static greylist sSystem:Landroid/content/res/AssetManager;

.field private static greylist-max-o sSystemApkAssets:[Landroid/content/res/ApkAssets;

.field private static greylist-max-o sSystemApkAssetsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mApkAssets:[Landroid/content/res/ApkAssets;

.field private blacklist mLoaders:[Landroid/content/res/loader/ResourcesLoader;

.field private blacklist mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private greylist mObject:J

.field private final greylist-max-o mOffsets:[J

.field private greylist-max-o mOpen:Z

.field private greylist-max-o mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mValue:Landroid/util/TypedValue;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V
    .registers 2

    iput-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V
    .registers 2

    iput-object p1, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdecRefs(Landroid/content/res/AssetManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefs(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetDestroy(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetDestroy(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetGetLength(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetGetRemainingLength(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetRemainingLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetRead(J[BII)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetRead(J[BII)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetReadChar(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetReadChar(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetSeek(JJI)J
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetSeek(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 82
    invoke-static {}, Landroid/content/res/AssetManager;->getFrameworkApkPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/content/res/ApkAssets;

    sput-object v1, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    .line 92
    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 94
    new-array v0, v0, [Landroid/content/res/ApkAssets;

    sput-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 6

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 137
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 241
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_1c
    sget-object v1, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    .line 243
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 244
    .local v1, "assets":[Landroid/content/res/ApkAssets;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2f

    .line 246
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 253
    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 254
    return-void

    .line 244
    .end local v1    # "assets":[Landroid/content/res/ApkAssets;
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 4
    .param p1, "sentinel"    # Z

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 137
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 262
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 267
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/content/res/AssetManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;-><init>(Z)V

    return-void
.end method

.method private blacklist addAssetPathInternal(Ljava/util/List;Z)I
    .registers 13
    .param p2, "presetAssets"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;Z)I"
        }
    .end annotation

    .line 510
    .local p1, "apkKeys":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResourcesManager$ApkKey;>;"
    const-string v0, "apkKeys"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 511
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 512
    return v1

    .line 515
    :cond_d
    monitor-enter p0

    .line 516
    :try_start_e
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 519
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 522
    .local v0, "originalAssetsCount":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 523
    .local v2, "assetPaths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v0, :cond_2e

    .line 524
    iget-object v4, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 527
    .end local v3    # "i":I
    :cond_2e
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 528
    .local v3, "newKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v4, -0x1

    .line 529
    .local v4, "lastFoundIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "pathsSize":I
    :goto_3d
    if-ge v5, v6, :cond_5b

    .line 530
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ResourcesManager$ApkKey;

    .line 531
    .local v7, "key":Landroid/app/ResourcesManager$ApkKey;
    iget-object v8, v7, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 532
    .local v8, "index":Ljava/lang/Integer;
    if-nez v8, :cond_53

    .line 533
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 535
    :cond_53
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v4, v9

    .line 529
    .end local v7    # "key":Landroid/app/ResourcesManager$ApkKey;
    .end local v8    # "index":Ljava/lang/Integer;
    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 538
    .end local v5    # "i":I
    .end local v6    # "pathsSize":I
    :cond_5b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 539
    add-int/lit8 v1, v4, 0x1

    monitor-exit p0

    return v1

    .line 542
    :cond_65
    invoke-static {v3}, Landroid/content/res/AssetManager;->loadAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 543
    .local v5, "newAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 544
    monitor-exit p0

    return v1

    .line 546
    :cond_71
    invoke-direct {p0, v5}, Landroid/content/res/AssetManager;->makeNewAssetsArrayLocked(Ljava/util/ArrayList;)[Landroid/content/res/ApkAssets;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 547
    iget-wide v6, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    const/4 v8, 0x1

    invoke-static {v6, v7, v1, v8, p2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    .line 548
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 549
    add-int/lit8 v1, v0, 0x1

    monitor-exit p0

    return v1

    .line 550
    .end local v0    # "originalAssetsCount":I
    .end local v2    # "assetPaths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "newKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    .end local v4    # "lastFoundIndex":I
    .end local v5    # "newAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    :catchall_87
    move-exception v0

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_e .. :try_end_89} :catchall_87

    throw v0
.end method

.method public static blacklist createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V
    .registers 10
    .param p0, "reinitialize"    # Z
    .param p1, "frameworkPath"    # Ljava/lang/String;

    .line 277
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_7

    if-nez p0, :cond_7

    .line 278
    return-void

    .line 282
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->isRunningOnRavenwood()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    new-array v2, v3, [Ljava/lang/String;

    goto :goto_2a

    .line 288
    :cond_22
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getZygoteInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/content/om/OverlayConfig;->createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;

    move-result-object v2

    :goto_2a
    nop

    .line 289
    .local v2, "systemIdmapPaths":[Ljava/lang/String;
    array-length v4, v2

    move v5, v3

    :goto_2d
    if-ge v5, v4, :cond_3c

    aget-object v6, v2, v5

    .line 290
    .local v6, "idmapPath":Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    nop

    .end local v6    # "idmapPath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 293
    :cond_3c
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v4, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    .line 294
    new-array v4, v3, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/res/ApkAssets;

    sput-object v4, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 295
    sget-object v4, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v4, :cond_58

    .line 296
    new-instance v4, Landroid/content/res/AssetManager;

    invoke-direct {v4, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    sput-object v4, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 298
    :cond_58
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    sget-object v4, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    invoke-virtual {v1, v4, v3}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5f} :catch_61

    .line 301
    .end local v0    # "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    .end local v2    # "systemIdmapPaths":[Ljava/lang/String;
    nop

    .line 302
    return-void

    .line 299
    :catch_61
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create system AssetManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist decRefs(J)V
    .registers 7
    .param p1, "id"    # J

    .line 1709
    iget-object v0, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_29

    .line 1710
    monitor-enter p0

    .line 1711
    :try_start_9
    iget-object v0, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_24

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 1712
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1713
    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1714
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    iput-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 1716
    :cond_24
    monitor-exit p0

    goto :goto_29

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw v0

    .line 1718
    :cond_29
    :goto_29
    return-void
.end method

.method private greylist-max-o ensureOpenLocked()V
    .registers 5

    .line 630
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_15

    .line 634
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 637
    return-void

    .line 635
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager is open but the native object is gone"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureValidLocked()V
    .registers 5

    .line 618
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 621
    return-void

    .line 619
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native greylist-max-o getAssetAllocations()Ljava/lang/String;
.end method

.method private static blacklist getFrameworkApkPath()Ljava/lang/String;
    .registers 1

    .line 223
    const-string v0, "/system/framework/framework-res.apk"

    return-object v0
.end method

.method private static blacklist getFrameworkApkPath$ravenwood()Ljava/lang/String;
    .registers 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getRavenwoodRuntimePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ravenwood-data/framework-res.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native greylist getGlobalAssetCount()I
.end method

.method public static native greylist getGlobalAssetManagerCount()I
.end method

.method public static greylist getSystem()Landroid/content/res/AssetManager;
    .registers 3

    .line 311
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    sget-object v1, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    .line 313
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    monitor-exit v0

    return-object v1

    .line 314
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method static blacklist getThemeFreeFunction()J
    .registers 2

    .line 1317
    invoke-static {}, Landroid/content/res/AssetManager;->nativeGetThemeFreeFunction()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o incRefsLocked(J)V
    .registers 4
    .param p1, "id"    # J

    .line 1698
    iget-object v0, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1699
    return-void
.end method

.method private greylist-max-o invalidateCachesLocked(I)V
    .registers 2
    .param p1, "diff"    # I

    .line 419
    return-void
.end method

.method private static blacklist loadAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation

    .line 587
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 588
    .local v0, "pathsSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    .local v1, "loadedAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    .line 590
    .local v2, "resourcesManager":Landroid/app/ResourcesManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_3a

    .line 591
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ApkKey;

    .line 596
    .local v4, "key":Landroid/app/ResourcesManager$ApkKey;
    :try_start_16
    invoke-virtual {v2, v4}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 599
    goto :goto_37

    .line 597
    :catch_1e
    move-exception v5

    .line 598
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load asset, key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AssetManager"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .end local v4    # "key":Landroid/app/ResourcesManager$ApkKey;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 601
    .end local v3    # "i":I
    :cond_3a
    return-object v1
.end method

.method private blacklist makeNewAssetsArrayLocked(Ljava/util/ArrayList;)[Landroid/content/res/ApkAssets;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;)[",
            "Landroid/content/res/ApkAssets;"
        }
    .end annotation

    .line 560
    .local p1, "newNonLoaderAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 561
    .local v0, "originalAssetsCount":I
    move v1, v0

    .line 562
    .local v1, "firstLoaderIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_16

    .line 563
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 564
    move v1, v2

    .line 565
    goto :goto_16

    .line 562
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 568
    .end local v2    # "i":I
    :cond_16
    :goto_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 569
    .local v2, "newAssetsSize":I
    add-int v3, v0, v2

    new-array v3, v3, [Landroid/content/res/ApkAssets;

    .line 570
    .local v3, "newAssetsArray":[Landroid/content/res/ApkAssets;
    if-lez v1, :cond_26

    .line 572
    iget-object v4, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    :cond_26
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v2, :cond_36

    .line 575
    add-int v5, v1, v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ApkAssets;

    aput-object v6, v3, v5

    .line 574
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 577
    .end local v4    # "i":I
    :cond_36
    if-le v0, v1, :cond_41

    .line 578
    iget-object v4, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int v5, v1, v2

    sub-int v6, v0, v1

    invoke-static {v4, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    :cond_41
    return-object v3
.end method

.method private static native greylist-max-o nativeApplyStyle(JJIIJ[IJJ)V
.end method

.method private static native blacklist nativeApplyStyleWithArray(JJIIJ[I[I[I)V
.end method

.method private static native greylist-max-o nativeAssetDestroy(J)V
.end method

.method private static native greylist-max-o nativeAssetGetLength(J)J
.end method

.method private static native greylist-max-o nativeAssetGetRemainingLength(J)J
.end method

.method private static native greylist-max-o nativeAssetRead(J[BII)I
.end method

.method private static native greylist-max-o nativeAssetReadChar(J)I
.end method

.method private static native greylist-max-o nativeAssetSeek(JJI)J
.end method

.method private static native blacklist nativeAttributeResolutionStack(JJIII)[I
.end method

.method private static native blacklist nativeContainsAllocatedTable(J)Z
.end method

.method private static native greylist-max-o nativeCreate()J
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native blacklist nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native blacklist nativeGetLastResourceResolution(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetLocales(JZ)[Ljava/lang/String;
.end method

.method private static native blacklist nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;
.end method

.method private static native blacklist nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native blacklist nativeGetParentThemeIdentifier(JI)I
.end method

.method private static native greylist-max-o nativeGetResourceArray(JI[I)I
.end method

.method private static native greylist-max-o nativeGetResourceArraySize(JI)I
.end method

.method private static native greylist-max-o nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I
.end method

.method private static native greylist-max-o nativeGetResourceEntryName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeGetResourceIntArray(JI)[I
.end method

.method private static native greylist-max-o nativeGetResourceName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourcePackageName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceStringArray(JI)[Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceStringArrayInfo(JI)[I
.end method

.method private static native greylist-max-o nativeGetResourceTypeName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I
.end method

.method private static native blacklist nativeGetSizeAndUiModeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native greylist-max-o nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native greylist-max-o nativeGetStyleAttributes(JI)[I
.end method

.method private static native blacklist nativeGetThemeFreeFunction()J
.end method

.method private static native greylist-max-o nativeList(JLjava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenAsset(JLjava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenNonAsset(JILjava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenXmlAsset(JILjava/lang/String;)J
.end method

.method private static native blacklist nativeOpenXmlAssetFd(JILjava/io/FileDescriptor;)J
.end method

.method private static native greylist-max-o nativeResolveAttrs(JJII[I[I[I[I)Z
.end method

.method private static native greylist-max-o nativeRetrieveAttributes(JJ[I[I[I)Z
.end method

.method private static native blacklist nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V
.end method

.method private static native blacklist nativeSetConfiguration(JIILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIZ)V
.end method

.method private static native blacklist nativeSetOverlayConstraints(JII)V
.end method

.method private static native blacklist nativeSetResourceResolutionLoggingEnabled(JZ)V
.end method

.method private static native greylist-max-o nativeThemeApplyStyle(JJIZ)V
.end method

.method private static native blacklist nativeThemeCopy(JJJJ)V
.end method

.method private static native greylist-max-o nativeThemeCreate(J)J
.end method

.method private static native greylist-max-o nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native greylist-max-o nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I
.end method

.method static native greylist-max-o nativeThemeGetChangingConfigurations(J)I
.end method

.method private static native blacklist nativeThemeRebase(JJ[I[ZI)V
.end method


# virtual methods
.method public greylist addAssetPath(Ljava/lang/String;)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    new-instance v0, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public greylist addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 489
    new-instance v0, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public greylist addOverlayPath(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    new-instance v0, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public blacklist addPresetApkKeys(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/util/List;Z)I

    .line 507
    return-void
.end method

.method greylist-max-r applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    .registers 27
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p6, "inAttrs"    # [I
    .param p7, "outValuesAddress"    # J
    .param p9, "outIndicesAddress"    # J

    .line 1250
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    const-string/jumbo v0, "inAttrs"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1251
    monitor-enter p0

    .line 1254
    :try_start_d
    invoke-direct {v1}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1255
    iget-wide v3, v1, Landroid/content/res/AssetManager;->mObject:J

    .line 1256
    if-eqz v2, :cond_17

    iget-wide v5, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    goto :goto_19

    :cond_17
    const-wide/16 v5, 0x0

    :goto_19
    move-wide v9, v5

    .line 1255
    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v3 .. v15}, Landroid/content/res/AssetManager;->nativeApplyStyle(JJIIJ[IJJ)V

    .line 1258
    monitor-exit p0

    .line 1259
    return-void

    .line 1258
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v0
.end method

.method blacklist applyStyle$ravenwood(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    .registers 25
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p6, "inAttrs"    # [I
    .param p7, "outValuesAddress"    # J
    .param p9, "outIndicesAddress"    # J

    .line 1861
    move-object/from16 v1, p5

    const-string/jumbo v0, "inAttrs"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1862
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v13

    .line 1863
    .local v13, "runtime":Lcom/android/internal/ravenwood/RavenwoodEnvironment;
    move-wide/from16 v2, p7

    invoke-virtual {v13, v2, v3}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->fromAddress(J)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [I

    .line 1864
    .local v11, "outValues":[I
    move-wide/from16 v4, p9

    invoke-virtual {v13, v4, v5}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->fromAddress(J)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [I

    .line 1865
    .local v12, "outIndices":[I
    monitor-enter p0

    .line 1868
    :try_start_21
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1869
    iget-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1870
    if-eqz v1, :cond_2b

    iget-wide v6, v1, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    goto :goto_2d

    :cond_2b
    const-wide/16 v6, 0x0

    :goto_2d
    move-wide v8, v6

    .line 1869
    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v2 .. v12}, Landroid/content/res/AssetManager;->nativeApplyStyleWithArray(JJIIJ[I[I[I)V

    .line 1872
    monitor-exit p0

    .line 1873
    return-void

    .line 1872
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method greylist-max-o applyStyleToTheme(JIZ)V
    .registers 11
    .param p1, "themePtr"    # J
    .param p3, "resId"    # I
    .param p4, "force"    # Z

    .line 1321
    monitor-enter p0

    .line 1324
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1325
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-wide v2, p1

    move v4, p3

    move v5, p4

    .end local p1    # "themePtr":J
    .end local p3    # "resId":I
    .end local p4    # "force":Z
    .local v2, "themePtr":J
    .local v4, "resId":I
    .local v5, "force":Z
    :try_start_9
    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->nativeThemeApplyStyle(JJIZ)V

    .line 1326
    monitor-exit p0

    .line 1327
    return-void

    .line 1326
    .end local v2    # "themePtr":J
    .end local v4    # "resId":I
    .end local v5    # "force":Z
    .restart local p1    # "themePtr":J
    .restart local p3    # "resId":I
    .restart local p4    # "force":Z
    :catchall_e
    move-exception v0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object p1, v0

    .end local p1    # "themePtr":J
    .end local p3    # "resId":I
    .end local p4    # "force":Z
    .restart local v2    # "themePtr":J
    .restart local v4    # "resId":I
    .restart local v5    # "force":Z
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    move-object p1, v0

    goto :goto_13
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 322
    monitor-enter p0

    .line 323
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_7

    .line 324
    monitor-exit p0

    return-void

    .line 327
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefs(J)V

    .line 329
    monitor-exit p0

    .line 330
    return-void

    .line 329
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public blacklist containsAllocatedTable()Z
    .registers 3

    .line 964
    monitor-enter p0

    .line 965
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 966
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeContainsAllocatedTable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 967
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist createTheme()J
    .registers 3

    .line 1304
    monitor-enter p0

    .line 1305
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1306
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeCreate(J)J

    move-result-wide v0

    .line 1307
    .local v0, "themePtr":J
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1308
    monitor-exit p0

    return-wide v0

    .line 1309
    .end local v0    # "themePtr":J
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method declared-synchronized blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    monitor-enter p0

    .line 1721
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v1

    if-ge v0, v1, :cond_6c

    .line 1724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ApkAssets;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_6e

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 1727
    .end local v0    # "i":I
    .end local p0    # "this":Landroid/content/res/AssetManager;
    :cond_6c
    monitor-exit p0

    return-void

    .line 1720
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "prefix":Ljava/lang/String;
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method

.method greylist-max-o dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "theme"    # J
    .param p3, "priority"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;

    .line 860
    monitor-enter p0

    .line 861
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 862
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "theme":J
    .end local p3    # "priority":I
    .end local p4    # "tag":Ljava/lang/String;
    .end local p5    # "prefix":Ljava/lang/String;
    .local v2, "theme":J
    .local v4, "priority":I
    .local v5, "tag":Ljava/lang/String;
    .local v6, "prefix":Ljava/lang/String;
    :try_start_a
    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V

    .line 863
    monitor-exit p0

    .line 864
    return-void

    .line 863
    .end local v2    # "theme":J
    .end local v4    # "priority":I
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .restart local p1    # "theme":J
    .restart local p3    # "priority":I
    .restart local p4    # "tag":Ljava/lang/String;
    .restart local p5    # "prefix":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p1, v0

    .end local p1    # "theme":J
    .end local p3    # "priority":I
    .end local p4    # "tag":Ljava/lang/String;
    .end local p5    # "prefix":Ljava/lang/String;
    .restart local v2    # "theme":J
    .restart local v4    # "priority":I
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    throw p1

    :catchall_17
    move-exception v0

    move-object p1, v0

    goto :goto_15
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1376
    monitor-enter p0

    .line 1377
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 1378
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1379
    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1381
    :cond_10
    monitor-exit p0

    .line 1382
    return-void

    .line 1381
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public greylist-max-o findCookieForPath(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 459
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 460
    monitor-enter p0

    .line 461
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 462
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 463
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_25

    .line 464
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 465
    add-int/lit8 v2, v1, 0x1

    monitor-exit p0

    return v2

    .line 463
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 468
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_25
    monitor-exit p0

    .line 469
    const/4 v0, 0x0

    return v0

    .line 468
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public greylist getApkAssets()[Landroid/content/res/ApkAssets;
    .registers 2

    .line 428
    monitor-enter p0

    .line 429
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_9

    .line 430
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    monitor-exit p0

    return-object v0

    .line 432
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 433
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    return-object v0

    .line 432
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist getApkPaths()[Ljava/lang/String;
    .registers 5

    .line 439
    monitor-enter p0

    .line 440
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_1f

    .line 441
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 442
    .local v0, "paths":[Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v1

    .line 443
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_1d

    .line 444
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 446
    .end local v2    # "i":I
    :cond_1d
    monitor-exit p0

    return-object v0

    .line 448
    .end local v0    # "paths":[Ljava/lang/String;
    .end local v1    # "count":I
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_24

    .line 449
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 448
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public greylist getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1652
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;
    .registers 5
    .param p1, "includeOverlays"    # Z
    .param p2, "includeLoaders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1660
    monitor-enter p0

    .line 1661
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1662
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1663
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method blacklist getAttributeResolutionStack(JIII)[I
    .registers 13
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "xmlStyle"    # I

    .line 1263
    monitor-enter p0

    .line 1264
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1265
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-wide v2, p1

    move v5, p3

    move v6, p4

    move v4, p5

    .end local p1    # "themePtr":J
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .end local p5    # "xmlStyle":I
    .local v2, "themePtr":J
    .local v4, "xmlStyle":I
    .local v5, "defStyleAttr":I
    .local v6, "defStyleRes":I
    :try_start_a
    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeAttributeResolutionStack(JJIII)[I

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 1267
    .end local v2    # "themePtr":J
    .end local v4    # "xmlStyle":I
    .end local v5    # "defStyleAttr":I
    .end local v6    # "defStyleRes":I
    .restart local p1    # "themePtr":J
    .restart local p3    # "defStyleAttr":I
    .restart local p4    # "defStyleRes":I
    .restart local p5    # "xmlStyle":I
    :catchall_10
    move-exception v0

    move-wide v2, p1

    move v5, p3

    move v6, p4

    move v4, p5

    move-object p1, v0

    .end local p1    # "themePtr":J
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .end local p5    # "xmlStyle":I
    .restart local v2    # "themePtr":J
    .restart local v4    # "xmlStyle":I
    .restart local v5    # "defStyleAttr":I
    .restart local v6    # "defStyleRes":I
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_18

    throw p1

    :catchall_18
    move-exception v0

    move-object p1, v0

    goto :goto_16
.end method

.method public blacklist getLastResourceResolution()Ljava/lang/String;
    .registers 3

    .line 951
    monitor-enter p0

    .line 952
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 953
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetLastResourceResolution(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 954
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public blacklist getLoaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist getLocales()[Ljava/lang/String;
    .registers 4

    .line 1527
    monitor-enter p0

    .line 1528
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1529
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1530
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public greylist-max-o getNonSystemLocales()[Ljava/lang/String;
    .registers 4

    .line 1544
    monitor-enter p0

    .line 1545
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1546
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1547
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1671
    monitor-enter p0

    .line 1672
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1673
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1674
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public blacklist getOverlayablesToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1683
    monitor-enter p0

    .line 1684
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1685
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1686
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method blacklist getParentThemeIdentifier(I)I
    .registers 4
    .param p1, "resId"    # I

    .line 916
    monitor-enter p0

    .line 917
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 919
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetParentThemeIdentifier(JI)I

    move-result v0

    monitor-exit p0

    return v0

    .line 920
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-o getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    .line 973
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getResourceArray(I[I)I
    .registers 5
    .param p1, "resId"    # I
    .param p2, "outData"    # [I

    .line 753
    const-string/jumbo v0, "outData"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 754
    monitor-enter p0

    .line 755
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 756
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetResourceArray(JI[I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 757
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method greylist-max-o getResourceArraySize(I)I
    .registers 4
    .param p1, "resId"    # I

    .line 724
    monitor-enter p0

    .line 725
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 726
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceArraySize(JI)I

    move-result v0

    monitor-exit p0

    return v0

    .line 727
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist getResourceBagText(II)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "resId"    # I
    .param p2, "bagEntryId"    # I

    .line 704
    monitor-enter p0

    .line 705
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 706
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 707
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/content/res/AssetManager;->nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I

    move-result v1

    .line 708
    .local v1, "cookie":I
    if-gtz v1, :cond_11

    .line 709
    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    .line 713
    :cond_11
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 716
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    .line 717
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 719
    :cond_26
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 720
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "cookie":I
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method greylist getResourceEntryName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 892
    monitor-enter p0

    .line 893
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 894
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceEntryName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 895
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 901
    monitor-enter p0

    .line 902
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 904
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 905
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-o getResourceIntArray(I)[I
    .registers 4
    .param p1, "resId"    # I

    .line 802
    monitor-enter p0

    .line 803
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 804
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceIntArray(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 805
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist getResourceName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 868
    monitor-enter p0

    .line 869
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 870
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 871
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist getResourcePackageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 876
    monitor-enter p0

    .line 877
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 878
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourcePackageName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 879
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-o getResourceStringArray(I)[Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 768
    monitor-enter p0

    .line 769
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 770
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArray(JI)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 771
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist getResourceText(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "resId"    # I

    .line 685
    monitor-enter p0

    .line 686
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 687
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 688
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 690
    :cond_11
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 691
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method greylist-max-o getResourceTextArray(I)[Ljava/lang/CharSequence;
    .registers 12
    .param p1, "resId"    # I

    .line 781
    monitor-enter p0

    .line 782
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 783
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArrayInfo(JI)[I

    move-result-object v0

    .line 784
    .local v0, "rawInfoArray":[I
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 785
    monitor-exit p0

    return-object v1

    .line 788
    :cond_f
    array-length v2, v0

    .line 789
    .local v2, "rawInfoArrayLen":I
    div-int/lit8 v3, v2, 0x2

    .line 790
    .local v3, "infoArrayLen":I
    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 791
    .local v4, "retArray":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_16
    if-ge v5, v2, :cond_2f

    .line 792
    aget v7, v0, v5

    .line 793
    .local v7, "cookie":I
    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    .line 794
    .local v8, "index":I
    if-ltz v8, :cond_27

    if-lez v7, :cond_27

    .line 795
    invoke-virtual {p0, v7, v8}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_28

    :cond_27
    move-object v9, v1

    :goto_28
    aput-object v9, v4, v6

    .line 791
    .end local v7    # "cookie":I
    .end local v8    # "index":I
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 797
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_2f
    monitor-exit p0

    return-object v4

    .line 798
    .end local v0    # "rawInfoArray":[I
    .end local v2    # "rawInfoArrayLen":I
    .end local v3    # "infoArrayLen":I
    .end local v4    # "retArray":[Ljava/lang/CharSequence;
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw v0
.end method

.method greylist getResourceTypeName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I

    .line 884
    monitor-enter p0

    .line 885
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 886
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceTypeName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 887
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist getResourceValue(IILandroid/util/TypedValue;Z)Z
    .registers 12
    .param p1, "resId"    # I
    .param p2, "densityDpi"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    .line 654
    const-string/jumbo v0, "outValue"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 655
    monitor-enter p0

    .line 656
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 657
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_35

    int-to-short v4, p2

    move v3, p1

    move-object v5, p3

    move v6, p4

    .end local p1    # "resId":I
    .end local p3    # "outValue":Landroid/util/TypedValue;
    .end local p4    # "resolveRefs":Z
    .local v3, "resId":I
    .local v5, "outValue":Landroid/util/TypedValue;
    .local v6, "resolveRefs":Z
    :try_start_10
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I

    move-result p1

    .line 659
    .local p1, "cookie":I
    const/4 p3, 0x0

    if-gtz p1, :cond_19

    .line 660
    monitor-exit p0

    return p3

    .line 664
    :cond_19
    iget p4, v5, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {p4}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result p4

    iput p4, v5, Landroid/util/TypedValue;->changingConfigurations:I

    .line 667
    iget p4, v5, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_32

    .line 668
    iget p4, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1, p4}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez p4, :cond_32

    .line 669
    monitor-exit p0

    return p3

    .line 672
    :cond_32
    monitor-exit p0

    const/4 p3, 0x1

    return p3

    .line 673
    .end local v3    # "resId":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    .end local v6    # "resolveRefs":Z
    .local p1, "resId":I
    .restart local p3    # "outValue":Landroid/util/TypedValue;
    .restart local p4    # "resolveRefs":Z
    :catchall_35
    move-exception v0

    move v3, p1

    move-object v5, p3

    move v6, p4

    move-object p1, v0

    .end local p1    # "resId":I
    .end local p3    # "outValue":Landroid/util/TypedValue;
    .end local p4    # "resolveRefs":Z
    .restart local v3    # "resId":I
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    .restart local v6    # "resolveRefs":Z
    :goto_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3c

    throw p1

    :catchall_3c
    move-exception v0

    move-object p1, v0

    goto :goto_3a
.end method

.method blacklist getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;
    .registers 3

    .line 1564
    monitor-enter p0

    .line 1565
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1566
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeAndUiModeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1567
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-o getSizeConfigurations()[Landroid/content/res/Configuration;
    .registers 3

    .line 1554
    monitor-enter p0

    .line 1555
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1556
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1557
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-o getStyleAttributes(I)[I
    .registers 4
    .param p1, "resId"    # I

    .line 816
    monitor-enter p0

    .line 817
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 818
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetStyleAttributes(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 819
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-o getThemeValue(JILandroid/util/TypedValue;Z)Z
    .registers 14
    .param p1, "theme"    # J
    .param p3, "resId"    # I
    .param p4, "outValue"    # Landroid/util/TypedValue;
    .param p5, "resolveRefs"    # Z

    .line 837
    const-string/jumbo v0, "outValue"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 838
    monitor-enter p0

    .line 839
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 840
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_35

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "theme":J
    .end local p3    # "resId":I
    .end local p4    # "outValue":Landroid/util/TypedValue;
    .end local p5    # "resolveRefs":Z
    .local v3, "theme":J
    .local v5, "resId":I
    .local v6, "outValue":Landroid/util/TypedValue;
    .local v7, "resolveRefs":Z
    :try_start_10
    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I

    move-result p1

    .line 842
    .local p1, "cookie":I
    const/4 p2, 0x0

    if-gtz p1, :cond_19

    .line 843
    monitor-exit p0

    return p2

    .line 847
    :cond_19
    iget p3, v6, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result p3

    iput p3, v6, Landroid/util/TypedValue;->changingConfigurations:I

    .line 850
    iget p3, v6, Landroid/util/TypedValue;->type:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_32

    .line 851
    iget p3, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1, p3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez p3, :cond_32

    .line 852
    monitor-exit p0

    return p2

    .line 855
    :cond_32
    monitor-exit p0

    const/4 p2, 0x1

    return p2

    .line 856
    .end local v3    # "theme":J
    .end local v5    # "resId":I
    .end local v6    # "outValue":Landroid/util/TypedValue;
    .end local v7    # "resolveRefs":Z
    .local p1, "theme":J
    .restart local p3    # "resId":I
    .restart local p4    # "outValue":Landroid/util/TypedValue;
    .restart local p5    # "resolveRefs":Z
    :catchall_35
    move-exception v0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object p1, v0

    .end local p1    # "theme":J
    .end local p3    # "resId":I
    .end local p4    # "outValue":Landroid/util/TypedValue;
    .end local p5    # "resolveRefs":Z
    .restart local v3    # "theme":J
    .restart local v5    # "resId":I
    .restart local v6    # "outValue":Landroid/util/TypedValue;
    .restart local v7    # "resolveRefs":Z
    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3d

    throw p1

    :catchall_3d
    move-exception v0

    move-object p1, v0

    goto :goto_3b
.end method

.method public greylist isUpToDate()Z
    .registers 7

    .line 1500
    monitor-enter p0

    .line 1501
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1502
    monitor-exit p0

    return v1

    .line 1505
    :cond_8
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    .line 1506
    .local v4, "apkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v5

    if-nez v5, :cond_18

    .line 1507
    monitor-exit p0

    return v1

    .line 1505
    .end local v4    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1511
    :cond_1b
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1512
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public whitelist list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1055
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1056
    monitor-enter p0

    .line 1057
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1058
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeList(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1059
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public whitelist open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist open(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1008
    monitor-enter p0

    .line 1009
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1010
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenAsset(JLjava/lang/String;I)J

    move-result-wide v0

    .line 1011
    .local v0, "asset":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 1014
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager-IA;)V

    .line 1015
    .local v2, "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1016
    monitor-exit p0

    return-object v2

    .line 1012
    .end local v2    # "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_25
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "accessMode":I
    throw v2

    .line 1017
    .end local v0    # "asset":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "fileName":Ljava/lang/String;
    .restart local p2    # "accessMode":I
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public whitelist openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1032
    monitor-enter p0

    .line 1033
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1034
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/AssetManager;->nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v2, v0

    .line 1035
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_25

    .line 1038
    new-instance v1, Landroid/content/res/AssetFileDescriptor;

    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v1

    .line 1036
    :cond_25
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v0

    .line 1039
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public greylist-max-r openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1110
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public greylist openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .registers 9
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1124
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1125
    monitor-enter p0

    .line 1126
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1127
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeOpenNonAsset(JILjava/lang/String;I)J

    move-result-wide v0

    .line 1128
    .local v0, "asset":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 1131
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager-IA;)V

    .line 1132
    .local v2, "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1133
    monitor-exit p0

    return-object v2

    .line 1129
    .end local v2    # "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_25
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset absolute file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    .end local p3    # "accessMode":I
    throw v2

    .line 1134
    .end local v0    # "asset":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    .restart local p3    # "accessMode":I
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public greylist openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1163
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1164
    monitor-enter p0

    .line 1165
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1166
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 1167
    invoke-static {v0, v1, p1, p2, v2}, Landroid/content/res/AssetManager;->nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v2, v0

    .line 1168
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_25

    .line 1171
    new-instance v1, Landroid/content/res/AssetFileDescriptor;

    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v1

    .line 1169
    :cond_25
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    throw v0

    .line 1172
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public whitelist openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method blacklist openXmlBlockAsset(ILjava/lang/String;Z)Landroid/content/res/XmlBlock;
    .registers 9
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "usesFeatureFlags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1226
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1227
    monitor-enter p0

    .line 1228
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1230
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenXmlAsset(JILjava/lang/String;)J

    move-result-wide v0

    .line 1231
    .local v0, "xmlBlock":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_24

    .line 1235
    new-instance v2, Landroid/content/res/XmlBlock;

    invoke-direct {v2, p0, v0, v1, p3}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;JZ)V

    .line 1236
    .local v2, "block":Landroid/content/res/XmlBlock;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1237
    monitor-exit p0

    return-object v2

    .line 1232
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    :cond_24
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset XML file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    .end local p3    # "usesFeatureFlags":Z
    throw v2

    .line 1238
    .end local v0    # "xmlBlock":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    .restart local p3    # "usesFeatureFlags":Z
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method greylist-max-o openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1212
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;Z)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 7
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1193
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;Z)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 1194
    .local v0, "block":Landroid/content/res/XmlBlock;
    :try_start_5
    new-instance v1, Landroid/content/res/Validator;

    invoke-direct {v1}, Landroid/content/res/Validator;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/XmlBlock;->newParser(ILandroid/content/res/Validator;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_20

    .line 1198
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v1, :cond_18

    .line 1201
    nop

    .line 1202
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 1201
    :cond_17
    return-object v1

    .line 1199
    :cond_18
    :try_start_18
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "block.newParser() returned a null parser"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    throw v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 1193
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_20
    move-exception v1

    if-eqz v0, :cond_2b

    :try_start_23
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw v1
.end method

.method public whitelist openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method blacklist rebaseTheme(JLandroid/content/res/AssetManager;[I[ZI)Landroid/content/res/AssetManager;
    .registers 15
    .param p1, "themePtr"    # J
    .param p3, "newAssetManager"    # Landroid/content/res/AssetManager;
    .param p4, "styleIds"    # [I
    .param p5, "force"    # [Z
    .param p6, "count"    # I

    .line 1332
    if-eq p0, p3, :cond_19

    .line 1333
    monitor-enter p0

    .line 1334
    :try_start_3
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1335
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefs(J)V

    .line 1336
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    .line 1337
    monitor-enter p3

    .line 1338
    :try_start_b
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1339
    invoke-direct {p3, p1, p2}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1340
    monitor-exit p3

    goto :goto_19

    :catchall_13
    move-exception v0

    monitor-exit p3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v0

    .line 1336
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 1344
    :cond_19
    :goto_19
    :try_start_19
    monitor-enter p3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_3a

    .line 1345
    :try_start_1a
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1346
    iget-wide v1, p3, Landroid/content/res/AssetManager;->mObject:J
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2c

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .end local p1    # "themePtr":J
    .end local p4    # "styleIds":[I
    .end local p5    # "force":[Z
    .end local p6    # "count":I
    .local v3, "themePtr":J
    .local v5, "styleIds":[I
    .local v6, "force":[Z
    .local v7, "count":I
    :try_start_23
    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeRebase(JJ[I[ZI)V

    .line 1347
    monitor-exit p3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_37

    .line 1349
    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1350
    nop

    .line 1351
    return-object p3

    .line 1347
    .end local v3    # "themePtr":J
    .end local v5    # "styleIds":[I
    .end local v6    # "force":[Z
    .end local v7    # "count":I
    .restart local p1    # "themePtr":J
    .restart local p4    # "styleIds":[I
    .restart local p5    # "force":[Z
    .restart local p6    # "count":I
    :catchall_2c
    move-exception v0

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object p1, v0

    .end local p1    # "themePtr":J
    .end local p4    # "styleIds":[I
    .end local p5    # "force":[Z
    .end local p6    # "count":I
    .restart local v3    # "themePtr":J
    .restart local v5    # "styleIds":[I
    .restart local v6    # "force":[Z
    .restart local v7    # "count":I
    :goto_32
    :try_start_32
    monitor-exit p3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_37

    .end local v3    # "themePtr":J
    .end local v5    # "styleIds":[I
    .end local v6    # "force":[Z
    .end local v7    # "count":I
    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p3    # "newAssetManager":Landroid/content/res/AssetManager;
    :try_start_33
    throw p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 1349
    .restart local v3    # "themePtr":J
    .restart local v5    # "styleIds":[I
    .restart local v6    # "force":[Z
    .restart local v7    # "count":I
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p3    # "newAssetManager":Landroid/content/res/AssetManager;
    :catchall_34
    move-exception v0

    move-object p1, v0

    goto :goto_40

    .line 1347
    :catchall_37
    move-exception v0

    move-object p1, v0

    goto :goto_32

    .line 1349
    .end local v3    # "themePtr":J
    .end local v5    # "styleIds":[I
    .end local v6    # "force":[Z
    .end local v7    # "count":I
    .restart local p1    # "themePtr":J
    .restart local p4    # "styleIds":[I
    .restart local p5    # "force":[Z
    .restart local p6    # "count":I
    :catchall_3a
    move-exception v0

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object p1, v0

    .end local p1    # "themePtr":J
    .end local p4    # "styleIds":[I
    .end local p5    # "force":[Z
    .end local p6    # "count":I
    .restart local v3    # "themePtr":J
    .restart local v5    # "styleIds":[I
    .restart local v6    # "force":[Z
    .restart local v7    # "count":I
    :goto_40
    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1350
    throw p1
.end method

.method greylist-max-o releaseTheme(J)V
    .registers 3
    .param p1, "themePtr"    # J

    .line 1313
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefs(J)V

    .line 1314
    return-void
.end method

.method greylist-max-r resolveAttrs(JII[I[I[I[I)Z
    .registers 20
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "inValues"    # [I
    .param p6, "inAttrs"    # [I
    .param p7, "outValues"    # [I
    .param p8, "outIndices"    # [I

    .line 1274
    const-string/jumbo v0, "inAttrs"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1275
    const-string/jumbo v0, "outValues"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1276
    const-string/jumbo v0, "outIndices"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1277
    monitor-enter p0

    .line 1280
    :try_start_19
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1281
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/content/res/AssetManager;->nativeResolveAttrs(JJII[I[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1283
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method greylist-max-r retrieveAttributes(Landroid/content/res/XmlBlock$Parser;[I[I[I)Z
    .registers 13
    .param p1, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p2, "inAttrs"    # [I
    .param p3, "outValues"    # [I
    .param p4, "outIndices"    # [I

    .line 1289
    const-string/jumbo v0, "parser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1290
    const-string/jumbo v0, "inAttrs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1291
    const-string/jumbo v0, "outValues"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1292
    const-string/jumbo v0, "outIndices"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1293
    monitor-enter p0

    .line 1296
    :try_start_19
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1297
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v3, p1, Landroid/content/res/XmlBlock$Parser;->mParseState:J
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_29

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "inAttrs":[I
    .end local p3    # "outValues":[I
    .end local p4    # "outIndices":[I
    .local v5, "inAttrs":[I
    .local v6, "outValues":[I
    .local v7, "outIndices":[I
    :try_start_23
    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeRetrieveAttributes(JJ[I[I[I)Z

    move-result p2

    monitor-exit p0

    return p2

    .line 1299
    .end local v5    # "inAttrs":[I
    .end local v6    # "outValues":[I
    .end local v7    # "outIndices":[I
    .restart local p2    # "inAttrs":[I
    .restart local p3    # "outValues":[I
    .restart local p4    # "outIndices":[I
    :catchall_29
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p2, v0

    .end local p2    # "inAttrs":[I
    .end local p3    # "outValues":[I
    .end local p4    # "outIndices":[I
    .restart local v5    # "inAttrs":[I
    .restart local v6    # "outValues":[I
    .restart local v7    # "outIndices":[I
    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_30

    throw p2

    :catchall_30
    move-exception v0

    move-object p2, v0

    goto :goto_2e
.end method

.method public greylist-max-o setApkAssets([Landroid/content/res/ApkAssets;Z)V
    .registers 10
    .param p1, "apkAssets"    # [Landroid/content/res/ApkAssets;
    .param p2, "invalidateCaches"    # Z

    .line 343
    const-string v0, "apkAssets"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/content/res/ApkAssets;

    .line 348
    .local v0, "newApkAssets":[Landroid/content/res/ApkAssets;
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    sget-object v2, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v1

    .line 352
    .local v1, "newLength":I
    array-length v2, p1

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_2e

    aget-object v5, p1, v4

    .line 353
    .local v5, "apkAsset":Landroid/content/res/ApkAssets;
    sget-object v6, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 354
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "newLength":I
    .local v6, "newLength":I
    aput-object v5, v0, v1

    move v1, v6

    .line 352
    .end local v5    # "apkAsset":Landroid/content/res/ApkAssets;
    .end local v6    # "newLength":I
    .restart local v1    # "newLength":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 359
    :cond_2e
    array-length v2, v0

    if-eq v1, v2, :cond_38

    .line 360
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Landroid/content/res/ApkAssets;

    .line 363
    :cond_38
    monitor-enter p0

    .line 364
    :try_start_39
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 365
    iput-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 366
    iget-wide v4, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    invoke-static {v4, v5, v2, p2, v3}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    .line 367
    if-eqz p2, :cond_4b

    .line 369
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 371
    :cond_4b
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_4d
    move-exception v2

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public greylist setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIIII)V
    .registers 46
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "touchscreen"    # I
    .param p6, "density"    # I
    .param p7, "keyboard"    # I
    .param p8, "keyboardHidden"    # I
    .param p9, "navigation"    # I
    .param p10, "screenWidth"    # I
    .param p11, "screenHeight"    # I
    .param p12, "smallestScreenWidthDp"    # I
    .param p13, "screenWidthDp"    # I
    .param p14, "screenHeightDp"    # I
    .param p15, "screenLayout"    # I
    .param p16, "uiMode"    # I
    .param p17, "colorMode"    # I
    .param p18, "grammaticalGender"    # I
    .param p19, "majorVersion"    # I

    .line 1581
    if-eqz p3, :cond_31

    .line 1582
    const/4 v3, 0x0

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    invoke-virtual/range {v0 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    goto :goto_5c

    .line 1587
    :cond_31
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    move/from16 v21, p15

    move/from16 v22, p16

    move/from16 v23, p17

    move/from16 v24, p18

    move/from16 v25, p19

    invoke-virtual/range {v5 .. v25}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 1592
    :goto_5c
    return-void
.end method

.method public blacklist setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V
    .registers 43
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "defaultLocale"    # Ljava/lang/String;
    .param p4, "locales"    # [Ljava/lang/String;
    .param p5, "orientation"    # I
    .param p6, "touchscreen"    # I
    .param p7, "density"    # I
    .param p8, "keyboard"    # I
    .param p9, "keyboardHidden"    # I
    .param p10, "navigation"    # I
    .param p11, "screenWidth"    # I
    .param p12, "screenHeight"    # I
    .param p13, "smallestScreenWidthDp"    # I
    .param p14, "screenWidthDp"    # I
    .param p15, "screenHeightDp"    # I
    .param p16, "screenLayout"    # I
    .param p17, "uiMode"    # I
    .param p18, "colorMode"    # I
    .param p19, "grammaticalGender"    # I
    .param p20, "majorVersion"    # I

    .line 1604
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-virtual/range {v0 .. v21}, Landroid/content/res/AssetManager;->setConfigurationInternal(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIZ)V

    .line 1608
    return-void
.end method

.method blacklist setConfigurationInternal(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIZ)V
    .registers 47
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "defaultLocale"    # Ljava/lang/String;
    .param p4, "locales"    # [Ljava/lang/String;
    .param p5, "orientation"    # I
    .param p6, "touchscreen"    # I
    .param p7, "density"    # I
    .param p8, "keyboard"    # I
    .param p9, "keyboardHidden"    # I
    .param p10, "navigation"    # I
    .param p11, "screenWidth"    # I
    .param p12, "screenHeight"    # I
    .param p13, "smallestScreenWidthDp"    # I
    .param p14, "screenWidthDp"    # I
    .param p15, "screenHeightDp"    # I
    .param p16, "screenLayout"    # I
    .param p17, "uiMode"    # I
    .param p18, "colorMode"    # I
    .param p19, "grammaticalGender"    # I
    .param p20, "majorVersion"    # I
    .param p21, "forceRefresh"    # Z

    .line 1620
    move-object/from16 v1, p0

    monitor-enter p0

    .line 1621
    :try_start_3
    invoke-direct {v1}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1622
    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    invoke-static/range {v2 .. v24}, Landroid/content/res/AssetManager;->nativeSetConfiguration(JIILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIZ)V

    .line 1627
    monitor-exit p0

    .line 1628
    return-void

    .line 1627
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method blacklist setLoaders(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p1, "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const-string/jumbo v0, "newLoaders"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v0, "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 385
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v2

    if-nez v2, :cond_22

    .line 386
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 390
    .end local v1    # "i":I
    :cond_25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_62

    .line 394
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 395
    .local v1, "loaderStartIndex":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 396
    .local v3, "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_3a
    if-ltz v4, :cond_62

    .line 397
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    .line 398
    .local v5, "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "j":I
    :goto_4b
    if-ltz v6, :cond_5f

    .line 399
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    .line 400
    .local v7, "loaderApkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 401
    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 398
    .end local v7    # "loaderApkAssets":Landroid/content/res/ApkAssets;
    :cond_5c
    add-int/lit8 v6, v6, -0x1

    goto :goto_4b

    .line 396
    .end local v5    # "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    .end local v6    # "j":I
    :cond_5f
    add-int/lit8 v4, v4, -0x1

    goto :goto_3a

    .line 407
    .end local v1    # "loaderStartIndex":I
    .end local v3    # "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    .end local v4    # "i":I
    :cond_62
    const/4 v1, 0x0

    new-array v3, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/loader/ResourcesLoader;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 408
    new-array v1, v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 409
    return-void
.end method

.method public blacklist setOverlayConstraints(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "deviceId"    # I

    .line 1637
    invoke-static {}, Landroid/content/res/Flags;->rroConstraints()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1638
    return-void

    .line 1641
    :cond_7
    monitor-enter p0

    .line 1642
    :try_start_8
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1643
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeSetOverlayConstraints(JII)V

    .line 1644
    monitor-exit p0

    .line 1645
    return-void

    .line 1644
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public blacklist setResourceResolutionLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 935
    monitor-enter p0

    .line 936
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 937
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeSetResourceResolutionLoggingEnabled(JZ)V

    .line 938
    monitor-exit p0

    .line 939
    return-void

    .line 938
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method greylist-max-r setThemeTo(JLandroid/content/res/AssetManager;J)V
    .registers 14
    .param p1, "dstThemePtr"    # J
    .param p3, "srcAssetManager"    # Landroid/content/res/AssetManager;
    .param p4, "srcThemePtr"    # J

    .line 1356
    monitor-enter p0

    .line 1357
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1358
    monitor-enter p3
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    .line 1359
    :try_start_5
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1360
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v4, p3, Landroid/content/res/AssetManager;->mObject:J
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_14

    move-wide v2, p1

    move-wide v6, p4

    .end local p1    # "dstThemePtr":J
    .end local p4    # "srcThemePtr":J
    .local v2, "dstThemePtr":J
    .local v6, "srcThemePtr":J
    :try_start_e
    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->nativeThemeCopy(JJJJ)V

    .line 1361
    monitor-exit p3
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1a

    .line 1362
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_23

    .line 1363
    return-void

    .line 1361
    .end local v2    # "dstThemePtr":J
    .end local v6    # "srcThemePtr":J
    .restart local p1    # "dstThemePtr":J
    .restart local p4    # "srcThemePtr":J
    :catchall_14
    move-exception v0

    move-wide v2, p1

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "dstThemePtr":J
    .end local p4    # "srcThemePtr":J
    .restart local v2    # "dstThemePtr":J
    .restart local v6    # "srcThemePtr":J
    :goto_18
    :try_start_18
    monitor-exit p3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1a

    .end local v2    # "dstThemePtr":J
    .end local v6    # "srcThemePtr":J
    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p3    # "srcAssetManager":Landroid/content/res/AssetManager;
    :try_start_19
    throw p1

    .restart local v2    # "dstThemePtr":J
    .restart local v6    # "srcThemePtr":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p3    # "srcAssetManager":Landroid/content/res/AssetManager;
    :catchall_1a
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .line 1362
    .end local v2    # "dstThemePtr":J
    .end local v6    # "srcThemePtr":J
    .restart local p1    # "dstThemePtr":J
    .restart local p4    # "srcThemePtr":J
    :catchall_1d
    move-exception v0

    move-wide v2, p1

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "dstThemePtr":J
    .end local p4    # "srcThemePtr":J
    .restart local v2    # "dstThemePtr":J
    .restart local v6    # "srcThemePtr":J
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_23

    throw p1

    :catchall_23
    move-exception v0

    move-object p1, v0

    goto :goto_21
.end method

.method greylist-max-o xmlBlockGone(I)V
    .registers 4
    .param p1, "id"    # I

    .line 1242
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefs(J)V

    .line 1243
    return-void
.end method
