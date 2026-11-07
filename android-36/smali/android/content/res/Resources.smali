.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$UpdateCallbacks;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$AssetManagerUpdateHandler;,
        Landroid/content/res/Resources$ThemeKey;
    }
.end annotation


# static fields
.field public static final whitelist ID_NULL:I = 0x0

.field private static final blacklist MAX_THEME_REFS_FLUSH_SIZE:I = 0x200

.field private static final greylist-max-o MIN_THEME_REFS_FLUSH_SIZE:I = 0x20

.field private static final blacklist PRELOAD_RESOURCES:Z = true

.field static final greylist-max-o TAG:Ljava/lang/String; = "Resources"

.field static greylist mSystem:Landroid/content/res/Resources;

.field private static final blacklist sResourcesHistory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sSync:Ljava/lang/Object;


# instance fields
.field private blacklist mBaseApkAssetsSize:I

.field private blacklist mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

.field final greylist mClassLoader:Ljava/lang/ClassLoader;

.field private greylist mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

.field private greylist mResourcesImpl:Landroid/content/res/ResourcesImpl;

.field private final greylist-max-o mThemeRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources$Theme;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mThemeRefsNextFlushSize:I

.field private greylist mTmpValue:Landroid/util/TypedValue;

.field private final greylist-max-o mTmpValueLock:Ljava/lang/Object;

.field final greylist mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResourcesImpl(Landroid/content/res/Resources;)Landroid/content/res/ResourcesImpl;
    .registers 1

    iget-object p0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 194
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 195
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 194
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/content/res/Resources;->sResourcesHistory:Ljava/util/Set;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 6

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mUpdateLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    .line 189
    const/16 v0, 0x20

    iput v0, p0, Landroid/content/res/Resources;->mThemeRefsNextFlushSize:I

    .line 354
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    .line 355
    sget-object v0, Landroid/content/res/Resources;->sResourcesHistory:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 358
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 360
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 361
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 363
    new-instance v2, Landroid/content/res/ResourcesImpl;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    iput-object v2, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 365
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 330
    new-instance v0, Landroid/content/res/ResourcesImpl;

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 331
    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mUpdateLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    .line 189
    const/16 v0, 0x20

    iput v0, p0, Landroid/content/res/Resources;->mThemeRefsNextFlushSize:I

    .line 343
    if-nez p1, :cond_35

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, p1

    :goto_36
    iput-object v0, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    .line 344
    sget-object v0, Landroid/content/res/Resources;->sResourcesHistory:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ResourcesManager;->registerAllResourcesReference(Landroid/content/res/Resources;)V

    .line 346
    return-void
.end method

.method private blacklist checkCallbacksRegistered()V
    .registers 2

    .line 2640
    iget-object v0, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    if-nez v0, :cond_b

    .line 2643
    new-instance v0, Landroid/content/res/Resources$AssetManagerUpdateHandler;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$AssetManagerUpdateHandler;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    .line 2645
    :cond_b
    return-void
.end method

.method private blacklist cleanupThemeReferences()V
    .registers 3

    .line 2133
    iget-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Landroid/content/res/Resources;->mThemeRefsNextFlushSize:I

    if-le v0, v1, :cond_2c

    .line 2134
    iget-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/res/Resources$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/res/Resources$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2135
    iget-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    .line 2136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/Resources;->nextPowerOf2(I)I

    move-result v0

    .line 2135
    const/16 v1, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x200

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/Resources;->mThemeRefsNextFlushSize:I

    .line 2138
    :cond_2c
    return-void
.end method

.method public static blacklist dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2846
    .local v0, "history":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/util/List<Landroid/content/res/ApkAssets;>;Landroid/content/res/Resources;>;"
    sget-object v1, Landroid/content/res/Resources;->sResourcesHistory:Ljava/util/Set;

    new-instance v2, Landroid/content/res/Resources$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/content/res/Resources$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 2857
    const/4 v1, 0x0

    .line 2858
    .local v1, "i":I
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 2859
    .local v3, "r":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Landroid/content/res/Resources;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2861
    .end local v3    # "r":Landroid/content/res/Resources;
    move v1, v5

    goto :goto_2f

    .line 2862
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_69
    return-void
.end method

