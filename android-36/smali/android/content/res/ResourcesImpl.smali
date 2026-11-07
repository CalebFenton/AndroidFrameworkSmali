.class public Landroid/content/res/ResourcesImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesImpl$LookupStack;,
        Landroid/content/res/ResourcesImpl$ThemeImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG_CONFIG:Z = false

.field private static final greylist-max-o DEBUG_LOAD:Z = false

.field private static final greylist-max-o ID_OTHER:I = 0x1000004

.field static final greylist-max-o TAG:Ljava/lang/String; = "Resources"

.field private static final greylist-max-r TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final greylist-max-r TRACE_FOR_PRELOAD:Z = false

.field private static final greylist-max-o XML_BLOCK_CACHE_SIZE:I = 0x4

.field private static greylist-max-o sPreloaded:Z

.field private static final greylist sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist sPreloadedComplexColors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final greylist sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sSync:Ljava/lang/Object;

.field private static final blacklist sThemeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final greylist mAccessLock:Ljava/lang/Object;

.field private final greylist mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAppliedSharedLibsHash:I

.field final greylist mAssets:Landroid/content/res/AssetManager;

.field private final greylist-max-o mCachedXmlBlockCookies:[I

.field private final greylist-max-o mCachedXmlBlockFiles:[Ljava/lang/String;

.field private final greylist-max-o mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final greylist mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final greylist-max-o mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-r mConfiguration:Landroid/content/res/Configuration;

.field private final greylist-max-o mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final greylist mDrawableCache:Landroid/content/res/DrawableCache;

.field private greylist-max-o mLastCachedXmlBlockIndex:I

.field private final greylist-max-o mLookupStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/res/ResourcesImpl$LookupStack;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMetrics:Landroid/util/DisplayMetrics;

.field private greylist-max-o mPluralRule:Landroid/icu/text/PluralRules;

.field private greylist-max-r mPreloading:Z

.field private final greylist mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsThemeRegistry()Llibcore/util/NativeAllocationRegistry;
    .registers 1

    sget-object v0, Landroid/content/res/ResourcesImpl;->sThemeRegistry:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    .line 113
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 117
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/LongSparseArray;

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 171
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 172
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1431
    nop

    .line 1432
    const-class v0, Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1433
    invoke-static {}, Landroid/content/res/AssetManager;->getThemeFreeFunction()J

    move-result-wide v1

    .line 1432
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesImpl;->sThemeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1431
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .registers 11
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 208
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "assets":Landroid/content/res/AssetManager;
    .end local p2    # "metrics":Landroid/util/DisplayMetrics;
    .end local p3    # "config":Landroid/content/res/Configuration;
    .end local p4    # "displayAdjustments":Landroid/view/DisplayAdjustments;
    .local v1, "assets":Landroid/content/res/AssetManager;
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    .local v3, "config":Landroid/content/res/Configuration;
    .local v4, "displayAdjustments":Landroid/view/DisplayAdjustments;
    invoke-direct/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Z)V

    .line 209
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Z)V
    .registers 9
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;
    .param p5, "reuseAssets"    # Z

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 125
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 127
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 129
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 131
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 134
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 142
    new-instance v0, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 143
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 154
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 155
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 156
    new-array v0, v0, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 161
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 166
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 221
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p5}, Landroid/app/ResourcesManager;->updateResourceImplAssetsWithRegisteredLibs(Landroid/content/res/AssetManager;Z)Landroid/util/Pair;

    move-result-object v0

    .line 223
    .local v0, "assetsAndHash":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/res/AssetManager;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/AssetManager;

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 224
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/content/res/ResourcesImpl;->mAppliedSharedLibsHash:I

    .line 225
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 226
    iput-object p4, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 227
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 228
    invoke-virtual {p4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p3, p2, v1, v2}, Landroid/content/res/ResourcesImpl;->updateConfigurationImpl(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Z)V

    .line 229
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/ResourcesImpl;)V
    .registers 8
    .param p1, "orig"    # Landroid/content/res/ResourcesImpl;

    .line 213
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 214
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    .line 213
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Z)V

    .line 215
    return-void
.end method

.method private static greylist-max-o adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 648
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 652
    .local v0, "separator":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    .line 653
    move-object v3, p0

    .line 654
    .local v3, "language":Ljava/lang/String;
    const-string v4, ""

    .local v4, "remainder":Ljava/lang/String;
    goto :goto_16

    .line 656
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "remainder":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 657
    .restart local v3    # "language":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 663
    .restart local v4    # "remainder":Ljava/lang/String;
    :goto_16
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_62

    :cond_1d
    goto :goto_3e

    :sswitch_1e
    const-string/jumbo v1, "yi"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_3f

    :sswitch_29
    const-string/jumbo v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_3f

    :sswitch_33
    const-string/jumbo v1, "he"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x2

    goto :goto_3f

    :goto_3e
    move v1, v2

    :goto_3f
    packed-switch v1, :pswitch_data_70

    .line 674
    move-object v1, v3

    .local v1, "adjustedLanguage":Ljava/lang/String;
    goto :goto_50

    .line 671
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_44
    const-string/jumbo v1, "iw"

    .line 672
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    goto :goto_50

    .line 668
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_48
    const-string/jumbo v1, "ji"

    .line 669
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    goto :goto_50

    .line 665
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_4c
    const-string/jumbo v1, "in"

    .line 666
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    nop

    .line 677
    :goto_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_62
    .sparse-switch
        0xcfd -> :sswitch_33
        0xd1b -> :sswitch_29
        0xf10 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_48
        :pswitch_44
    .end packed-switch
.end method

.method private static greylist-max-o attrForQuantityCode(Ljava/lang/String;)I
    .registers 2
    .param p0, "quantityCode"    # Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    :cond_7
    goto :goto_3e

    :sswitch_8
    const-string/jumbo v0, "zero"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3f

    :sswitch_13
    const-string/jumbo v0, "many"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_3f

    :sswitch_1e
    const-string/jumbo v0, "two"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3f

    :sswitch_29
    const-string/jumbo v0, "one"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3f

    :sswitch_34
    const-string v0, "few"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_3f

    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    packed-switch v0, :pswitch_data_70

    .line 396
    const v0, 0x1000004

    return v0

    .line 395
    :pswitch_46
    const v0, 0x1000009

    return v0

    .line 394
    :pswitch_4a
    const v0, 0x1000008

    return v0

    .line 393
    :pswitch_4e
    const v0, 0x1000007

    return v0

    .line 392
    :pswitch_52
    const v0, 0x1000006

    return v0

    .line 391
    :pswitch_56
    const v0, 0x1000005

    return v0

    :sswitch_data_5a
    .sparse-switch
        0x18b98 -> :sswitch_34
        0x1ae66 -> :sswitch_29
        0x1c24c -> :sswitch_1e
        0x33065f -> :sswitch_13
        0x38fea8 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
    .end packed-switch
