.class public Landroid/content/res/ResourcesImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesImpl$ThemeImpl;
    }
.end annotation


# static fields
.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field private static final LAYOUT_DIR_CONFIG:I

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final XML_BLOCK_CACHE_SIZE:I = 0x4

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedComplexColors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mAccessLock:Ljava/lang/Object;

.field private final mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mAssets:Landroid/content/res/AssetManager;

.field private final mCachedXmlBlockCookies:[I

.field private final mCachedXmlBlockFiles:[Ljava/lang/String;

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Landroid/icu/text/PluralRules;

.field private mPreloading:Z

.field private final mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 73
    const/16 v0, 0x2000

    #@2
    .line 72
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigJavaToNative(I)I

    #@5
    move-result v0

    #@6
    sput v0, Landroid/content/res/ResourcesImpl;->LAYOUT_DIR_CONFIG:I

    #@8
    .line 77
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    sput-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    #@f
    .line 87
    new-instance v0, Landroid/util/LongSparseArray;

    #@11
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@14
    .line 86
    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    #@16
    .line 89
    new-instance v0, Landroid/util/LongSparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@1b
    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    #@1d
    .line 124
    const/4 v0, 0x2

    #@1e
    new-array v0, v0, [Landroid/util/LongSparseArray;

    #@20
    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@22
    .line 125
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@24
    new-instance v1, Landroid/util/LongSparseArray;

    #@26
    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    #@29
    const/4 v2, 0x0

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 126
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@2e
    new-instance v1, Landroid/util/LongSparseArray;

    #@30
    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    #@33
    const/4 v2, 0x1

    #@34
    aput-object v1, v0, v2

    #@36
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 92
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    #@b
    .line 95
    new-instance v0, Landroid/content/res/Configuration;

    #@d
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@10
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    #@12
    .line 96
    new-instance v0, Landroid/content/res/DrawableCache;

    #@14
    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    #@17
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    #@19
    .line 97
    new-instance v0, Landroid/content/res/DrawableCache;

    #@1b
    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    #@20
    .line 99
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@22
    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    #@25
    .line 98
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@27
    .line 101
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@29
    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    #@2c
    .line 100
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@2e
    .line 103
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@30
    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    #@33
    .line 102
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@35
    .line 109
    const/4 v0, -0x1

    #@36
    iput v0, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    #@38
    .line 110
    new-array v0, v1, [I

    #@3a
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    #@3c
    .line 111
    new-array v0, v1, [Ljava/lang/String;

    #@3e
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    #@40
    .line 112
    new-array v0, v1, [Landroid/content/res/XmlBlock;

    #@42
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@44
    .line 116
    new-instance v0, Landroid/util/DisplayMetrics;

    #@46
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@49
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@4b
    .line 121
    new-instance v0, Landroid/content/res/Configuration;

    #@4d
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@50
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@52
    .line 142
    iput-object p1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@54
    .line 143
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@56
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@59
    .line 144
    iput-object p4, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@5b
    .line 145
    invoke-virtual {p4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@62
    .line 146
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@64
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()[Landroid/content/res/StringBlock;

    #@67
    .line 141
    return-void
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 482
    const/16 v3, 0x2d

    #@2
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v2

    #@6
    .line 486
    .local v2, "separator":I
    const/4 v3, -0x1

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 487
    move-object v0, p0

    #@a
    .line 488
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@d
    .line 494
    .local v1, "remainder":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-static {v0}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    return-object v3

    #@23
    .line 490
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@24
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 491
    .restart local v0    # "language":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .restart local v1    # "remainder":Ljava/lang/String;
    goto :goto_0
.end method

.method private static attrForQuantityCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "quantityCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    const-string/jumbo v0, "zero"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 275
    const v0, 0x1000005

    #@c
    return v0

    #@d
    .line 274
    :cond_0
    const-string/jumbo v0, "one"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 276
    const v0, 0x1000006

    #@19
    return v0

    #@1a
    .line 274
    :cond_1
    const-string/jumbo v0, "two"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 277
    const v0, 0x1000007

    #@26
    return v0

    #@27
    .line 274
    :cond_2
    const-string/jumbo v0, "few"

    #@2a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 278
    const v0, 0x1000008

    #@33
    return v0

    #@34
    .line 274
    :cond_3
    const-string/jumbo v0, "many"

    #@37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_4

    #@3d
    .line 279
    const v0, 0x1000009

    #@40
    return v0

    #@41
    .line 280
    :cond_4
    const v0, 0x1000004

    #@44
    return v0
.end method

.method private cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "isColorDrawable"    # Z
    .param p3, "caches"    # Landroid/content/res/DrawableCache;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .param p6, "key"    # J
    .param p8, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 614
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@3
    move-result-object v5

    #@4
    .line 615
    .local v5, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v5, :cond_0

    #@6
    .line 616
    return-void

    #@7
    .line 619
    :cond_0
    iget-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    #@9
    if-eqz v1, :cond_4

    #@b
    .line 620
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    #@e
    move-result v0

    #@f
    .line 621
    .local v0, "changingConfigs":I
    if-eqz p2, :cond_2

    #@11
    .line 622
    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    #@13
    const-string/jumbo v2, "drawable"

    #@16
    const/4 v3, 0x0

    #@17
    invoke-direct {p0, v0, v3, v1, v2}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 623
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    #@1f
    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@22
    .line 613
    .end local v0    # "changingConfigs":I
    :cond_1
    :goto_0
    return-void

    #@23
    .line 627
    .restart local v0    # "changingConfigs":I
    :cond_2
    sget v1, Landroid/content/res/ResourcesImpl;->LAYOUT_DIR_CONFIG:I

    #@25
    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    #@27
    const-string/jumbo v3, "drawable"

    #@2a
    .line 626
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 628
    sget v1, Landroid/content/res/ResourcesImpl;->LAYOUT_DIR_CONFIG:I

    #@32
    and-int/2addr v1, v0

    #@33
    if-nez v1, :cond_3

    #@35
    .line 631
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@37
    const/4 v2, 0x0

    #@38
    aget-object v1, v1, v2

    #@3a
    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@3d
    .line 632
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@3f
    const/4 v2, 0x1

    #@40
    aget-object v1, v1, v2

    #@42
    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@45
    goto :goto_0

    #@46
    .line 635
    :cond_3
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@48
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@4a
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@4d
    move-result v2

    #@4e
    aget-object v1, v1, v2

    #@50
    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@53
    goto :goto_0

    #@54
    .line 640
    .end local v0    # "changingConfigs":I
    :cond_4
    iget-object v7, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    #@56
    monitor-enter v7

    #@57
    move-object v1, p3

    #@58
    move-wide v2, p6

    #@59
    move-object v4, p4

    #@5a
    move v6, p5

    #@5b
    .line 641
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    monitor-exit v7

    #@5f
    goto :goto_0

    #@60
    .line 640
    :catchall_0
    move-exception v1

    #@61
    monitor-exit v7

    #@62
    throw v1
.end method

.method private getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "key"    # J

    #@0
    .prologue
    .line 849
    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    #@2
    invoke-virtual {v2, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/content/res/ConstantState;

    #@8
    .line 850
    .local v1, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v1, :cond_0

    #@a
    .line 851
    invoke-virtual {v1}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/content/res/ColorStateList;

    #@10
    return-object v2

    #@11
    .line 854
    :cond_0
    iget v2, p1, Landroid/util/TypedValue;->data:I

    #@13
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@16
    move-result-object v0

    #@17
    .line 856
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v2, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 857
    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    #@1d
    iget v3, p1, Landroid/util/TypedValue;->resourceId:I

    #@1f
    .line 858
    const-string/jumbo v4, "color"

    #@22
    .line 857
    const/4 v5, 0x0

    #@23
    invoke-direct {p0, v2, v5, v3, v4}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 859
    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    #@2b
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, p2, p3, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@32
    .line 863
    :cond_1
    return-object v0
.end method

.method private getPluralRule()Landroid/icu/text/PluralRules;
    .locals 3

    #@0
    .prologue
    .line 176
    sget-object v1, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 178
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@9
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@c
    move-result-object v0

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    #@18
    .line 180
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    return-object v0

    #@1c
    .line 176
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 11
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 878
    iget-object v8, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@2
    if-nez v8, :cond_0

    #@4
    .line 879
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@6
    .line 880
    new-instance v9, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v10, "Can\'t convert to ComplexColor: type=0x"

    #@e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v9

    #@12
    iget v10, p2, Landroid/util/TypedValue;->type:I

    #@14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    .line 879
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v8

    #@20
    .line 883
    :cond_0
    iget-object v8, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@22
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 900
    .local v3, "file":Ljava/lang/String;
    const/4 v1, 0x0

    #@27
    .line 902
    .local v1, "complexColor":Landroid/content/res/ComplexColor;
    const-wide/16 v8, 0x2000

    #@29
    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2c
    .line 903
    const-string/jumbo v8, ".xml"

    #@2f
    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_6

    #@35
    .line 906
    :try_start_0
    iget v8, p2, Landroid/util/TypedValue;->assetCookie:I

    #@37
    const-string/jumbo v9, "ComplexColor"

    #@3a
    .line 905
    invoke-virtual {p0, v3, p3, v8, v9}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@3d
    move-result-object v5

    #@3e
    .line 908
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@41
    move-result-object v0

    #@42
    .line 910
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    #@45
    move-result v7

    #@46
    .local v7, "type":I
    const/4 v8, 0x2

    #@47
    if-eq v7, v8, :cond_2

    #@49
    .line 911
    const/4 v8, 0x1

    #@4a
    if-ne v7, v8, :cond_1

    #@4c
    .line 914
    :cond_2
    const/4 v8, 0x2

    #@4d
    if-eq v7, v8, :cond_3

    #@4f
    .line 915
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    #@51
    const-string/jumbo v9, "No start tag found"

    #@54
    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@57
    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 925
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "complexColor":Landroid/content/res/ComplexColor;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "type":I
    :catch_0
    move-exception v2

    #@59
    .line 926
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v8, 0x2000

    #@5b
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@5e
    .line 927
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    #@60
    .line 928
    new-instance v8, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v9, "File "

    #@68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    const-string/jumbo v9, " from ComplexColor resource ID #0x"

    #@73
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v8

    #@77
    .line 929
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    .line 928
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    .line 927
    invoke-direct {v6, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@86
    .line 930
    .local v6, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@89
    .line 931
    throw v6

    #@8a
    .line 918
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v1    # "complexColor":Landroid/content/res/ComplexColor;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "type":I
    :cond_3
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    .line 919
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v8, "gradient"

    #@91
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v8

    #@95
    if-eqz v8, :cond_5

    #@97
    .line 920
    invoke-static {p1, v5, v0, p4}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    #@9a
    move-result-object v1

    #@9b
    .line 924
    .end local v1    # "complexColor":Landroid/content/res/ComplexColor;
    :cond_4
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@9e
    .line 939
    const-wide/16 v8, 0x2000

    #@a0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@a3
    .line 941
    return-object v1

    #@a4
    .line 921
    .restart local v1    # "complexColor":Landroid/content/res/ComplexColor;
    :cond_5
    :try_start_2
    const-string/jumbo v8, "selector"

    #@a7
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v8

    #@ab
    if-eqz v8, :cond_4

    #@ad
    .line 922
    invoke-static {p1, v5, v0, p4}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@b0
    move-result-object v1

    #@b1
    .local v1, "complexColor":Landroid/content/res/ComplexColor;
    goto :goto_0

    #@b2
    .line 934
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "type":I
    .local v1, "complexColor":Landroid/content/res/ComplexColor;
    :cond_6
    const-wide/16 v8, 0x2000

    #@b4
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@b7
    .line 935
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    #@b9
    .line 936
    new-instance v9, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v10, "File "

    #@c1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v9

    #@c5
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v9

    #@c9
    const-string/jumbo v10, " from drawable resource ID #0x"

    #@cc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v9

    #@d0
    .line 937
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d3
    move-result-object v10

    #@d4
    .line 936
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v9

    #@d8
    .line 937
    const-string/jumbo v10, ": .xml extension required"

    #@db
    .line 936
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v9

    #@df
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v9

    #@e3
    .line 935
    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@e6
    throw v8
.end method

.method private loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    .locals 10
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "value"    # Landroid/util/TypedValue;
    .param p4, "id"    # I

    #@0
    .prologue
    .line 742
    iget v3, p3, Landroid/util/TypedValue;->assetCookie:I

    #@2
    int-to-long v6, v3

    #@3
    const/16 v3, 0x20

    #@5
    shl-long/2addr v6, v3

    #@6
    iget v3, p3, Landroid/util/TypedValue;->data:I

    #@8
    int-to-long v8, v3

    #@9
    or-long v4, v6, v8

    #@b
    .line 743
    .local v4, "key":J
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@d
    .line 744
    .local v0, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ComplexColor;>;"
    invoke-virtual {v0, v4, v5, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/content/res/ComplexColor;

    #@13
    .line 745
    .local v1, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v1, :cond_0

    #@15
    .line 746
    return-object v1

    #@16
    .line 750
    :cond_0
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    #@18
    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/content/res/ConstantState;

    #@1e
    .line 752
    .local v2, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v2, :cond_1

    #@20
    .line 753
    invoke-virtual {v2, p1, p2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    .end local v1    # "complexColor":Landroid/content/res/ComplexColor;
    check-cast v1, Landroid/content/res/ComplexColor;

    #@26
    .line 755
    .restart local v1    # "complexColor":Landroid/content/res/ComplexColor;
    :cond_1
    if-nez v1, :cond_2

    #@28
    .line 756
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ResourcesImpl;->loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    #@2b
    move-result-object v1

    #@2c
    .line 759
    :cond_2
    if-eqz v1, :cond_3

    #@2e
    .line 760
    iget v3, p3, Landroid/util/TypedValue;->changingConfigurations:I

    #@30
    invoke-virtual {v1, v3}, Landroid/content/res/ComplexColor;->setBaseChangingConfigurations(I)V

    #@33
    .line 762
    iget-boolean v3, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    #@35
    if-eqz v3, :cond_4

    #@37
    .line 763
    invoke-virtual {v1}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    #@3a
    move-result v3

    #@3b
    .line 764
    iget v6, p3, Landroid/util/TypedValue;->resourceId:I

    #@3d
    const-string/jumbo v7, "color"

    #@40
    const/4 v8, 0x0

    #@41
    .line 763
    invoke-direct {p0, v3, v8, v6, v7}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_3

    #@47
    .line 765
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    #@49
    invoke-virtual {v1}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@50
    .line 771
    :cond_3
    :goto_0
    return-object v1

    #@51
    .line 768
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v0, v4, v5, p2, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    #@58
    goto :goto_0
.end method

.method private loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 686
    iget-object v6, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 687
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    #@6
    new-instance v7, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v8, "Resource \""

    #@e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    #@15
    move-result-object v8

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    const-string/jumbo v8, "\" ("

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 688
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    .line 687
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    .line 688
    const-string/jumbo v8, ") is not a Drawable (color or path): "

    #@2c
    .line 687
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v6

    #@3c
    .line 691
    :cond_0
    iget-object v6, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@3e
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 710
    .local v2, "file":Ljava/lang/String;
    const-wide/16 v6, 0x2000

    #@44
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@47
    .line 712
    :try_start_0
    const-string/jumbo v6, ".xml"

    #@4a
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@4d
    move-result v6

    #@4e
    if-eqz v6, :cond_1

    #@50
    .line 714
    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    #@52
    const-string/jumbo v7, "drawable"

    #@55
    .line 713
    invoke-virtual {p0, v2, p3, v6, v7}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@58
    move-result-object v5

    #@59
    .line 715
    .local v5, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p1, v5, p4}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@5c
    move-result-object v0

    #@5d
    .line 716
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 730
    .end local v5    # "rp":Landroid/content/res/XmlResourceParser;
    :goto_0
    const-wide/16 v6, 0x2000

    #@62
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@65
    .line 732
    return-object v0

    #@66
    .line 718
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@68
    .line 719
    iget v7, p2, Landroid/util/TypedValue;->assetCookie:I

    #@6a
    const/4 v8, 0x2

    #@6b
    .line 718
    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    #@6e
    move-result-object v3

    #@6f
    .line 720
    .local v3, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    #@70
    invoke-static {p1, p2, v3, v2, v6}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    #@73
    move-result-object v0

    #@74
    .line 721
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@77
    goto :goto_0

    #@78
    .line 723
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@79
    .line 724
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v6, 0x2000

    #@7b
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@7e
    .line 725
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    #@80
    .line 726
    new-instance v6, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v7, "File "

    #@88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    const-string/jumbo v7, " from drawable resource ID #0x"

    #@93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v6

    #@97
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v6

    #@a3
    .line 725
    invoke-direct {v4, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@a6
    .line 727
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@a9
    .line 728
    throw v4
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .locals 6
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 652
    const v2, -0x40001001    # -1.9995116f

    #@4
    and-int/2addr v2, p1

    #@5
    .line 653
    not-int v3, p2

    #@6
    .line 652
    and-int/2addr v2, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 656
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    .line 662
    .local v1, "resName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "Resources"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Preloaded "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " resource #0x"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 663
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 664
    const-string/jumbo v4, " ("

    #@32
    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 664
    const-string/jumbo v4, ") that varies with configuration!!"

    #@3d
    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 665
    return v5

    #@49
    .line 657
    .end local v1    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@4a
    .line 658
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "?"

    #@4d
    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_0

    #@4e
    .line 678
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "resName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    #@4f
    return v2
.end method


# virtual methods
.method public calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 451
    if-nez p1, :cond_0

    #@2
    .line 453
    const/4 v1, -0x1

    #@3
    return v1

    #@4
    .line 456
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    #@6
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@9
    .line 457
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@b
    .line 458
    .local v0, "density":I
    if-nez v0, :cond_1

    #@d
    .line 459
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@f
    iget v0, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@11
    .line 462
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@13
    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    #@19
    invoke-virtual {v1, v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@1c
    .line 464
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    #@1e
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 465
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    #@2a
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    #@31
    .line 467
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@33
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    #@35
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@38
    move-result v1

    #@39
    return v1
.end method

.method finishPreloading()V
    .locals 1

    #@0
    .prologue
    .line 1023
    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1024
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    #@7
    .line 1025
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    #@a
    .line 1022
    :cond_0
    return-void
.end method

.method public flushLayoutCache()V
    .locals 6

    #@0
    .prologue
    .line 503
    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@2
    monitor-enter v4

    #@3
    .line 504
    :try_start_0
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    #@5
    const/4 v5, 0x0

    #@6
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([II)V

    #@9
    .line 505
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    #@b
    const/4 v5, 0x0

    #@c
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@f
    .line 507
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@11
    .line 508
    .local v0, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    #@13
    if-ge v1, v3, :cond_1

    #@15
    .line 509
    aget-object v2, v0, v1

    #@17
    .line 510
    .local v2, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    #@19
    .line 511
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    #@1c
    .line 508
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 514
    .end local v2    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_1
    const/4 v3, 0x0

    #@20
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v4

    #@24
    .line 502
    return-void

    #@25
    .line 503
    .end local v0    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@26
    monitor-exit v4

    #@27
    throw v3
.end method

.method getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@2
    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    return-object v0
.end method

.method getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@2
    return-object v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@2
    return-object v0
.end method

.method getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    if-nez p1, :cond_0

    #@2
    .line 214
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "name is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 217
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 218
    :catch_0
    move-exception v0

    #@11
    .line 221
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@13
    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1030
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Landroid/content/res/ResourcesImpl;->getPluralRule()Landroid/icu/text/PluralRules;

    #@3
    move-result-object v1

    #@4
    .line 259
    .local v1, "rule":Landroid/icu/text/PluralRules;
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@6
    .line 260
    int-to-double v4, p2

    #@7
    invoke-virtual {v1, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-static {v3}, Landroid/content/res/ResourcesImpl;->attrForQuantityCode(Ljava/lang/String;)I

    #@e
    move-result v3

    #@f
    .line 259
    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    .line 261
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@15
    .line 262
    return-object v0

    #@16
    .line 264
    :cond_0
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@18
    const v3, 0x1000004

    #@1b
    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    #@1e
    move-result-object v0

    #@1f
    .line 265
    if-eqz v0, :cond_1

    #@21
    .line 266
    return-object v0

    #@22
    .line 268
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Plural resource ID #0x"

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    .line 269
    const-string/jumbo v4, " quantity="

    #@3b
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 270
    const-string/jumbo v4, " item="

    #@46
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 270
    int-to-double v4, p2

    #@4b
    invoke-virtual {v1, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v2
.end method

.method getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 251
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    return-object v0

    #@9
    .line 252
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Unable to find resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method

.method getResourceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 227
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    return-object v0

    #@9
    .line 228
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Unable to find resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method

.method getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 235
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    return-object v0

    #@9
    .line 236
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Unable to find resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method

.method getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 243
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    return-object v0

    #@9
    .line 244
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Unable to find resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method

.method getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeConfigurations()[Landroid/content/res/Configuration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@2
    return-object v0
.end method

.method getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    #@6
    move-result v0

    #@7
    .line 187
    .local v0, "found":Z
    if-eqz v0, :cond_0

    #@9
    .line 188
    return-void

    #@a
    .line 190
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Resource ID #0x"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1
.end method

.method getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    const-string/jumbo v1, "string"

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 205
    .local v0, "id":I
    if-eqz v0, :cond_0

    #@a
    .line 206
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@d
    .line 207
    return-void

    #@e
    .line 209
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "String resource name "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1
.end method

.method getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    #@5
    move-result v0

    #@6
    .line 196
    .local v0, "found":Z
    if-eqz v0, :cond_0

    #@8
    .line 197
    return-void

    #@9
    .line 199
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method

.method loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 827
    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    #@2
    int-to-long v4, v1

    #@3
    const/16 v1, 0x20

    #@5
    shl-long/2addr v4, v1

    #@6
    iget v1, p2, Landroid/util/TypedValue;->data:I

    #@8
    int-to-long v6, v1

    #@9
    or-long v2, v4, v6

    #@b
    .line 830
    .local v2, "key":J
    iget v1, p2, Landroid/util/TypedValue;->type:I

    #@d
    const/16 v4, 0x1c

    #@f
    if-lt v1, v4, :cond_0

    #@11
    .line 831
    iget v1, p2, Landroid/util/TypedValue;->type:I

    #@13
    const/16 v4, 0x1f

    #@15
    if-gt v1, v4, :cond_0

    #@17
    .line 832
    invoke-direct {p0, p2, v2, v3}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 835
    :cond_0
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    #@1f
    move-result-object v0

    #@20
    .line 836
    .local v0, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v0, :cond_1

    #@22
    instance-of v1, v0, Landroid/content/res/ColorStateList;

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 837
    check-cast v0, Landroid/content/res/ColorStateList;

    #@28
    .end local v0    # "complexColor":Landroid/content/res/ComplexColor;
    return-object v0

    #@29
    .line 840
    .restart local v0    # "complexColor":Landroid/content/res/ComplexColor;
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@2b
    .line 841
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Can\'t find ColorStateList from drawable resource ID #0x"

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 842
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 841
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 840
    invoke-direct {v1, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@46
    throw v1
.end method

.method loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 10
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 785
    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    #@2
    int-to-long v6, v6

    #@3
    const/16 v8, 0x20

    #@5
    shl-long/2addr v6, v8

    #@6
    iget v8, p2, Landroid/util/TypedValue;->data:I

    #@8
    int-to-long v8, v8

    #@9
    or-long v4, v6, v8

    #@b
    .line 788
    .local v4, "key":J
    iget v6, p2, Landroid/util/TypedValue;->type:I

    #@d
    const/16 v7, 0x1c

    #@f
    if-lt v6, v7, :cond_0

    #@11
    .line 789
    iget v6, p2, Landroid/util/TypedValue;->type:I

    #@13
    const/16 v7, 0x1f

    #@15
    if-gt v6, v7, :cond_0

    #@17
    .line 790
    invoke-direct {p0, p2, v4, v5}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    #@1a
    move-result-object v6

    #@1b
    return-object v6

    #@1c
    .line 793
    :cond_0
    iget-object v6, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@1e
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 796
    .local v2, "file":Ljava/lang/String;
    const-string/jumbo v6, ".xml"

    #@25
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_1

    #@2b
    .line 798
    :try_start_0
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result-object v0

    #@2f
    .line 812
    .local v0, "complexColor":Landroid/content/res/ComplexColor;
    return-object v0

    #@30
    .line 799
    .end local v0    # "complexColor":Landroid/content/res/ComplexColor;
    :catch_0
    move-exception v1

    #@31
    .line 800
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@33
    .line 801
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "File "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    const-string/jumbo v7, " from complex color resource ID #0x"

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 802
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    .line 801
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    .line 800
    invoke-direct {v3, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@59
    .line 803
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@5c
    .line 804
    throw v3

    #@5d
    .line 807
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    #@5f
    .line 808
    new-instance v7, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v8, "File "

    #@67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    const-string/jumbo v8, " from drawable resource ID #0x"

    #@72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v7

    #@76
    .line 809
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@79
    move-result-object v8

    #@7a
    .line 808
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    .line 809
    const-string/jumbo v8, ": .xml extension required"

    #@81
    .line 808
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    .line 807
    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v6
.end method

.method loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    :try_start_0
    move-object/from16 v0, p2

    #@2
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@4
    const/16 v5, 0x1c

    #@6
    if-lt v4, v5, :cond_0

    #@8
    .line 536
    move-object/from16 v0, p2

    #@a
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@c
    const/16 v5, 0x1f

    #@e
    if-gt v4, v5, :cond_0

    #@10
    .line 537
    const/4 v6, 0x1

    #@11
    .line 538
    .local v6, "isColorDrawable":Z
    move-object/from16 v0, p0

    #@13
    iget-object v7, v0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    #@15
    .line 539
    .local v7, "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p2

    #@17
    iget v4, v0, Landroid/util/TypedValue;->data:I

    #@19
    int-to-long v10, v4

    #@1a
    .line 549
    .local v10, "key":J
    :goto_0
    move-object/from16 v0, p0

    #@1c
    iget-boolean v4, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    #@1e
    if-nez v4, :cond_1

    #@20
    if-eqz p5, :cond_1

    #@22
    .line 550
    move-object/from16 v0, p1

    #@24
    move-object/from16 v1, p4

    #@26
    invoke-virtual {v7, v10, v11, v0, v1}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v13

    #@2a
    .line 551
    .local v13, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_1

    #@2c
    .line 552
    return-object v13

    #@2d
    .line 541
    .end local v6    # "isColorDrawable":Z
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v10    # "key":J
    .end local v13    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v6, 0x0

    #@2e
    .line 542
    .restart local v6    # "isColorDrawable":Z
    move-object/from16 v0, p0

    #@30
    iget-object v7, v0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    #@32
    .line 543
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p2

    #@34
    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    #@36
    int-to-long v4, v4

    #@37
    const/16 v8, 0x20

    #@39
    shl-long/2addr v4, v8

    #@3a
    move-object/from16 v0, p2

    #@3c
    iget v8, v0, Landroid/util/TypedValue;->data:I

    #@3e
    int-to-long v0, v8

    #@3f
    move-wide/from16 v20, v0

    #@41
    or-long v10, v4, v20

    #@43
    .restart local v10    # "key":J
    goto :goto_0

    #@44
    .line 559
    :cond_1
    if-eqz v6, :cond_4

    #@46
    .line 560
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    #@48
    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@4b
    move-result-object v14

    #@4c
    check-cast v14, Landroid/graphics/drawable/Drawable$ConstantState;

    #@4e
    .line 566
    .local v14, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    if-eqz v14, :cond_5

    #@50
    .line 567
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@55
    move-result-object v12

    #@56
    .line 577
    .local v12, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v12, :cond_7

    #@58
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@5b
    move-result v9

    #@5c
    .line 578
    .local v9, "canApplyTheme":Z
    :goto_3
    if-eqz v9, :cond_2

    #@5e
    if-eqz p4, :cond_2

    #@60
    .line 579
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@63
    move-result-object v12

    #@64
    .line 580
    move-object/from16 v0, p4

    #@66
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@69
    .line 581
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@6c
    .line 587
    :cond_2
    if-eqz v12, :cond_3

    #@6e
    if-eqz p5, :cond_3

    #@70
    .line 588
    move-object/from16 v0, p2

    #@72
    iget v4, v0, Landroid/util/TypedValue;->changingConfigurations:I

    #@74
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    #@77
    move-object/from16 v4, p0

    #@79
    move-object/from16 v5, p2

    #@7b
    move-object/from16 v8, p4

    #@7d
    .line 589
    invoke-direct/range {v4 .. v12}, Landroid/content/res/ResourcesImpl;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    #@80
    .line 592
    :cond_3
    return-object v12

    #@81
    .line 562
    .end local v9    # "canApplyTheme":Z
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v14    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_4
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@83
    move-object/from16 v0, p0

    #@85
    iget-object v5, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@87
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@8a
    move-result v5

    #@8b
    aget-object v4, v4, v5

    #@8d
    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@90
    move-result-object v14

    #@91
    check-cast v14, Landroid/graphics/drawable/Drawable$ConstantState;

    #@93
    .restart local v14    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_1

    #@94
    .line 568
    :cond_5
    if-eqz v6, :cond_6

    #@96
    .line 569
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    #@98
    move-object/from16 v0, p2

    #@9a
    iget v4, v0, Landroid/util/TypedValue;->data:I

    #@9c
    invoke-direct {v12, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@9f
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    #@a0
    .line 571
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v4, 0x0

    #@a1
    move-object/from16 v0, p0

    #@a3
    move-object/from16 v1, p1

    #@a5
    move-object/from16 v2, p2

    #@a7
    move/from16 v3, p3

    #@a9
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ac
    move-result-object v12

    #@ad
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    #@ae
    .line 577
    :cond_7
    const/4 v9, 0x0

    #@af
    goto :goto_3

    #@b0
    .line 593
    .end local v6    # "isColorDrawable":Z
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v10    # "key":J
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v14    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_0
    move-exception v15

    #@b1
    .line 596
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    #@b3
    move/from16 v1, p3

    #@b5
    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@b8
    move-result-object v17

    #@b9
    .line 605
    .local v17, "name":Ljava/lang/String;
    :goto_4
    new-instance v18, Landroid/content/res/Resources$NotFoundException;

    #@bb
    new-instance v4, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v5, "Drawable "

    #@c3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    move-object/from16 v0, v17

    #@c9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v4

    #@cd
    .line 606
    const-string/jumbo v5, " with resource ID #0x"

    #@d0
    .line 605
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    .line 606
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    .line 605
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v4

    #@dc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v4

    #@e0
    move-object/from16 v0, v18

    #@e2
    invoke-direct {v0, v4, v15}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@e5
    .line 607
    .local v18, "nfe":Landroid/content/res/Resources$NotFoundException;
    const/4 v4, 0x0

    #@e6
    new-array v4, v4, [Ljava/lang/StackTraceElement;

    #@e8
    move-object/from16 v0, v18

    #@ea
    invoke-virtual {v0, v4}, Landroid/content/res/Resources$NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@ed
    .line 608
    throw v18

    #@ee
    .line 597
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v16

    #@ef
    .line 598
    .local v16, "e2":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v17, "(missing name)"

    #@f2
    .restart local v17    # "name":Ljava/lang/String;
    goto :goto_4
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 14
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 958
    if-eqz p2, :cond_4

    #@2
    .line 960
    :try_start_0
    iget-object v12, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@4
    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 961
    :try_start_1
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    #@7
    .line 962
    .local v2, "cachedXmlBlockCookies":[I
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    #@9
    .line 963
    .local v3, "cachedXmlBlockFiles":[Ljava/lang/String;
    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@b
    .line 965
    .local v4, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    array-length v7, v3

    #@c
    .line 966
    .local v7, "num":I
    const/4 v6, 0x0

    #@d
    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    #@f
    .line 967
    aget v11, v2, v6

    #@11
    move/from16 v0, p3

    #@13
    if-ne v11, v0, :cond_0

    #@15
    aget-object v11, v3, v6

    #@17
    if-eqz v11, :cond_0

    #@19
    .line 968
    aget-object v11, v3, v6

    #@1b
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v11

    #@1f
    .line 967
    if-eqz v11, :cond_0

    #@21
    .line 969
    aget-object v11, v4, v6

    #@23
    invoke-virtual {v11}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result-object v11

    #@27
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@28
    return-object v11

    #@29
    .line 966
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 975
    :cond_1
    :try_start_3
    iget-object v11, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2e
    move/from16 v0, p3

    #@30
    invoke-virtual {v11, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    #@33
    move-result-object v1

    #@34
    .line 976
    .local v1, "block":Landroid/content/res/XmlBlock;
    if-eqz v1, :cond_3

    #@36
    .line 977
    iget v11, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    #@38
    add-int/lit8 v11, v11, 0x1

    #@3a
    rem-int v9, v11, v7

    #@3c
    .line 978
    .local v9, "pos":I
    iput v9, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    #@3e
    .line 979
    aget-object v8, v4, v9

    #@40
    .line 980
    .local v8, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v8, :cond_2

    #@42
    .line 981
    invoke-virtual {v8}, Landroid/content/res/XmlBlock;->close()V

    #@45
    .line 983
    :cond_2
    aput p3, v2, v9

    #@47
    .line 984
    aput-object p1, v3, v9

    #@49
    .line 985
    aput-object v1, v4, v9

    #@4b
    .line 986
    invoke-virtual {v1}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4e
    move-result-object v11

    #@4f
    :try_start_4
    monitor-exit v12

    #@50
    return-object v11

    #@51
    .end local v8    # "oldBlock":Landroid/content/res/XmlBlock;
    .end local v9    # "pos":I
    :cond_3
    monitor-exit v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@52
    .line 997
    .end local v1    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "cachedXmlBlockCookies":[I
    .end local v3    # "cachedXmlBlockFiles":[Ljava/lang/String;
    .end local v4    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    .end local v6    # "i":I
    .end local v7    # "num":I
    :cond_4
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    #@54
    new-instance v12, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v13, "File "

    #@5c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v12

    #@60
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v12

    #@64
    const-string/jumbo v13, " from xml type "

    #@67
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v12

    #@6b
    move-object/from16 v0, p4

    #@6d
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v12

    #@71
    const-string/jumbo v13, " resource ID #0x"

    #@74
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v12

    #@78
    .line 998
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7b
    move-result-object v13

    #@7c
    .line 997
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v12

    #@80
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v12

    #@84
    invoke-direct {v11, v12}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@87
    throw v11

    #@88
    .line 960
    :catchall_0
    move-exception v11

    #@89
    :try_start_5
    monitor-exit v12

    #@8a
    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@8b
    .line 989
    :catch_0
    move-exception v5

    #@8c
    .line 990
    .local v5, "e":Ljava/lang/Exception;
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    #@8e
    new-instance v11, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v12, "File "

    #@96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v11

    #@9a
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v11

    #@9e
    .line 991
    const-string/jumbo v12, " from xml type "

    #@a1
    .line 990
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v11

    #@a5
    move-object/from16 v0, p4

    #@a7
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v11

    #@ab
    .line 991
    const-string/jumbo v12, " resource ID #0x"

    #@ae
    .line 990
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v11

    #@b2
    .line 991
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b5
    move-result-object v12

    #@b6
    .line 990
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v11

    #@ba
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v11

    #@be
    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@c1
    .line 992
    .local v10, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v10, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@c4
    .line 993
    throw v10
.end method

.method newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 1

    #@0
    .prologue
    .line 1034
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    #@5
    return-object v0
.end method

.method newThemeImpl(Landroid/content/res/Resources$ThemeKey;)Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 2
    .param p1, "key"    # Landroid/content/res/Resources$ThemeKey;

    #@0
    .prologue
    .line 1041
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    #@5
    .line 1042
    .local v0, "impl":Landroid/content/res/ResourcesImpl$ThemeImpl;
    invoke-static {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->-get0(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    #@c
    .line 1043
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    #@f
    .line 1044
    return-object v0
.end method

.method openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    const/4 v2, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@4
    .line 300
    :try_start_0
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@6
    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    #@8
    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@a
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 301
    const/4 v5, 0x2

    #@f
    .line 300
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 302
    :catch_0
    move-exception v0

    #@15
    .line 304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "File "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 305
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@25
    if-nez v2, :cond_0

    #@27
    const-string/jumbo v2, "(null)"

    #@2a
    .line 304
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 306
    const-string/jumbo v3, " from drawable resource ID #0x"

    #@31
    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@44
    .line 307
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@47
    .line 308
    throw v1

    #@48
    .line 305
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@4a
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    goto :goto_0
.end method

.method openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "id"    # I
    .param p2, "tempValue"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@4
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@6
    iget v2, p2, Landroid/util/TypedValue;->assetCookie:I

    #@8
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@a
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 290
    :catch_0
    move-exception v0

    #@14
    .line 291
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "File "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@24
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " from drawable "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 292
    const-string/jumbo v3, "resource ID #0x"

    #@36
    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {v1, v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@49
    throw v1
.end method

.method public final startPreloading()V
    .locals 4

    #@0
    .prologue
    .line 1007
    sget-object v1, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1008
    :try_start_0
    sget-boolean v0, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1009
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Resources already preloaded"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1007
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 1011
    :cond_0
    const/4 v0, 0x1

    #@14
    :try_start_1
    sput-boolean v0, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    #@16
    .line 1012
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    #@19
    .line 1013
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@1b
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@1d
    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    #@1f
    .line 1014
    const/4 v0, 0x0

    #@20
    const/4 v2, 0x0

    #@21
    const/4 v3, 0x0

    #@22
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 1006
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 25
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 322
    const-string/jumbo v2, "ResourcesImpl#updateConfiguration"

    #@3
    const-wide/16 v4, 0x2000

    #@5
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 324
    :try_start_0
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    #@c
    move-object/from16 v24, v0

    #@e
    monitor-enter v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 332
    if-eqz p3, :cond_0

    #@11
    .line 333
    :try_start_1
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@15
    move-object/from16 v0, p3

    #@17
    invoke-virtual {v2, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@1a
    .line 335
    :cond_0
    if-eqz p2, :cond_1

    #@1c
    .line 336
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@20
    move-object/from16 v0, p2

    #@22
    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    #@25
    .line 347
    :cond_1
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@29
    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@2c
    move-result-object v2

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@31
    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    #@34
    .line 349
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    #@37
    move-result v22

    #@38
    .line 352
    .local v22, "configChanges":I
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@3c
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@3f
    move-result-object v23

    #@40
    .line 353
    .local v23, "locales":Landroid/os/LocaleList;
    invoke-virtual/range {v23 .. v23}, Landroid/os/LocaleList;->isEmpty()Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_2

    #@46
    .line 354
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    #@49
    move-result-object v23

    #@4a
    .line 355
    move-object/from16 v0, p0

    #@4c
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@4e
    move-object/from16 v0, v23

    #@50
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    #@53
    .line 358
    :cond_2
    and-int/lit8 v2, v22, 0x4

    #@55
    if-eqz v2, :cond_4

    #@57
    .line 359
    invoke-virtual/range {v23 .. v23}, Landroid/os/LocaleList;->size()I

    #@5a
    move-result v2

    #@5b
    const/4 v3, 0x1

    #@5c
    if-le v2, v3, :cond_4

    #@5e
    .line 362
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@62
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    #@65
    move-result-object v20

    #@66
    .line 363
    .local v20, "availableLocales":[Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_3

    #@6c
    .line 365
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@70
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    #@73
    move-result-object v20

    #@74
    .line 366
    invoke-static/range {v20 .. v20}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_3

    #@7a
    .line 367
    const/16 v20, 0x0

    #@7c
    .line 371
    .end local v20    # "availableLocales":[Ljava/lang/String;
    :cond_3
    if-eqz v20, :cond_4

    #@7e
    .line 372
    move-object/from16 v0, v23

    #@80
    move-object/from16 v1, v20

    #@82
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;

    #@85
    move-result-object v21

    #@86
    .line 374
    .local v21, "bestLocale":Ljava/util/Locale;
    if-eqz v21, :cond_4

    #@88
    const/4 v2, 0x0

    #@89
    move-object/from16 v0, v23

    #@8b
    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@8e
    move-result-object v2

    #@8f
    move-object/from16 v0, v21

    #@91
    if-eq v0, v2, :cond_4

    #@93
    .line 375
    move-object/from16 v0, p0

    #@95
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@97
    new-instance v3, Landroid/os/LocaleList;

    #@99
    move-object/from16 v0, v21

    #@9b
    move-object/from16 v1, v23

    #@9d
    invoke-direct {v3, v0, v1}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    #@a0
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    #@a3
    .line 381
    .end local v21    # "bestLocale":Ljava/util/Locale;
    :cond_4
    move-object/from16 v0, p0

    #@a5
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@a7
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    #@a9
    if-eqz v2, :cond_5

    #@ab
    .line 382
    move-object/from16 v0, p0

    #@ad
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@b3
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    #@b5
    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    #@b7
    .line 383
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@bb
    .line 384
    move-object/from16 v0, p0

    #@bd
    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@bf
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    #@c1
    int-to-float v3, v3

    #@c2
    const v4, 0x3bcccccd    # 0.00625f

    #@c5
    mul-float/2addr v3, v4

    #@c6
    .line 383
    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    #@c8
    .line 386
    :cond_5
    move-object/from16 v0, p0

    #@ca
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@d0
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v4, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@d6
    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    #@d8
    mul-float/2addr v3, v4

    #@d9
    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@db
    .line 389
    move-object/from16 v0, p0

    #@dd
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@df
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@e5
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    #@e7
    if-lt v2, v3, :cond_7

    #@e9
    .line 390
    move-object/from16 v0, p0

    #@eb
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@ed
    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@ef
    .line 391
    .local v12, "width":I
    move-object/from16 v0, p0

    #@f1
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@f3
    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@f5
    .line 400
    .local v13, "height":I
    :goto_0
    move-object/from16 v0, p0

    #@f7
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@f9
    iget v2, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    #@fb
    const/4 v3, 0x1

    #@fc
    if-ne v2, v3, :cond_8

    #@fe
    .line 401
    move-object/from16 v0, p0

    #@100
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@102
    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@104
    .line 402
    const/4 v3, 0x2

    #@105
    .line 401
    if-ne v2, v3, :cond_8

    #@107
    .line 403
    const/4 v10, 0x3

    #@108
    .line 408
    .local v10, "keyboardHidden":I
    :goto_1
    move-object/from16 v0, p0

    #@10a
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@110
    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    #@112
    move-object/from16 v0, p0

    #@114
    iget-object v4, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@116
    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    #@118
    .line 409
    move-object/from16 v0, p0

    #@11a
    iget-object v5, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@11c
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@11f
    move-result-object v5

    #@120
    const/4 v6, 0x0

    #@121
    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@124
    move-result-object v5

    #@125
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@128
    move-result-object v5

    #@129
    invoke-static {v5}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    #@12c
    move-result-object v5

    #@12d
    .line 410
    move-object/from16 v0, p0

    #@12f
    iget-object v6, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@131
    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    #@133
    .line 411
    move-object/from16 v0, p0

    #@135
    iget-object v7, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@137
    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    #@139
    .line 412
    move-object/from16 v0, p0

    #@13b
    iget-object v8, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@13d
    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    #@13f
    move-object/from16 v0, p0

    #@141
    iget-object v9, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@143
    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    #@145
    .line 413
    move-object/from16 v0, p0

    #@147
    iget-object v11, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@149
    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    #@14b
    .line 414
    move-object/from16 v0, p0

    #@14d
    iget-object v14, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@14f
    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@151
    .line 415
    move-object/from16 v0, p0

    #@153
    iget-object v15, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@155
    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    #@157
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@15b
    move-object/from16 v16, v0

    #@15d
    move-object/from16 v0, v16

    #@15f
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@161
    move/from16 v16, v0

    #@163
    .line 416
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@167
    move-object/from16 v17, v0

    #@169
    move-object/from16 v0, v17

    #@16b
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@16d
    move/from16 v17, v0

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@173
    move-object/from16 v18, v0

    #@175
    move-object/from16 v0, v18

    #@177
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    #@179
    move/from16 v18, v0

    #@17b
    .line 417
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@17d
    .line 408
    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    #@180
    .line 425
    move-object/from16 v0, p0

    #@182
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    #@184
    move/from16 v0, v22

    #@186
    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    #@189
    .line 426
    move-object/from16 v0, p0

    #@18b
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    #@18d
    move/from16 v0, v22

    #@18f
    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    #@192
    .line 427
    move-object/from16 v0, p0

    #@194
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@196
    move/from16 v0, v22

    #@198
    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    #@19b
    .line 428
    move-object/from16 v0, p0

    #@19d
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@19f
    move/from16 v0, v22

    #@1a1
    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    #@1a4
    .line 429
    move-object/from16 v0, p0

    #@1a6
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@1a8
    move/from16 v0, v22

    #@1aa
    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    #@1ad
    .line 431
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b0
    :try_start_2
    monitor-exit v24

    #@1b1
    .line 433
    sget-object v3, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    #@1b3
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1b4
    .line 434
    :try_start_3
    move-object/from16 v0, p0

    #@1b6
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    #@1b8
    if-eqz v2, :cond_6

    #@1ba
    .line 435
    move-object/from16 v0, p0

    #@1bc
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@1be
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@1c1
    move-result-object v2

    #@1c2
    const/4 v4, 0x0

    #@1c3
    invoke-virtual {v2, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@1c6
    move-result-object v2

    #@1c7
    invoke-static {v2}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    #@1ca
    move-result-object v2

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    iput-object v2, v0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1cf
    :cond_6
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1d0
    .line 439
    const-wide/16 v2, 0x2000

    #@1d2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@1d5
    .line 321
    return-void

    #@1d6
    .line 394
    .end local v10    # "keyboardHidden":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    #@1d8
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@1da
    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1dc
    .line 396
    .restart local v12    # "width":I
    move-object/from16 v0, p0

    #@1de
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    #@1e0
    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1e2
    .restart local v13    # "height":I
    goto/16 :goto_0

    #@1e4
    .line 405
    :cond_8
    move-object/from16 v0, p0

    #@1e6
    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    #@1e8
    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1ea
    .restart local v10    # "keyboardHidden":I
    goto/16 :goto_1

    #@1ec
    .line 324
    .end local v10    # "keyboardHidden":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v22    # "configChanges":I
    .end local v23    # "locales":Landroid/os/LocaleList;
    :catchall_0
    move-exception v2

    #@1ed
    :try_start_6
    monitor-exit v24

    #@1ee
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1ef
    .line 438
    :catchall_1
    move-exception v2

    #@1f0
    .line 439
    const-wide/16 v4, 0x2000

    #@1f2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1f5
    .line 438
    throw v2

    #@1f6
    .line 433
    .restart local v10    # "keyboardHidden":I
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    .restart local v22    # "configChanges":I
    .restart local v23    # "locales":Landroid/os/LocaleList;
    :catchall_2
    move-exception v2

    #@1f7
    :try_start_7
    monitor-exit v3

    #@1f8
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
