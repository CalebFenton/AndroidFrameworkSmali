.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$1;,
        Landroid/app/ResourcesManager$ActivityResources;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static final sEmptyReferencePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid/app/ResourcesManager$1;

    #@2
    invoke-direct {v0}, Landroid/app/ResourcesManager$1;-><init>()V

    #@5
    .line 60
    sput-object v0, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    #@7
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    new-instance v0, Landroid/content/res/Configuration;

    #@5
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    #@a
    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 83
    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@11
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    #@18
    .line 104
    new-instance v0, Ljava/util/WeakHashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@1d
    .line 103
    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    #@1f
    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@24
    .line 109
    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    #@26
    .line 51
    return-void
.end method

.method private static applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 173
    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@3
    .line 174
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@5
    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@7
    .line 175
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@9
    int-to-float v1, v1

    #@a
    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    #@c
    div-float/2addr v1, v2

    #@d
    float-to-int v1, v1

    #@e
    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@10
    .line 176
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@12
    int-to-float v1, v1

    #@13
    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    #@15
    div-float/2addr v1, v2

    #@16
    float-to-int v1, v1

    #@17
    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@19
    .line 177
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@1b
    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    #@1e
    move-result v0

    #@1f
    .line 178
    .local v0, "sl":I
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@21
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@23
    if-le v1, v2, :cond_0

    #@25
    .line 179
    const/4 v1, 0x2

    #@26
    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@28
    .line 181
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2a
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@2c
    .line 180
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    #@2f
    move-result v1

    #@30
    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@32
    .line 187
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@34
    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@36
    .line 188
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@38
    iput v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@3a
    .line 189
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@3c
    iput v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@3e
    .line 190
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@40
    iput v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@42
    .line 172
    return-void

    #@43
    .line 183
    :cond_0
    iput v3, p1, Landroid/content/res/Configuration;->orientation:I

    #@45
    .line 185
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@47
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@49
    .line 184
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    #@4c
    move-result v1

    #@4d
    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@4f
    goto :goto_0
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 308
    new-instance v2, Landroid/view/DisplayAdjustments;

    #@3
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@5
    invoke-direct {v2, v5}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    #@8
    .line 309
    .local v2, "daj":Landroid/view/DisplayAdjustments;
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    #@a
    invoke-virtual {v2, v5}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@d
    .line 311
    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;

    #@10
    move-result-object v0

    #@11
    .line 312
    .local v0, "assets":Landroid/content/res/AssetManager;
    if-nez v0, :cond_0

    #@13
    .line 313
    return-object v6

    #@14
    .line 316
    :cond_0
    iget v5, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@16
    invoke-virtual {p0, v5, v2}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    #@19
    move-result-object v3

    #@1a
    .line 317
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-direct {p0, p1, v3}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;

    #@1d
    move-result-object v1

    #@1e
    .line 318
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v4, Landroid/content/res/ResourcesImpl;

    #@20
    invoke-direct {v4, v0, v3, v1, v2}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    #@23
    .line 322
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    return-object v4
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 6
    .param p1, "resourceImpl"    # Landroid/content/res/ResourcesImpl;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 364
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    .line 365
    .local v2, "refCount":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@a
    .line 366
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@12
    .line 367
    .local v3, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v3, :cond_0

    #@14
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/content/res/ResourcesImpl;

    #@1a
    move-object v1, v4

    #@1b
    .line 368
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    :goto_1
    if-eqz v1, :cond_1

    #@1d
    if-ne p1, v1, :cond_1

    #@1f
    .line 369
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/content/res/ResourcesKey;

    #@27
    return-object v4

    #@28
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_0
    move-object v1, v5

    #@29
    .line 367
    goto :goto_1

    #@2a
    .line 365
    .restart local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 372
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_2
    return-object v5
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    #@0
    .prologue
    .line 348
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@3
    move-result-object v0

    #@4
    .line 349
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v0, :cond_0

    #@6
    .line 350
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@9
    move-result-object v0

    #@a
    .line 351
    if-eqz v0, :cond_0

    #@c
    .line 352
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@e
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@10
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@13
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 355
    :cond_0
    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 332
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@9
    .line 333
    .local v1, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v1, :cond_0

    #@b
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/content/res/ResourcesImpl;

    #@11
    move-object v0, v2

    #@12
    .line 334
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    :goto_0
    if-eqz v0, :cond_1

    #@14
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->isUpToDate()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 335
    return-object v0

    #@1f
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_0
    move-object v0, v3

    #@20
    .line 333
    goto :goto_0

    #@21
    .line 337
    .restart local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    return-object v3
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 290
    iget v3, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@2
    if-nez v3, :cond_3

    #@4
    const/4 v2, 0x1

    #@5
    .line 291
    .local v2, "isDefaultDisplay":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    #@8
    move-result v1

    #@9
    .line 292
    .local v1, "hasOverrideConfig":Z
    if-eqz v2, :cond_0

    #@b
    if-eqz v1, :cond_4

    #@d
    .line 293
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    #@f
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@12
    move-result-object v3

    #@13
    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@16
    .line 294
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v2, :cond_1

    #@18
    .line 295
    invoke-static {p2, v0}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@1b
    .line 297
    :cond_1
    if-eqz v1, :cond_2

    #@1d
    .line 298
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@1f
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@22
    .line 304
    :cond_2
    :goto_1
    return-object v0

    #@23
    .line 290
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "hasOverrideConfig":Z
    .end local v2    # "isDefaultDisplay":Z
    :cond_3
    const/4 v2, 0x0

    #@24
    .restart local v2    # "isDefaultDisplay":Z
    goto :goto_0

    #@25
    .line 302
    .restart local v1    # "hasOverrideConfig":Z
    :cond_4
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@28
    move-result-object v0

    #@29
    .restart local v0    # "config":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    #@0
    .prologue
    .line 113
    const-class v1, Landroid/app/ResourcesManager;

    #@2
    monitor-enter v1

    #@3
    .line 114
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 115
    new-instance v0, Landroid/app/ResourcesManager;

    #@9
    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    #@c
    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    #@e
    .line 117
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 113
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 397
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    #@9
    .line 398
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    if-nez v0, :cond_0

    #@b
    .line 399
    new-instance v0, Landroid/app/ResourcesManager$ActivityResources;

    #@d
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    invoke-direct {v0, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$ActivityResources;)V

    #@10
    .line 400
    .restart local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    #@12
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 402
    :cond_0
    return-object v0