.method public static whitelist getAttributeSetSourceResId(Landroid/util/AttributeSet;)I
    .registers 2
    .param p0, "set"    # Landroid/util/AttributeSet;

    .line 1521
    invoke-static {p0}, Landroid/content/res/ResourcesImpl;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    return v0
.end method

.method public static whitelist getSystem()Landroid/content/res/Resources;
    .registers 3

    .line 246
    sget-object v0, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_3
    sget-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 248
    .local v1, "ret":Landroid/content/res/Resources;
    if-nez v1, :cond_f

    .line 249
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2}, Landroid/content/res/Resources;-><init>()V

    move-object v1, v2

    .line 250
    sput-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 252
    :cond_f
    monitor-exit v0

    return-object v1

    .line 253
    .end local v1    # "ret":Landroid/content/res/Resources;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method static synthetic blacklist lambda$cleanupThemeReferences$0(Ljava/lang/ref/WeakReference;)Z
    .registers 2
    .param p0, "ref"    # Ljava/lang/ref/WeakReference;

    .line 2134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$dumpHistory$1(Landroid/util/ArrayMap;Landroid/content/res/Resources;)V
    .registers 4
    .param p0, "history"    # Landroid/util/ArrayMap;
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 2848
    if-eqz p1, :cond_18

    .line 2849
    iget-object v0, p1, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 2850
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_14

    .line 2851
    iget-object v1, v0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 2853
    :cond_14
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_18
    :goto_18
    return-void
.end method

.method static blacklist nextPowerOf2(I)I
    .registers 5
    .param p0, "number"    # I

    .line 2128
    const/4 v0, 0x2

    if-ge p0, v0, :cond_4

    goto :goto_17

    :cond_4
    add-int/lit8 v0, p0, -0x1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    shr-int v0, v1, v0

    :goto_17
    return v0
.end method

.method public static greylist-max-o obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .line 2633
    if-nez p1, :cond_7

    .line 2634
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 2636
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o obtainTempTypedValue()Landroid/util/TypedValue;
    .registers 4

    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, "tmpValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1368
    :try_start_4
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-eqz v2, :cond_e

    .line 1369
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    move-object v0, v2

    .line 1370
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1372
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_18

    .line 1373
    if-nez v0, :cond_17

    .line 1374
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    return-object v1

    .line 1376
    :cond_17
    return-object v0

    .line 1372
    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method private static blacklist preloadColorStateLists(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)I
    .registers 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .line 2785
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2786
    .local v0, "numberOfEntries":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 2787
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 2789
    .local v2, "id":I
    if-eqz v2, :cond_47

    .line 2790
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_16

    goto :goto_47

    .line 2791
    :cond_16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2793
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2794
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2786
    .end local v2    # "id":I
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2798
    .end local v1    # "i":I
    :cond_4a
    return v0
.end method

.method private static blacklist preloadDrawables(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)I
    .registers 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .line 2802
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2803
    .local v0, "numberOfEntries":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 2804
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 2806
    .local v2, "id":I
    if-eqz v2, :cond_47

    .line 2807
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_16

    goto :goto_47

    .line 2808
    :cond_16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2810
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2811
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2803
    .end local v2    # "id":I
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2815
    .end local v1    # "i":I
    :cond_4a
    return v0
.end method

.method public static greylist preloadResources()V
    .registers 12

    .line 2757
    const-string/jumbo v0, "ms."

    const-string v1, " resources in "

    const-string v2, "...preloaded "

    const-string v3, "Resources"

    :try_start_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 2758
    .local v4, "sysRes":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->startPreloading()V

    .line 2760
    const-string v5, "Preloading resources..."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2763
    .local v5, "startTime":J
    const v7, 0x1070109

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2765
    .local v7, "ar":Landroid/content/res/TypedArray;
    invoke-static {v4, v7}, Landroid/content/res/Resources;->preloadDrawables(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)I

    move-result v8

    .line 2766
    .local v8, "numberOfEntries":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2767
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2768
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2767
    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2771
    .end local v5    # "startTime":J
    .local v9, "startTime":J
    const v5, 0x1070108

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2773
    .end local v7    # "ar":Landroid/content/res/TypedArray;
    .local v5, "ar":Landroid/content/res/TypedArray;
    invoke-static {v4, v5}, Landroid/content/res/Resources;->preloadColorStateLists(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)I

    move-result v6

    .line 2774
    .end local v8    # "numberOfEntries":I
    .local v6, "numberOfEntries":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2775
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2776
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2775
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    nop

    .end local v5    # "ar":Landroid/content/res/TypedArray;
    .end local v6    # "numberOfEntries":I
    .end local v9    # "startTime":J
    invoke-virtual {v4}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_87
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_87} :catch_88

    .line 2781
    .end local v4    # "sysRes":Landroid/content/res/Resources;
    goto :goto_8e

    .line 2779
    :catch_88
    move-exception v0

    .line 2780
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Failure preloading resources"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2782
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8e
    return-void
