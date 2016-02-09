.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
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

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 45
    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    #@a
    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 47
    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    #@11
    .line 40
    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    #@0
    .prologue
    .line 55
    const-class v1, Landroid/app/ResourcesManager;

    #@2
    monitor-enter v1

    #@3
    .line 56
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 57
    new-instance v0, Landroid/app/ResourcesManager;

    #@9
    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    #@c
    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    #@e
    .line 59
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 55
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 107
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
    .line 111
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 108
    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@10
    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@13
    .line 109
    const/4 v0, 0x1

    #@14
    return v0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 12
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 263
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    #@3
    if-nez v10, :cond_0

    #@5
    .line 264
    new-instance v10, Landroid/content/res/Configuration;

    #@7
    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    #@a
    iput-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    #@c
    .line 266
    :cond_0
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    #@e
    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@11
    move-result v10

    #@12
    if-nez v10, :cond_1

    #@14
    if-nez p2, :cond_1

    #@16
    .line 269
    return v11

    #@17
    .line 271
    :cond_1
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    #@19
    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@1c
    move-result v0

    #@1d
    .line 273
    .local v0, "changes":I
    iget-object v10, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    #@22
    .line 274
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked()Landroid/util/DisplayMetrics;

    #@25
    move-result-object v1

    #@26
    .line 276
    .local v1, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_2

    #@28
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@2a
    if-eqz v10, :cond_8

    #@2c
    .line 277
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@2e
    invoke-virtual {v10, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v10

    #@32
    if-eqz v10, :cond_8

    #@34
    .line 285
    :cond_2
    :goto_0
    iget-object v10, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@36
    if-eqz v10, :cond_3

    #@38
    .line 286
    iget-object v10, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@3a
    invoke-static {v10}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    #@3d
    .line 289
    :cond_3
    invoke-static {p1, v1, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@40
    .line 291
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    #@43
    .line 294
    const/4 v9, 0x0

    #@44
    .line 296
    .local v9, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    #@46
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@49
    move-result v10

    #@4a
    add-int/lit8 v5, v10, -0x1

    #@4c
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_c

    #@4e
    .line 297
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@53
    move-result-object v7

    #@54
    check-cast v7, Landroid/content/res/ResourcesKey;

    #@56
    .line 298
    .local v7, "key":Landroid/content/res/ResourcesKey;
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    #@58
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v10

    #@5c
    check-cast v10, Ljava/lang/ref/WeakReference;

    #@5e
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@61
    move-result-object v8

    #@62
    check-cast v8, Landroid/content/res/Resources;

    #@64
    .line 299
    .local v8, "r":Landroid/content/res/Resources;
    if-eqz v8, :cond_b

    #@66
    .line 302
    iget v2, v7, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@68
    .line 303
    .local v2, "displayId":I
    if-nez v2, :cond_9

    #@6a
    const/4 v6, 0x1

    #@6b
    .line 304
    .local v6, "isDefaultDisplay":Z
    :goto_2
    move-object v3, v1

    #@6c
    .line 305
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    #@6f
    move-result v4

    #@70
    .line 306
    .local v4, "hasOverrideConfiguration":Z
    if-eqz v6, :cond_4

    #@72
    if-eqz v4, :cond_a

    #@74
    .line 307
    :cond_4
    if-nez v9, :cond_5

    #@76
    .line 308
    new-instance v9, Landroid/content/res/Configuration;

    #@78
    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    #@7b
    .line 310
    :cond_5
    invoke-virtual {v9, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@7e
    .line 311
    if-nez v6, :cond_6

    #@80
    .line 312
    invoke-virtual {p0, v2}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    #@83
    move-result-object v3

    #@84
    .line 313
    invoke-virtual {p0, v3, v9}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@87
    .line 315
    :cond_6
    if-eqz v4, :cond_7

    #@89
    .line 316
    iget-object v10, v7, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@8b
    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@8e
    .line 318
    :cond_7
    invoke-virtual {v8, v9, v3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@91
    .line 296
    .end local v2    # "displayId":I
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "hasOverrideConfiguration":Z
    .end local v6    # "isDefaultDisplay":Z
    :goto_3
    add-int/lit8 v5, v5, -0x1

    #@93
    goto :goto_1

    #@94
    .line 278
    .end local v5    # "i":I
    .end local v7    # "key":Landroid/content/res/ResourcesKey;
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_8
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@96
    .line 279
    or-int/lit16 v0, v0, 0xd00

    #@98
    goto :goto_0

    #@99
    .line 303
    .restart local v2    # "displayId":I
    .restart local v5    # "i":I
    .restart local v7    # "key":Landroid/content/res/ResourcesKey;
    .restart local v8    # "r":Landroid/content/res/Resources;
    :cond_9
    const/4 v6, 0x0

    #@9a
    .restart local v6    # "isDefaultDisplay":Z
    goto :goto_2

    #@9b
    .line 320
    .restart local v3    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "hasOverrideConfiguration":Z
    :cond_a
    invoke-virtual {v8, p1, v3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@9e
    goto :goto_3

    #@9f
    .line 326
    .end local v2    # "displayId":I
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "hasOverrideConfiguration":Z
    .end local v6    # "isDefaultDisplay":Z
    :cond_b
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    #@a1
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@a4
    goto :goto_3

    #@a5
    .line 330
    .end local v7    # "key":Landroid/content/res/ResourcesKey;
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_c
    if-eqz v0, :cond_d

    #@a7
    const/4 v10, 0x1

    #@a8
    :goto_4
    return v10

    #@a9
    :cond_d
    move v10, v11

    #@aa
    goto :goto_4
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 85
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    #@3
    .line 86
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@5
    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    #@7
    .line 87
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@9
    int-to-float v1, v1

    #@a
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    #@c
    div-float/2addr v1, v2

    #@d
    float-to-int v1, v1

    #@e
    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@10
    .line 88
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@12
    int-to-float v1, v1

    #@13
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    #@15
    div-float/2addr v1, v2

    #@16
    float-to-int v1, v1

    #@17
    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@19
    .line 89
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    #@1b
    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    #@1e
    move-result v0

    #@1f
    .line 90
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@21
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@23
    if-le v1, v2, :cond_0

    #@25
    .line 91
    const/4 v1, 0x2

    #@26
    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    #@28
    .line 93
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2a
    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@2c
    .line 92
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    #@2f
    move-result v1

    #@30
    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    #@32
    .line 99
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@34
    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@36
    .line 100
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@38
    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@3a
    .line 101
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@3c
    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@3e
    .line 102
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@40
    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@42
    .line 84
    return-void

    #@43
    .line 95
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    #@45
    .line 97
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@47
    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@49
    .line 96
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    #@4c
    move-result v1

    #@4d
    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    #@4f
    goto :goto_0
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 122
    if-eqz p2, :cond_0

    #@3
    .line 123
    new-instance v1, Landroid/view/DisplayAdjustments;

    #@5
    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    #@8
    .line 125
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
    .line 126
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    #@11
    .line 127
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@19
    .line 128
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    #@1b
    .line 129
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 130
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    #@23
    monitor-exit p0

    #@24
    .line 131
    return-object v0

    #@25
    .line 123
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
    .line 134
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
    .line 135
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    #@31
    monitor-exit p0

    #@32
    .line 137
    return-object v6

    #@33
    .line 139
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
    .line 140
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    #@3d
    .line 141
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
    .line 143
    return-object v0

    #@49
    .line 126
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
    .line 64
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    #@2
    return-object v0
.end method

.method getDisplayMetricsLocked()Landroid/util/DisplayMetrics;
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 72
    new-instance v1, Landroid/util/DisplayMetrics;

    #@2
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #@5
    .line 74
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    #@7
    invoke-virtual {p0, p1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@a
    move-result-object v0

    #@b
    .line 75
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    #@d
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@10
    .line 80
    :goto_0
    return-object v1

    #@11
    .line 78
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@14
    goto :goto_0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 21
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 161
    move-object/from16 v0, p7

    #@2
    iget v13, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@4
    .line 162
    .local v13, "scale":F
    if-eqz p6, :cond_0

    #@6
    .line 163
    new-instance v11, Landroid/content/res/Configuration;

    #@8
    move-object/from16 v0, p6

    #@a
    invoke-direct {v11, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@d
    .line 164
    :goto_0
    new-instance v9, Landroid/content/res/ResourcesKey;

    #@f
    move-object/from16 v0, p1

    #@11
    move/from16 v1, p5

    #@13
    invoke-direct {v9, v0, v1, v11, v13}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;F)V

    #@16
    .line 166
    .local v9, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    #@17
    .line 170
    :try_start_0
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    #@1b
    move-object/from16 v16, v0

    #@1d
    move-object/from16 v0, v16

    #@1f
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v15

    #@23
    check-cast v15, Ljava/lang/ref/WeakReference;

    #@25
    .line 171
    .local v15, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v15, :cond_1

    #@27
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2a
    move-result-object v12

    #@2b
    check-cast v12, Landroid/content/res/Resources;

    #@2d
    .line 173
    :goto_1
    if-eqz v12, :cond_2

    #@2f
    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@32
    move-result-object v16

    #@33
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetManager;->isUpToDate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result v16

    #@37
    if-eqz v16, :cond_2

    #@39
    monitor-exit p0

    #@3a
    .line 177
    return-object v12

    #@3b
    .line 163
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v15    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    const/4 v11, 0x0

    #@3c
    .local v11, "overrideConfigCopy":Landroid/content/res/Configuration;
    goto :goto_0

    #@3d
    .line 171
    .end local v11    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .restart local v9    # "key":Landroid/content/res/ResourcesKey;
    .restart local v15    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/4 v12, 0x0

    #@3e
    .local v12, "r":Landroid/content/res/Resources;
    goto :goto_1

    #@3f
    .end local v12    # "r":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0

    #@40
    .line 186
    new-instance v2, Landroid/content/res/AssetManager;

    #@42
    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    #@45
    .line 190
    .local v2, "assets":Landroid/content/res/AssetManager;
    if-eqz p1, :cond_3

    #@47
    .line 191
    move-object/from16 v0, p1

    #@49
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@4c
    move-result v16

    #@4d
    if-nez v16, :cond_3

    #@4f
    .line 192
    const/16 v16, 0x0

    #@51
    return-object v16

    #@52
    .line 166
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v15    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v16

    #@53
    monitor-exit p0

    #@54
    throw v16

    #@55
    .line 196
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    .restart local v15    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    if-eqz p2, :cond_5

    #@57
    .line 197
    const/16 v16, 0x0

    #@59
    move-object/from16 v0, p2

    #@5b
    array-length v0, v0

    #@5c
    move/from16 v17, v0

    #@5e
    :goto_2
    move/from16 v0, v16

    #@60
    move/from16 v1, v17

    #@62
    if-ge v0, v1, :cond_5

    #@64
    aget-object v14, p2, v16

    #@66
    .line 198
    .local v14, "splitResDir":Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@69
    move-result v18

    #@6a
    if-nez v18, :cond_4

    #@6c
    .line 199
    const/16 v16, 0x0

    #@6e
    return-object v16

    #@6f
    .line 197
    :cond_4
    add-int/lit8 v16, v16, 0x1

    #@71
    goto :goto_2

    #@72
    .line 204
    .end local v14    # "splitResDir":Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    #@74
    .line 205
    const/16 v16, 0x0

    #@76
    move-object/from16 v0, p3

    #@78
    array-length v0, v0

    #@79
    move/from16 v17, v0

    #@7b
    :goto_3
    move/from16 v0, v16

    #@7d
    move/from16 v1, v17

    #@7f
    if-ge v0, v1, :cond_6

    #@81
    aget-object v7, p3, v16

    #@83
    .line 206
    .local v7, "idmapPath":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    #@86
    .line 205
    add-int/lit8 v16, v16, 0x1

    #@88
    goto :goto_3

    #@89
    .line 210
    .end local v7    # "idmapPath":Ljava/lang/String;
    :cond_6
    if-eqz p4, :cond_8

    #@8b
    .line 211
    const/16 v16, 0x0

    #@8d
    move-object/from16 v0, p4

    #@8f
    array-length v0, v0

    #@90
    move/from16 v17, v0

    #@92
    :goto_4
    move/from16 v0, v16

    #@94
    move/from16 v1, v17

    #@96
    if-ge v0, v1, :cond_8

    #@98
    aget-object v10, p4, v16

    #@9a
    .line 212
    .local v10, "libDir":Ljava/lang/String;
    const-string/jumbo v18, ".apk"

    #@9d
    move-object/from16 v0, v18

    #@9f
    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a2
    move-result v18

    #@a3
    if-eqz v18, :cond_7

    #@a5
    .line 215
    invoke-virtual {v2, v10}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@a8
    move-result v18

    #@a9
    if-nez v18, :cond_7

    #@ab
    .line 216
    const-string/jumbo v18, "ResourcesManager"

    #@ae
    new-instance v19, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v20, "Asset path \'"

    #@b6
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v19

    #@ba
    move-object/from16 v0, v19

    #@bc
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v19

    #@c0
    .line 217
    const-string/jumbo v20, "\' does not exist or contains no resources."

    #@c3
    .line 216
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v19

    #@c7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v19

    #@cb
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ce
    .line 211
    :cond_7
    add-int/lit8 v16, v16, 0x1

    #@d0
    goto :goto_4

    #@d1
    .line 224
    .end local v10    # "libDir":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    #@d3
    move/from16 v1, p5

    #@d5
    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    #@d8
    move-result-object v4

    #@d9
    .line 226
    .local v4, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_c

    #@db
    const/4 v8, 0x1

    #@dc
    .line 227
    .local v8, "isDefaultDisplay":Z
    :goto_5
    invoke-virtual {v9}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    #@df
    move-result v6

    #@e0
    .line 228
    .local v6, "hasOverrideConfig":Z
    if-eqz v8, :cond_9

    #@e2
    if-eqz v6, :cond_d

    #@e4
    .line 229
    :cond_9
    new-instance v3, Landroid/content/res/Configuration;

    #@e6
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@e9
    move-result-object v16

    #@ea
    move-object/from16 v0, v16

    #@ec
    invoke-direct {v3, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@ef
    .line 230
    .local v3, "config":Landroid/content/res/Configuration;
    if-nez v8, :cond_a

    #@f1
    .line 231
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v4, v3}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@f6
    .line 233
    :cond_a
    if-eqz v6, :cond_b

    #@f8
    .line 234
    iget-object v0, v9, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@fa
    move-object/from16 v16, v0

    #@fc
    move-object/from16 v0, v16

    #@fe
    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@101
    .line 240
    :cond_b
    :goto_6
    new-instance v12, Landroid/content/res/Resources;

    #@103
    move-object/from16 v0, p7

    #@105
    invoke-direct {v12, v2, v4, v3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@108
    .line 244
    .local v12, "r":Landroid/content/res/Resources;
    monitor-enter p0

    #@109
    .line 245
    :try_start_1
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    #@10d
    move-object/from16 v16, v0

    #@10f
    move-object/from16 v0, v16

    #@111
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@114
    move-result-object v15

    #@115
    .end local v15    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v15, Ljava/lang/ref/WeakReference;

    #@117
    .line 246
    .restart local v15    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v15, :cond_e

    #@119
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11c
    move-result-object v5

    #@11d
    check-cast v5, Landroid/content/res/Resources;

    #@11f
    .line 247
    :goto_7
    if-eqz v5, :cond_f

    #@121
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@124
    move-result-object v16

    #@125
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetManager;->isUpToDate()Z

    #@128
    move-result v16

    #@129
    if-eqz v16, :cond_f

    #@12b
    .line 250
    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@12e
    move-result-object v16

    #@12f
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetManager;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@132
    monitor-exit p0

    #@133
    .line 251
    return-object v5

    #@134
    .line 226
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v6    # "hasOverrideConfig":Z
    .end local v8    # "isDefaultDisplay":Z
    .end local v12    # "r":Landroid/content/res/Resources;
    :cond_c
    const/4 v8, 0x0

    #@135
    .restart local v8    # "isDefaultDisplay":Z
    goto :goto_5

    #@136
    .line 238
    .restart local v6    # "hasOverrideConfig":Z
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@139
    move-result-object v3

    #@13a
    .restart local v3    # "config":Landroid/content/res/Configuration;
    goto :goto_6

    #@13b
    .line 246
    .restart local v12    # "r":Landroid/content/res/Resources;
    :cond_e
    const/4 v5, 0x0

    #@13c
    .local v5, "existing":Landroid/content/res/Resources;
    goto :goto_7

    #@13d
    .line 255
    .end local v5    # "existing":Landroid/content/res/Resources;
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    #@141
    move-object/from16 v16, v0

    #@143
    new-instance v17, Ljava/lang/ref/WeakReference;

    #@145
    move-object/from16 v0, v17

    #@147
    invoke-direct {v0, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@14a
    move-object/from16 v0, v16

    #@14c
    move-object/from16 v1, v17

    #@14e
    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@151
    monitor-exit p0

    #@152
    .line 257
    return-object v12

    #@153
    .line 244
    .end local v15    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v16

    #@154
    monitor-exit p0

    #@155
    throw v16
.end method