.end method

.method private blacklist cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;I)V
    .registers 19
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "isColorDrawable"    # Z
    .param p3, "caches"    # Landroid/content/res/DrawableCache;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .param p6, "key"    # J
    .param p8, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p9, "cacheGeneration"    # I

    .line 849
    move-wide v2, p6

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    .line 850
    .local v5, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v5, :cond_8

    .line 851
    return-void

    .line 854
    :cond_8
    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_51

    .line 855
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    .line 856
    .local v0, "changingConfigs":I
    const/4 v1, 0x0

    if-eqz p2, :cond_23

    .line 857
    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v6, "drawable"

    invoke-direct {p0, v0, v1, v4, v6}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 858
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_50

    .line 861
    :cond_23
    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v6, "drawable"

    const/16 v7, 0x2000

    invoke-direct {p0, v0, v7, v4, v6}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 863
    and-int/lit16 v4, v0, 0x2000

    if-nez v4, :cond_43

    .line 866
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    aget-object v1, v4, v1

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 867
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_50

    .line 870
    :cond_43
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 874
    .end local v0    # "changingConfigs":I
    :cond_50
    :goto_50
    goto :goto_5d

    .line 875
    :cond_51
    iget-object v8, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v8

    .line 876
    move-object v1, p3

    move-object v4, p4

    move v7, p5

    move/from16 v6, p9

    :try_start_59
    invoke-virtual/range {v1 .. v7}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;IZ)V

    .line 877
    monitor-exit v8

    .line 879
    :goto_5d
    return-void

    .line 877
    :catchall_5e
    move-exception v0

    monitor-exit v8
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_5e

    throw v0
.end method