.end method

.method public static whitelist registerResourcePaths(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p0, "uniqueId"    # Ljava/lang/String;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2880
    invoke-static {}, Landroid/content/res/Flags;->registerResourcePaths()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2881
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/ResourcesManager;->registerResourcePaths(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 2886
    return-void

    .line 2883
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Flag android.content.res.register_resource_paths is disabled."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o releaseTempTypedValue(Landroid/util/TypedValue;)V
    .registers 4
    .param p1, "value"    # Landroid/util/TypedValue;

    .line 1386
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1387
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v1, :cond_9

    .line 1388
    iput-object p1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1390
    :cond_9
    monitor-exit v0

    .line 1391
    return-void

    .line 1390
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static blacklist resetPreloadDrawableStateCache()V
    .registers 0

    .line 2824
    invoke-static {}, Landroid/content/res/ResourcesImpl;->resetDrawableStateCache()V

    .line 2825
    invoke-static {}, Landroid/content/res/Resources;->preloadResources()V

    .line 2826
    return-void
.end method

.method public static greylist-max-o resourceHasPackage(I)Z
    .registers 2
    .param p0, "resid"    # I

    .line 2333
    ushr-int/lit8 v0, p0, 0x18

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static greylist selectDefaultTheme(II)I
    .registers 8
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    .line 214
    const v4, 0x1030128

    const v5, 0x103013f

    const v2, 0x1030005

    const v3, 0x103006b

    move v0, p0

    move v1, p1

    .end local p0    # "curTheme":I
    .end local p1    # "targetSdkVersion":I
    .local v0, "curTheme":I
    .local v1, "targetSdkVersion":I
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o selectSystemTheme(IIIIII)I
    .registers 7
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    .line 224
    if-eqz p0, :cond_3

    .line 225
    return p0

    .line 227
    :cond_3
    const/16 v0, 0xb

    if-ge p1, v0, :cond_8

    .line 228
    return p2

    .line 230
    :cond_8
    const/16 v0, 0xe

    if-ge p1, v0, :cond_d

    .line 231
    return p3

    .line 233
    :cond_d
    const/16 v0, 0x18

    if-ge p1, v0, :cond_12

    .line 234
    return p4

    .line 236
    :cond_12
    return p5
.end method

.method public static greylist updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 2212
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_9

    .line 2213
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2217
    :cond_9
    return-void
.end method


# virtual methods
.method public varargs whitelist addLoaders([Landroid/content/res/loader/ResourcesLoader;)V
    .registers 9
    .param p1, "loaders"    # [Landroid/content/res/loader/ResourcesLoader;

    .line 2669
    iget-object v0, p0, Landroid/content/res/Resources;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2670
    :try_start_3
    invoke-direct {p0}, Landroid/content/res/Resources;->checkCallbacksRegistered()V

    .line 2671
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 2672
    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2673
    .local v1, "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2675
    .local v2, "loaderSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, p1

    if-ge v3, v4, :cond_2c

    .line 2676
    aget-object v4, p1, v3

    .line 2677
    .local v4, "loader":Landroid/content/res/loader/ResourcesLoader;
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 2678
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2675
    .end local v4    # "loader":Landroid/content/res/loader/ResourcesLoader;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 2682
    .end local v3    # "i":I
    :cond_2c
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_38

    .line 2683
    monitor-exit v0

    return-void

    .line 2686
    :cond_38
    iget-object v3, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    invoke-interface {v3, p0, v1}, Landroid/content/res/Resources$UpdateCallbacks;->onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V

    .line 2687
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .restart local v3    # "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_45
    if-ge v3, v4, :cond_55

    .line 2688
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    iget-object v6, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    invoke-virtual {v5, p0, v6}, Landroid/content/res/loader/ResourcesLoader;->registerOnProvidersChangedCallback(Ljava/lang/Object;Landroid/content/res/loader/ResourcesLoader$UpdateCallbacks;)V

    .line 2687
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 2690
    .end local v1    # "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local v2    # "loaderSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_55
    monitor-exit v0

    .line 2691
    return-void

    .line 2690
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public greylist-max-o calcConfigChanges(Landroid/content/res/Configuration;)I
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2622
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public blacklist clearLoaders()V
    .registers 6

    .line 2736
    iget-object v0, p0, Landroid/content/res/Resources;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2737
    :try_start_3
    invoke-direct {p0}, Landroid/content/res/Resources;->checkCallbacksRegistered()V

    .line 2738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2739
    .local v1, "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    iget-object v2, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object v2

    .line 2740
    .local v2, "oldLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    iget-object v3, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    invoke-interface {v3, p0, v1}, Landroid/content/res/Resources$UpdateCallbacks;->onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V

    .line 2741
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/loader/ResourcesLoader;

    .line 2742
    .local v4, "loader":Landroid/content/res/loader/ResourcesLoader;
    invoke-virtual {v4, p0}, Landroid/content/res/loader/ResourcesLoader;->unregisterOnProvidersChangedCallback(Ljava/lang/Object;)V

    .line 2743
    .end local v4    # "loader":Landroid/content/res/loader/ResourcesLoader;
    goto :goto_1d

    .line 2744
    .end local v1    # "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local v2    # "oldLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :cond_2d
    monitor-exit v0

    .line 2745
    return-void

    .line 2744
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2830
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

    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "resourcesImpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 2833
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_50

    .line 2834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ResourcesImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_66

    .line 2836
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    :goto_66
    return-void
.end method

.method public final whitelist finishPreloading()V
    .registers 2

    .line 2542
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->finishPreloading()V

    .line 2543
    return-void
.end method

.method public final whitelist flushLayoutCache()V
    .registers 2

    .line 2525
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 2526
    return-void
.end method

.method public whitelist getAnimation(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1308
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 2516
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoolean(I)Z
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1195
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1197
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1198
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_20

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_20

    .line 1200
    iget v1, v0, Landroid/util/TypedValue;->data:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_53

    if-eqz v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 1205
    :goto_1c
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1200
    return v2

    .line 1202
    :cond_20
    :try_start_20
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1203
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Landroid/content/res/Resources;
    .end local p1    # "id":I
    throw v1
    :try_end_53
    .catchall {:try_start_20 .. :try_end_53} :catchall_53

    .line 1205
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    :catchall_53
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1206
    throw v1
.end method

.method public greylist-max-o getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 415
    iget-object v0, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist getColor(I)I
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1066
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public whitelist getColor(ILandroid/content/res/Resources$Theme;)I
    .registers 8
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1087
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1089
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 1090
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1091
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1c

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1c

    .line 1093
    iget v2, v0, Landroid/util/TypedValue;->data:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_60

    .line 1102
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1093
    return v2

    .line 1094
    :cond_1c
    :try_start_1c
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    .line 1099
    invoke-virtual {v1, p0, v0, p1, p2}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1100
    .local v2, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_60

    .line 1102
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1100
    return v3

    .line 1095
    .end local v2    # "csl":Landroid/content/res/ColorStateList;
    :cond_2d
    :try_start_2d
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 1096
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Landroid/content/res/Resources;
    .end local p1    # "id":I
    .end local p2    # "theme":Landroid/content/res/Resources$Theme;
    throw v2
    :try_end_60
    .catchall {:try_start_2d .. :try_end_60} :catchall_60

    .line 1102
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    .restart local p2    # "theme":Landroid/content/res/Resources$Theme;
    :catchall_60
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1103
    throw v1
.end method

.method public whitelist getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1127
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorStateList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has unresolved theme attributes! Consider using Resources.getColorStateList(int, Theme) or Context.getColorStateList(int)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "Resources"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    :cond_34
    return-object v0
.end method

.method public whitelist getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1157
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1159
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 1160
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1161
    invoke-virtual {v1, p0, v0, p1, p2}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1163
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1161
    return-object v2

    .line 1163
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_12
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1164
    throw v1
.end method

.method public greylist getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 2283
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 2261
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDimension(I)F
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 775
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 777
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 778
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 779
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1d

    .line 780
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_50

    .line 785
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 780
    return v2

    .line 782
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 783
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Landroid/content/res/Resources;
    .end local p1    # "id":I
    throw v2
    :try_end_50
    .catchall {:try_start_1d .. :try_end_50} :catchall_50

    .line 785
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    :catchall_50
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 786
    throw v1
.end method

.method public whitelist getDimensionPixelOffset(I)I
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 809
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 811
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 812
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 813
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1d

    .line 814
    iget v2, v0, Landroid/util/TypedValue;->data:I

    .line 815
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 814
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_50

    .line 820
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 814
    return v2

    .line 817
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 818
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Landroid/content/res/Resources;
    .end local p1    # "id":I
    throw v2
    :try_end_50
    .catchall {:try_start_1d .. :try_end_50} :catchall_50

    .line 820
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    :catchall_50
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 821
    throw v1
.end method

.method public whitelist getDimensionPixelSize(I)I
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 845
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 847
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 848
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 849
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1d

    .line 850
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_50

    .line 855
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 850
    return v2

    .line 852
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 853
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Landroid/content/res/Resources;
    .end local p1    # "id":I
    throw v2
    :try_end_50
    .catchall {:try_start_1d .. :try_end_50} :catchall_50

    .line 855
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    :catchall_50
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 856
    throw v1
.end method

.method public greylist getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .registers 2

    .line 2243
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 2237
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 925
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drawable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has unresolved theme attributes! Consider using Resources.getDrawable(int, Theme) or Context.getDrawable(int)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "Resources"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    :cond_34
    return-object v0
.end method

.method public whitelist getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1009
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1011
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 1012
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1013
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1015
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1013
    return-object v2

    .line 1015
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_12
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1016
    throw v1
.end method

.method public final greylist-max-r getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;
    .registers 3

    .line 425
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    if-nez v0, :cond_d

    .line 426
    new-instance v0, Landroid/graphics/drawable/DrawableInflater;

    iget-object v1, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/DrawableInflater;-><init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    .line 428
    :cond_d
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    return-object v0
.end method

.method public whitelist getFloat(I)F
    .registers 6
    .param p1, "id"    # I

    .line 1248
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1250
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1251
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    .line 1252
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_4a

    .line 1257
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1252
    return v1

    .line 1254
    :cond_17
    :try_start_17
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1255
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Landroid/content/res/Resources;
    .end local p1    # "id":I
    throw v1
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_4a

    .line 1257
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    :catchall_4a
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1258
    throw v1
.end method

.method public whitelist getFont(I)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 488
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 489
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 490
    invoke-virtual {v1, p0, v0, p1}, Landroid/content/res/ResourcesImpl;->loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_36

    .line 491
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_15

    .line 492
    nop

    .line 495
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 492
    return-object v2

    .line 495
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_15
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 496
    nop

    .line 497
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :catchall_36
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 496
    throw v1
.end method

.method greylist-max-o getFont(Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .registers 4
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/ResourcesImpl;->loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFraction(III)F
    .registers 8
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .line 877
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 879
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 880
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1b

    .line 881
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_4e

    .line 886
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 881
    return v1

    .line 883
    :cond_1b
    :try_start_1b
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 884
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Landroid/content/res/Resources;
    .end local p1    # "id":I
    .end local p2    # "base":I
    .end local p3    # "pbase":I
    throw v1
    :try_end_4e
    .catchall {:try_start_1b .. :try_end_4e} :catchall_4e

    .line 886
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    .restart local p2    # "base":I
    .restart local p3    # "pbase":I
    :catchall_4e
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 887
    throw v1
.end method

.method public whitelist getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 2324
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getImpl()Landroid/content/res/ResourcesImpl;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    return-object v0
.end method

.method public whitelist getIntArray(I)[I
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceIntArray(I)[I

    move-result-object v0

    .line 724
    .local v0, "res":[I
    if-eqz v0, :cond_d

    .line 725
    return-object v0

    .line 727
    :cond_d
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Int array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getInteger(I)I
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1221
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1223
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1224
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1c

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1c

    .line 1226
    iget v1, v0, Landroid/util/TypedValue;->data:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_4f

    .line 1231
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1226
    return v1

    .line 1228
    :cond_1c
    :try_start_1c
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1229
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Landroid/content/res/Resources;
    .end local p1    # "id":I
    throw v1
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_4f

    .line 1231
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    :catchall_4f
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1232
    throw v1
.end method

.method public blacklist getLastResourceResolution()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2413
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLayout(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1283
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
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

    .line 2656
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMovie(I)Landroid/graphics/Movie;
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1038
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1039
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 1041
    .local v1, "movie":Landroid/graphics/Movie;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1044
    goto :goto_d

    .line 1042
    :catch_c
    move-exception v2

    .line 1045
    :goto_d
    return-object v1
.end method

.method public greylist getPreloadedDrawables()Landroid/util/LongSparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .line 2550
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getQuantityString(II)Ljava/lang/String;
    .registers 4
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 647
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 620
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getQuantityText(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResourceEntryName(I)Ljava/lang/String;
    .registers 3
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2399
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResourceName(I)Ljava/lang/String;
    .registers 3
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2351
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResourcePackageName(I)Ljava/lang/String;
    .registers 3
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2367
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResourceTypeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2383
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;
    .registers 2

    .line 2271
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSizeConfigurations()[Landroid/content/res/Configuration;
    .registers 2

    .line 2266
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 563
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getStringArray(I)[Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 705
    return-object v0

    .line 707
    :cond_d
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getText(I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 466
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_d

    .line 467
    return-object v0

    .line 469
    :cond_d
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .line 665
    if-eqz p1, :cond_d

    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 666
    .local v0, "res":Ljava/lang/CharSequence;
    :goto_e
    if-eqz v0, :cond_12

    move-object v1, v0

    goto :goto_13

    :cond_12
    move-object v1, p2

    :goto_13
    return-object v1
.end method

.method public whitelist getTextArray(I)[Ljava/lang/CharSequence;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 683
    .local v0, "res":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_d

    .line 684
    return-object v0

    .line 686
    :cond_d
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getValue(ILandroid/util/TypedValue;Z)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1459
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1460
    return-void
.end method

.method public whitelist getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1508
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 1509
    return-void
.end method

.method public whitelist getValueForDensity(IILandroid/util/TypedValue;Z)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1477
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1478
    return-void
.end method

.method public whitelist getXml(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1334
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasOverrideDisplayAdjustments()Z
    .registers 2

    .line 2251
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 5
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 5
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1178
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-r loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "density"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "value":Landroid/util/TypedValue;
    .end local p2    # "id":I
    .end local p3    # "density":I
    .end local p4    # "theme":Landroid/content/res/Resources$Theme;
    .local v2, "value":Landroid/util/TypedValue;
    .local v3, "id":I
    .local v4, "density":I
    .local v5, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method greylist loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 12
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2565
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 2567
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 2568
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2569
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_24

    .line 2570
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v6, v1, Landroid/util/TypedValue;->assetCookie:I

    iget-boolean v8, v1, Landroid/util/TypedValue;->usesFeatureFlags:Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_5d

    move-object v3, p0

    move v5, p1

    move-object v7, p2

    .end local p1    # "id":I
    .end local p2    # "type":Ljava/lang/String;
    .local v5, "id":I
    .local v7, "type":Ljava/lang/String;
    :try_start_1c
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_5a

    .line 2576
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 2570
    return-object p1

    .line 2573
    .end local v5    # "id":I
    .end local v7    # "type":Ljava/lang/String;
    .restart local p1    # "id":I
    .restart local p2    # "type":Ljava/lang/String;
    :cond_24
    move-object v3, p0

    move v5, p1

    move-object v7, p2

    .end local p1    # "id":I
    .end local p2    # "type":Ljava/lang/String;
    .restart local v5    # "id":I
    .restart local v7    # "type":Ljava/lang/String;
    :try_start_27
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource ID #0x"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " type #0x"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, v1, Landroid/util/TypedValue;->type:I

    .line 2574
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " is not valid"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "value":Landroid/util/TypedValue;
    .end local v5    # "id":I
    .end local v7    # "type":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/res/Resources;
    throw p1
    :try_end_5a
    .catchall {:try_start_27 .. :try_end_5a} :catchall_5a

    .line 2576
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v1    # "value":Landroid/util/TypedValue;
    .restart local v5    # "id":I
    .restart local v7    # "type":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/res/Resources;
    :catchall_5a
    move-exception v0

    move-object p1, v0

    goto :goto_62

    .end local v5    # "id":I
    .end local v7    # "type":Ljava/lang/String;
    .restart local p1    # "id":I
    .restart local p2    # "type":Ljava/lang/String;
    :catchall_5d
    move-exception v0

    move-object v3, p0

    move v5, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "id":I
    .end local p2    # "type":Ljava/lang/String;
    .restart local v5    # "id":I
    .restart local v7    # "type":Ljava/lang/String;
    :goto_62
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 2577
    throw p1
.end method

.method greylist loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 11
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2594
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "file":Ljava/lang/String;
    .end local p2    # "id":I
    .end local p3    # "assetCookie":I
    .end local p4    # "type":Ljava/lang/String;
    .local v1, "file":Ljava/lang/String;
    .local v2, "id":I
    .local v3, "assetCookie":I
    .local v4, "type":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;
    .registers 12
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "usesFeatureFlags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2613
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "file":Ljava/lang/String;
    .end local p2    # "id":I
    .end local p3    # "assetCookie":I
    .end local p4    # "type":Ljava/lang/String;
    .end local p5    # "usesFeatureFlags":Z
    .local v1, "file":Ljava/lang/String;
    .local v2, "id":I
    .local v3, "assetCookie":I
    .local v4, "type":Ljava/lang/String;
    .local v5, "usesFeatureFlags":Z
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist newTheme()Landroid/content/res/Resources$Theme;
    .registers 5

    .line 2147
    new-instance v0, Landroid/content/res/Resources$Theme;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources-IA;)V

    .line 2148
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    .line 2149
    iget-object v1, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2150
    :try_start_12
    invoke-direct {p0}, Landroid/content/res/Resources;->cleanupThemeReferences()V

    .line 2151
    iget-object v2, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    monitor-exit v1

    .line 2153
    return-object v0

    .line 2152
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public whitelist obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 9
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 2170
    array-length v0, p2

    .line 2171
    .local v0, "len":I
    invoke-static {p0, v0}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2177
    .local v1, "array":Landroid/content/res/TypedArray;
    move-object v2, p1

    check-cast v2, Landroid/content/res/XmlBlock$Parser;

    .line 2178
    .local v2, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v3, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, v1, Landroid/content/res/TypedArray;->mData:[I

    iget-object v5, v1, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v3, v2, p2, v4, v5}, Landroid/content/res/AssetManager;->retrieveAttributes(Landroid/content/res/XmlBlock$Parser;[I[I[I)Z

    .line 2180
    iput-object v2, v1, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 2182
    return-object v1
.end method

.method public whitelist obtainTypedArray(I)Landroid/content/res/TypedArray;
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 746
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceArraySize(I)I

    move-result v1

    .line 747
    .local v1, "len":I
    if-ltz v1, :cond_22

    .line 751
    invoke-static {p0, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 752
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, v2, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceArray(I[I)I

    move-result v3

    iput v3, v2, Landroid/content/res/TypedArray;->mLength:I

    .line 753
    iget-object v3, v2, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 755
    return-object v2

    .line 748
    .end local v2    # "array":Landroid/content/res/TypedArray;
    :cond_22
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist openRawResource(I)Ljava/io/InputStream;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1351
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1353
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1355
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1353
    return-object v1

    .line 1355
    :catchall_c
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1356
    throw v1
.end method

.method public whitelist openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1434
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1436
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_4
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/ResourcesImpl;->openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1438
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1436
    return-object v1

    .line 1438
    :catchall_e
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1439
    throw v1
.end method

.method public whitelist parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2471
    sget-object v0, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2474
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2476
    .local v2, "name":Ljava/lang/String;
    const-string v3, "<"

    if-eqz v2, :cond_a4

    .line 2483
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 2485
    .local v5, "v":Landroid/util/TypedValue;
    if-eqz v5, :cond_7c

    .line 2486
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_23

    .line 2487
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2488
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2489
    .end local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_50

    :cond_23
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_32

    .line 2490
    iget v3, v5, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_2e

    move v1, v4

    :cond_2e
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_50

    .line 2491
    :cond_32
    iget v1, v5, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_44

    iget v1, v5, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v1, v4, :cond_44

    .line 2493
    iget v1, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_50

    .line 2494
    :cond_44
    iget v1, v5, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_54

    .line 2495
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2509
    :goto_50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2510
    return-void

    .line 2497
    :cond_54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2498
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2500
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2503
    :cond_7c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2504
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2506
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2477
    .end local v5    # "v":Landroid/util/TypedValue;
    :cond_a4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2478
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> requires an android:name attribute at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2480
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2429
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 2431
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_32

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 2432
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_32

    .line 2433
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 2434
    goto :goto_4

    .line 2437
    :cond_1b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2438
    .local v1, "nodeName":Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2439
    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2440
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_31

    .line 2443
    :cond_2e
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2445
    .end local v1    # "nodeName":Ljava/lang/String;
    :goto_31
    goto :goto_4

    .line 2446
    :cond_32
    return-void
.end method

.method public greylist-max-o preloadFonts(I)V
    .registers 5
    .param p1, "id"    # I

    .line 510
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 512
    .local v0, "array":Landroid/content/res/TypedArray;
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 513
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_11

    .line 514
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_16

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 517
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 518
    throw v1
.end method

.method public varargs whitelist removeLoaders([Landroid/content/res/loader/ResourcesLoader;)V
    .registers 10
    .param p1, "loaders"    # [Landroid/content/res/loader/ResourcesLoader;

    .line 2703
    iget-object v0, p0, Landroid/content/res/Resources;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2704
    :try_start_3
    invoke-direct {p0}, Landroid/content/res/Resources;->checkCallbacksRegistered()V

    .line 2705
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 2706
    .local v1, "removedLoaders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/loader/ResourcesLoader;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2707
    .local v2, "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    iget-object v3, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object v3

    .line 2709
    .local v3, "oldLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "n":I
    :goto_1f
    if-ge v4, v5, :cond_33

    .line 2710
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/loader/ResourcesLoader;

    .line 2711
    .local v6, "loader":Landroid/content/res/loader/ResourcesLoader;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 2712
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2709
    .end local v6    # "loader":Landroid/content/res/loader/ResourcesLoader;
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 2716
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_3f

    .line 2717
    monitor-exit v0

    return-void

    .line 2720
    :cond_3f
    iget-object v4, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    invoke-interface {v4, p0, v2}, Landroid/content/res/Resources$UpdateCallbacks;->onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V

    .line 2721
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_45
    array-length v5, p1

    if-ge v4, v5, :cond_50

    .line 2722
    aget-object v5, p1, v4

    invoke-virtual {v5, p0}, Landroid/content/res/loader/ResourcesLoader;->unregisterOnProvidersChangedCallback(Ljava/lang/Object;)V

    .line 2721
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 2724
    .end local v1    # "removedLoaders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local v2    # "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local v3    # "oldLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local v4    # "i":I
    :cond_50
    monitor-exit v0

    .line 2725
    return-void

    .line 2724
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public blacklist setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Landroid/content/res/Resources$UpdateCallbacks;

    .line 396
    iget-object v0, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    if-nez v0, :cond_7

    .line 400
    iput-object p1, p0, Landroid/content/res/Resources;->mCallbacks:Landroid/content/res/Resources$UpdateCallbacks;

    .line 401
    return-void

    .line 397
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;

    .line 2293
    if-eqz p1, :cond_8

    .line 2294
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2296
    :cond_8
    return-void
.end method

.method public greylist setImpl(Landroid/content/res/ResourcesImpl;)V
    .registers 7
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;

    .line 374
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    if-ne p1, v0, :cond_5

    .line 375
    return-void

    .line 378
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/content/res/Resources;->mBaseApkAssetsSize:I

    .line 379
    iput-object p1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 382
    iget-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 383
    :try_start_18
    invoke-direct {p0}, Landroid/content/res/Resources;->cleanupThemeReferences()V

    .line 384
    iget-object v1, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 385
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v1, :cond_3c

    .line 386
    iget-object v3, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources$Theme;

    .line 387
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v3, :cond_39

    .line 388
    iget-object v4, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->rebase(Landroid/content/res/ResourcesImpl;)V

    .line 385
    .end local v3    # "theme":Landroid/content/res/Resources$Theme;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 391
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3c
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public final greylist-max-o startPreloading()V
    .registers 2

    .line 2534
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->startPreloading()V

    .line 2535
    return-void
.end method

.method public whitelist updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2193
    return-void
.end method

.method public greylist-max-o updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 2200
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2201
    return-void
.end method
