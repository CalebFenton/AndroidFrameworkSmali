.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$CustomFallbackBuilder;,
        Landroid/graphics/Typeface$Builder;,
        Landroid/graphics/Typeface$NoImagePreloadHolder;,
        Landroid/graphics/Typeface$Style;
    }
.end annotation


# static fields
.field public static final whitelist BOLD:I = 0x1

.field public static final whitelist BOLD_ITALIC:I = 0x3

.field public static final whitelist DEFAULT:Landroid/graphics/Typeface;

.field public static final whitelist DEFAULT_BOLD:Landroid/graphics/Typeface;

.field public static final greylist-max-o DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final greylist-max-o EMPTY_AXES:[I

.field public static final blacklist ENABLE_LAZY_TYPEFACE_INITIALIZATION:Z = true

.field public static final whitelist ITALIC:I = 0x2

.field public static final whitelist MONOSPACE:Landroid/graphics/Typeface;

.field public static final whitelist NORMAL:I = 0x0

.field public static final greylist-max-o RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final whitelist SANS_SERIF:Landroid/graphics/Typeface;

.field public static final whitelist SERIF:Landroid/graphics/Typeface;

.field private static final greylist-max-o STYLE_ITALIC:I = 0x1

.field public static final greylist-max-o STYLE_MASK:I = 0x3

.field private static final greylist-max-o STYLE_NORMAL:I

.field private static final blacklist SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

.field private static greylist-max-o TAG:Ljava/lang/String;

.field static greylist-max-o sDefaultTypeface:Landroid/graphics/Typeface;

.field static greylist sDefaults:[Landroid/graphics/Typeface;

.field private static final greylist-max-o sDynamicCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sStyledCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sStyledTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field static final greylist sSystemFallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/FontFamily;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

.field static blacklist sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

.field private static final blacklist sVariableCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sVariableCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sWeightCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sWeightTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCleaner:Ljava/lang/Runnable;

.field private final blacklist mDerivedFrom:Landroid/graphics/Typeface;

.field private blacklist mIsVariationInstance:Z

.field private final greylist mStyle:I

.field private greylist-max-o mSupportedAxes:[I

.field private final blacklist mSystemFontFamilyName:Ljava/lang/String;

.field private final greylist-max-o mWeight:I

.field public final greylist native_instance:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I
    .registers 1

    iget p0, p0, Landroid/graphics/Typeface;->mStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I
    .registers 1

    iget p0, p0, Landroid/graphics/Typeface;->mWeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;
    .registers 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 1

    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateFromArray([JJII)J
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/Typeface;->nativeGetReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 94
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 112
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 114
    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 116
    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 118
    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 134
    new-instance v1, Landroid/util/LongSparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    .line 136
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    .line 142
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    .line 144
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    .line 150
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 151
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    .line 153
    new-instance v1, Landroid/util/LruCache;

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sVariableCache:Landroid/util/LruCache;

    .line 155
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sVariableCacheLock:Ljava/lang/Object;

    .line 180
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 183
    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 184
    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    .line 1575
    invoke-static {}, Landroid/graphics/Typeface;->staticInitializer()V

    .line 1690
    return-void
.end method

.method private constructor greylist-max-p <init>(J)V
    .registers 4
    .param p1, "ni"    # J

    .line 1274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;Landroid/graphics/Typeface;)V

    .line 1275
    return-void
.end method

.method private constructor blacklist <init>(JLjava/lang/String;)V
    .registers 5
    .param p1, "ni"    # J
    .param p3, "systemFontFamilyName"    # Ljava/lang/String;

    .line 1281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;Landroid/graphics/Typeface;)V

    .line 1282
    return-void
.end method

.method synthetic constructor blacklist <init>(JLjava/lang/String;Landroid/graphics/Typeface-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(JLjava/lang/String;Landroid/graphics/Typeface;)V
    .registers 8
    .param p1, "ni"    # J
    .param p3, "systemFontFamilyName"    # Ljava/lang/String;
    .param p4, "derivedFrom"    # Landroid/graphics/Typeface;

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2c

    .line 1291
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1292
    sget-object v0, Landroid/graphics/Typeface$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    .line 1293
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 1294
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 1295
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeIsVariationInstance(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/Typeface;->mIsVariationInstance:Z

    .line 1296
    iput-object p3, p0, Landroid/graphics/Typeface;->mSystemFontFamilyName:Ljava/lang/String;

    .line 1297
    iput-object p4, p0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    .line 1298
    return-void

    .line 1288
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist axesToVarKey(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1072
    .local p0, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    new-instance v0, Landroid/graphics/Typeface$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/graphics/Typeface$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1074
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 1075
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/FontVariationAxis;

    .line 1076
    .local v2, "fva":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1074
    .end local v2    # "fva":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1079
    .end local v1    # "i":I
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist changeDefaultFontForTest(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation

    .line 1548
    .local p0, "defaults":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Typeface;>;"
    .local p1, "genericFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Typeface;>;"
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1549
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1550
    .local v1, "oldDefaults":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Typeface;>;"
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Typeface;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Typeface;

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 1551
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    invoke-static {v3}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1553
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .local v3, "oldGenerics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Typeface;>;"
    new-instance v4, Landroid/graphics/Typeface$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Landroid/graphics/Typeface$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    .line 1559
    .local v4, "swapTypeface":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Typeface;Ljava/lang/String;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 1560
    .local v5, "sansSerif":Landroid/graphics/Typeface;
    const-string/jumbo v6, "sans-serif"

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1561
    const/16 v6, 0x64

    invoke-static {v5, v6, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v6

    const-string/jumbo v7, "sans-serif-thin"

    invoke-interface {v4, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1562
    const/16 v6, 0x12c

    invoke-static {v5, v6, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v6

    const-string/jumbo v7, "sans-serif-light"

    invoke-interface {v4, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1563
    const/16 v6, 0x1f4

    invoke-static {v5, v6, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v6

    const-string/jumbo v7, "sans-serif-medium"

    invoke-interface {v4, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1564
    const/16 v6, 0x2bc

    invoke-static {v5, v6, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v6

    const-string/jumbo v7, "sans-serif-bold"

    invoke-interface {v4, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1565
    const/16 v6, 0x384

    invoke-static {v5, v6, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const-string/jumbo v6, "sans-serif-black"

    invoke-interface {v4, v2, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1567
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    const-string/jumbo v6, "serif"

    invoke-interface {v4, v2, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1568
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    const-string/jumbo v6, "monospace"

    invoke-interface {v4, v2, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1570
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    .line 1571
    .end local v1    # "oldDefaults":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Typeface;>;"
    .end local v3    # "oldGenerics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Typeface;>;"
    .end local v4    # "swapTypeface":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Typeface;Ljava/lang/String;>;"
    .end local v5    # "sansSerif":Landroid/graphics/Typeface;
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_91

    throw v1
.end method

.method public static blacklist clearTypefaceCachesForTestingPurpose()V
    .registers 2

    .line 160
    sget-object v0, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 162
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 163
    sget-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_c
    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 165
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 166
    sget-object v0, Landroid/graphics/Typeface;->sVariableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_15
    sget-object v1, Landroid/graphics/Typeface;->sVariableCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1

    .line 165
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 162
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static whitelist create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .line 965
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_5

    .line 966
    const/4 p1, 0x0

    .line 968
    :cond_5
    if-nez p0, :cond_b

    .line 969
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    .line 973
    :cond_b
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v0, p1, :cond_10

    .line 974
    return-object p0

    .line 977
    :cond_10
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 980
    .local v0, "ni":J
    sget-object v2, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 981
    :try_start_15
    sget-object v3, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 983
    .local v3, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v3, :cond_2c

    .line 984
    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    move-object v3, v4

    .line 985
    sget-object v4, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_36

    .line 987
    :cond_2c
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 988
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_36

    .line 989
    monitor-exit v2

    return-object v4

    .line 993
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_36
    :goto_36
    new-instance v4, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v5

    .line 994
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    .line 995
    .restart local v4    # "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 996
    .end local v3    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v2

    .line 997
    return-object v4

    .line 996
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :catchall_48
    move-exception v3

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_48

    throw v3
.end method

.method public static whitelist create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 1037
    const/16 v0, 0x3e8

    const-string/jumbo v1, "weight"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1038
    if-nez p0, :cond_f

    .line 1039
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    .line 1041
    :cond_f
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .line 944
    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 1140
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1144
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_12

    return-object v0

    .line 1146
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1147
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1f

    .line 1149
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_1b
    nop

    .line 1151
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 1147
    :catch_1f
    move-exception v1

    .line 1148
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist createFromFamilies(Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "families"    # [Landroid/graphics/fonts/FontFamily;

    .line 1223
    array-length v0, p1

    new-array v0, v0, [J

    .line 1224
    .local v0, "ptrArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 1225
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1224
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1227
    .end local v1    # "i":I
    :cond_12
    new-instance v1, Landroid/graphics/Typeface;

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p0}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    return-object v1
.end method

.method private static greylist createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .registers 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1207
    array-length v0, p0

    new-array v0, v0, [J

    .line 1208
    .local v0, "ptrArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 1209
    aget-object v2, p0, v1

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v0, v1

    .line 1208
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1211
    .end local v1    # "i":I
    :cond_10
    new-instance v1, Landroid/graphics/Typeface;

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    return-object v1
.end method

.method private static greylist createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .registers 4
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "weight"    # I
    .param p2, "italic"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1240
    const-string/jumbo v0, "sans-serif"

    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static greylist createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "fallbackName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "italic"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1262
    invoke-static {p1}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1263
    .local v0, "fallbackTypeface":Landroid/graphics/Typeface;
    array-length v1, p0

    new-array v1, v1, [J

    .line 1264
    .local v1, "ptrArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_14

    .line 1265
    aget-object v3, p0, v2

    iget-wide v3, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v3, v1, v2

    .line 1264
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1267
    .end local v2    # "i":I
    :cond_14
    new-instance v2, Landroid/graphics/Typeface;

    iget-wide v3, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v3, v4, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    return-object v2
.end method

.method public static whitelist createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 1176
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1177
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_c

    return-object v0

    .line 1180
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1184
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 1181
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 1194
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 22
    .param p0, "entry"    # Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 351
    move-object/from16 v1, p0

    instance-of v0, v1, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    const/4 v2, 0x0

    if-eqz v0, :cond_71

    .line 352
    move-object v0, v1

    check-cast v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    .line 354
    .local v0, "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "systemFontFamilyName":Ljava/lang/String;
    if-eqz v3, :cond_1b

    invoke-static {v3}, Landroid/graphics/Typeface;->hasFontFamily(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 356
    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 359
    :cond_1b
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v4

    .line 360
    .local v4, "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    if-eqz v4, :cond_55

    .line 362
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_55

    .line 363
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 364
    .local v7, "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v8, "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_39
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4f

    .line 366
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v9, v9, 0x1

    goto :goto_39

    .line 368
    .end local v9    # "j":I
    :cond_4f
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v7    # "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 373
    .end local v6    # "i":I
    :cond_55
    new-instance v2, Landroid/provider/FontRequest;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 374
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8, v5}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 375
    .local v2, "request":Landroid/provider/FontRequest;
    invoke-static {v2}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 376
    .local v6, "typeface":Landroid/graphics/Typeface;
    if-nez v6, :cond_6f

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_70

    :cond_6f
    move-object v7, v6

    :goto_70
    return-object v7

    .line 379
    .end local v0    # "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    .end local v2    # "request":Landroid/provider/FontRequest;
    .end local v3    # "systemFontFamilyName":Ljava/lang/String;
    .end local v4    # "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    .end local v6    # "typeface":Landroid/graphics/Typeface;
    :cond_71
    invoke-static/range {p1 .. p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 380
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_78

    return-object v3

    .line 383
    :cond_78
    move-object v4, v1

    check-cast v4, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 386
    .local v4, "filesEntry":Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
    const/4 v0, 0x0

    .line 387
    .local v0, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :try_start_7c
    invoke-virtual {v4}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v5
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_80} :catch_14a
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_128

    :try_start_80
    array-length v6, v5

    move v7, v2

    :goto_82
    if-ge v7, v6, :cond_d8

    aget-object v8, v5, v7

    .line 388
    .local v8, "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    new-instance v9, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v8}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v10
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_8c} :catch_124
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8c} :catch_128

    const/4 v11, -0x1

    move-object/from16 v12, p1

    :try_start_8f
    invoke-direct {v9, v12, v10, v2, v11}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 390
    invoke-virtual {v8}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getTtcIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v9

    .line 391
    invoke-virtual {v8}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v9

    .line 392
    .local v9, "fontBuilder":Landroid/graphics/fonts/Font$Builder;
    invoke-virtual {v8}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v10

    if-eq v10, v11, :cond_af

    .line 393
    invoke-virtual {v8}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 395
    :cond_af
    invoke-virtual {v8}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v10

    if-eq v10, v11, :cond_c1

    .line 396
    invoke-virtual {v8}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_bd

    .line 397
    goto :goto_be

    :cond_bd
    move v11, v2

    .line 396
    :goto_be
    invoke-virtual {v9, v11}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 400
    :cond_c1
    if-nez v0, :cond_ce

    .line 401
    new-instance v10, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-virtual {v9}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v10

    .end local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .local v10, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_d5

    .line 403
    .end local v10    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_ce
    invoke-virtual {v9}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 387
    .end local v8    # "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .end local v9    # "fontBuilder":Landroid/graphics/fonts/Font$Builder;
    :goto_d5
    add-int/lit8 v7, v7, 0x1

    goto :goto_82

    .line 406
    :cond_d8
    move-object/from16 v12, p1

    if-nez v0, :cond_df

    .line 407
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v2

    .line 409
    :cond_df
    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v5

    .line 410
    .local v5, "family":Landroid/graphics/fonts/FontFamily;
    new-instance v6, Landroid/graphics/fonts/FontStyle;

    const/16 v7, 0x190

    invoke-direct {v6, v7, v2}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 412
    .local v6, "normal":Landroid/graphics/fonts/FontStyle;
    invoke-virtual {v5, v2}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v2

    .line 413
    .local v2, "bestFont":Landroid/graphics/fonts/Font;
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v7

    .line 414
    .local v7, "bestScore":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_f7
    invoke-virtual {v5}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v9

    if-ge v8, v9, :cond_110

    .line 415
    invoke-virtual {v5, v8}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v9

    .line 416
    .local v9, "candidate":Landroid/graphics/fonts/Font;
    invoke-virtual {v9}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v10

    .line 417
    .local v10, "score":I
    if-ge v10, v7, :cond_10d

    .line 418
    move-object v2, v9

    .line 419
    move v7, v10

    .line 414
    .end local v9    # "candidate":Landroid/graphics/fonts/Font;
    .end local v10    # "score":I
    :cond_10d
    add-int/lit8 v8, v8, 0x1

    goto :goto_f7

    .line 422
    .end local v8    # "i":I
    :cond_110
    new-instance v8, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v8, v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 423
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v8

    .line 424
    invoke-virtual {v8}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v8
    :try_end_121
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_121} :catch_14a
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_121} :catch_122

    .line 431
    .end local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v2    # "bestFont":Landroid/graphics/fonts/Font;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    .end local v5    # "family":Landroid/graphics/fonts/FontFamily;
    .end local v6    # "normal":Landroid/graphics/fonts/FontStyle;
    .end local v7    # "bestScore":I
    .local v8, "typeface":Landroid/graphics/Typeface;
    goto :goto_12d

    .line 429
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    :catch_122
    move-exception v0

    goto :goto_12b

    .line 425
    :catch_124
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_14b

    .line 429
    :catch_128
    move-exception v0

    move-object/from16 v12, p1

    .line 430
    .local v0, "e":Ljava/io/IOException;
    :goto_12b
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    .restart local v8    # "typeface":Landroid/graphics/Typeface;
    :goto_12d
    sget-object v2, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 433
    :try_start_130
    const-string/jumbo v18, "sans-serif"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object/from16 v13, p2

    invoke-static/range {v12 .. v18}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v3, v0, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    nop

    .end local v0    # "key":Ljava/lang/String;
    monitor-exit v2

    .line 438
    return-object v8

    .line 437
    :catchall_147
    move-exception v0

    monitor-exit v2
    :try_end_149
    .catchall {:try_start_130 .. :try_end_149} :catchall_147

    throw v0

    .line 425
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    :catch_14a
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_14b
    const/4 v2, 0x0

    return-object v2
.end method

.method public static greylist-max-o createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .registers 11
    .param p0, "family"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .line 1088
    .local p1, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    invoke-static {}, Lcom/android/text/flags/Flags;->typefaceCacheForVarSettings()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1089
    if-nez p0, :cond_b

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_c

    :cond_b
    move-object v0, p0

    .line 1090
    .local v0, "target":Landroid/graphics/Typeface;
    :goto_c
    iget-object v1, v0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    if-nez v1, :cond_12

    move-object v1, v0

    goto :goto_14

    :cond_12
    iget-object v1, v0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    .line 1092
    .local v1, "base":Landroid/graphics/Typeface;
    :goto_14
    invoke-static {p1}, Landroid/graphics/Typeface;->axesToVarKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Landroid/graphics/Typeface;->sVariableCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1095
    :try_start_1b
    sget-object v4, Landroid/graphics/Typeface;->sVariableCache:Landroid/util/LruCache;

    iget-wide v5, v1, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/LruCache;

    .line 1096
    .local v4, "innerCache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    if-nez v4, :cond_3f

    .line 1098
    new-instance v5, Landroid/util/LruCache;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/util/LruCache;-><init>(I)V

    move-object v4, v5

    .line 1099
    sget-object v5, Landroid/graphics/Typeface;->sVariableCache:Landroid/util/LruCache;

    iget-wide v6, v1, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 1101
    :cond_3f
    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 1102
    .local v5, "cached":Landroid/graphics/Typeface;
    if-eqz v5, :cond_49

    .line 1103
    monitor-exit v3

    return-object v5

    .line 1106
    .end local v5    # "cached":Landroid/graphics/Typeface;
    :cond_49
    :goto_49
    new-instance v5, Landroid/graphics/Typeface;

    iget-wide v6, v1, Landroid/graphics/Typeface;->native_instance:J

    .line 1107
    invoke-static {v6, v7, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v6

    .line 1108
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;Landroid/graphics/Typeface;)V

    .line 1109
    .local v5, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v4, v2, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    monitor-exit v3

    return-object v5

    .line 1111
    .end local v4    # "innerCache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :catchall_5d
    move-exception v4

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_1b .. :try_end_5f} :catchall_5d

    throw v4

    .line 1114
    .end local v0    # "target":Landroid/graphics/Typeface;
    .end local v1    # "base":Landroid/graphics/Typeface;
    .end local v2    # "key":Ljava/lang/String;
    :cond_60
    if-nez p0, :cond_65

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_66

    :cond_65
    move-object v0, p0

    .line 1115
    .local v0, "base":Landroid/graphics/Typeface;
    :goto_66
    new-instance v1, Landroid/graphics/Typeface;

    iget-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 1116
    invoke-static {v2, v3, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v2

    .line 1117
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    .line 1118
    .local v1, "typeface":Landroid/graphics/Typeface;
    return-object v1
.end method

.method private static greylist-max-o createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "base"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 1046
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    .line 1049
    .local v0, "key":I
    sget-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1050
    :try_start_6
    sget-object v2, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1051
    .local v2, "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v2, :cond_21

    .line 1052
    new-instance v3, Landroid/util/SparseArray;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    move-object v2, v3

    .line 1053
    sget-object v3, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2b

    .line 1055
    :cond_21
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 1056
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_2b

    .line 1057
    monitor-exit v1

    return-object v3

    .line 1061
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_2b
    :goto_2b
    new-instance v3, Landroid/graphics/Typeface;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1062
    invoke-static {v4, v5, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v4

    .line 1063
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    .line 1064
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1065
    .end local v2    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v1

    .line 1066
    return-object v3

    .line 1065
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public static whitelist defaultFromStyle(I)Landroid/graphics/Typeface;
    .registers 3
    .param p0, "style"    # I

    .line 1127
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v1, p0

    monitor-exit v0

    return-object v1

    .line 1129
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static blacklist deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J
    .registers 10
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)[J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    .local p1, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1411
    .local v0, "typefacesBytesCount":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->nativeReadTypefaces(Ljava/nio/ByteBuffer;I)[J

    move-result-object v1

    .line 1412
    .local v1, "nativePtrs":[J
    if-eqz v1, :cond_2f

    .line 1415
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1416
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1417
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2e

    aget-wide v4, v1, v3

    .line 1418
    .local v4, "nativePtr":J
    invoke-static {p0}, Landroid/graphics/Typeface;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 1419
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Landroid/graphics/Typeface;

    invoke-direct {v7, v4, v5, v6}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .end local v4    # "nativePtr":J
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1421
    :cond_2e
    return-object v1

    .line 1413
    :cond_2f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not read typefaces"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist destroySystemFontMap()V
    .registers 3

    .line 1633
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1634
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1635
    .local v2, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v2}, Landroid/graphics/Typeface;->releaseNativeObjectForTest()V

    .line 1636
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    goto :goto_d

    .line 1637
    :cond_1d
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1638
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2b

    .line 1639
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1641
    :cond_2b
    const/4 v1, 0x0

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 1642
    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 1643
    sget-object v1, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_4a

    .line 1644
    :try_start_33
    sget-object v2, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-static {v2}, Landroid/graphics/Typeface;->destroyTypefaceCacheLocked(Landroid/util/LongSparseArray;)V

    .line 1645
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_47

    .line 1646
    :try_start_39
    sget-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4a

    .line 1647
    :try_start_3c
    sget-object v2, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    invoke-static {v2}, Landroid/graphics/Typeface;->destroyTypefaceCacheLocked(Landroid/util/LongSparseArray;)V

    .line 1648
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_44

    .line 1649
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4a

    .line 1650
    return-void

    .line 1648
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4a

    .line 1645
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v2

    .line 1649
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private static blacklist destroyTypefaceCacheLocked(Landroid/util/LongSparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;)V"
        }
    .end annotation

    .line 1653
    .local p0, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/util/SparseArray<Landroid/graphics/Typeface;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1654
    invoke-virtual {p0, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1655
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 1656
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    invoke-virtual {v3}, Landroid/graphics/Typeface;->releaseNativeObjectForTest()V

    .line 1655
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1653
    .end local v1    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v2    # "j":I
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1659
    .end local v0    # "i":I
    :cond_23
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    .line 1660
    return-void
.end method

.method public static greylist-max-o findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 11
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 446
    sget-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_3
    const-string/jumbo v8, "sans-serif"
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, p0

    move-object v3, p1

    .end local p0    # "mgr":Landroid/content/res/AssetManager;
    .end local p1    # "path":Ljava/lang/String;
    .local v2, "mgr":Landroid/content/res/AssetManager;
    .local v3, "path":Ljava/lang/String;
    :try_start_c
    invoke-static/range {v2 .. v8}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 450
    .local p0, "key":Ljava/lang/String;
    sget-object p1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    .line 451
    .local p1, "typeface":Landroid/graphics/Typeface;
    if-eqz p1, :cond_1c

    .line 452
    monitor-exit v1

    return-object p1

    .line 454
    .end local p0    # "key":Ljava/lang/String;
    .end local p1    # "typeface":Landroid/graphics/Typeface;
    :cond_1c
    monitor-exit v1

    .line 455
    const/4 p0, 0x0

    return-object p0

    .line 454
    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_26

    .end local v2    # "mgr":Landroid/content/res/AssetManager;
    .end local v3    # "path":Ljava/lang/String;
    .local p0, "mgr":Landroid/content/res/AssetManager;
    .local p1, "path":Ljava/lang/String;
    :catchall_22
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object p0, v0

    .end local p0    # "mgr":Landroid/content/res/AssetManager;
    .end local p1    # "path":Ljava/lang/String;
    .restart local v2    # "mgr":Landroid/content/res/AssetManager;
    .restart local v3    # "path":Ljava/lang/String;
    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_1f

    throw p0
.end method

.method private static blacklist getDefault()Landroid/graphics/Typeface;
    .registers 2

    .line 279
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    monitor-exit v0

    return-object v1

    .line 281
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 3
    .param p0, "familyName"    # Ljava/lang/String;

    .line 1313
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 1314
    .local v0, "tf":Landroid/graphics/Typeface;
    if-nez v0, :cond_d

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method public static blacklist getSystemFontMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 1447
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1448
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    .line 1449
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist getSystemFontMapSharedMemory()Landroid/os/SharedMemory;
    .registers 1

    .line 211
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method private static blacklist hasFontFamily(Ljava/lang/String;)Z
    .registers 3
    .param p0, "familyName"    # Ljava/lang/String;

    .line 338
    const-string v0, "familyName cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_8
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 341
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static blacklist init()V
    .registers 8

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Roboto-Regular.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RobotoStatic-Regular.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1593
    const-string/jumbo v0, "persist.sys.locale"

    const-string v1, "en-US"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1594
    .local v0, "locale":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "script":Ljava/lang/String;
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfigFromLegacyXml()Landroid/text/FontConfig;

    move-result-object v2

    .line 1600
    .local v2, "config":Landroid/text/FontConfig;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c6

    .line 1601
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 1602
    .local v4, "family":Landroid/text/FontConfig$FontFamily;
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_73

    .line 1603
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeRegisterLocaleList(Ljava/lang/String;)V

    .line 1605
    :cond_73
    const/4 v5, 0x0

    .line 1606
    .local v5, "loadFamily":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_75
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9e

    .line 1607
    nop

    .line 1608
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 1607
    invoke-static {v7}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 1608
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    .line 1609
    .local v7, "fontScript":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1610
    if-eqz v5, :cond_9b

    .line 1611
    goto :goto_9e

    .line 1606
    .end local v7    # "fontScript":Ljava/lang/String;
    :cond_9b
    add-int/lit8 v6, v6, 0x1

    goto :goto_75

    .line 1614
    .end local v6    # "j":I
    :cond_9e
    :goto_9e
    if-eqz v5, :cond_c3

    .line 1615
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_a1
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c3

    .line 1616
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Font;

    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1615
    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    .line 1600
    .end local v4    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v5    # "loadFamily":Z
    .end local v6    # "j":I
    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 1620
    .end local v3    # "i":I
    :cond_c6
    return-void
.end method

.method public static blacklist initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1322
    .local p0, "fallbacks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    .local p1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    .local p2, "outSystemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1323
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/fonts/FontFamily;

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromFamilies(Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 1323
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    goto :goto_8

    .line 1327
    :cond_2e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_77

    .line 1328
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/FontConfig$Alias;

    .line 1329
    .local v1, "alias":Landroid/text/FontConfig$Alias;
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1330
    goto :goto_74

    .line 1332
    :cond_46
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1333
    .local v2, "base":Landroid/graphics/Typeface;
    if-nez v2, :cond_53

    .line 1336
    goto :goto_74

    .line 1338
    :cond_53
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v3

    .line 1339
    .local v3, "weight":I
    const/16 v4, 0x190

    if-ne v3, v4, :cond_5d

    move-object v4, v2

    goto :goto_6c

    :cond_5d
    new-instance v4, Landroid/graphics/Typeface;

    iget-wide v5, v2, Landroid/graphics/Typeface;->native_instance:J

    .line 1340
    invoke-static {v5, v6, v3}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;)V

    :goto_6c
    nop

    .line 1341
    .local v4, "newFace":Landroid/graphics/Typeface;
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    .end local v1    # "alias":Landroid/text/FontConfig$Alias;
    .end local v2    # "base":Landroid/graphics/Typeface;
    .end local v3    # "weight":I
    .end local v4    # "newFace":Landroid/graphics/Typeface;
    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1343
    .end local v0    # "i":I
    :cond_77
    return-void
.end method

.method static synthetic blacklist lambda$changeDefaultFontForTest$0(Ljava/util/ArrayList;Landroid/graphics/Typeface;Ljava/lang/String;)V
    .registers 4
    .param p0, "oldGenerics"    # Ljava/util/ArrayList;
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "key"    # Ljava/lang/String;

    .line 1555
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    return-void
.end method

.method public static blacklist loadNativeSystemFonts()V
    .registers 5

    .line 1679
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1680
    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1681
    .local v2, "type":Landroid/graphics/Typeface;
    iget-wide v3, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->nativeAddFontCollections(J)V

    .line 1682
    .end local v2    # "type":Landroid/graphics/Typeface;
    goto :goto_d

    .line 1683
    :cond_1f
    monitor-exit v0

    .line 1684
    return-void

    .line 1683
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static blacklist loadPreinstalledSystemFontMap()V
    .registers 3

    .line 1664
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    .line 1665
    .local v0, "fontConfig":Landroid/text/FontConfig;
    invoke-static {v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    move-result-object v1

    .line 1666
    .local v1, "fallback":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    nop

    .line 1667
    invoke-static {v0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 1668
    .local v2, "typefaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-static {v2}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V

    .line 1669
    return-void
.end method

.method private static native blacklist nativeAddFontCollections(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-r nativeCreateFromArray([JJII)J
.end method

.method private static native greylist-max-o nativeCreateFromTypeface(JI)J
.end method

.method private static native greylist-max-o nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native greylist-max-o nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native greylist nativeCreateWeightAlias(JI)J
.end method

.method private static native blacklist nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V
.end method

.method private static native greylist-max-o nativeGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSupportedAxes(J)[I
.end method

.method private static native greylist-max-o nativeGetWeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeIsVariationInstance(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeReadTypefaces(Ljava/nio/ByteBuffer;I)[J
.end method

.method private static native blacklist nativeRegisterGenericFamily(Ljava/lang/String;J)V
.end method

.method private static native blacklist nativeRegisterLocaleList(Ljava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDefault(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWarmUpCache(Ljava/lang/String;)V
.end method

.method private static native blacklist nativeWriteTypefaces(Ljava/nio/ByteBuffer;I[J)I
.end method

.method private static blacklist preloadFontFile(Ljava/lang/String;)V
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1623
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1625
    sget-object v1, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeWarmUpCache(Ljava/lang/String;)V

    .line 1628
    :cond_2a
    return-void
.end method

.method private static blacklist readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1425
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1426
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1427
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1428
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static blacklist registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 4
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1347
    if-eqz p1, :cond_7

    .line 1348
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {p0, v0, v1}, Landroid/graphics/Typeface;->nativeRegisterGenericFamily(Ljava/lang/String;J)V

    .line 1350
    :cond_7
    return-void
.end method

.method public static blacklist serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)",
            "Landroid/os/SharedMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1360
    .local p0, "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1362
    .local v0, "nativePtrs":[J
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1363
    .local v1, "namesBytes":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 1364
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1365
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    aput-wide v6, v0, v2

    .line 1366
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1367
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    move v2, v5

    goto :goto_14

    .line 1369
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_37
    const/4 v3, 0x4

    .line 1370
    .local v3, "typefaceBytesCountSize":I
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v4, v5, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;I[J)I

    move-result v4

    .line 1371
    .local v4, "typefacesBytesCount":I
    add-int/lit8 v5, v4, 0x4

    .line 1372
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v5, v6

    .line 1371
    const-string v6, "fontMap"

    invoke-static {v6, v5}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v5

    .line 1373
    .local v5, "sharedMemory":Landroid/os/SharedMemory;
    invoke-virtual {v5}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1375
    .local v6, "writableBuffer":Ljava/nio/ByteBuffer;
    :try_start_55
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1376
    nop

    .line 1377
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-static {v6, v7, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;I[J)I

    move-result v7

    .line 1378
    .local v7, "writtenBytesCount":I
    if-ne v7, v4, :cond_7d

    .line 1382
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1383
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_72
    .catchall {:try_start_55 .. :try_end_72} :catchall_95

    .line 1385
    nop

    .end local v7    # "writtenBytesCount":I
    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1386
    nop

    .line 1387
    sget v7, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v5, v7}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 1388
    return-object v5

    .line 1379
    .restart local v7    # "writtenBytesCount":I
    :cond_7d
    :try_start_7d
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unexpected bytes written: %d, expected: %d"

    .line 1380
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    .line 1379
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "nativePtrs":[J
    .end local v1    # "namesBytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "typefaceBytesCountSize":I
    .end local v4    # "typefacesBytesCount":I
    .end local v5    # "sharedMemory":Landroid/os/SharedMemory;
    .end local v6    # "writableBuffer":Ljava/nio/ByteBuffer;
    .end local p0    # "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    throw v8
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_95

    .line 1385
    .end local v7    # "writtenBytesCount":I
    .restart local v0    # "nativePtrs":[J
    .restart local v1    # "namesBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "typefaceBytesCountSize":I
    .restart local v4    # "typefacesBytesCount":I
    .restart local v5    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local v6    # "writableBuffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catchall_95
    move-exception v7

    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1386
    throw v7
.end method

.method private static greylist-max-p setDefault(Landroid/graphics/Typeface;)V
    .registers 4
    .param p0, "t"    # Landroid/graphics/Typeface;

    .line 272
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 274
    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static blacklist setSystemFontMap(Landroid/os/SharedMemory;)V
    .registers 9
    .param p0, "sharedMemory"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1460
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_14

    .line 1463
    if-eqz p0, :cond_13

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    if-ne p0, v0, :cond_b

    goto :goto_13

    .line 1466
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Once set, buffer-based system font map cannot be updated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_13
    :goto_13
    return-void

    .line 1469
    :cond_14
    sput-object p0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 1470
    const-string/jumbo v0, "setSystemFontMap"

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1472
    if-nez p0, :cond_27

    .line 1475
    :try_start_20
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_52

    .line 1489
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1476
    return-void

    .line 1478
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 1479
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1480
    .local v0, "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    sget-object v3, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J

    move-result-object v3

    .line 1484
    .local v3, "nativePtrs":[J
    array-length v4, v3

    const/4 v5, 0x0

    :goto_40
    if-ge v5, v4, :cond_4a

    aget-wide v6, v3, v5

    .line 1485
    .local v6, "ptr":J
    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeAddFontCollections(J)V

    .line 1484
    .end local v6    # "ptr":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 1487
    :cond_4a
    invoke-static {v0}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V
    :try_end_4d
    .catchall {:try_start_27 .. :try_end_4d} :catchall_52

    .line 1489
    .end local v0    # "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v3    # "nativePtrs":[J
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1490
    nop

    .line 1491
    return-void

    .line 1489
    :catchall_52
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1490
    throw v0
.end method

.method public static blacklist setSystemFontMap(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1496
    .local p0, "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    sget-object v1, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1497
    :try_start_3
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1498
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1501
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1502
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1507
    :cond_26
    const-string v0, "DEFAULT"

    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1508
    const-string v0, "DEFAULT_BOLD"

    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1509
    const-string v0, "SANS_SERIF"

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1510
    const-string v0, "SERIF"

    const-string/jumbo v2, "serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1511
    const-string v0, "MONOSPACE"

    const-string/jumbo v2, "monospace"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1513
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 1516
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 1517
    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    filled-new-array {v0, v2, v5, v4}, [Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 1522
    const-string/jumbo v4, "serif"

    const-string/jumbo v5, "sans-serif"

    const-string v6, "cursive"

    const-string v7, "fantasy"

    const-string/jumbo v8, "monospace"

    const-string/jumbo v9, "system-ui"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 1526
    .local v0, "genericFamilies":[Ljava/lang/String;
    array-length v2, v0

    :goto_92
    if-ge v3, v2, :cond_a2

    aget-object v4, v0, v3

    .line 1527
    .local v4, "genericFamily":Ljava/lang/String;
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1526
    .end local v4    # "genericFamily":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 1529
    .end local v0    # "genericFamilies":[Ljava/lang/String;
    :cond_a2
    monitor-exit v1

    .line 1530
    return-void

    .line 1529
    :catchall_a4
    move-exception v0

    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_a4

    throw v0
.end method

.method private static blacklist staticInitializer()V
    .registers 0

    .line 1580
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    .line 1581
    return-void
.end method

.method private static blacklist staticInitializer$ravenwood()V
    .registers 0

    .line 1585
    return-void
.end method

.method private static blacklist writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .registers 3
    .param p0, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 1439
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1440
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1441
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1442
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1443
    return-void
.end method

.method private static blacklist writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 4
    .param p0, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1432
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1433
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1434
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1435
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1694
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1695
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 1697
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/Typeface;

    .line 1699
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v2, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_24

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v5, v2, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    .line 1695
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_26
    :goto_26
    return v1
.end method

.method public final blacklist getDerivedFrom()Landroid/graphics/Typeface;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/graphics/Typeface;->mDerivedFrom:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist getStyle()I
    .registers 2

    .line 296
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public final whitelist getSystemFontFamilyName()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/graphics/Typeface;->mSystemFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWeight()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 1708
    const/16 v0, 0x11

    .line 1709
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1710
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int/2addr v0, v2

    .line 1711
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final whitelist isBold()Z
    .registers 3

    .line 301
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final whitelist isItalic()Z
    .registers 2

    .line 306
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isSupportedAxes(I)Z
    .registers 4
    .param p1, "axis"    # I

    .line 1716
    monitor-enter p0

    .line 1717
    :try_start_1
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_15

    .line 1718
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1719
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_15

    .line 1720
    sget-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1723
    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    .line 1724
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    .line 1723
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public blacklist isVariationInstance()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Landroid/graphics/Typeface;->mIsVariationInstance:Z

    return v0
.end method

.method public blacklist releaseNativeObjectForTest()V
    .registers 2

    .line 1309
    iget-object v0, p0, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1310
    return-void
.end method
