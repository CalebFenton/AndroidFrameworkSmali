.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$ThemeKey;
    }
.end annotation


# static fields
.field private static final CACHE_NOT_THEMED:Ljava/lang/String; = ""

.field private static final CACHE_NULL_THEME:Ljava/lang/String; = "null_theme"

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field private static final LAYOUT_DIR_CONFIG:I

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final TRACE_FOR_MISS_PRELOAD:Z

.field private static final TRACE_FOR_PRELOAD:Z

.field static mSystem:Landroid/content/res/Resources;

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

.field private static final sPreloadedColorStateLists:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPreloadedDensity:I

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

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

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

.field private mTmpValue:Landroid/util/TypedValue;

.field final mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 107
    const/16 v0, 0x2000

    #@2
    .line 106
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    #@5
    move-result v0

    #@6
    sput v0, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    #@8
    .line 111
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    sput-object v0, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    #@f
    .line 118
    new-instance v0, Landroid/util/LongSparseArray;

    #@11
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@14
    .line 117
    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    #@16
    .line 120
    new-instance v0, Landroid/util/LongSparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@1b
    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    #@1d
    .line 129
    const/4 v0, 0x0

    #@1e
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    #@20
    .line 162
    const/4 v0, 0x2

    #@21
    new-array v0, v0, [Landroid/util/LongSparseArray;

    #@23
    sput-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@25
    .line 163
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@27
    new-instance v1, Landroid/util/LongSparseArray;

    #@29
    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    #@2c
    const/4 v2, 0x0

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 164
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@31
    new-instance v1, Landroid/util/LongSparseArray;

    #@33
    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    #@36
    const/4 v2, 0x1

    #@37
    aput-object v1, v0, v2

    #@39
    .line 98
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 2848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 126
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@7
    const/4 v1, 0x5

    #@8
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@b
    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    #@d
    .line 135
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@14
    .line 136
    new-instance v0, Landroid/content/res/Configuration;

    #@16
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@19
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@1b
    .line 137
    new-instance v0, Landroid/content/res/DrawableCache;

    #@1d
    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    #@20
    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    #@22
    .line 138
    new-instance v0, Landroid/content/res/DrawableCache;

    #@24
    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    #@27
    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    #@29
    .line 140
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@2b
    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    #@2e
    .line 139
    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@30
    .line 142
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@32
    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    #@35
    .line 141
    iput-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@37
    .line 144
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@39
    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    #@3c
    .line 143
    iput-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@3e
    .line 146
    new-instance v0, Landroid/util/TypedValue;

    #@40
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@43
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@45
    .line 149
    const/4 v0, -0x1

    #@46
    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    #@48
    .line 150
    filled-new-array {v2, v2, v2, v2}, [I

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@4e
    .line 151
    const/4 v0, 0x4

    #@4f
    new-array v0, v0, [Landroid/content/res/XmlBlock;

    #@51
    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@53
    .line 154
    new-instance v0, Landroid/util/DisplayMetrics;

    #@55
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@58
    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@5a
    .line 156
    new-instance v0, Landroid/content/res/Configuration;

    #@5c
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@61
    .line 159
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@63
    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@65
    .line 2849
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    #@68
    move-result-object v0

    #@69
    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@6b
    .line 2853
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@6d
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    #@70
    .line 2854
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@72
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@75
    .line 2855
    invoke-virtual {p0, v3, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@78
    .line 2856
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@7a
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    #@7d
    .line 2848
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 249
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@5
    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 126
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@6
    const/4 v1, 0x5

    #@7
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    #@c
    .line 135
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@13
    .line 136
    new-instance v0, Landroid/content/res/Configuration;

    #@15
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@18
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@1a
    .line 137
    new-instance v0, Landroid/content/res/DrawableCache;

    #@1c
    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    #@1f
    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    #@21
    .line 138
    new-instance v0, Landroid/content/res/DrawableCache;

    #@23
    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    #@26
    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    #@28
    .line 140
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@2a
    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    #@2d
    .line 139
    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@2f
    .line 142
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@31
    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    #@34
    .line 141
    iput-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@36
    .line 144
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    #@38
    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    #@3b
    .line 143
    iput-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@3d
    .line 146
    new-instance v0, Landroid/util/TypedValue;

    #@3f
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@42
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@44
    .line 149
    const/4 v0, -0x1

    #@45
    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    #@47
    .line 150
    filled-new-array {v2, v2, v2, v2}, [I

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@4d
    .line 151
    const/4 v0, 0x4

    #@4e
    new-array v0, v0, [Landroid/content/res/XmlBlock;

    #@50
    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@52
    .line 154
    new-instance v0, Landroid/util/DisplayMetrics;

    #@54
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@57
    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@59
    .line 156
    new-instance v0, Landroid/content/res/Configuration;

    #@5b
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5e
    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@60
    .line 159
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@62
    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@64
    .line 265
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@66
    .line 266
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@68
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@6b
    .line 267
    if-eqz p4, :cond_0

    #@6d
    .line 268
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@6f
    .line 270
    :cond_0
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@72
    .line 271
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    #@75
    .line 264
    return-void
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2103
    const/16 v3, 0x2d

    #@2
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v2

    #@6
    .line 2107
    .local v2, "separator":I
    const/4 v3, -0x1

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 2108
    move-object v0, p0

    #@a
    .line 2109
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@d
    .line 2115
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
    .line 2111
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@24
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 2112
    .restart local v0    # "language":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .restart local v1    # "remainder":Ljava/lang/String;
    goto :goto_0
.end method

.method private static attrForQuantityCode(I)I
    .locals 1
    .param p0, "quantityCode"    # I

    #@0
    .prologue
    .line 363
    packed-switch p0, :pswitch_data_0

    #@3
    .line 369
    const v0, 0x1000004

    #@6
    return v0

    #@7
    .line 364
    :pswitch_0
    const v0, 0x1000005

    #@a
    return v0

    #@b
    .line 365
    :pswitch_1
    const v0, 0x1000006

    #@e
    return v0

    #@f
    .line 366
    :pswitch_2
    const v0, 0x1000007

    #@12
    return v0

    #@13
    .line 367
    :pswitch_3
    const v0, 0x1000008

    #@16
    return v0

    #@17
    .line 368
    :pswitch_4
    const v0, 0x1000009

    #@1a
    return v0

    #@1b
    .line 363
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
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
    .line 2565
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@3
    move-result-object v5

    #@4
    .line 2566
    .local v5, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v5, :cond_0

    #@6
    .line 2567
    return-void

    #@7
    .line 2570
    :cond_0
    iget-boolean v1, p0, Landroid/content/res/Resources;->mPreloading:Z

    #@9
    if-eqz v1, :cond_4

    #@b
    .line 2571
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    #@e
    move-result v0

    #@f
    .line 2572
    .local v0, "changingConfigs":I
    if-eqz p2, :cond_2

    #@11
    .line 2573
    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    #@13
    const-string/jumbo v2, "drawable"

    #@16
    const/4 v3, 0x0

    #@17
    invoke-direct {p0, v0, v3, v1, v2}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 2574
    sget-object v1, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    #@1f
    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@22
    .line 2564
    .end local v0    # "changingConfigs":I
    :cond_1
    :goto_0
    return-void

    #@23
    .line 2578
    .restart local v0    # "changingConfigs":I
    :cond_2
    sget v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    #@25
    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    #@27
    const-string/jumbo v3, "drawable"

    #@2a
    .line 2577
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 2579
    sget v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    #@32
    and-int/2addr v1, v0

    #@33
    if-nez v1, :cond_3

    #@35
    .line 2582
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@37
    const/4 v2, 0x0

    #@38
    aget-object v1, v1, v2

    #@3a
    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@3d
    .line 2583
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@3f
    const/4 v2, 0x1

    #@40
    aget-object v1, v1, v2

    #@42
    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@45
    goto :goto_0

    #@46
    .line 2586
    :cond_3
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@48
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

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
    .line 2591
    .end local v0    # "changingConfigs":I
    :cond_4
    iget-object v7, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

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
    .line 2592
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    monitor-exit v7

    #@5f
    goto :goto_0

    #@60
    .line 2591
    :catchall_0
    move-exception v1

    #@61
    monitor-exit v7

    #@62
    throw v1
.end method

.method private calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2071
    const v0, 0xfffffff

    #@3
    .line 2072
    .local v0, "configChanges":I
    if-eqz p1, :cond_2

    #@5
    .line 2073
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@7
    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@a
    .line 2074
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@c
    .line 2075
    .local v1, "density":I
    if-nez v1, :cond_0

    #@e
    .line 2076
    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@10
    iget v1, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@12
    .line 2079
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@14
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@16
    invoke-virtual {v2, v1, v3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@19
    .line 2081
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@1b
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 2082
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@24
    move-result-object v3

    #@25
    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@27
    .line 2083
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@29
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@2b
    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2d
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    #@30
    .line 2085
    :cond_1
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@32
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    #@34
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@37
    move-result v0

    #@38
    .line 2086
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    #@3b
    move-result v0

    #@3c
    .line 2088
    .end local v1    # "density":I
    :cond_2
    return v0
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .locals 2

    #@0
    .prologue
    .line 354
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 356
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@9
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@b
    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    #@11
    .line 358
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 354
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    #@0
    .prologue
    .line 281
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 282
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    #@5
    .line 283
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    #@7
    .line 284
    new-instance v0, Landroid/content/res/Resources;

    #@9
    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    #@c
    .line 285
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v2

    #@f
    .line 288
    return-object v0

    #@10
    .line 281
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method private loadColorStateListForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const-wide/16 v8, 0x2000

    #@2
    .line 2717
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@4
    if-nez v5, :cond_0

    #@6
    .line 2718
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@8
    .line 2719
    new-instance v6, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v7, "Can\'t convert to color state list: type=0x"

    #@10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v6

    #@14
    iget v7, p1, Landroid/util/TypedValue;->type:I

    #@16
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    .line 2718
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@21
    throw v5

    #@22
    .line 2722
    :cond_0
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@24
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 2741
    .local v2, "file":Ljava/lang/String;
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2b
    .line 2742
    const-string/jumbo v5, ".xml"

    #@2e
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 2745
    :try_start_0
    iget v5, p1, Landroid/util/TypedValue;->assetCookie:I

    #@36
    const-string/jumbo v6, "colorstatelist"

    #@39
    .line 2744
    invoke-virtual {p0, v2, p2, v5, v6}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@3c
    move-result-object v4

    #@3d
    .line 2746
    .local v4, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v4, p3}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@40
    move-result-object v0

    #@41
    .line 2747
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 2762
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@47
    .line 2764
    return-object v0

    #@48
    .line 2748
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v4    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    #@49
    .line 2749
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@4c
    .line 2750
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@4e
    .line 2751
    new-instance v5, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v6, "File "

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    const-string/jumbo v6, " from color state list resource ID #0x"

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    .line 2752
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    .line 2751
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    .line 2750
    invoke-direct {v3, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@74
    .line 2753
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@77
    .line 2754
    throw v3

    #@78
    .line 2757
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@7b
    .line 2758
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    #@7d
    .line 2759
    new-instance v6, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v7, "File "

    #@85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v6

    #@8d
    const-string/jumbo v7, " from drawable resource ID #0x"

    #@90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    .line 2760
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    .line 2759
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    .line 2760
    const-string/jumbo v7, ": .xml extension required"

    #@9f
    .line 2759
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v6

    #@a7
    .line 2758
    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v5
.end method

.method private loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const-wide/16 v10, 0x2000

    #@2
    .line 2601
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@4
    if-nez v6, :cond_0

    #@6
    .line 2602
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    #@8
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v8, "Resource \""

    #@10
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    const-string/jumbo v8, "\" ("

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    .line 2603
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    .line 2602
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    .line 2603
    const-string/jumbo v8, ") is not a Drawable (color or path): "

    #@2e
    .line 2602
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v6

    #@3e
    .line 2606
    :cond_0
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@40
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 2625
    .local v2, "file":Ljava/lang/String;
    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@47
    .line 2627
    :try_start_0
    const-string/jumbo v6, ".xml"

    #@4a
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@4d
    move-result v6

    #@4e
    if-eqz v6, :cond_1

    #@50
    .line 2629
    iget v6, p1, Landroid/util/TypedValue;->assetCookie:I

    #@52
    const-string/jumbo v7, "drawable"

    #@55
    .line 2628
    invoke-virtual {p0, v2, p2, v6, v7}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@58
    move-result-object v5

    #@59
    .line 2630
    .local v5, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v5, p3}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@5c
    move-result-object v0

    #@5d
    .line 2631
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 2645
    .end local v5    # "rp":Landroid/content/res/XmlResourceParser;
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@63
    .line 2647
    return-object v0

    #@64
    .line 2633
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@66
    .line 2634
    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    #@68
    const/4 v8, 0x2

    #@69
    .line 2633
    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    #@6c
    move-result-object v3

    #@6d
    .line 2635
    .local v3, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    #@6e
    invoke-static {p0, p1, v3, v2, v6}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    #@71
    move-result-object v0

    #@72
    .line 2636
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@75
    goto :goto_0

    #@76
    .line 2638
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@77
    .line 2639
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@7a
    .line 2640
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    #@7c
    .line 2641
    new-instance v6, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v7, "File "

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    const-string/jumbo v7, " from drawable resource ID #0x"

    #@8f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@96
    move-result-object v7

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v6

    #@9f
    .line 2640
    invoke-direct {v4, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@a2
    .line 2642
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@a5
    .line 2643
    throw v4
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2842
    if-nez p1, :cond_0

    #@3
    .line 2843
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 2845
    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static resourceHasPackage(I)Z
    .locals 2
    .param p0, "resid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2215
    ushr-int/lit8 v1, p0, 0x18

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static selectDefaultTheme(II)I
    .locals 6
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    #@0
    .prologue
    .line 183
    const v2, 0x1030005

    #@3
    .line 184
    const v3, 0x103006b

    #@6
    .line 185
    const v4, 0x1030128

    #@9
    .line 186
    const v5, 0x103013f

    #@c
    move v0, p0

    #@d
    move v1, p1

    #@e
    .line 182
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .locals 1
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    #@0
    .prologue
    .line 192
    if-eqz p0, :cond_0

    #@2
    .line 193
    return p0

    #@3
    .line 195
    :cond_0
    const/16 v0, 0xb

    #@5
    if-ge p1, v0, :cond_1

    #@7
    .line 196
    return p2

    #@8
    .line 198
    :cond_1
    const/16 v0, 0xe

    #@a
    if-ge p1, v0, :cond_2

    #@c
    .line 199
    return p3

    #@d
    .line 201
    :cond_2
    const/16 v0, 0x2710

    #@f
    if-ge p1, v0, :cond_3

    #@11
    .line 202
    return p4

    #@12
    .line 204
    :cond_3
    return p5
.end method

.method private static stringForQuantityCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "quantityCode"    # I

    #@0
    .prologue
    .line 374
    packed-switch p0, :pswitch_data_0

    #@3
    .line 380
    const-string/jumbo v0, "other"

    #@6
    return-object v0

    #@7
    .line 375
    :pswitch_0
    const-string/jumbo v0, "zero"

    #@a
    return-object v0

    #@b
    .line 376
    :pswitch_1
    const-string/jumbo v0, "one"

    #@e
    return-object v0

    #@f
    .line 377
    :pswitch_2
    const-string/jumbo v0, "two"

    #@12
    return-object v0

    #@13
    .line 378
    :pswitch_3
    const-string/jumbo v0, "few"

    #@16
    return-object v0

    #@17
    .line 379
    :pswitch_4
    const-string/jumbo v0, "many"

    #@1a
    return-object v0

    #@1b
    .line 374
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 2126
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2127
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    #@6
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@9
    .line 2125
    :cond_0
    return-void
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
    .line 2461
    const v2, -0x40001001    # -1.9995116f

    #@4
    and-int/2addr v2, p1

    #@5
    .line 2462
    not-int v3, p2

    #@6
    .line 2461
    and-int/2addr v2, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 2465
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    .line 2471
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
    .line 2472
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 2471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 2473
    const-string/jumbo v4, " ("

    #@32
    .line 2471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 2473
    const-string/jumbo v4, ") that varies with configuration!!"

    #@3d
    .line 2471
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
    .line 2474
    return v5

    #@49
    .line 2466
    .end local v1    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@4a
    .line 2467
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "?"

    #@4d
    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_0

    #@4e
    .line 2487
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "resName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    #@4f
    return v2
.end method


# virtual methods
.method public final finishPreloading()V
    .locals 1

    #@0
    .prologue
    .line 2442
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2443
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    #@7
    .line 2444
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    #@a
    .line 2441
    :cond_0
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 6

    #@0
    .prologue
    .line 2405
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@2
    monitor-enter v4

    #@3
    .line 2407
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@5
    array-length v1, v3

    #@6
    .line 2408
    .local v1, "num":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 2409
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@b
    const/4 v5, 0x0

    #@c
    aput v5, v3, v0

    #@e
    .line 2410
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@10
    aget-object v2, v3, v0

    #@12
    .line 2411
    .local v2, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    #@14
    .line 2412
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    #@17
    .line 2414
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@19
    const/4 v5, 0x0

    #@1a
    aput-object v5, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 2408
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .end local v2    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit v4

    #@20
    .line 2404
    return-void

    #@21
    .line 2405
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1189
    const-string/jumbo v0, "anim"

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
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
    .line 213
    iget-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@2
    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    #@0
    .prologue
    .line 2396
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1072
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 1073
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@7
    .line 1074
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@9
    .line 1075
    new-instance v0, Landroid/util/TypedValue;

    #@b
    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@e
    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@10
    .line 1077
    :cond_0
    const/4 v4, 0x1

    #@11
    invoke-virtual {p0, p1, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@14
    .line 1078
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@16
    const/16 v5, 0x10

    #@18
    if-lt v4, v5, :cond_2

    #@1a
    .line 1079
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@1c
    const/16 v5, 0x1f

    #@1e
    if-gt v4, v5, :cond_2

    #@20
    .line 1080
    iget v4, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    if-eqz v4, :cond_1

    #@24
    :goto_0
    monitor-exit v3

    #@25
    return v1

    #@26
    :cond_1
    move v1, v2

    #@27
    goto :goto_0

    #@28
    .line 1082
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@2a
    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "Resource ID #0x"

    #@32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v4, " type #0x"

    #@41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 1084
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@47
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    .line 1083
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 1084
    const-string/jumbo v4, " is not valid"

    #@52
    .line 1083
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 1082
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    .line 1072
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@5f
    monitor-exit v3

    #@60
    throw v1
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 936
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 958
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 959
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 960
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_0

    #@7
    .line 961
    new-instance v1, Landroid/util/TypedValue;

    #@9
    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@c
    .line 963
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    const/4 v2, 0x1

    #@d
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@10
    .line 964
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@12
    const/16 v4, 0x10

    #@14
    if-lt v2, v4, :cond_1

    #@16
    .line 965
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@18
    const/16 v4, 0x1f

    #@1a
    if-gt v2, v4, :cond_1

    #@1c
    .line 966
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@1e
    .line 967
    iget v2, v1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v3

    #@21
    return v2

    #@22
    .line 968
    :cond_1
    :try_start_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@24
    const/4 v4, 0x3

    #@25
    if-eq v2, v4, :cond_2

    #@27
    .line 969
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@29
    .line 970
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Resource ID #0x"

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, " type #0x"

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 971
    iget v5, v1, Landroid/util/TypedValue;->type:I

    #@46
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    .line 970
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    .line 971
    const-string/jumbo v5, " is not valid"

    #@51
    .line 970
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    .line 969
    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    .line 958
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 973
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_2
    const/4 v2, 0x0

    #@61
    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    monitor-exit v3

    #@64
    .line 976
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@67
    move-result-object v0

    #@68
    .line 977
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@6a
    monitor-enter v3

    #@6b
    .line 978
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@6d
    if-nez v2, :cond_3

    #@6f
    .line 979
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@71
    :cond_3
    monitor-exit v3

    #@72
    .line 983
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@75
    move-result v2

    #@76
    return v2

    #@77
    .line 977
    :catchall_1
    move-exception v2

    #@78
    monitor-exit v3

    #@79
    throw v2
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1006
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@4
    move-result-object v0

    #@5
    .line 1007
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1008
    const-string/jumbo v1, "Resources"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "ColorStateList "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, " has "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 1009
    const-string/jumbo v3, "unresolved theme attributes! Consider using "

    #@2e
    .line 1008
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 1010
    const-string/jumbo v3, "Resources.getColorStateList(int, Theme) or "

    #@35
    .line 1008
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 1011
    const-string/jumbo v3, "Context.getColorStateList(int)."

    #@3c
    .line 1008
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 1011
    new-instance v3, Ljava/lang/RuntimeException;

    #@46
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    #@49
    .line 1008
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 1013
    :cond_0
    return-object v0
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1038
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1039
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 1040
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    #@7
    .line 1041
    new-instance v1, Landroid/util/TypedValue;

    #@9
    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@c
    .line 1045
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    #@d
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v3

    #@11
    .line 1048
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@14
    move-result-object v0

    #@15
    .line 1049
    .local v0, "res":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@17
    monitor-enter v3

    #@18
    .line 1050
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 1051
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    :cond_0
    monitor-exit v3

    #@1f
    .line 1055
    return-object v0

    #@20
    .line 1043
    .end local v0    # "res":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v2, 0x0

    #@21
    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 1038
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 1049
    .restart local v0    # "res":Landroid/content/res/ColorStateList;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    #@0
    .prologue
    .line 2163
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@2
    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    #@0
    .prologue
    .line 2152
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@2
    return-object v0
.end method

.method public getDimension(I)F
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 615
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 617
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@7
    .line 618
    new-instance v0, Landroid/util/TypedValue;

    #@9
    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@c
    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@e
    .line 620
    :cond_0
    const/4 v1, 0x1

    #@f
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@12
    .line 621
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@14
    const/4 v3, 0x5

    #@15
    if-ne v1, v3, :cond_1

    #@17
    .line 622
    iget v1, v0, Landroid/util/TypedValue;->data:I

    #@19
    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@1b
    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v1

    #@1f
    monitor-exit v2

    #@20
    return v1

    #@21
    .line 624
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@23
    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Resource ID #0x"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    const-string/jumbo v4, " type #0x"

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 626
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@40
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 625
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 626
    const-string/jumbo v4, " is not valid"

    #@4b
    .line 625
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 624
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 615
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@58
    monitor-exit v2

    #@59
    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 650
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 651
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 652
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@7
    .line 653
    new-instance v0, Landroid/util/TypedValue;

    #@9
    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@c
    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@e
    .line 655
    :cond_0
    const/4 v1, 0x1

    #@f
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@12
    .line 656
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@14
    const/4 v3, 0x5

    #@15
    if-ne v1, v3, :cond_1

    #@17
    .line 658
    iget v1, v0, Landroid/util/TypedValue;->data:I

    #@19
    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@1b
    .line 657
    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v1

    #@1f
    monitor-exit v2

    #@20
    return v1

    #@21
    .line 660
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@23
    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Resource ID #0x"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    const-string/jumbo v4, " type #0x"

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 662
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@40
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 661
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 662
    const-string/jumbo v4, " is not valid"

    #@4b
    .line 661
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 660
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 650
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@58
    monitor-exit v2

    #@59
    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 687
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 688
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 689
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@7
    .line 690
    new-instance v0, Landroid/util/TypedValue;

    #@9
    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@c
    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@e
    .line 692
    :cond_0
    const/4 v1, 0x1

    #@f
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@12
    .line 693
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@14
    const/4 v3, 0x5

    #@15
    if-ne v1, v3, :cond_1

    #@17
    .line 695
    iget v1, v0, Landroid/util/TypedValue;->data:I

    #@19
    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@1b
    .line 694
    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v1

    #@1f
    monitor-exit v2

    #@20
    return v1

    #@21
    .line 697
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@23
    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Resource ID #0x"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    const-string/jumbo v4, " type #0x"

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 699
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@40
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 698
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 699
    const-string/jumbo v4, " is not valid"

    #@4b
    .line 698
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 697
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 687
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@58
    monitor-exit v2

    #@59
    throw v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    #@0
    .prologue
    .line 2142
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@2
    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 771
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 772
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 773
    const-string/jumbo v1, "Resources"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Drawable "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, " has unresolved theme "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 774
    const-string/jumbo v3, "attributes! Consider using Resources.getDrawable(int, Theme) or "

    #@2e
    .line 773
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 775
    const-string/jumbo v3, "Context.getDrawable(int)."

    #@35
    .line 773
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 775
    new-instance v3, Ljava/lang/RuntimeException;

    #@3f
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    #@42
    .line 773
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 777
    :cond_0
    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 797
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 798
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 799
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    #@7
    .line 800
    new-instance v1, Landroid/util/TypedValue;

    #@9
    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@c
    .line 804
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    #@d
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v3

    #@11
    .line 806
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v0

    #@15
    .line 807
    .local v0, "res":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@17
    monitor-enter v3

    #@18
    .line 808
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 809
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    :cond_0
    monitor-exit v3

    #@1f
    .line 812
    return-object v0

    #@20
    .line 802
    .end local v0    # "res":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    #@21
    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 797
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 807
    .restart local v0    # "res":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 844
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 864
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 865
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 866
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_2

    #@7
    .line 867
    new-instance v1, Landroid/util/TypedValue;

    #@9
    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@c
    .line 871
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    #@d
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    #@10
    .line 880
    iget v2, v1, Landroid/util/TypedValue;->density:I

    #@12
    if-lez v2, :cond_0

    #@14
    iget v2, v1, Landroid/util/TypedValue;->density:I

    #@16
    const v4, 0xffff

    #@19
    if-eq v2, v4, :cond_0

    #@1b
    .line 881
    iget v2, v1, Landroid/util/TypedValue;->density:I

    #@1d
    if-ne v2, p2, :cond_3

    #@1f
    .line 882
    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@21
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    #@23
    iput v2, v1, Landroid/util/TypedValue;->density:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    :goto_1
    monitor-exit v3

    #@26
    .line 889
    invoke-virtual {p0, v1, p1, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v0

    #@2a
    .line 890
    .local v0, "res":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2c
    monitor-enter v3

    #@2d
    .line 891
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@2f
    if-nez v2, :cond_1

    #@31
    .line 892
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    :cond_1
    monitor-exit v3

    #@34
    .line 895
    return-object v0

    #@35
    .line 869
    .end local v0    # "res":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x0

    #@36
    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 864
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2

    #@3c
    .line 884
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_3
    :try_start_3
    iget v2, v1, Landroid/util/TypedValue;->density:I

    #@3e
    iget-object v4, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@40
    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    #@42
    mul-int/2addr v2, v4

    #@43
    div-int/2addr v2, p2

    #@44
    iput v2, v1, Landroid/util/TypedValue;->density:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    goto :goto_1

    #@47
    .line 890
    .restart local v0    # "res":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v2

    #@48
    monitor-exit v3

    #@49
    throw v2
.end method

.method public getFloat(I)F
    .locals 5
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1130
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1131
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 1132
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@7
    .line 1133
    new-instance v0, Landroid/util/TypedValue;

    #@9
    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@c
    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@e
    .line 1135
    :cond_0
    const/4 v1, 0x1

    #@f
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@12
    .line 1136
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@14
    const/4 v3, 0x4

    #@15
    if-ne v1, v3, :cond_1

    #@17
    .line 1137
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v1

    #@1b
    monitor-exit v2

    #@1c
    return v1

    #@1d
    .line 1139
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Resource ID #0x"

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, " type #0x"

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 1140
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@3c
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 1139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 1140
    const-string/jumbo v4, " is not valid"

    #@47
    .line 1139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@52
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    .line 1130
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@54
    monitor-exit v2

    #@55
    throw v1
.end method

.method public getFraction(III)F
    .locals 5
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    #@0
    .prologue
    .line 721
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 722
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 723
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@7
    .line 724
    new-instance v0, Landroid/util/TypedValue;

    #@9
    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@c
    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@e
    .line 726
    :cond_0
    const/4 v1, 0x1

    #@f
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@12
    .line 727
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@14
    const/4 v3, 0x6

    #@15
    if-ne v1, v3, :cond_1

    #@17
    .line 728
    iget v1, v0, Landroid/util/TypedValue;->data:I

    #@19
    int-to-float v3, p2

    #@1a
    int-to-float v4, p3

    #@1b
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v1

    #@1f
    monitor-exit v2

    #@20
    return v1

    #@21
    .line 730
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@23
    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Resource ID #0x"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    const-string/jumbo v4, " type #0x"

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 732
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@40
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 731
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 732
    const-string/jumbo v4, " is not valid"

    #@4b
    .line 731
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 730
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 721
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@58
    monitor-exit v2

    #@59
    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2198
    if-nez p1, :cond_0

    #@2
    .line 2199
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "name is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2202
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
    .line 2203
    :catch_0
    move-exception v0

    #@11
    .line 2206
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@13
    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public getIntArray(I)[I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 561
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    #@5
    move-result-object v0

    #@6
    .line 562
    .local v0, "res":[I
    if-eqz v0, :cond_0

    #@8
    .line 563
    return-object v0

    #@9
    .line 565
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Int array resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 566
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 565
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

.method public getInteger(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1100
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1101
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 1102
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@7
    .line 1103
    new-instance v0, Landroid/util/TypedValue;

    #@9
    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@c
    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@e
    .line 1105
    :cond_0
    const/4 v1, 0x1

    #@f
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@12
    .line 1106
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@14
    const/16 v3, 0x10

    #@16
    if-lt v1, v3, :cond_1

    #@18
    .line 1107
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@1a
    const/16 v3, 0x1f

    #@1c
    if-gt v1, v3, :cond_1

    #@1e
    .line 1108
    iget v1, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v2

    #@21
    return v1

    #@22
    .line 1110
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@24
    .line 1111
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Resource ID #0x"

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
    const-string/jumbo v4, " type #0x"

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 1112
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@41
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 1111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    .line 1112
    const-string/jumbo v4, " is not valid"

    #@4c
    .line 1111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 1110
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    .line 1100
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@59
    monitor-exit v2

    #@5a
    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1165
    const-string/jumbo v0, "layout"

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 907
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@3
    move-result-object v1

    #@4
    .line 908
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    #@7
    move-result-object v2

    #@8
    .line 910
    .local v2, "movie":Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 915
    :goto_0
    return-object v2

    #@c
    .line 912
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
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
    .line 2452
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 486
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 460
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 461
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@a
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@c
    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    #@3
    move-result-object v1

    #@4
    .line 339
    .local v1, "rule":Llibcore/icu/NativePluralRules;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@6
    .line 340
    invoke-virtual {v1, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    #@9
    move-result v3

    #@a
    invoke-static {v3}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    #@d
    move-result v3

    #@e
    .line 339
    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    .line 341
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@14
    .line 342
    return-object v0

    #@15
    .line 344
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@17
    const v3, 0x1000004

    #@1a
    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    #@1d
    move-result-object v0

    #@1e
    .line 345
    if-eqz v0, :cond_1

    #@20
    .line 346
    return-object v0

    #@21
    .line 348
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Plural resource ID #0x"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 349
    const-string/jumbo v4, " quantity="

    #@3a
    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 350
    const-string/jumbo v4, " item="

    #@45
    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    .line 350
    invoke-virtual {v1, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    #@4c
    move-result v4

    #@4d
    invoke-static {v4}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v2
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2290
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2291
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    return-object v0

    #@9
    .line 2292
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
    .line 2293
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 2292
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

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2233
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2234
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    return-object v0

    #@9
    .line 2235
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
    .line 2236
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 2235
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

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2252
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2253
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    return-object v0

    #@9
    .line 2254
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
    .line 2255
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 2254
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

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2271
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2272
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    return-object v0

    #@9
    .line 2273
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
    .line 2274
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 2273
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

.method public getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
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
    .line 222
    iget-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@2
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 401
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@6
    .line 402
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 404
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "String resource ID #0x"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@6
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@8
    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 542
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    .line 543
    return-object v0

    #@9
    .line 545
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "String array resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 546
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 545
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

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 309
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@8
    .line 310
    return-object v0

    #@9
    .line 312
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "String resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 312
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

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 504
    if-eqz p1, :cond_0

    #@2
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@4
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    .line 505
    :goto_0
    if-eqz v0, :cond_1

    #@a
    :goto_1
    return-object v0

    #@b
    .line 504
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "res":Ljava/lang/CharSequence;
    goto :goto_0

    #@d
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p2

    #@e
    .line 505
    goto :goto_1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 521
    .local v0, "res":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@8
    .line 522
    return-object v0

    #@9
    .line 524
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Text array resource ID #0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 524
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

.method public getValue(ILandroid/util/TypedValue;Z)V
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
    .line 1347
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    #@6
    move-result v0

    #@7
    .line 1348
    .local v0, "found":Z
    if-eqz v0, :cond_0

    #@9
    .line 1349
    return-void

    #@a
    .line 1351
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
    .line 1352
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 1351
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

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
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
    .line 1399
    const-string/jumbo v1, "string"

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 1400
    .local v0, "id":I
    if-eqz v0, :cond_0

    #@a
    .line 1401
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@d
    .line 1402
    return-void

    #@e
    .line 1404
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

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
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
    .line 1370
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    #@5
    move-result v0

    #@6
    .line 1371
    .local v0, "found":Z
    if-eqz v0, :cond_0

    #@8
    .line 1372
    return-void

    #@9
    .line 1374
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

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1214
    const-string/jumbo v0, "xml"

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2661
    iget v3, p1, Landroid/util/TypedValue;->assetCookie:I

    #@3
    int-to-long v6, v3

    #@4
    const/16 v3, 0x20

    #@6
    shl-long/2addr v6, v3

    #@7
    iget v3, p1, Landroid/util/TypedValue;->data:I

    #@9
    int-to-long v8, v3

    #@a
    or-long v4, v6, v8

    #@c
    .line 2666
    .local v4, "key":J
    iget v3, p1, Landroid/util/TypedValue;->type:I

    #@e
    const/16 v6, 0x1c

    #@10
    if-lt v3, v6, :cond_2

    #@12
    .line 2667
    iget v3, p1, Landroid/util/TypedValue;->type:I

    #@14
    const/16 v6, 0x1f

    #@16
    if-gt v3, v6, :cond_2

    #@18
    .line 2669
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    #@1a
    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/content/res/ConstantState;

    #@20
    .line 2670
    .local v2, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_0

    #@22
    .line 2671
    invoke-virtual {v2}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/content/res/ColorStateList;

    #@28
    return-object v3

    #@29
    .line 2674
    :cond_0
    iget v3, p1, Landroid/util/TypedValue;->data:I

    #@2b
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@2e
    move-result-object v1

    #@2f
    .line 2676
    .local v1, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 2677
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    #@35
    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    #@37
    .line 2678
    const-string/jumbo v7, "color"

    #@3a
    .line 2677
    invoke-direct {p0, v3, v10, v6, v7}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_1

    #@40
    .line 2679
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    #@42
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@49
    .line 2683
    :cond_1
    return-object v1

    #@4a
    .line 2686
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .end local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    :cond_2
    iget-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@4c
    .line 2687
    .local v0, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ColorStateList;>;"
    invoke-virtual {v0, v4, v5, p3}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Landroid/content/res/ColorStateList;

    #@52
    .line 2688
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    #@54
    .line 2689
    return-object v1

    #@55
    .line 2693
    :cond_3
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    #@57
    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@5a
    move-result-object v2

    #@5b
    check-cast v2, Landroid/content/res/ConstantState;

    #@5d
    .line 2694
    .restart local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_4

    #@5f
    .line 2695
    invoke-virtual {v2, p0, p3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@62
    move-result-object v1

    #@63
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    check-cast v1, Landroid/content/res/ColorStateList;

    #@65
    .line 2698
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_4
    if-nez v1, :cond_5

    #@67
    .line 2699
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadColorStateListForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@6a
    move-result-object v1

    #@6b
    .line 2702
    :cond_5
    if-eqz v1, :cond_6

    #@6d
    .line 2703
    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    #@6f
    if-eqz v3, :cond_7

    #@71
    .line 2704
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    #@73
    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    #@75
    .line 2705
    const-string/jumbo v7, "color"

    #@78
    .line 2704
    invoke-direct {p0, v3, v10, v6, v7}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    #@7b
    move-result v3

    #@7c
    if-eqz v3, :cond_6

    #@7e
    .line 2706
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    #@80
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@87
    .line 2713
    :cond_6
    :goto_0
    return-object v1

    #@88
    .line 2709
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v0, v4, v5, p3, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    #@8f
    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2505
    move-object/from16 v0, p1

    #@2
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@4
    const/16 v5, 0x1c

    #@6
    if-lt v4, v5, :cond_0

    #@8
    .line 2506
    move-object/from16 v0, p1

    #@a
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@c
    const/16 v5, 0x1f

    #@e
    if-gt v4, v5, :cond_0

    #@10
    .line 2507
    const/4 v6, 0x1

    #@11
    .line 2508
    .local v6, "isColorDrawable":Z
    move-object/from16 v0, p0

    #@13
    iget-object v7, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    #@15
    .line 2509
    .local v7, "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p1

    #@17
    iget v4, v0, Landroid/util/TypedValue;->data:I

    #@19
    int-to-long v10, v4

    #@1a
    .line 2518
    .local v10, "key":J
    :goto_0
    move-object/from16 v0, p0

    #@1c
    iget-boolean v4, v0, Landroid/content/res/Resources;->mPreloading:Z

    #@1e
    if-nez v4, :cond_1

    #@20
    .line 2519
    move-object/from16 v0, p3

    #@22
    invoke-virtual {v7, v10, v11, v0}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v13

    #@26
    .line 2520
    .local v13, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_1

    #@28
    .line 2521
    return-object v13

    #@29
    .line 2511
    .end local v6    # "isColorDrawable":Z
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v10    # "key":J
    .end local v13    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v6, 0x0

    #@2a
    .line 2512
    .restart local v6    # "isColorDrawable":Z
    move-object/from16 v0, p0

    #@2c
    iget-object v7, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    #@2e
    .line 2513
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p1

    #@30
    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    #@32
    int-to-long v4, v4

    #@33
    const/16 v8, 0x20

    #@35
    shl-long/2addr v4, v8

    #@36
    move-object/from16 v0, p1

    #@38
    iget v8, v0, Landroid/util/TypedValue;->data:I

    #@3a
    int-to-long v0, v8

    #@3b
    move-wide/from16 v16, v0

    #@3d
    or-long v10, v4, v16

    #@3f
    .restart local v10    # "key":J
    goto :goto_0

    #@40
    .line 2528
    :cond_1
    if-eqz v6, :cond_4

    #@42
    .line 2529
    sget-object v4, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    #@44
    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@47
    move-result-object v14

    #@48
    check-cast v14, Landroid/graphics/drawable/Drawable$ConstantState;

    #@4a
    .line 2535
    .local v14, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    if-eqz v14, :cond_5

    #@4c
    .line 2536
    move-object/from16 v0, p0

    #@4e
    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@51
    move-result-object v12

    #@52
    .line 2546
    .local v12, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v12, :cond_7

    #@54
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@57
    move-result v9

    #@58
    .line 2547
    :goto_3
    if-eqz v9, :cond_2

    #@5a
    if-eqz p3, :cond_2

    #@5c
    .line 2548
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@5f
    move-result-object v12

    #@60
    .line 2549
    move-object/from16 v0, p3

    #@62
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@65
    .line 2550
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@68
    .line 2555
    :cond_2
    if-eqz v12, :cond_3

    #@6a
    .line 2556
    move-object/from16 v0, p1

    #@6c
    iget v4, v0, Landroid/util/TypedValue;->changingConfigurations:I

    #@6e
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    #@71
    move-object/from16 v4, p0

    #@73
    move-object/from16 v5, p1

    #@75
    move-object/from16 v8, p3

    #@77
    .line 2557
    invoke-direct/range {v4 .. v12}, Landroid/content/res/Resources;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    #@7a
    .line 2560
    :cond_3
    return-object v12

    #@7b
    .line 2531
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v14    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_4
    sget-object v4, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget-object v5, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@81
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@84
    move-result v5

    #@85
    aget-object v4, v4, v5

    #@87
    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@8a
    move-result-object v14

    #@8b
    check-cast v14, Landroid/graphics/drawable/Drawable$ConstantState;

    #@8d
    .restart local v14    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_1

    #@8e
    .line 2537
    :cond_5
    if-eqz v6, :cond_6

    #@90
    .line 2538
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    #@92
    move-object/from16 v0, p1

    #@94
    iget v4, v0, Landroid/util/TypedValue;->data:I

    #@96
    invoke-direct {v12, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@99
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    #@9a
    .line 2540
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v4, 0x0

    #@9b
    move-object/from16 v0, p0

    #@9d
    move-object/from16 v1, p1

    #@9f
    move/from16 v2, p2

    #@a1
    invoke-direct {v0, v1, v2, v4}, Landroid/content/res/Resources;->loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@a4
    move-result-object v12

    #@a5
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    #@a6
    .line 2546
    :cond_7
    const/4 v9, 0x0

    #@a7
    .local v9, "canApplyTheme":Z
    goto :goto_3
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2769
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2770
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 2771
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    #@7
    .line 2772
    new-instance v0, Landroid/util/TypedValue;

    #@9
    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@c
    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@e
    .line 2774
    :cond_0
    const/4 v1, 0x1

    #@f
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@12
    .line 2775
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@14
    const/4 v3, 0x3

    #@15
    if-ne v1, v3, :cond_1

    #@17
    .line 2776
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@19
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 2777
    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    #@1f
    .line 2776
    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v1

    #@23
    monitor-exit v2

    #@24
    return-object v1

    #@25
    .line 2779
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@27
    .line 2780
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "Resource ID #0x"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    const-string/jumbo v4, " type #0x"

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 2781
    iget v4, v0, Landroid/util/TypedValue;->type:I

    #@44
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 2780
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 2781
    const-string/jumbo v4, " is not valid"

    #@4f
    .line 2780
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    .line 2779
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 2769
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@5c
    monitor-exit v2

    #@5d
    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 10
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
    .line 2787
    if-eqz p2, :cond_5

    #@2
    .line 2790
    :try_start_0
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@4
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2792
    :try_start_1
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@7
    array-length v3, v7

    #@8
    .line 2793
    .local v3, "num":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@b
    .line 2794
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@d
    aget v7, v7, v2

    #@f
    if-ne v7, p2, :cond_0

    #@11
    .line 2797
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@13
    aget-object v7, v7, v2

    #@15
    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    move-result-object v7

    #@19
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@1a
    return-object v7

    #@1b
    .line 2793
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2803
    :cond_1
    :try_start_3
    iget-object v7, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@20
    invoke-virtual {v7, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    #@23
    move-result-object v0

    #@24
    .line 2805
    .local v0, "block":Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_4

    #@26
    .line 2806
    iget v7, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    #@28
    add-int/lit8 v5, v7, 0x1

    #@2a
    .line 2807
    .local v5, "pos":I
    if-lt v5, v3, :cond_2

    #@2c
    const/4 v5, 0x0

    #@2d
    .line 2808
    :cond_2
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    #@2f
    .line 2809
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@31
    aget-object v4, v7, v5

    #@33
    .line 2810
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_3

    #@35
    .line 2811
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    #@38
    .line 2813
    :cond_3
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    #@3a
    aput p2, v7, v5

    #@3c
    .line 2814
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    #@3e
    aput-object v0, v7, v5

    #@40
    .line 2817
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@43
    move-result-object v7

    #@44
    :try_start_4
    monitor-exit v8

    #@45
    return-object v7

    #@46
    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    .end local v5    # "pos":I
    :cond_4
    monitor-exit v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@47
    .line 2829
    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_5
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    #@49
    .line 2830
    new-instance v8, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v9, "File "

    #@51
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    const-string/jumbo v9, " from xml type "

    #@5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    const-string/jumbo v9, " resource ID #0x"

    #@67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    .line 2831
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6e
    move-result-object v9

    #@6f
    .line 2830
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v8

    #@77
    .line 2829
    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v7

    #@7b
    .line 2790
    :catchall_0
    move-exception v7

    #@7c
    :try_start_5
    monitor-exit v8

    #@7d
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@7e
    .line 2820
    :catch_0
    move-exception v1

    #@7f
    .line 2821
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    #@81
    .line 2822
    new-instance v7, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v8, "File "

    #@89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    const-string/jumbo v8, " from xml type "

    #@94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    const-string/jumbo v8, " resource ID #0x"

    #@9f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    .line 2823
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a6
    move-result-object v8

    #@a7
    .line 2822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v7

    #@ab
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v7

    #@af
    .line 2821
    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@b2
    .line 2824
    .local v6, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@b5
    .line 2825
    throw v6
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    #@0
    .prologue
    .line 1933
    new-instance v0, Landroid/content/res/Resources$Theme;

    #@2
    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    #@5
    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    #@0
    .prologue
    .line 1949
    array-length v7, p2

    #@1
    .line 1950
    .local v7, "len":I
    invoke-static {p0, v7}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@4
    move-result-object v0

    #@5
    .local v0, "array":Landroid/content/res/TypedArray;
    move-object v8, p1

    #@6
    .line 1956
    check-cast v8, Landroid/content/res/XmlBlock$Parser;

    #@8
    .line 1957
    .local v8, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@a
    iget-wide v2, v8, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@c
    .line 1958
    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    #@e
    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    #@10
    move-object v4, p2

    #@11
    .line 1957
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->retrieveAttributes(J[I[I[I)Z

    #@14
    .line 1960
    iput-object v8, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@16
    .line 1962
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 584
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@3
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    #@6
    move-result v1

    #@7
    .line 585
    .local v1, "len":I
    if-gez v1, :cond_0

    #@9
    .line 586
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Array resource ID #0x"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    .line 587
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 586
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 590
    :cond_0
    invoke-static {p0, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@2a
    move-result-object v0

    #@2b
    .line 591
    .local v0, "array":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@2d
    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    #@2f
    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    #@32
    move-result v2

    #@33
    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    #@35
    .line 592
    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    #@37
    aput v4, v2, v4

    #@39
    .line 594
    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1233
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1234
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 1235
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    #@7
    .line 1236
    new-instance v1, Landroid/util/TypedValue;

    #@9
    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    monitor-exit v3

    #@d
    .line 1241
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    #@10
    move-result-object v0

    #@11
    .line 1242
    .local v0, "res":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@13
    monitor-enter v3

    #@14
    .line 1243
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@16
    if-nez v2, :cond_0

    #@18
    .line 1244
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    :cond_0
    monitor-exit v3

    #@1b
    .line 1247
    return-object v0

    #@1c
    .line 1238
    .end local v0    # "res":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x0

    #@1d
    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 1233
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit v3

    #@22
    throw v2

    #@23
    .line 1242
    .restart local v0    # "res":Ljava/io/InputStream;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
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
    .line 1265
    const/4 v2, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@4
    .line 1268
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@6
    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    #@8
    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@a
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 1269
    const/4 v5, 0x2

    #@f
    .line 1268
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 1270
    :catch_0
    move-exception v0

    #@15
    .line 1271
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
    move-result-object v2

    #@23
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@25
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 1272
    const-string/jumbo v3, " from drawable resource ID #0x"

    #@30
    .line 1271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 1272
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 1271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@43
    .line 1273
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@46
    .line 1274
    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1302
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1303
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    .line 1304
    .local v2, "value":Landroid/util/TypedValue;
    if-nez v2, :cond_1

    #@7
    .line 1305
    new-instance v2, Landroid/util/TypedValue;

    #@9
    .end local v2    # "value":Landroid/util/TypedValue;
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    #@c
    .line 1309
    .restart local v2    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v3, 0x1

    #@d
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v4

    #@11
    .line 1312
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@13
    .line 1313
    iget v4, v2, Landroid/util/TypedValue;->assetCookie:I

    #@15
    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@17
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    .line 1312
    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1e
    move-result-object v3

    #@1f
    .line 1322
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@21
    monitor-enter v4

    #@22
    .line 1323
    :try_start_2
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@24
    if-nez v5, :cond_0

    #@26
    .line 1324
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@28
    :cond_0
    monitor-exit v4

    #@29
    .line 1312
    return-object v3

    #@2a
    .line 1307
    :cond_1
    const/4 v3, 0x0

    #@2b
    :try_start_3
    iput-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 1302
    .end local v2    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3

    #@31
    .line 1322
    .restart local v2    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v3

    #@32
    monitor-exit v4

    #@33
    throw v3

    #@34
    .line 1314
    :catch_0
    move-exception v0

    #@35
    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@37
    .line 1316
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "File "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@45
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 1317
    const-string/jumbo v4, " from drawable resource ID #0x"

    #@50
    .line 1316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    .line 1318
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    .line 1316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 1315
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@63
    .line 1319
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@66
    .line 1320
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@67
    .line 1321
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_2
    move-exception v3

    #@68
    .line 1322
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@6a
    monitor-enter v4

    #@6b
    .line 1323
    :try_start_5
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@6d
    if-nez v5, :cond_2

    #@6f
    .line 1324
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@71
    :cond_2
    monitor-exit v4

    #@72
    .line 1321
    throw v3

    #@73
    .line 1322
    :catchall_3
    move-exception v3

    #@74
    monitor-exit v4

    #@75
    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2352
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    #@4
    .line 2351
    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v2

    #@8
    .line 2354
    .local v2, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 2356
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    #@e
    .line 2357
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@11
    .line 2358
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "<"

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    .line 2359
    const-string/jumbo v6, "> requires an android:name attribute at "

    #@26
    .line 2358
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    .line 2360
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 2358
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@39
    throw v4

    #@3a
    .line 2363
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3d
    move-result-object v3

    #@3e
    .line 2365
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    #@40
    .line 2366
    iget v6, v3, Landroid/util/TypedValue;->type:I

    #@42
    const/4 v7, 0x3

    #@43
    if-ne v6, v7, :cond_1

    #@45
    .line 2367
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@48
    move-result-object v0

    #@49
    .line 2368
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@4c
    .line 2389
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@4f
    .line 2350
    return-void

    #@50
    .line 2369
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    #@52
    const/16 v7, 0x12

    #@54
    if-ne v6, v7, :cond_3

    #@56
    .line 2370
    iget v6, v3, Landroid/util/TypedValue;->data:I

    #@58
    if-eqz v6, :cond_2

    #@5a
    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@5d
    goto :goto_0

    #@5e
    :cond_2
    move v4, v5

    #@5f
    goto :goto_1

    #@60
    .line 2371
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@62
    const/16 v5, 0x10

    #@64
    if-lt v4, v5, :cond_4

    #@66
    .line 2372
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@68
    const/16 v5, 0x1f

    #@6a
    if-gt v4, v5, :cond_4

    #@6c
    .line 2373
    iget v4, v3, Landroid/util/TypedValue;->data:I

    #@6e
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@71
    goto :goto_0

    #@72
    .line 2374
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@74
    const/4 v5, 0x4

    #@75
    if-ne v4, v5, :cond_5

    #@77
    .line 2375
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    #@7a
    move-result v4

    #@7b
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@7e
    goto :goto_0

    #@7f
    .line 2377
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@82
    .line 2378
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@84
    new-instance v5, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v6, "<"

    #@8c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    .line 2379
    const-string/jumbo v6, "> only supports string, integer, float, color, and boolean at "

    #@97
    .line 2378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    .line 2380
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@9e
    move-result-object v6

    #@9f
    .line 2378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v5

    #@a7
    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v4

    #@ab
    .line 2383
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@ae
    .line 2384
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@b0
    new-instance v5, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v6, "<"

    #@b8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    .line 2385
    const-string/jumbo v6, "> requires an android:value or android:resource attribute at "

    #@c3
    .line 2384
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v5

    #@c7
    .line 2386
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@ca
    move-result-object v6

    #@cb
    .line 2384
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 2309
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 2311
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@8
    move-result v2

    #@9
    .local v2, "type":I
    const/4 v3, 0x1

    #@a
    if-eq v2, v3, :cond_3

    #@c
    .line 2312
    if-ne v2, v4, :cond_1

    #@e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@11
    move-result v3

    #@12
    if-le v3, v1, :cond_3

    #@14
    .line 2313
    :cond_1
    if-eq v2, v4, :cond_0

    #@16
    const/4 v3, 0x4

    #@17
    if-eq v2, v3, :cond_0

    #@19
    .line 2317
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 2318
    .local v0, "nodeName":Ljava/lang/String;
    const-string/jumbo v3, "extra"

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 2319
    const-string/jumbo v3, "extra"

    #@29
    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@2c
    .line 2320
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2f
    goto :goto_0

    #@30
    .line 2323
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@33
    goto :goto_0

    #@34
    .line 2308
    .end local v0    # "nodeName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 2171
    if-eqz p1, :cond_0

    #@2
    .line 2172
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@4
    .line 2173
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@6
    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@b
    .line 2170
    :cond_0
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    #@0
    .prologue
    .line 2425
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2426
    :try_start_0
    sget-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2427
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
    .line 2425
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 2429
    :cond_0
    const/4 v0, 0x1

    #@14
    :try_start_1
    sput-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    #@16
    .line 2430
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    #@19
    .line 2431
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@1b
    sput v0, Landroid/content/res/Resources;->sPreloadedDensity:I

    #@1d
    .line 2432
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@1f
    sget v2, Landroid/content/res/Resources;->sPreloadedDensity:I

    #@21
    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    #@23
    .line 2433
    const/4 v0, 0x0

    #@24
    const/4 v2, 0x0

    #@25
    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 2424
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 1970
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@4
    .line 1969
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 22
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 1978
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    #@4
    move-object/from16 v21, v0

    #@6
    monitor-enter v21

    #@7
    .line 1985
    if-eqz p3, :cond_0

    #@9
    .line 1986
    :try_start_0
    move-object/from16 v0, p3

    #@b
    move-object/from16 v1, p0

    #@d
    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@f
    .line 1988
    :cond_0
    if-eqz p2, :cond_1

    #@11
    .line 1989
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    #@1a
    .line 2000
    :cond_1
    move-object/from16 v0, p0

    #@1c
    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@22
    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    #@25
    .line 2002
    invoke-direct/range {p0 .. p1}, Landroid/content/res/Resources;->calcConfigChanges(Landroid/content/res/Configuration;)I

    #@28
    move-result v20

    #@29
    .line 2003
    .local v20, "configChanges":I
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@2d
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2f
    if-nez v2, :cond_2

    #@31
    .line 2004
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@38
    move-result-object v3

    #@39
    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@3b
    .line 2005
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@43
    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@45
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    #@48
    .line 2007
    :cond_2
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@4c
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    #@4e
    if-eqz v2, :cond_3

    #@50
    .line 2008
    move-object/from16 v0, p0

    #@52
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@58
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    #@5a
    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    #@5c
    .line 2009
    move-object/from16 v0, p0

    #@5e
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@64
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    #@66
    int-to-float v3, v3

    #@67
    const v4, 0x3bcccccd    # 0.00625f

    #@6a
    mul-float/2addr v3, v4

    #@6b
    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    #@6d
    .line 2011
    :cond_3
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@75
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@7b
    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    #@7d
    mul-float/2addr v3, v4

    #@7e
    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@80
    .line 2013
    const/4 v5, 0x0

    #@81
    .line 2014
    .local v5, "locale":Ljava/lang/String;
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@85
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@87
    if-eqz v2, :cond_4

    #@89
    .line 2015
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@8d
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@8f
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    invoke-static {v2}, Landroid/content/res/Resources;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    .line 2019
    .end local v5    # "locale":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    #@99
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@9b
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@a1
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    #@a3
    if-lt v2, v3, :cond_6

    #@a5
    .line 2020
    move-object/from16 v0, p0

    #@a7
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@a9
    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@ab
    .line 2021
    .local v12, "width":I
    move-object/from16 v0, p0

    #@ad
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@af
    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@b1
    .line 2030
    .local v13, "height":I
    :goto_0
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@b5
    iget v2, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    #@b7
    const/4 v3, 0x1

    #@b8
    if-ne v2, v3, :cond_7

    #@ba
    .line 2031
    move-object/from16 v0, p0

    #@bc
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@be
    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@c0
    const/4 v3, 0x2

    #@c1
    if-ne v2, v3, :cond_7

    #@c3
    .line 2032
    const/4 v10, 0x3

    #@c4
    .line 2037
    .local v10, "keyboardHidden":I
    :goto_1
    move-object/from16 v0, p0

    #@c6
    iget-object v2, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@cc
    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@d2
    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    #@d4
    .line 2038
    move-object/from16 v0, p0

    #@d6
    iget-object v6, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@d8
    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    #@da
    .line 2039
    move-object/from16 v0, p0

    #@dc
    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@de
    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    #@e0
    .line 2040
    move-object/from16 v0, p0

    #@e2
    iget-object v8, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@e4
    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@ea
    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    #@ec
    .line 2041
    move-object/from16 v0, p0

    #@ee
    iget-object v11, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@f0
    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    #@f2
    .line 2042
    move-object/from16 v0, p0

    #@f4
    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@f6
    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@f8
    .line 2043
    move-object/from16 v0, p0

    #@fa
    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@fc
    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    #@fe
    move-object/from16 v0, p0

    #@100
    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@102
    move-object/from16 v16, v0

    #@104
    move-object/from16 v0, v16

    #@106
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@108
    move/from16 v16, v0

    #@10a
    .line 2044
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@10e
    move-object/from16 v17, v0

    #@110
    move-object/from16 v0, v17

    #@112
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@114
    move/from16 v17, v0

    #@116
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@11a
    move-object/from16 v18, v0

    #@11c
    move-object/from16 v0, v18

    #@11e
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    #@120
    move/from16 v18, v0

    #@122
    .line 2045
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@124
    .line 2037
    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    #@127
    .line 2052
    move-object/from16 v0, p0

    #@129
    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    #@12b
    move/from16 v0, v20

    #@12d
    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    #@130
    .line 2053
    move-object/from16 v0, p0

    #@132
    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    #@134
    move/from16 v0, v20

    #@136
    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    #@139
    .line 2054
    move-object/from16 v0, p0

    #@13b
    iget-object v2, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@13d
    move/from16 v0, v20

    #@13f
    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    #@142
    .line 2055
    move-object/from16 v0, p0

    #@144
    iget-object v2, v0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@146
    move/from16 v0, v20

    #@148
    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    #@14b
    .line 2056
    move-object/from16 v0, p0

    #@14d
    iget-object v2, v0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    #@14f
    move/from16 v0, v20

    #@151
    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    #@154
    .line 2058
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@157
    monitor-exit v21

    #@158
    .line 2060
    sget-object v3, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    #@15a
    monitor-enter v3

    #@15b
    .line 2061
    :try_start_1
    move-object/from16 v0, p0

    #@15d
    iget-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    #@15f
    if-eqz v2, :cond_5

    #@161
    .line 2062
    move-object/from16 v0, p1

    #@163
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@165
    invoke-static {v2}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    #@168
    move-result-object v2

    #@169
    move-object/from16 v0, p0

    #@16b
    iput-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16d
    :cond_5
    monitor-exit v3

    #@16e
    .line 1977
    return-void

    #@16f
    .line 2024
    .end local v10    # "keyboardHidden":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    #@171
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@173
    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@175
    .line 2026
    .restart local v12    # "width":I
    move-object/from16 v0, p0

    #@177
    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@179
    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@17b
    .restart local v13    # "height":I
    goto/16 :goto_0

    #@17d
    .line 2034
    :cond_7
    move-object/from16 v0, p0

    #@17f
    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    #@181
    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@183
    .restart local v10    # "keyboardHidden":I
    goto/16 :goto_1

    #@185
    .line 1978
    .end local v10    # "keyboardHidden":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v20    # "configChanges":I
    :catchall_0
    move-exception v2

    #@186
    monitor-exit v21

    #@187
    throw v2

    #@188
    .line 2060
    .restart local v10    # "keyboardHidden":I
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    .restart local v20    # "configChanges":I
    :catchall_1
    move-exception v2

    #@189
    monitor-exit v3

    #@18a
    throw v2
.end method