.method private greylist-max-o decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "value"    # Landroid/util/TypedValue;

    .line 924
    new-instance v0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/ImageDecoder$AssetInputStreamSource;-><init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    .line 927
    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    :try_start_5
    new-instance v1, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_f

    return-object v1

    .line 930
    :catch_f
    move-exception v1

    .line 933
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist decodeImageDrawable(Ljava/io/FileInputStream;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "wrapper"    # Landroid/content/res/Resources;

    .line 939
    invoke-static {p2, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 941
    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    :try_start_4
    new-instance v1, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    return-object v1

    .line 944
    :catch_e
    move-exception v1

    .line 947
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method static blacklist getAttributeSetSourceResId(Landroid/util/AttributeSet;)I
    .registers 2
    .param p0, "set"    # Landroid/util/AttributeSet;

    .line 1417
    if-eqz p0, :cond_f

    instance-of v0, p0, Landroid/content/res/XmlBlock$Parser;

    if-nez v0, :cond_7

    goto :goto_f

    .line 1420
    :cond_7
    move-object v0, p0

    check-cast v0, Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getSourceResId()I

    move-result v0

    return v0

    .line 1418
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;
    .registers 10
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "key"    # J

    .line 1231
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 1232
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    .line 1233
    .local v0, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v0, :cond_11

    .line 1234
    invoke-virtual {v0}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    return-object v1

    .line 1237
    :cond_11
    iget v1, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1239
    .local v1, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v2, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v2, :cond_31

    .line 1240
    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    iget v3, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v4, "color"

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v3, v4}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1242
    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1246
    :cond_31
    return-object v1
.end method

.method private greylist-max-o getPluralRule()Landroid/icu/text/PluralRules;
    .registers 4

    .line 270
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-nez v1, :cond_18

    .line 272
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 274
    :cond_18
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    monitor-exit v0

    return-object v1

    .line 275
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private static blacklist isIntLike(Ljava/lang/String;)Z
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_10

    goto :goto_2a

    .line 310
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "size":I
    :goto_15
    if-ge v0, v2, :cond_28

    .line 311
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 312
    .local v3, "c":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_27

    const/16 v4, 0x39

    if-le v3, v4, :cond_24

    goto :goto_27

    .line 310
    .end local v3    # "c":C
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 313
    .restart local v3    # "c":C
    :cond_27
    :goto_27
    return v1

    .line 316
    .end local v0    # "i":I
    .end local v2    # "size":I
    .end local v3    # "c":C
    :cond_28
    const/4 v0, 0x1

    return v0

    .line 309
    :cond_2a
    :goto_2a
    return v1
.end method

.method static synthetic blacklist lambda$decodeImageDrawable$1(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 928
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 929
    return-void
.end method

.method static synthetic blacklist lambda$decodeImageDrawable$2(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 942
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 943
    return-void
.end method

.method static synthetic blacklist lambda$new$0()Landroid/content/res/ResourcesImpl$LookupStack;
    .registers 2

    .line 143
    new-instance v0, Landroid/content/res/ResourcesImpl$LookupStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>(Landroid/content/res/ResourcesImpl-IA;)V

    return-object v0
.end method

.method private blacklist loadColorOrXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "file"    # Ljava/lang/String;

    .line 1044
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1045
    .local v0, "csl":Landroid/content/res/ColorStateList;
    new-instance v1, Landroid/graphics/drawable/ColorStateListDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorStateListDrawable;-><init>(Landroid/content/res/ColorStateList;)V
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v1

    .line 1046
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :catch_b
    move-exception v0

    move-object v1, v0

    .line 1049
    .local v1, "originalException":Landroid/content/res/Resources$NotFoundException;
    :try_start_d
    invoke-direct/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    .line 1050
    :catch_12
    move-exception v0

    .line 1052
    .local v0, "ignored":Ljava/lang/Exception;
    throw v1
.end method

.method private greylist-max-o loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 16
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1262
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c9

    .line 1267
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1284
    .local v2, "file":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1286
    .local v7, "complexColor":Landroid/content/res/ComplexColor;
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1287
    const-string v0, ".xml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "File "

    if-eqz v0, :cond_9a

    .line 1289
    :try_start_1a
    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v5, "ComplexColor"

    iget-boolean v6, p2, Landroid/util/TypedValue;->usesFeatureFlags:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_6c

    move-object v1, p0

    move v3, p3

    .end local p3    # "id":I
    .local v3, "id":I
    :try_start_22
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object p3

    .line 1292
    .local p3, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 1294
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_2a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v4, v1

    .local v4, "type":I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_36

    const/4 v1, 0x1

    if-eq v4, v1, :cond_36

    goto :goto_2a

    .line 1298
    :cond_36
    if-ne v4, v5, :cond_61

    .line 1302
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1303
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "gradient"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1304
    invoke-static {p1, p3, v0, p4}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v5

    move-object v7, v5

    .end local v7    # "complexColor":Landroid/content/res/ComplexColor;
    .local v5, "complexColor":Landroid/content/res/ComplexColor;
    goto :goto_59

    .line 1305
    .end local v5    # "complexColor":Landroid/content/res/ComplexColor;
    .restart local v7    # "complexColor":Landroid/content/res/ComplexColor;
    :cond_4b
    const-string/jumbo v5, "selector"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1306
    invoke-static {p1, p3, v0, p4}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v7, v5

    .line 1308
    :cond_59
    :goto_59
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5c} :catch_69

    .line 1316
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "type":I
    .end local p3    # "parser":Landroid/content/res/XmlResourceParser;
    nop

    .line 1323
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1325
    return-object v7

    .line 1299
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "type":I
    .restart local p3    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_61
    :try_start_61
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "id":I
    .end local v7    # "complexColor":Landroid/content/res/ComplexColor;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p4    # "theme":Landroid/content/res/Resources$Theme;
    throw v1
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_69

    .line 1309
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "type":I
    .end local p3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "file":Ljava/lang/String;
    .restart local v3    # "id":I
    .restart local v7    # "complexColor":Landroid/content/res/ComplexColor;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p4    # "theme":Landroid/content/res/Resources$Theme;
    :catch_69
    move-exception v0

    move-object p3, v0

    goto :goto_6f

    .end local v3    # "id":I
    .local p3, "id":I
    :catch_6c
    move-exception v0

    move v3, p3

    move-object p3, v0

    .line 1310
    .restart local v3    # "id":I
    .local p3, "e":Ljava/lang/Exception;
    :goto_6f
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1311
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " from ComplexColor resource ID #0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1313
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1314
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, p3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1315
    throw v0

    .line 1318
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "id":I
    .local p3, "id":I
    :cond_9a
    move v3, p3

    .end local p3    # "id":I
    .restart local v3    # "id":I
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1319
    new-instance p3, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from drawable resource ID #0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1321
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": .xml extension required"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1263
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "id":I
    .end local v7    # "complexColor":Landroid/content/res/ComplexColor;
    .restart local p3    # "id":I
    :cond_c9
    move v3, p3

    .end local p3    # "id":I
    .restart local v3    # "id":I
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t convert to ComplexColor: type=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private greylist-max-o loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    .registers 15
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "value"    # Landroid/util/TypedValue;
    .param p4, "id"    # I

    .line 1124
    iget v0, p3, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p3, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long v5, v0, v2

    .line 1125
    .local v5, "key":J
    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 1126
    .local v4, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ComplexColor;>;"
    invoke-virtual {v4, v5, v6, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ComplexColor;

    .line 1127
    .local v0, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v0, :cond_16

    .line 1128
    return-object v0

    .line 1130
    :cond_16
    invoke-virtual {v4}, Landroid/content/res/ConfigurationBoundResourceCache;->getGeneration()I

    move-result v9

    .line 1132
    .local v9, "cacheGeneration":I
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 1133
    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ConstantState;

    .line 1135
    .local v1, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v1, :cond_2b

    .line 1136
    invoke-virtual {v1, p1, p2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/res/ComplexColor;

    .line 1138
    :cond_2b
    if-nez v0, :cond_31

    .line 1139
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ResourcesImpl;->loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v0

    .line 1142
    :cond_31
    if-eqz v0, :cond_61

    .line 1143
    iget v2, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v2}, Landroid/content/res/ComplexColor;->setBaseChangingConfigurations(I)V

    .line 1145
    iget-boolean v2, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v2, :cond_58

    .line 1146
    invoke-virtual {v0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v2

    iget v3, p3, Landroid/util/TypedValue;->resourceId:I

    const-string v7, "color"

    const/4 v8, 0x0

    invoke-direct {p0, v2, v8, v3, v7}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1148
    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v7, p2

    goto :goto_62

    .line 1146
    :cond_56
    move-object v7, p2

    goto :goto_62

    .line 1151
    :cond_58
    invoke-virtual {v0}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v8

    move-object v7, p2

    .end local p2    # "theme":Landroid/content/res/Resources$Theme;
    .local v7, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v4 .. v9}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;I)V

    goto :goto_62

    .line 1142
    .end local v7    # "theme":Landroid/content/res/Resources$Theme;
    .restart local p2    # "theme":Landroid/content/res/Resources$Theme;
    :cond_61
    move-object v7, p2

    .line 1154
    .end local p2    # "theme":Landroid/content/res/Resources$Theme;
    .restart local v7    # "theme":Landroid/content/res/Resources$Theme;
    :goto_62
    return-object v0
.end method

.method private greylist-max-o loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;
    .registers 23
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I

    .line 959
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_160

    .line 964
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 984
    .local v6, "file":Ljava/lang/String;
    const-wide/16 v7, 0x2000

    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 985
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/res/ResourcesImpl$LookupStack;

    .line 988
    .local v9, "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    :try_start_1e
    invoke-virtual {v9, v4}, Landroid/content/res/ResourcesImpl$LookupStack;->contains(I)Z

    move-result v0

    if-nez v0, :cond_124

    .line 991
    invoke-virtual {v9, v4}, Landroid/content/res/ResourcesImpl$LookupStack;->push(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_130
    .catch Ljava/lang/StackOverflowError; {:try_start_1e .. :try_end_27} :catch_130

    .line 993
    :try_start_27
    const-string v0, ".xml"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 994
    invoke-virtual {v1, v4}, Landroid/content/res/ResourcesImpl;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_11c

    .line 995
    .local v0, "typeName":Ljava/lang/String;
    if-eqz v0, :cond_59

    :try_start_35
    const-string v2, "color"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 996
    move-object/from16 v2, p1

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadColorOrXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_4e

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .local v10, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_67

    .line 1027
    .end local v0    # "typeName":Ljava/lang/String;
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_4e
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    goto/16 :goto_11f

    .line 998
    .restart local v0    # "typeName":Ljava/lang/String;
    :cond_59
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    :try_start_63
    invoke-direct/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1000
    .end local v0    # "typeName":Ljava/lang/String;
    .restart local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_67
    goto/16 :goto_111

    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_69
    move-object/from16 v2, p1

    const-string v0, "frro:/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 1001
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1002
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "offset"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-wide v14, v10

    .line 1003
    .local v14, "offset":J
    const-string/jumbo v5, "size"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1004
    .local v16, "size":J
    const-wide/16 v10, 0x0

    cmp-long v5, v14, v10

    if-ltz v5, :cond_f8

    cmp-long v5, v16, v10

    if-lez v5, :cond_f8

    .line 1007
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/data/resource-cache/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ef

    .line 1009
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".frro"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ef

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_ef

    .line 1012
    const/high16 v10, 0x10000000

    invoke-static {v5, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 1014
    .local v13, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v12, Landroid/content/res/AssetFileDescriptor;

    invoke-direct/range {v12 .. v17}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 1018
    .local v12, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v10

    .line 1019
    .local v10, "is":Ljava/io/FileInputStream;
    invoke-direct {v1, v10, v2}, Landroid/content/res/ResourcesImpl;->decodeImageDrawable(Ljava/io/FileInputStream;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v10, v11

    .line 1020
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v5    # "f":Ljava/io/File;
    .end local v12    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "offset":J
    .end local v16    # "size":J
    .local v10, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_111

    .line 1010
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v14    # "offset":J
    .restart local v16    # "size":J
    :cond_ef
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    const-string/jumbo v11, "invalid frro path"

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v6    # "file":Ljava/lang/String;
    .end local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "density":I
    throw v10

    .line 1005
    .end local v5    # "f":Ljava/io/File;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "density":I
    :cond_f8
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    const-string/jumbo v10, "invalid frro parameters"

    invoke-direct {v5, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v6    # "file":Ljava/lang/String;
    .end local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "density":I
    throw v5

    .line 1021
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v14    # "offset":J
    .end local v16    # "size":J
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "density":I
    :cond_101
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v5, v3, Landroid/util/TypedValue;->assetCookie:I

    const/4 v10, 0x2

    invoke-virtual {v0, v5, v6, v10}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 1023
    .local v0, "is":Ljava/io/InputStream;
    move-object v5, v0

    check-cast v5, Landroid/content/res/AssetManager$AssetInputStream;

    .line 1024
    .local v5, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-direct {v1, v5, v2, v3}, Landroid/content/res/ResourcesImpl;->decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_111
    .catchall {:try_start_63 .. :try_end_111} :catchall_11a

    .line 1027
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v5    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .restart local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_111
    :try_start_111
    invoke-virtual {v9}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_12e
    .catch Ljava/lang/StackOverflowError; {:try_start_111 .. :try_end_114} :catch_12e

    .line 1028
    nop

    .line 1035
    nop

    .line 1036
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1038
    return-object v10

    .line 1027
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_11a
    move-exception v0

    goto :goto_11f

    :catchall_11c
    move-exception v0

    move-object/from16 v2, p1

    :goto_11f
    :try_start_11f
    invoke-virtual {v9}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V

    .line 1028
    nop

    .end local v6    # "file":Ljava/lang/String;
    .end local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "density":I
    throw v0

    .line 989
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "density":I
    :cond_124
    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/Exception;

    const-string v5, "Recursive reference in drawable"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v6    # "file":Ljava/lang/String;
    .end local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "density":I
    throw v0
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_12e} :catch_12e
    .catch Ljava/lang/StackOverflowError; {:try_start_11f .. :try_end_12e} :catch_12e

    .line 1029
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "density":I
    :catch_12e
    move-exception v0

    goto :goto_133

    :catch_130
    move-exception v0

    move-object/from16 v2, p1

    .line 1030
    .local v0, "e":Ljava/lang/Throwable;
    :goto_133
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1031
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from drawable resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1032
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v5, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1034
    throw v5

    .line 960
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "file":Ljava/lang/String;
    .end local v9    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    :cond_160
    move-object/from16 v2, p1

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 961
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not a Drawable (color or path): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 13
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1061
    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v5, "drawable"

    iget-boolean v6, p2, Landroid/util/TypedValue;->usesFeatureFlags:Z

    move-object v1, p0

    move v3, p3

    move-object v2, p5

    .end local p3    # "id":I
    .end local p5    # "file":Ljava/lang/String;
    .local v2, "file":Ljava/lang/String;
    .local v3, "id":I
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object p3

    .line 1064
    .local p3, "rp":Landroid/content/res/XmlResourceParser;
    const/4 p5, 0x0

    :try_start_e
    invoke-static {p1, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p5
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_18

    .line 1065
    if-eqz p3, :cond_17

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1064
    :cond_17
    return-object p5

    .line 1060
    :catchall_18
    move-exception v0

    move-object p5, v0

    if-eqz p3, :cond_24

    :try_start_1c
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v0

    invoke-virtual {p5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw p5
.end method

.method static blacklist resetDrawableStateCache()V
    .registers 4

    .line 183
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 185
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 186
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 187
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 188
    sput-boolean v2, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private blacklist updateConfigurationImpl(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Z)V
    .registers 45
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "forceAssetsRefresh"    # Z

    .line 443
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "ResourcesImpl#updateConfiguration"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 445
    :try_start_d
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_290

    .line 453
    if-eqz v3, :cond_1d

    .line 454
    :try_start_12
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_1d

    .line 598
    :catchall_18
    move-exception v0

    move-wide/from16 v16, v4

    goto/16 :goto_28a

    .line 456
    :cond_1d
    :goto_1d
    if-eqz v2, :cond_24

    .line 457
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 468
    :cond_24
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v7}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 470
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v0

    .line 473
    .local v0, "configChanges":I
    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    .line 474
    .local v7, "locales":Landroid/os/LocaleList;
    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 475
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v8

    move-object v7, v8

    .line 476
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 479
    :cond_49
    const/4 v8, 0x0

    .line 480
    .local v8, "selectedLocales":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 481
    .local v9, "defaultLocale":Ljava/lang/String;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ResourcesManager;->getLocaleConfig()Landroid/app/LocaleConfig;

    move-result-object v10

    .line 482
    .local v10, "lc":Landroid/app/LocaleConfig;
    and-int/lit8 v11, v0, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_117

    .line 483
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v11

    if-le v11, v13, :cond_114

    .line 484
    invoke-static {}, Landroid/content/res/Flags;->defaultLocale()Z

    move-result v11

    if-eqz v11, :cond_cd

    invoke-virtual {v10}, Landroid/app/LocaleConfig;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v11

    if-eqz v11, :cond_cd

    .line 485
    nop

    .line 486
    invoke-virtual {v10}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/os/LocaleList;->getIntersection(Landroid/os/LocaleList;)[Ljava/util/Locale;

    move-result-object v11

    .line 487
    .local v11, "intersection":[Ljava/util/Locale;
    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v15, Landroid/os/LocaleList;

    invoke-direct {v15, v11}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v14, v15}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 488
    array-length v14, v11

    new-array v14, v14, [Ljava/lang/String;

    move-object v8, v14

    .line 489
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_83
    array-length v15, v11

    if-ge v14, v15, :cond_95

    .line 490
    aget-object v15, v11, v14

    .line 491
    invoke-virtual {v15}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 489
    add-int/lit8 v14, v14, 0x1

    goto :goto_83

    .line 493
    .end local v14    # "i":I
    :cond_95
    nop

    .line 494
    invoke-virtual {v10}, Landroid/app/LocaleConfig;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 495
    const-string v14, "Resources"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_aa
    .catchall {:try_start_12 .. :try_end_aa} :catchall_18

    move-wide/from16 v16, v4

    :try_start_ac
    const-string v4, "Updating configuration, with default locale "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and selected locales "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 497
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-static {v14, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    nop

    .end local v11    # "intersection":[Ljava/util/Locale;
    goto :goto_119

    .line 484
    :cond_cd
    move-wide/from16 v16, v4

    .line 503
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "availableLocales":[Ljava/lang/String;
    invoke-static {v4}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 506
    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 507
    invoke-static {v4}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 508
    const/4 v4, 0x0

    .line 512
    :cond_e9
    if-eqz v4, :cond_119

    .line 513
    invoke-virtual {v7, v4}, Landroid/os/LocaleList;->getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 515
    .local v5, "bestLocale":Ljava/util/Locale;
    if-eqz v5, :cond_119

    .line 516
    nop

    .line 517
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 518
    invoke-virtual {v7, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_119

    .line 519
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v14, Landroid/os/LocaleList;

    invoke-direct {v14, v5, v7}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-virtual {v11, v14}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    goto :goto_119

    .line 483
    .end local v4    # "availableLocales":[Ljava/lang/String;
    .end local v5    # "bestLocale":Ljava/util/Locale;
    :cond_114
    move-wide/from16 v16, v4

    goto :goto_119

    .line 482
    :cond_117
    move-wide/from16 v16, v4

    .line 527
    :cond_119
    :goto_119
    if-nez v8, :cond_16f

    .line 528
    invoke-static {}, Landroid/content/res/Flags;->defaultLocale()Z

    move-result v4

    if-eqz v4, :cond_158

    invoke-virtual {v10}, Landroid/app/LocaleConfig;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_158

    .line 529
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    .line 530
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12f
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v5

    if-ge v4, v5, :cond_146

    .line 531
    invoke-virtual {v7, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_12f

    .line 533
    .end local v4    # "i":I
    :cond_146
    invoke-virtual {v10}, Landroid/app/LocaleConfig;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    goto :goto_173

    .line 535
    :cond_158
    nop

    .line 536
    invoke-virtual {v7, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    goto :goto_173

    .line 527
    :cond_16f
    move-object/from16 v22, v8

    move-object/from16 v21, v9

    .line 540
    .end local v8    # "selectedLocales":[Ljava/lang/String;
    .end local v9    # "defaultLocale":Ljava/lang/String;
    .local v21, "defaultLocale":Ljava/lang/String;
    .local v22, "selectedLocales":[Ljava/lang/String;
    :goto_173
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v4, :cond_18e

    .line 541
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    iput v5, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 542
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    const v8, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v8

    iput v5, v4, Landroid/util/DisplayMetrics;->density:F

    .line 547
    :cond_18e
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 548
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1a2

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_1a4

    :cond_1a2
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_1a4
    mul-float/2addr v5, v8

    iput v5, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 549
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 550
    invoke-static {v5}, Landroid/content/res/FontScaleConverterFactory;->forScale(F)Landroid/content/res/FontScaleConverter;

    move-result-object v5

    iput-object v5, v4, Landroid/util/DisplayMetrics;->fontScaleConverter:Landroid/content/res/FontScaleConverter;

    .line 553
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v4, v5, :cond_1ca

    .line 554
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 555
    .local v4, "width":I
    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v4

    move/from16 v30, v5

    .local v5, "height":I
    goto :goto_1d6

    .line 558
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_1ca
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 560
    .restart local v4    # "width":I
    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v4

    move/from16 v30, v5

    .line 564
    .end local v4    # "width":I
    .local v29, "width":I
    .local v30, "height":I
    :goto_1d6
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v4, v13, :cond_1e7

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e7

    .line 567
    const/4 v4, 0x3

    move/from16 v27, v4

    .local v4, "keyboardHidden":I
    goto :goto_1ed

    .line 569
    .end local v4    # "keyboardHidden":I
    :cond_1e7
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    move/from16 v27, v4

    .line 572
    .local v27, "keyboardHidden":I
    :goto_1ed
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->mcc:I

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->mnc:I

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->touchscreen:I

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->keyboard:I

    iget-object v15, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->navigation:I

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v32, v2

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v33, v2

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v34, v2

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v35, v2

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->colorMode:I

    move/from16 v36, v2

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 582
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getGrammaticalGender()I

    move-result v37

    sget v38, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 572
    move/from16 v39, p4

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v8

    move/from16 v23, v9

    move/from16 v24, v11

    move/from16 v31, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v28, v15

    invoke-virtual/range {v18 .. v39}, Landroid/content/res/AssetManager;->setConfigurationInternal(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIZ)V

    .line 591
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 592
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 593
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 594
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 595
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 597
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 598
    .end local v0    # "configChanges":I
    .end local v7    # "locales":Landroid/os/LocaleList;
    .end local v10    # "lc":Landroid/app/LocaleConfig;
    .end local v21    # "defaultLocale":Ljava/lang/String;
    .end local v22    # "selectedLocales":[Ljava/lang/String;
    .end local v27    # "keyboardHidden":I
    .end local v29    # "width":I
    .end local v30    # "height":I
    monitor-exit v6
    :try_end_269
    .catchall {:try_start_ac .. :try_end_269} :catchall_28e

    .line 599
    :try_start_269
    sget-object v2, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26c
    .catchall {:try_start_269 .. :try_end_26c} :catchall_28c

    .line 600
    :try_start_26c
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-eqz v0, :cond_281

    .line 601
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 603
    :cond_281
    monitor-exit v2
    :try_end_282
    .catchall {:try_start_26c .. :try_end_282} :catchall_287

    .line 605
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    nop

    .line 607
    return-void

    .line 603
    :catchall_287
    move-exception v0

    :try_start_288
    monitor-exit v2
    :try_end_289
    .catchall {:try_start_288 .. :try_end_289} :catchall_287

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "metrics":Landroid/util/DisplayMetrics;
    .end local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local p4    # "forceAssetsRefresh":Z
    :try_start_289
    throw v0
    :try_end_28a
    .catchall {:try_start_289 .. :try_end_28a} :catchall_28c

    .line 598
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    .restart local p4    # "forceAssetsRefresh":Z
    :goto_28a
    :try_start_28a
    monitor-exit v6
    :try_end_28b
    .catchall {:try_start_28a .. :try_end_28b} :catchall_28e

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "metrics":Landroid/util/DisplayMetrics;
    .end local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local p4    # "forceAssetsRefresh":Z
    :try_start_28b
    throw v0
    :try_end_28c
    .catchall {:try_start_28b .. :try_end_28c} :catchall_28c

    .line 605
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    .restart local p4    # "forceAssetsRefresh":Z
    :catchall_28c
    move-exception v0

    goto :goto_293

    .line 598
    :catchall_28e
    move-exception v0

    goto :goto_28a

    .line 605
    :catchall_290
    move-exception v0

    move-wide/from16 v16, v4

    :goto_293
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    throw v0
.end method

.method private greylist-max-o verifyPreloadConfig(IIILjava/lang/String;)Z
    .registers 8
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 887
    const v0, -0x40001001    # -1.9995116f

    and-int/2addr v0, p1

    not-int v1, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_49

    .line 891
    :try_start_8
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    .line 894
    .local v0, "resName":Ljava/lang/String;
    goto :goto_11

    .line 892
    .end local v0    # "resName":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 893
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    move-object v0, v1

    .line 897
    .local v0, "resName":Ljava/lang/String;
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resource #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 898
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that varies with configuration!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 897
    const-string v2, "Resources"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v1, 0x0

    return v1

    .line 913
    .end local v0    # "resName":Ljava/lang/String;
    :cond_49
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o calcConfigChanges(Landroid/content/res/Configuration;)I
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 617
    if-nez p1, :cond_4

    .line 619
    const/4 v0, -0x1

    return v0

    .line 622
    :cond_4
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 623
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 624
    .local v0, "density":I
    if-nez v0, :cond_11

    .line 625
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 628
    :cond_11
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 630
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 631
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 633
    :cond_31
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    return v1
.end method

.method public blacklist clearAllCaches()V
    .registers 3

    .line 705
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v1}, Landroid/content/res/DrawableCache;->clear()V

    .line 707
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v1}, Landroid/content/res/DrawableCache;->clear()V

    .line 708
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 709
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 710
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 711
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 712
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1436
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

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1439
    return-void
.end method

.method greylist-max-o finishPreloading()V
    .registers 2

    .line 1409
    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_a

    .line 1410
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 1411
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 1413
    :cond_a
    return-void
.end method

.method public greylist-max-o flushLayoutCache()V
    .registers 6

    .line 686
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 687
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 688
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 691
    .local v1, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1f

    .line 692
    aget-object v4, v1, v3

    .line 693
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_1c

    .line 694
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 691
    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 697
    .end local v3    # "i":I
    :cond_1f
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 698
    .end local v1    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method greylist-max-o getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public blacklist getAppliedSharedLibsHash()I
    .registers 2

    .line 1645
    iget v0, p0, Landroid/content/res/ResourcesImpl;->mAppliedSharedLibsHash:I

    return v0
.end method

.method public greylist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method greylist-max-o getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method greylist-max-r getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method greylist-max-o getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 320
    if-eqz p1, :cond_15

    .line 323
    invoke-static {p1}, Landroid/content/res/ResourcesImpl;->isIntLike(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 325
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    .line 326
    :catch_d
    move-exception v0

    .line 330
    :cond_e
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 321
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getLastResourceResolution()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 369
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "Associated AssetManager hasn\'t resolved a resource"

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist getMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method greylist-max-o getPreloadedDrawables()Landroid/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .line 1424
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method greylist-max-o getQuantityText(II)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Landroid/content/res/ResourcesImpl;->getPluralRule()Landroid/icu/text/PluralRules;

    move-result-object v0

    .line 375
    .local v0, "rule":Landroid/icu/text/PluralRules;
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    int-to-double v2, p2

    .line 376
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ResourcesImpl;->attrForQuantityCode(Ljava/lang/String;)I

    move-result v2

    .line 375
    invoke-virtual {v1, p1, v2}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 377
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_16

    .line 378
    return-object v1

    .line 380
    :cond_16
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const v3, 0x1000004

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_22

    .line 382
    return-object v1

    .line 384
    :cond_22
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plural resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " quantity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-double v4, p2

    .line 386
    invoke-virtual {v0, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method greylist-max-o getResourceEntryName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 361
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourceName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 337
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourcePackageName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 345
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourceTypeName(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_9

    return-object v0

    .line 353
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getSizeConfigurations()[Landroid/content/res/Configuration;
    .registers 2

    .line 258
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public greylist-max-r getValue(ILandroid/util/TypedValue;Z)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 283
    .local v0, "found":Z
    if-eqz v0, :cond_a

    .line 284
    return-void

    .line 286
    :cond_a
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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 300
    const-string/jumbo v0, "string"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "id":I
    if-eqz v0, :cond_e

    .line 302
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 303
    return-void

    .line 305
    :cond_e
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getValueForDensity(IILandroid/util/TypedValue;Z)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 292
    .local v0, "found":Z
    if-eqz v0, :cond_9

    .line 293
    return-void

    .line 295
    :cond_9
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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 11
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1210
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1213
    .local v0, "key":J
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1b

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1b

    .line 1215
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 1218
    :cond_1b
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v2

    .line 1219
    .local v2, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v2, :cond_29

    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_29

    .line 1220
    move-object v3, v2

    check-cast v3, Landroid/content/res/ColorStateList;

    return-object v3

    .line 1223
    :cond_29
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find ColorStateList from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1225
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method greylist-max-o loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 12
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1168
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1171
    .local v0, "key":J
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1b

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1b

    .line 1173
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 1176
    :cond_1b
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, "file":Ljava/lang/String;
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "File "

    if-eqz v3, :cond_5a

    .line 1181
    :try_start_2b
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_31

    .line 1188
    .local v3, "complexColor":Landroid/content/res/ComplexColor;
    nop

    .line 1195
    return-object v3

    .line 1182
    .end local v3    # "complexColor":Landroid/content/res/ComplexColor;
    :catch_31
    move-exception v3

    .line 1183
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from complex color resource ID #0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1185
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v5, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v5, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1187
    throw v5

    .line 1190
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_5a
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1192
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": .xml extension required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method greylist-max-o loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 23
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 723
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v2, p2

    move/from16 v12, p4

    move-object/from16 v5, p5

    if-eqz v12, :cond_17

    iget v3, v2, Landroid/util/TypedValue;->density:I

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v3, v4, :cond_15

    goto :goto_17

    :cond_15
    const/4 v3, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v3, 0x1

    :goto_18
    move v14, v3

    .line 730
    .local v14, "useCache":Z
    if-lez v12, :cond_3b

    iget v3, v2, Landroid/util/TypedValue;->density:I

    if-lez v3, :cond_3b

    iget v3, v2, Landroid/util/TypedValue;->density:I

    const v4, 0xffff

    if-eq v3, v4, :cond_3b

    .line 731
    iget v3, v2, Landroid/util/TypedValue;->density:I

    if-ne v3, v12, :cond_31

    .line 732
    iget-object v3, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/util/TypedValue;->density:I

    goto :goto_3b

    .line 734
    :cond_31
    iget v3, v2, Landroid/util/TypedValue;->density:I

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v3, v4

    div-int/2addr v3, v12

    iput v3, v2, Landroid/util/TypedValue;->density:I

    .line 752
    :cond_3b
    :goto_3b
    :try_start_3b
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_4f

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_4f

    .line 754
    const/4 v3, 0x1

    .line 755
    .local v3, "isColorDrawable":Z
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 756
    .local v4, "caches":Landroid/content/res/DrawableCache;
    iget v6, v2, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    move-wide v7, v6

    .local v6, "key":J
    goto :goto_5d

    .line 758
    .end local v3    # "isColorDrawable":Z
    .end local v4    # "caches":Landroid/content/res/DrawableCache;
    .end local v6    # "key":J
    :cond_4f
    const/4 v3, 0x0

    .line 759
    .restart local v3    # "isColorDrawable":Z
    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 760
    .restart local v4    # "caches":Landroid/content/res/DrawableCache;
    iget v6, v2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    iget v8, v2, Landroid/util/TypedValue;->data:I

    int-to-long v8, v8

    or-long/2addr v6, v8

    move-wide v7, v6

    .line 763
    .local v7, "key":J
    :goto_5d
    invoke-virtual {v4}, Landroid/content/res/DrawableCache;->getGeneration()I

    move-result v10

    .line 767
    .local v10, "cacheGeneration":I
    iget-boolean v6, v1, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-nez v6, :cond_73

    if-eqz v14, :cond_73

    .line 768
    invoke-virtual {v4, v7, v8, v11, v5}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 769
    .local v6, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_73

    .line 770
    iget v0, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 771
    return-object v6

    .line 778
    .end local v6    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_73
    if-eqz v3, :cond_7f

    .line 779
    sget-object v6, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v15, v6

    .local v6, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_90

    .line 781
    .end local v6    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_7f
    sget-object v6, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    aget-object v6, v6, v9

    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v15, v6

    .line 785
    .local v15, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_90
    const/4 v6, 0x0

    .line 786
    .local v6, "needsNewDrawableAfterCache":Z
    if-eqz v15, :cond_98

    .line 787
    invoke-virtual {v15, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .local v9, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_a7

    .line 788
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_98
    if-eqz v3, :cond_a2

    .line 789
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v9, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v9    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_a7

    .line 791
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_a2
    invoke-direct/range {p0 .. p4}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    .line 796
    .restart local v9    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_a7
    instance-of v0, v9, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_ae

    .line 797
    const/4 v6, 0x1

    move v0, v6

    goto :goto_af

    .line 796
    :cond_ae
    move v0, v6

    .line 803
    .end local v6    # "needsNewDrawableAfterCache":Z
    .local v0, "needsNewDrawableAfterCache":Z
    :goto_af
    if-eqz v9, :cond_b9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v6, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v6, 0x0

    .line 804
    .local v6, "canApplyTheme":Z
    :goto_ba
    if-eqz v6, :cond_ca

    if-eqz v5, :cond_ca

    .line 805
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v9, v16

    .line 806
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 807
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 813
    :cond_ca
    if-eqz v9, :cond_e3

    .line 814
    iget v13, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v9, v13}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 815
    if-eqz v14, :cond_e3

    .line 816
    invoke-direct/range {v1 .. v10}, Landroid/content/res/ResourcesImpl;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;I)V

    .line 818
    if-eqz v0, :cond_e3

    .line 819
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 820
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v2, :cond_e3

    .line 821
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_e2} :catch_e4

    move-object v9, v5

    .line 827
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_e3
    return-object v9

    .line 828
    .end local v0    # "needsNewDrawableAfterCache":Z
    .end local v3    # "isColorDrawable":Z
    .end local v4    # "caches":Landroid/content/res/DrawableCache;
    .end local v6    # "canApplyTheme":Z
    .end local v7    # "key":J
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v10    # "cacheGeneration":I
    .end local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_e4
    move-exception v0

    move-object v2, v0

    .line 831
    .local v2, "e":Ljava/lang/Exception;
    move/from16 v3, p3

    :try_start_e8
    invoke-virtual {v1, v3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_ec
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e8 .. :try_end_ec} :catch_ed

    .line 834
    .local v0, "name":Ljava/lang/String;
    goto :goto_f1

    .line 832
    .end local v0    # "name":Ljava/lang/String;
    :catch_ed
    move-exception v0

    .line 833
    .local v0, "e2":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "(missing name)"

    move-object v0, v4

    .line 840
    .local v0, "name":Ljava/lang/String;
    :goto_f1
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drawable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 841
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 842
    .local v4, "nfe":Landroid/content/res/Resources$NotFoundException;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/StackTraceElement;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 843
    throw v4
.end method

.method public greylist-max-o loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .registers 16
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .line 1073
    const-string v1, "Resources"

    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b1

    .line 1078
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1079
    .local v3, "file":Ljava/lang/String;
    const-string/jumbo v0, "res/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_17

    .line 1080
    return-object v8

    .line 1083
    :cond_17
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 1084
    .local v9, "cached":Landroid/graphics/Typeface;
    if-eqz v9, :cond_20

    .line 1085
    return-object v9

    .line 1092
    :cond_20
    const-wide/16 v10, 0x2000

    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1094
    :try_start_25
    const-string/jumbo v0, "xml"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1095
    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v6, "font"

    iget-boolean v7, p2, Landroid/util/TypedValue;->usesFeatureFlags:Z
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_34} :catch_8b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_34} :catch_6f
    .catchall {:try_start_25 .. :try_end_34} :catchall_6a

    move-object v2, p0

    move v4, p3

    .end local p3    # "id":I
    .local v4, "id":I
    :try_start_36
    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object p3

    .line 1097
    .local p3, "rp":Landroid/content/res/XmlResourceParser;
    nop

    .line 1098
    invoke-static {p3, p1}, Landroid/content/res/FontResourcesParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v0
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_3f} :catch_67
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3f} :catch_64
    .catchall {:try_start_36 .. :try_end_3f} :catchall_ab

    .line 1099
    .local v0, "familyEntry":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    if-nez v0, :cond_46

    .line 1100
    nop

    .line 1111
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1100
    return-object v8

    .line 1102
    :cond_46
    :try_start_46
    iget-object v5, v2, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v0, v5, v3}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_4c} :catch_67
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4c} :catch_64
    .catchall {:try_start_46 .. :try_end_4c} :catchall_ab

    .line 1111
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1102
    return-object v1

    .line 1104
    .end local v0    # "familyEntry":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .end local v4    # "id":I
    .local p3, "id":I
    :cond_50
    move-object v2, p0

    move v4, p3

    .end local p3    # "id":I
    .restart local v4    # "id":I
    :try_start_52
    new-instance p3, Landroid/graphics/Typeface$Builder;

    iget-object v0, v2, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    const/4 v6, 0x0

    invoke-direct {p3, v0, v3, v6, v5}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 1105
    invoke-virtual {p3}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p3
    :try_end_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_60} :catch_67
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_60} :catch_64
    .catchall {:try_start_52 .. :try_end_60} :catchall_ab

    .line 1111
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1104
    return-object p3

    .line 1108
    :catch_64
    move-exception v0

    move-object p3, v0

    goto :goto_73

    .line 1106
    :catch_67
    move-exception v0

    move-object p3, v0

    goto :goto_8f

    .line 1111
    .end local v4    # "id":I
    .restart local p3    # "id":I
    :catchall_6a
    move-exception v0

    move-object v2, p0

    move v4, p3

    move-object p3, v0

    .end local p3    # "id":I
    .restart local v4    # "id":I
    goto :goto_ad

    .line 1108
    .end local v4    # "id":I
    .restart local p3    # "id":I
    :catch_6f
    move-exception v0

    move-object v2, p0

    move v4, p3

    move-object p3, v0

    .line 1109
    .restart local v4    # "id":I
    .local p3, "e":Ljava/io/IOException;
    :goto_73
    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read xml resource "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    nop

    .end local p3    # "e":Ljava/io/IOException;
    goto :goto_a6

    .line 1106
    .end local v4    # "id":I
    .local p3, "id":I
    :catch_8b
    move-exception v0

    move-object v2, p0

    move v4, p3

    move-object p3, v0

    .line 1107
    .restart local v4    # "id":I
    .local p3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse xml resource "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catchall {:try_start_73 .. :try_end_a5} :catchall_ab

    .line 1111
    nop

    .end local p3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_a6
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1112
    nop

    .line 1113
    return-object v8

    .line 1111
    :catchall_ab
    move-exception v0

    move-object p3, v0

    :goto_ad
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1112
    throw p3

    .line 1074
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v9    # "cached":Landroid/graphics/Typeface;
    .local p3, "id":I
    :cond_b1
    move-object v2, p0

    move v4, p3

    .end local p3    # "id":I
    .restart local v4    # "id":I
    new-instance p3, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1075
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is not a Font: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method blacklist loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;
    .registers 15
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

    .line 1343
    if-eqz p2, :cond_86

    .line 1345
    :try_start_2
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_51

    .line 1346
    :try_start_5
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 1347
    .local v1, "cachedXmlBlockCookies":[I
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 1348
    .local v2, "cachedXmlBlockFiles":[Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 1350
    .local v3, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    array-length v4, v2

    .line 1351
    .local v4, "num":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    if-ge v5, v4, :cond_2a

    .line 1352
    aget v6, v1, v5

    if-ne v6, p3, :cond_27

    aget-object v6, v2, v5

    if-eqz v6, :cond_27

    aget-object v6, v2, v5

    .line 1353
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1354
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    monitor-exit v0

    return-object v6

    .line 1351
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1360
    .end local v5    # "i":I
    :cond_2a
    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1361
    invoke-virtual {v5, p3, p1, p5}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;Z)Landroid/content/res/XmlBlock;

    move-result-object v5

    .line 1362
    .local v5, "block":Landroid/content/res/XmlBlock;
    if-eqz v5, :cond_4c

    .line 1363
    iget v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v4

    .line 1364
    .local v6, "pos":I
    iput v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 1365
    aget-object v7, v3, v6

    .line 1366
    .local v7, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v7, :cond_40

    .line 1367
    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->close()V

    .line 1369
    :cond_40
    aput p3, v1, v6

    .line 1370
    aput-object p1, v2, v6

    .line 1371
    aput-object v5, v3, v6

    .line 1372
    invoke-virtual {v5, p2}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    monitor-exit v0

    return-object v8

    .line 1374
    .end local v1    # "cachedXmlBlockCookies":[I
    .end local v2    # "cachedXmlBlockFiles":[Ljava/lang/String;
    .end local v3    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    .end local v4    # "num":I
    .end local v5    # "block":Landroid/content/res/XmlBlock;
    .end local v6    # "pos":I
    .end local v7    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_4c
    monitor-exit v0

    .line 1380
    goto :goto_86

    .line 1374
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_4e

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "file":Ljava/lang/String;
    .end local p2    # "id":I
    .end local p3    # "assetCookie":I
    .end local p4    # "type":Ljava/lang/String;
    .end local p5    # "usesFeatureFlags":Z
    :try_start_50
    throw v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_51} :catch_51

    .line 1375
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "file":Ljava/lang/String;
    .restart local p2    # "id":I
    .restart local p3    # "assetCookie":I
    .restart local p4    # "type":Ljava/lang/String;
    .restart local p5    # "usesFeatureFlags":Z
    :catch_51
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from xml type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1377
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1378
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1379
    throw v1

    .line 1383
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_86
    :goto_86
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from xml type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1384
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;
    .registers 2

    .line 1428
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    return-object v0
.end method

.method greylist-max-o openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 416
    :try_start_4
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 418
    :catch_14
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 421
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v3, :cond_29

    const-string v3, "(null)"

    goto :goto_2f

    :cond_29
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 424
    throw v1
.end method

.method greylist-max-o openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p1, "id"    # I
    .param p2, "tempValue"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 405
    :try_start_4
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 406
    :catch_13
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final greylist-max-o startPreloading()V
    .registers 4

    .line 1393
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1394
    :try_start_3
    sget-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    if-nez v1, :cond_18

    .line 1397
    const/4 v1, 0x1

    sput-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    .line 1398
    iput-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 1399
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1400
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1401
    monitor-exit v0

    .line 1402
    return-void

    .line 1395
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    throw v1

    .line 1401
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public greylist-max-o updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesImpl;->updateConfigurationImpl(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Z)V

    .line 439
    return-void
.end method