.end method

.method private getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 547
    monitor-enter p0

    #@2
    .line 554
    if-eqz p1, :cond_2

    #@4
    .line 556
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    #@7
    move-result-object v0

    #@8
    .line 559
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@a
    .line 560
    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    #@c
    .line 559
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    #@f
    .line 563
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_0

    #@15
    .line 564
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@17
    sget-object v6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@19
    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    .line 570
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@22
    move-result-object v3

    #@23
    .line 571
    .local v3, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_3

    #@25
    .line 575
    invoke-direct {p0, p1, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v5

    #@29
    monitor-exit p0

    #@2a
    return-object v5

    #@2b
    .line 565
    .end local v3    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_1
    :try_start_1
    new-instance v4, Landroid/content/res/Configuration;

    #@2d
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@2f
    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@32
    .line 566
    .local v4, "temp":Landroid/content/res/Configuration;
    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@34
    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@37
    .line 567
    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@39
    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 547
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v4    # "temp":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v5

    #@3e
    monitor-exit p0

    #@3f
    throw v5

    #@40
    .line 583
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    #@42
    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    #@44
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    #@47
    .line 586
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@4a
    move-result-object v3

    #@4b
    .line 587
    .restart local v3    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_3

    #@4d
    .line 591
    invoke-direct {p0, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    move-result-object v5

    #@51
    monitor-exit p0

    #@52
    return-object v5

    #@53
    :cond_3
    monitor-exit p0

    #@54
    .line 599
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@57
    move-result-object v3

    #@58
    .line 600
    if-nez v3, :cond_4

    #@5a
    .line 601
    return-object v7

    #@5b
    .line 604
    :cond_4
    monitor-enter p0

    #@5c
    .line 605
    :try_start_3
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@5f
    move-result-object v1

    #@60
    .line 606
    .local v1, "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v1, :cond_5

    #@62
    .line 611
    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    #@69
    .line 612
    move-object v3, v1

    #@6a
    .line 619
    :goto_1
    if-eqz p1, :cond_6

    #@6c
    .line 620
    invoke-direct {p0, p1, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6f
    move-result-object v2

    #@70
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_2
    monitor-exit p0

    #@71
    .line 625
    return-object v2

    #@72
    .line 615
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_5
    :try_start_4
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@74
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@76
    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@79
    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7c
    goto :goto_1

    #@7d
    .line 604
    .end local v1    # "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_1
    move-exception v5

    #@7e
    monitor-exit p0

    #@7f
    throw v5

    #@80
    .line 623
    .restart local v1    # "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_6
    :try_start_5
    invoke-direct {p0, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@83
    move-result-object v2

    #@84
    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "impl"    # Landroid/content/res/ResourcesImpl;

    #@0
    .prologue
    .line 411
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    #@3
    move-result-object v0

    #@4
    .line 414
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 415
    .local v2, "refCount":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 416
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@15
    .line 417
    .local v4, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/content/res/Resources;

    #@1b
    .line 419
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    #@1d
    .line 420
    invoke-virtual {v3}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v5

    #@25
    .line 419
    if-eqz v5, :cond_0

    #@27
    .line 421
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    #@2a
    move-result-object v5

    #@2b
    if-ne v5, p3, :cond_0

    #@2d
    .line 425
    return-object v3

    #@2e
    .line 415
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 429
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    new-instance v3, Landroid/content/res/Resources;

    #@33
    invoke-direct {v3, p2}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    #@36
    .line 430
    .restart local v3    # "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    #@39
    .line 431
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@3b
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@3d
    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@40
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 436
    return-object v3
.end method

.method private getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;

    #@0
    .prologue
    .line 446
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 447
    .local v1, "refCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 448
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@11
    .line 449
    .local v3, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/content/res/Resources;

    #@17
    .line 450
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    #@19
    .line 451
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    .line 450
    if-eqz v4, :cond_0

    #@23
    .line 452
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    #@26
    move-result-object v4

    #@27
    if-ne v4, p2, :cond_0

    #@29
    .line 456
    return-object v2

    #@2a
    .line 447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 461
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    new-instance v2, Landroid/content/res/Resources;

    #@2f
    invoke-direct {v2, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    #@32
    .line 462
    .restart local v2    # "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    #@35
    .line 463
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    #@37
    new-instance v5, Ljava/lang/ref/WeakReference;

    #@39
    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@3c
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 468
    return-object v2
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAsset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 883
    monitor-enter p0

    #@1
    .line 886
    :try_start_0
    new-instance v19, Landroid/util/ArrayMap;

    #@3
    invoke-direct/range {v19 .. v19}, Landroid/util/ArrayMap;-><init>()V

    #@6
    .line 888
    .local v19, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@d
    move-result v13

    #@e
    .line 889
    .local v13, "implCount":I
    const/4 v11, 0x0

    #@f
    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_3

    #@11
    .line 890
    move-object/from16 v0, p0

    #@13
    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@1b
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1e
    move-result-object v12

    #@1f
    check-cast v12, Landroid/content/res/ResourcesImpl;

    #@21
    .line 891
    .local v12, "impl":Landroid/content/res/ResourcesImpl;
    move-object/from16 v0, p0

    #@23
    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@28
    move-result-object v14

    #@29
    check-cast v14, Landroid/content/res/ResourcesKey;

    #@2b
    .line 892
    .local v14, "key":Landroid/content/res/ResourcesKey;
    if-eqz v12, :cond_1

    #@2d
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 893
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@39
    move-object/from16 v0, p2

    #@3b
    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_1

    #@41
    .line 895
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@43
    if-eqz v1, :cond_2

    #@45
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@47
    array-length v1, v1

    #@48
    .line 894
    :goto_1
    add-int/lit8 v15, v1, 0x1

    #@4a
    .line 896
    .local v15, "newLibAssetCount":I
    new-array v5, v15, [Ljava/lang/String;

    #@4c
    .line 897
    .local v5, "newLibAssets":[Ljava/lang/String;
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@4e
    if-eqz v1, :cond_0

    #@50
    .line 898
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@52
    iget-object v2, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@54
    array-length v2, v2

    #@55
    const/4 v3, 0x0

    #@56
    const/4 v4, 0x0

    #@57
    invoke-static {v1, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    .line 900
    :cond_0
    add-int/lit8 v1, v15, -0x1

    #@5c
    aput-object p2, v5, v1

    #@5e
    .line 902
    new-instance v1, Landroid/content/res/ResourcesKey;

    #@60
    .line 903
    iget-object v2, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@62
    .line 904
    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@64
    .line 905
    iget-object v4, v14, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@66
    .line 907
    iget v6, v14, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@68
    .line 908
    iget-object v7, v14, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@6a
    .line 909
    iget-object v8, v14, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    #@6c
    .line 902
    invoke-direct/range {v1 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@6f
    move-object/from16 v0, v19

    #@71
    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    .line 889
    .end local v5    # "newLibAssets":[Ljava/lang/String;
    .end local v15    # "newLibAssetCount":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@76
    goto :goto_0

    #@77
    .line 895
    :cond_2
    const/4 v1, 0x0

    #@78
    goto :goto_1

    #@79
    .line 915
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    move-result v1

    #@7d
    if-eqz v1, :cond_4

    #@7f
    monitor-exit p0

    #@80
    .line 916
    return-void

    #@81
    .line 920
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    #@83
    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    #@85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@88
    move-result v18

    #@89
    .line 921
    .local v18, "resourcesCount":I
    const/4 v11, 0x0

    #@8a
    :goto_2
    move/from16 v0, v18

    #@8c
    if-ge v11, v0, :cond_7

    #@8e
    .line 922
    move-object/from16 v0, p0

    #@90
    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    #@92
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v1

    #@96
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@98
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9b
    move-result-object v16

    #@9c
    check-cast v16, Landroid/content/res/Resources;

    #@9e
    .line 923
    .local v16, "r":Landroid/content/res/Resources;
    if-eqz v16, :cond_6

    #@a0
    .line 924
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    #@a3
    move-result-object v1

    #@a4
    move-object/from16 v0, v19

    #@a6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    move-result-object v14

    #@aa
    check-cast v14, Landroid/content/res/ResourcesKey;

    #@ac
    .line 925
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    if-eqz v14, :cond_6

    #@ae
    .line 926
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v0, v14}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@b3
    move-result-object v12

    #@b4
    .line 927
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    if-nez v12, :cond_5

    #@b6
    .line 928
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b8
    new-instance v2, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v3, "failed to load "

    #@c0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v2

    #@c4
    move-object/from16 v0, p2

    #@c6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v2

    #@ce
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d2
    .line 883
    .end local v11    # "i":I
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v13    # "implCount":I
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v18    # "resourcesCount":I
    .end local v19    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    :catchall_0
    move-exception v1

    #@d3
    monitor-exit p0

    #@d4
    throw v1

    #@d5
    .line 930
    .restart local v11    # "i":I
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v13    # "implCount":I
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    .restart local v16    # "r":Landroid/content/res/Resources;
    .restart local v18    # "resourcesCount":I
    .restart local v19    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, v16

    #@d7
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    #@da
    .line 921
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    #@dc
    goto :goto_2

    #@dd
    .line 936
    .end local v16    # "r":Landroid/content/res/Resources;
    :cond_7
    move-object/from16 v0, p0

    #@df
    iget-object v1, v0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    #@e1
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    #@e4
    move-result-object v1

    #@e5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e8
    move-result-object v10

    #@e9
    .local v10, "activityResources$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@ec
    move-result v1

    #@ed
    if-eqz v1, :cond_b

    #@ef
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f2
    move-result-object v9

    #@f3
    check-cast v9, Landroid/app/ResourcesManager$ActivityResources;

    #@f5
    .line 937
    .local v9, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v9, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@f7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@fa
    move-result v17

    #@fb
    .line 938
    .local v17, "resCount":I
    const/4 v11, 0x0

    #@fc
    :goto_3
    move/from16 v0, v17

    #@fe
    if-ge v11, v0, :cond_8

    #@100
    .line 939
    iget-object v1, v9, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@102
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@105
    move-result-object v1

    #@106
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@108
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@10b
    move-result-object v16

    #@10c
    check-cast v16, Landroid/content/res/Resources;

    #@10e
    .line 940
    .restart local v16    # "r":Landroid/content/res/Resources;
    if-eqz v16, :cond_a

    #@110
    .line 941
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    #@113
    move-result-object v1

    #@114
    move-object/from16 v0, v19

    #@116
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@119
    move-result-object v14

    #@11a
    check-cast v14, Landroid/content/res/ResourcesKey;

    #@11c
    .line 942
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    if-eqz v14, :cond_a

    #@11e
    .line 943
    move-object/from16 v0, p0

    #@120
    invoke-direct {v0, v14}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@123
    move-result-object v12

    #@124
    .line 944
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    if-nez v12, :cond_9

    #@126
    .line 945
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@128
    new-instance v2, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v3, "failed to load "

    #@130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v2

    #@134
    move-object/from16 v0, p2

    #@136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v2

    #@13a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v2

    #@13e
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@141
    throw v1

    #@142
    .line 947
    :cond_9
    move-object/from16 v0, v16

    #@144
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@147
    .line 938
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    #@149
    goto :goto_3

    #@14a
    .end local v9    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v17    # "resCount":I
    :cond_b
    monitor-exit p0

    #@14b
    .line 882
    return-void
.end method

.method public applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@6
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 199
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 196
    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@10
    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@13
    .line 197
    const/4 v0, 0x1

    #@14
    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 18
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 800
    :try_start_0
    const-string/jumbo v14, "ResourcesManager#applyConfigurationToResourcesLocked"

    #@3
    .line 799
    const-wide/16 v16, 0x2000

    #@5
    move-wide/from16 v0, v16

    #@7
    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@a
    .line 802
    move-object/from16 v0, p0

    #@c
    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v14

    #@14
    if-nez v14, :cond_0

    #@16
    if-nez p2, :cond_0

    #@18
    .line 805
    const/4 v14, 0x0

    #@19
    .line 872
    const-wide/16 v16, 0x2000

    #@1b
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    #@1e
    .line 805
    return v14

    #@1f
    .line 807
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@21
    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@28
    move-result v2

    #@29
    .line 809
    .local v2, "changes":I
    move-object/from16 v0, p0

    #@2b
    iget-object v14, v0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v14}, Landroid/util/ArrayMap;->clear()V

    #@30
    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@33
    move-result-object v5

    #@34
    .line 812
    .local v5, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_1

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v14, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@3a
    if-eqz v14, :cond_7

    #@3c
    .line 813
    move-object/from16 v0, p0

    #@3e
    iget-object v14, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@40
    move-object/from16 v0, p2

    #@42
    invoke-virtual {v14, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v14

    #@46
    if-eqz v14, :cond_7

    #@48
    .line 820
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    #@4a
    move-object/from16 v1, p2

    #@4c
    invoke-static {v0, v5, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@4f
    .line 822
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    #@52
    .line 825
    const/4 v13, 0x0

    #@53
    .line 827
    .local v13, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@55
    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@57
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@5a
    move-result v14

    #@5b
    add-int/lit8 v9, v14, -0x1

    #@5d
    .end local v13    # "tmpConfig":Landroid/content/res/Configuration;
    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_b

    #@5f
    .line 828
    move-object/from16 v0, p0

    #@61
    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@63
    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@66
    move-result-object v11

    #@67
    check-cast v11, Landroid/content/res/ResourcesKey;

    #@69
    .line 829
    .local v11, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    #@6b
    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@6d
    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@70
    move-result-object v14

    #@71
    check-cast v14, Ljava/lang/ref/WeakReference;

    #@73
    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@76
    move-result-object v12

    #@77
    check-cast v12, Landroid/content/res/ResourcesImpl;

    #@79
    .line 830
    .local v12, "r":Landroid/content/res/ResourcesImpl;
    if-eqz v12, :cond_a

    #@7b
    .line 833
    iget v6, v11, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@7d
    .line 834
    .local v6, "displayId":I
    if-nez v6, :cond_8

    #@7f
    const/4 v10, 0x1

    #@80
    .line 835
    .local v10, "isDefaultDisplay":Z
    :goto_2
    move-object v7, v5

    #@81
    .line 836
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v11}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    #@84
    move-result v8

    #@85
    .line 837
    .local v8, "hasOverrideConfiguration":Z
    if-eqz v10, :cond_2

    #@87
    if-eqz v8, :cond_9

    #@89
    .line 838
    :cond_2
    if-nez v13, :cond_3

    #@8b
    .line 839
    new-instance v13, Landroid/content/res/Configuration;

    #@8d
    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    #@90
    .line 841
    :cond_3
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@95
    .line 842
    if-nez v10, :cond_5

    #@97
    .line 847
    invoke-virtual {v12}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@9a
    move-result-object v3

    #@9b
    .line 848
    .local v3, "daj":Landroid/view/DisplayAdjustments;
    if-eqz p2, :cond_4

    #@9d
    .line 849
    new-instance v4, Landroid/view/DisplayAdjustments;

    #@9f
    invoke-direct {v4, v3}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    #@a2
    .line 850
    .end local v3    # "daj":Landroid/view/DisplayAdjustments;
    .local v4, "daj":Landroid/view/DisplayAdjustments;
    move-object/from16 v0, p2

    #@a4
    invoke-virtual {v4, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@a7
    move-object v3, v4

    #@a8
    .line 852
    .end local v4    # "daj":Landroid/view/DisplayAdjustments;
    .restart local v3    # "daj":Landroid/view/DisplayAdjustments;
    :cond_4
    move-object/from16 v0, p0

    #@aa
    invoke-virtual {v0, v6, v3}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    #@ad
    move-result-object v7

    #@ae
    .line 853
    invoke-static {v7, v13}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@b1
    .line 855
    .end local v3    # "daj":Landroid/view/DisplayAdjustments;
    :cond_5
    if-eqz v8, :cond_6

    #@b3
    .line 856
    iget-object v14, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@b5
    invoke-virtual {v13, v14}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@b8
    .line 858
    :cond_6
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v12, v13, v7, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@bd
    .line 827
    .end local v6    # "displayId":I
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "hasOverrideConfiguration":Z
    .end local v10    # "isDefaultDisplay":Z
    :goto_3
    add-int/lit8 v9, v9, -0x1

    #@bf
    goto :goto_1

    #@c0
    .line 814
    .end local v9    # "i":I
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_7
    move-object/from16 v0, p2

    #@c2
    move-object/from16 v1, p0

    #@c4
    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@c6
    .line 815
    or-int/lit16 v2, v2, 0xd00

    #@c8
    goto :goto_0

    #@c9
    .line 834
    .restart local v6    # "displayId":I
    .restart local v9    # "i":I
    .restart local v11    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_8
    const/4 v10, 0x0

    #@ca
    .restart local v10    # "isDefaultDisplay":Z
    goto :goto_2

    #@cb
    .line 860
    .restart local v7    # "dm":Landroid/util/DisplayMetrics;
    .restart local v8    # "hasOverrideConfiguration":Z
    :cond_9
    move-object/from16 v0, p1

    #@cd
    move-object/from16 v1, p2

    #@cf
    invoke-virtual {v12, v0, v5, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d2
    goto :goto_3

    #@d3
    .line 871
    .end local v2    # "changes":I
    .end local v5    # "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "displayId":I
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "hasOverrideConfiguration":Z
    .end local v9    # "i":I
    .end local v10    # "isDefaultDisplay":Z
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v14

    #@d4
    .line 872
    const-wide/16 v16, 0x2000

    #@d6
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    #@d9
    .line 871
    throw v14

    #@da
    .line 866
    .restart local v2    # "changes":I
    .restart local v5    # "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "i":I
    .restart local v11    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    #@dc
    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@de
    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e1
    goto :goto_3

    #@e2
    .line 870
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_b
    if-eqz v2, :cond_c

    #@e4
    const/4 v14, 0x1

    #@e5
    .line 872
    :goto_4
    const-wide/16 v16, 0x2000

    #@e7
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    #@ea
    .line 870
    return v14

    #@eb
    :cond_c
    const/4 v14, 0x0

    #@ec
    goto :goto_4
.end method

.method protected createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .locals 10
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 246
    new-instance v0, Landroid/content/res/AssetManager;

    #@4
    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    #@7
    .line 251
    .local v0, "assets":Landroid/content/res/AssetManager;
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 252
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_0

    #@13
    .line 253
    const-string/jumbo v4, "ResourcesManager"

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "failed to add asset path "

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 254
    return-object v9

    #@30
    .line 258
    :cond_0
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 259
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@36
    array-length v7, v6

    #@37
    move v5, v4

    #@38
    :goto_0
    if-ge v5, v7, :cond_2

    #@3a
    aget-object v3, v6, v5

    #@3c
    .line 260
    .local v3, "splitResDir":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@3f
    move-result v8

    #@40
    if-nez v8, :cond_1

    #@42
    .line 261
    const-string/jumbo v4, "ResourcesManager"

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, "failed to add split asset path "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 262
    return-object v9

    #@5d
    .line 259
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 267
    .end local v3    # "splitResDir":Ljava/lang/String;
    :cond_2
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@62
    if-eqz v5, :cond_3

    #@64
    .line 268
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@66
    array-length v7, v6

    #@67
    move v5, v4

    #@68
    :goto_1
    if-ge v5, v7, :cond_3

    #@6a
    aget-object v1, v6, v5

    #@6c
    .line 269
    .local v1, "idmapPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    #@6f
    .line 268
    add-int/lit8 v5, v5, 0x1

    #@71
    goto :goto_1

    #@72
    .line 273
    .end local v1    # "idmapPath":Ljava/lang/String;
    :cond_3
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@74
    if-eqz v5, :cond_5

    #@76
    .line 274
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@78
    array-length v6, v5

    #@79
    :goto_2
    if-ge v4, v6, :cond_5

    #@7b
    aget-object v2, v5, v4

    #@7d
    .line 275
    .local v2, "libDir":Ljava/lang/String;
    const-string/jumbo v7, ".apk"

    #@80
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@83
    move-result v7

    #@84
    if-eqz v7, :cond_4

    #@86
    .line 278
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    #@89
    move-result v7

    #@8a
    if-nez v7, :cond_4

    #@8c
    .line 279
    const-string/jumbo v7, "ResourcesManager"

    #@8f
    new-instance v8, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v9, "Asset path \'"

    #@97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v8

    #@9f
    .line 280
    const-string/jumbo v9, "\' does not exist or contains no resources."

    #@a2
    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v8

    #@aa
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 274
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@af
    goto :goto_2

    #@b0
    .line 285
    .end local v2    # "libDir":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 502
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#createBaseActivityResources"

    #@3
    .line 501
    const-wide/16 v4, 0x2000

    #@5
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 503
    new-instance v2, Landroid/content/res/ResourcesKey;

    #@a
    .line 509
    if-eqz p7, :cond_0

    #@c
    new-instance v8, Landroid/content/res/Configuration;

    #@e
    move-object/from16 v0, p7

    #@10
    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@13
    :goto_0
    move-object v3, p2

    #@14
    move-object v4, p3

    #@15
    move-object v5, p4

    #@16
    move-object v6, p5

    #@17
    move/from16 v7, p6

    #@19
    move-object/from16 v9, p8

    #@1b
    .line 503
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@1e
    .line 511
    .local v2, "key":Landroid/content/res/ResourcesKey;
    if-eqz p9, :cond_1

    #@20
    .line 518
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@21
    .line 520
    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :try_start_2
    monitor-exit p0

    #@25
    .line 524
    move-object/from16 v0, p7

    #@27
    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    #@2a
    .line 527
    move-object/from16 v0, p9

    #@2c
    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2f
    move-result-object v3

    #@30
    .line 529
    const-wide/16 v4, 0x2000

    #@32
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@35
    .line 527
    return-object v3

    #@36
    .line 509
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_0
    const/4 v8, 0x0

    #@37
    goto :goto_0

    #@38
    .line 511
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3b
    move-result-object p9

    #@3c
    goto :goto_1

    #@3d
    .line 518
    :catchall_0
    move-exception v3

    #@3e
    monitor-exit p0

    #@3f
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@40
    .line 528
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :catchall_1
    move-exception v3

    #@41
    .line 529
    const-wide/16 v4, 0x2000

    #@43
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@46
    .line 528
    throw v3
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 211
    if-eqz p2, :cond_0

    #@3
    .line 212
    new-instance v1, Landroid/view/DisplayAdjustments;

    #@5
    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    #@8
    .line 214
    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v5

    #@c
    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@f
    move-result-object v3

    #@10
    .line 215
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    #@11
    .line 216
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@19
    .line 217
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    #@1b
    .line 218
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 219
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    #@23
    monitor-exit p0

    #@24
    .line 220
    return-object v0

    #@25
    .line 212
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    #@27
    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    #@2a
    goto :goto_0

    #@2b
    .line 223
    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result-object v2

    #@2f
    .line 224
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    #@31
    monitor-exit p0

    #@32
    .line 226
    return-object v6

    #@33
    .line 228
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@35
    check-cast v5, Landroid/view/DisplayAdjustments;

    #@37
    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@3a
    move-result-object v0

    #@3b
    .line 229
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    #@3d
    .line 230
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    #@3f
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@41
    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@44
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    :cond_3
    monitor-exit p0

    #@48
    .line 232
    return-object v0

    #@49
    .line 215
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    #@4a
    monitor-exit p0

    #@4b
    throw v5
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    #@0
    .prologue
    .line 146
    monitor-enter p0

    #@1
    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 146
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    #@0
    .prologue
    .line 153
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    #@2
    .line 152
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "da"    # Landroid/view/DisplayAdjustments;

    #@0
    .prologue
    .line 161
    new-instance v1, Landroid/util/DisplayMetrics;

    #@2
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #@5
    .line 162
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@8
    move-result-object v0

    #@9
    .line 163
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    #@b
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@e
    .line 168
    :goto_0
    return-object v1

    #@f
    .line 166
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@12
    goto :goto_0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 666
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#getResources"

    #@3
    const-wide/16 v4, 0x2000

    #@5
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 667
    new-instance v2, Landroid/content/res/ResourcesKey;

    #@a
    .line 673
    if-eqz p7, :cond_0

    #@c
    new-instance v8, Landroid/content/res/Configuration;

    #@e
    move-object/from16 v0, p7

    #@10
    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@13
    :goto_0
    move-object v3, p2

    #@14
    move-object v4, p3

    #@15
    move-object v5, p4

    #@16
    move-object v6, p5

    #@17
    move/from16 v7, p6

    #@19
    move-object/from16 v9, p8

    #@1b
    .line 667
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@1e
    .line 675
    .local v2, "key":Landroid/content/res/ResourcesKey;
    if-eqz p9, :cond_1

    #@20
    .line 676
    :goto_1
    move-object/from16 v0, p9

    #@22
    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v3

    #@26
    .line 678
    const-wide/16 v4, 0x2000

    #@28
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2b
    .line 676
    return-object v3

    #@2c
    .line 673
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_0
    const/4 v8, 0x0

    #@2d
    goto :goto_0

    #@2e
    .line 675
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result-object p9

    #@32
    goto :goto_1

    #@33
    .line 677
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :catchall_0
    move-exception v3

    #@34
    .line 678
    const-wide/16 v4, 0x2000

    #@36
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    .line 677
    throw v3
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    monitor-enter p0

    #@1
    .line 128
    const/4 v0, 0x0

    #@2
    .line 129
    .local v0, "count":I
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v4

    #@9
    if-ge v1, v4, :cond_2

    #@b
    .line 130
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/content/res/ResourcesKey;

    #@13
    .line 131
    .local v2, "key":Landroid/content/res/ResourcesKey;
    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 132
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@21
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/content/res/ResourcesImpl;

    #@27
    .line 133
    .local v3, "res":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_0

    #@29
    .line 134
    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    #@2c
    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 138
    .end local v3    # "res":Landroid/content/res/ResourcesImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 141
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_2
    const-string/jumbo v4, "ResourcesManager"

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "Invalidated "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    const-string/jumbo v6, " asset managers that referenced "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    monitor-exit p0

    #@58
    .line 126
    return-void

    #@59
    .line 127
    :catchall_0
    move-exception v4

    #@5a
    monitor-exit p0

    #@5b
    throw v4
.end method

.method isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 384
    monitor-enter p0

    #@1
    .line 386
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 387
    :goto_0
    if-nez v0, :cond_2

    #@d
    .line 388
    if-nez p2, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    :goto_1
    monitor-exit p0

    #@11
    return v1

    #@12
    .line 386
    :cond_0
    const/4 v0, 0x0

    #@13
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    goto :goto_0

    #@14
    .line 388
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :cond_1
    const/4 v1, 0x0

    #@15
    goto :goto_1

    #@16
    .line 390
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@18
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result v1

    #@1c
    monitor-exit p0

    #@1d
    return v1

    #@1e
    .line 384
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit p0

    #@20
    throw v1
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 20
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 695
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#updateResourcesForActivity"

    #@3
    .line 694
    const-wide/16 v4, 0x2000

    #@5
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 696
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 698
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    #@c
    move-result-object v11

    #@d
    .line 700
    .local v11, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@f
    move-object/from16 v0, p2

    #@11
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@18
    .line 792
    const-wide/16 v4, 0x2000

    #@1a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1d
    .line 702
    return-void

    #@1e
    .line 707
    :cond_0
    :try_start_3
    new-instance v13, Landroid/content/res/Configuration;

    #@20
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@22
    invoke-direct {v13, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@25
    .line 710
    .local v13, "oldConfig":Landroid/content/res/Configuration;
    if-eqz p2, :cond_2

    #@27
    .line 711
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@2e
    .line 729
    :goto_0
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@30
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@32
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_3

    #@38
    const/4 v10, 0x0

    #@39
    .line 732
    .local v10, "activityHasOverrideConfig":Z
    :goto_1
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v16

    #@3f
    .line 733
    .local v16, "refCount":I
    const/4 v12, 0x0

    #@40
    .local v12, "i":I
    :goto_2
    move/from16 v0, v16

    #@42
    if-ge v12, v0, :cond_9

    #@44
    .line 734
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v19

    #@4a
    check-cast v19, Ljava/lang/ref/WeakReference;

    #@4c
    .line 736
    .local v19, "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@4f
    move-result-object v17

    #@50
    check-cast v17, Landroid/content/res/Resources;

    #@52
    .line 737
    .local v17, "resources":Landroid/content/res/Resources;
    if-nez v17, :cond_4

    #@54
    .line 733
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    #@56
    goto :goto_2

    #@57
    .line 713
    .end local v10    # "activityHasOverrideConfig":Z
    .end local v12    # "i":I
    .end local v16    # "refCount":I
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    #@59
    invoke-virtual {v3}, Landroid/content/res/Configuration;->setToDefaults()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5c
    goto :goto_0

    #@5d
    .line 696
    .end local v11    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v13    # "oldConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v3

    #@5e
    :try_start_4
    monitor-exit p0

    #@5f
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@60
    .line 791
    :catchall_1
    move-exception v3

    #@61
    .line 792
    const-wide/16 v4, 0x2000

    #@63
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@66
    .line 791
    throw v3

    #@67
    .line 729
    .restart local v11    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .restart local v13    # "oldConfig":Landroid/content/res/Configuration;
    :cond_3
    const/4 v10, 0x1

    #@68
    .restart local v10    # "activityHasOverrideConfig":Z
    goto :goto_1

    #@69
    .line 743
    .restart local v12    # "i":I
    .restart local v16    # "refCount":I
    .restart local v17    # "resources":Landroid/content/res/Resources;
    .restart local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_4
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    #@6c
    move-result-object v3

    #@6d
    move-object/from16 v0, p0

    #@6f
    invoke-direct {v0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    #@72
    move-result-object v14

    #@73
    .line 744
    .local v14, "oldKey":Landroid/content/res/ResourcesKey;
    if-nez v14, :cond_5

    #@75
    .line 745
    const-string/jumbo v3, "ResourcesManager"

    #@78
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v5, "can\'t find ResourcesKey for resources impl="

    #@80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    .line 746
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    #@87
    move-result-object v5

    #@88
    .line 745
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v4

    #@90
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    goto :goto_3

    #@94
    .line 751
    :cond_5
    new-instance v8, Landroid/content/res/Configuration;

    #@96
    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    #@99
    .line 752
    .local v8, "rebasedOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p2, :cond_6

    #@9b
    .line 753
    move-object/from16 v0, p2

    #@9d
    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@a0
    .line 756
    :cond_6
    if-eqz v10, :cond_7

    #@a2
    invoke-virtual {v14}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    #@a5
    move-result v3

    #@a6
    if-eqz v3, :cond_7

    #@a8
    .line 761
    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@aa
    .line 760
    invoke-static {v13, v3}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    #@ad
    move-result-object v15

    #@ae
    .line 762
    .local v15, "overrideOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v8, v15}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@b1
    .line 766
    .end local v15    # "overrideOverrideConfig":Landroid/content/res/Configuration;
    :cond_7
    new-instance v2, Landroid/content/res/ResourcesKey;

    #@b3
    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@b5
    .line 767
    iget-object v4, v14, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@b7
    .line 768
    iget-object v5, v14, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@b9
    iget-object v6, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@bb
    iget v7, v14, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@bd
    .line 769
    iget-object v9, v14, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    #@bf
    .line 766
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@c2
    .line 776
    .local v2, "newKey":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    #@c4
    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@c7
    move-result-object v18

    #@c8
    .line 777
    .local v18, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v18, :cond_8

    #@ca
    .line 778
    move-object/from16 v0, p0

    #@cc
    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    #@cf
    move-result-object v18

    #@d0
    .line 779
    if-eqz v18, :cond_8

    #@d2
    .line 780
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    #@d6
    new-instance v4, Ljava/lang/ref/WeakReference;

    #@d8
    move-object/from16 v0, v18

    #@da
    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@dd
    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e0
    .line 784
    :cond_8
    if-eqz v18, :cond_1

    #@e2
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    #@e5
    move-result-object v3

    #@e6
    move-object/from16 v0, v18

    #@e8
    if-eq v0, v3, :cond_1

    #@ea
    .line 787
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ed
    goto/16 :goto_3

    #@ef
    .end local v2    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v8    # "rebasedOverrideConfig":Landroid/content/res/Configuration;
    .end local v14    # "oldKey":Landroid/content/res/ResourcesKey;
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v18    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    .end local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_9
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@f0
    .line 792
    const-wide/16 v4, 0x2000

    #@f2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@f5
    .line 692
    return-void
.end method
