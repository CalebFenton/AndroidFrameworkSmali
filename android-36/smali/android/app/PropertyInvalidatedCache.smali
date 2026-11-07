.class public Landroid/app/PropertyInvalidatedCache;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$NonceWatcher;,
        Landroid/app/PropertyInvalidatedCache$NonceHandler;,
        Landroid/app/PropertyInvalidatedCache$NonceSharedMem;,
        Landroid/app/PropertyInvalidatedCache$NonceLocal;,
        Landroid/app/PropertyInvalidatedCache$NonceSysprop;,
        Landroid/app/PropertyInvalidatedCache$Args;,
        Landroid/app/PropertyInvalidatedCache$CacheMap;,
        Landroid/app/PropertyInvalidatedCache$DefaultComputer;,
        Landroid/app/PropertyInvalidatedCache$QueryHandler;,
        Landroid/app/PropertyInvalidatedCache$NonceStore;,
        Landroid/app/PropertyInvalidatedCache$AutoCorker;,
        Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final blacklist BRIEF:Ljava/lang/String; = "-brief"

.field private static final blacklist CACHE_KEY_PREFIX:Ljava/lang/String; = "cache_key"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_RESERVED_NONCE:I = 0x3

.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TELEPHONY:Ljava/lang/String; = "telephony"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"

.field static final blacklist NAME_CONTAINS:Ljava/lang/String; = "-name-has="

.field static final blacklist NAME_LIKE:Ljava/lang/String; = "-name-like="

.field private static final blacklist NONCE_BYPASS:I = 0x3

.field private static final blacklist NONCE_CORKED:I = 0x2

.field private static final blacklist NONCE_DISABLED:I = 0x1

.field static final blacklist NONCE_UNSET:I = 0x0

.field private static final blacklist PREFIX_SYSTEM:Ljava/lang/String; = "cache_key.system_server."

.field private static final blacklist PREFIX_TEST:Ljava/lang/String; = "cache_key.test."

.field static final blacklist PROPERTY_CONTAINS:Ljava/lang/String; = "-property-has="

.field static final blacklist PROPERTY_LIKE:Ljava/lang/String; = "-property-like="

.field private static final blacklist TAG:Ljava/lang/String; = "PropertyInvalidatedCache"

.field private static final blacklist VERIFY:Z = false

.field private static final blacklist sCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PropertyInvalidatedCache;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorkLock:Ljava/lang/Object;

.field private static final blacklist sDisabledKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sEnabled:Z

.field private static final blacklist sGlobalLock:Ljava/lang/Object;

.field private static final blacklist sHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$NonceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNonceName:[Ljava/lang/String;

.field private static final blacklist sSharedMemoryAvailable:Z

.field private static blacklist sTestMode:Z

.field private static final blacklist sValidKeyPrefix:[Ljava/lang/String;

.field private static final blacklist sValidModule:[Ljava/lang/String;


# instance fields
.field private final blacklist mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private final blacklist mCacheName:Ljava/lang/String;

.field private final blacklist mCacheNullResults:Z

.field private blacklist mClears:J

.field private blacklist mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field private blacklist mHighWaterMark:J

.field private blacklist mHits:J

.field private blacklist mLastSeenNonce:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMaxEntries:I

.field private blacklist mMissOverflow:J

.field private blacklist mMisses:J

.field private final blacklist mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private blacklist mNulls:J

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mSkips:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I
    .registers 1

    iget p0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEnabled()Z
    .registers 1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGlobalLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsTestMode()Z
    .registers 1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .registers 1

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisReservedNonce(J)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetByteBlock(JI[B)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->nativeGetByteBlock(JI[B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetByteBlockHash(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetByteBlockHash(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetMaxByte(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetMaxByte(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetMaxNonce(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetMaxNonce(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNonce(JI)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache;->nativeGetNonce(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetByteBlock(JI[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->nativeSetByteBlock(JI[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetNonce(JIJ)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PropertyInvalidatedCache;->nativeSetNonce(JIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smthrowIfInvalidModule(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidModule(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 201
    const-string/jumbo v0, "telephony"

    const-string/jumbo v1, "test"

    const-string/jumbo v2, "system_server"

    const-string v3, "bluetooth"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    .line 218
    const-string v0, "cache_key.telephony."

    const-string v1, "cache_key.test."

    const-string v2, "cache_key.system_server."

    const-string v3, "cache_key.bluetooth."

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    .line 279
    const-string v0, "corked"

    const-string v1, "bypass"

    const-string/jumbo v2, "unset"

    const-string v3, "disabled"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    .line 332
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    .line 338
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    .line 348
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    .line 355
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    .line 361
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 1192
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1196
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->isSharedMemoryAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1368
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1369
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "cacheName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1385
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1386
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 7
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 1402
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p5, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<TQuery;TResult;>;"
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1403
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 7
    .param p1, "args"    # Landroid/app/PropertyInvalidatedCache$Args;
    .param p2, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PropertyInvalidatedCache$Args;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 1319
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p3, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<TQuery;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    .line 305
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 308
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 313
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    .line 316
    const/4 v2, 0x4

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    .line 319
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    .line 322
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    .line 325
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 629
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 1320
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmModule(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 1321
    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    .line 1322
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmCacheNulls(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    .line 1323
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1324
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache$Args;)I

    move-result v0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    .line 1325
    new-instance v0, Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmIsolateUids(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result v1

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmTestMode(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$CacheMap;-><init>(Landroid/app/PropertyInvalidatedCache;ZZ)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    .line 1326
    if-eqz p3, :cond_59

    move-object v0, p3

    goto :goto_5e

    :cond_59
    new-instance v0, Landroid/app/PropertyInvalidatedCache$DefaultComputer;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$DefaultComputer;-><init>(Landroid/app/PropertyInvalidatedCache;)V

    :goto_5e
    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 1327
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    .line 1328
    return-void
.end method

.method private static blacklist anyDetailed([Ljava/lang/String;)Z
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 2157
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2d

    aget-object v3, p0, v2

    .line 2158
    .local v3, "a":Ljava/lang/String;
    const-string v4, "-name-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "-name-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 2159
    const-string v4, "-property-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "-property-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_2b

    .line 2157
    .end local v3    # "a":Ljava/lang/String;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2160
    .restart local v3    # "a":Ljava/lang/String;
    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0

    .line 2163
    .end local v3    # "a":Ljava/lang/String;
    :cond_2d
    return v1
.end method

.method public static blacklist apiFromProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1350
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 1335
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidCacheKey(Ljava/lang/String;)V

    .line 1337
    const-string v0, "cache_key"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, "base":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1339
    .local v1, "dot":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1340
    .local v2, "module":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1341
    .local v3, "api":Ljava/lang/String;
    new-instance v4, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v4, v2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;
    .param p3, "contains"    # Z

    .line 2170
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2172
    .local v0, "value":Ljava/lang/String;
    if-eqz p3, :cond_15

    .line 2173
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 2175
    :cond_15
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2178
    .end local v0    # "value":Ljava/lang/String;
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist corkInvalidations(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1906
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    .line 1907
    return-void
.end method

.method public static blacklist createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "apiName"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 172
    .local v0, "api":[C
    const/4 v1, 0x0

    .line 173
    .local v1, "upper":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 174
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 173
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 178
    .end local v2    # "i":I
    :cond_16
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [C

    .line 179
    .local v2, "suffix":[C
    const/4 v3, 0x0

    .line 180
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v0

    if-ge v4, v5, :cond_57

    .line 181
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 182
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 183
    if-lez v4, :cond_38

    .line 184
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    const/16 v6, 0x5f

    aput-char v6, v2, v3

    move v3, v5

    .line 186
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_38
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v6, v0, v4

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    aput-char v6, v2, v3

    move v3, v5

    goto :goto_4b

    .line 188
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_44
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v6, v0, v4

    aput-char v6, v2, v3

    move v3, v5

    .line 180
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 191
    :cond_4e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "invalid api name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    .end local v4    # "i":I
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache_key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist createSystemCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "api"    # Ljava/lang/String;

    .line 244
    const-string/jumbo v0, "system_server"

    invoke-static {v0, p0}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .registers 1
    .param p0, "cacheName"    # Ljava/lang/String;

    .line 1660
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 1661
    return-void
.end method

.method public static blacklist disableForTestMode()V
    .registers 2

    .line 2108
    const-string v0, "PropertyInvalidatedCache"

    const-string v1, "disabling all caches in the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 2110
    return-void
.end method

.method private static final blacklist disableLocal(Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1607
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1608
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1610
    monitor-exit v0

    return-void

    .line 1612
    :cond_d
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache;

    .line 1613
    .local v2, "cache":Landroid/app/PropertyInvalidatedCache;
    iget-object v3, v2, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1614
    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 1616
    .end local v2    # "cache":Landroid/app/PropertyInvalidatedCache;
    :cond_2e
    goto :goto_17

    .line 1619
    :cond_2f
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1620
    monitor-exit v0

    .line 1621
    return-void

    .line 1620
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private static blacklist disableSystemWide(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1829
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->disable()V

    .line 1830
    return-void
.end method

.method public static blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 7
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2311
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2312
    .local v0, "barray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2313
    .local v1, "bout":Ljava/io/PrintWriter;
    invoke-static {v1, p1}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2314
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 2318
    :try_start_10
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2319
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2320
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2321
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_23

    .line 2324
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2b

    .line 2322
    :catch_23
    move-exception v2

    .line 2323
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PropertyInvalidatedCache"

    const-string v4, "Failed to dump PropertyInvalidatedCache instances"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2b
    return-void
.end method

.method private static blacklist dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2274
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_a

    .line 2275
    const-string v0, "  Caching is disabled in this process."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2276
    return-void

    .line 2281
    :cond_a
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->anyDetailed([Ljava/lang/String;)Z

    move-result v0

    .line 2283
    .local v0, "detail":Z
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    if-eqz v1, :cond_21

    .line 2284
    const-string v1, "  SharedMemory: enabled"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2285
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, p0, v2, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_26

    .line 2287
    :cond_21
    const-string v1, "  SharedMemory: disabled"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2289
    :goto_26
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2291
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v1

    .line 2292
    .local v1, "activeCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PropertyInvalidatedCache;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 2293
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PropertyInvalidatedCache;

    .line 2294
    .local v3, "currentCache":Landroid/app/PropertyInvalidatedCache;
    invoke-direct {v3, p0, v0, p1}, Landroid/app/PropertyInvalidatedCache;->dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    .line 2292
    .end local v3    # "currentCache":Landroid/app/PropertyInvalidatedCache;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 2296
    .end local v2    # "i":I
    :cond_40
    return-void
.end method

.method private blacklist dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "detailed"    # Z
    .param p3, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2220
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    if-eqz p2, :cond_9

    invoke-direct {p0, p3}, Landroid/app/PropertyInvalidatedCache;->showDetailed([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2221
    return-void

    .line 2224
    :cond_9
    const/4 v0, 0x0

    .line 2225
    .local v0, "brief":Z
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1b

    aget-object v4, p3, v3

    .local v4, "a":Ljava/lang/String;
    const-string v5, "-brief"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    .end local v4    # "a":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2227
    :cond_1b
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getStats()Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    move-result-object v1

    .line 2229
    .local v1, "stats":Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2230
    if-eqz v0, :cond_2e

    :try_start_26
    invoke-direct {p0, v1}, Landroid/app/PropertyInvalidatedCache;->isActive(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2231
    monitor-exit v3

    return-void

    .line 2234
    :cond_2e
    const-string v4, "  Cache Name: %s"

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    const-string v4, "    Property: %s"

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    const-string v4, "    Hits: %d, Misses: %d, Skips: %d, Clears: %d, Nulls: %d"

    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 2238
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getSkipsLocked()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v5

    .line 2236
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    const-string v4, "    Skip-%s: %d"

    sget-object v5, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2242
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_91
    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    array-length v4, v4

    if-ge v2, v4, :cond_ae

    .line 2243
    const-string v4, ", Skip-%s: %d"

    sget-object v5, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2242
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 2245
    .end local v2    # "i":I
    :cond_ae
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2247
    const-string v2, "    Nonce: 0x%016x, Invalidates: %d, Corked: %d"

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 2249
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 2247
    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2250
    const-string v2, "    Current Size: %d, Max Size: %d, HW Mark: %d, Overflows: %d"

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    .line 2252
    invoke-virtual {v4}, Landroid/app/PropertyInvalidatedCache$CacheMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 2250
    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2253
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dump(Ljava/io/PrintWriter;)V

    .line 2254
    const-string v2, "    Enabled: %s"

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-eqz v4, :cond_10b

    const-string v4, "false"

    goto :goto_10e

    :cond_10b
    const-string/jumbo v4, "true"

    :goto_10e
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2257
    if-eqz p2, :cond_120

    .line 2258
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dumpDetailed(Ljava/io/PrintWriter;)V

    .line 2262
    :cond_120
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    monitor-exit v3

    .line 2264
    return-void

    .line 2263
    :catchall_127
    move-exception v2

    monitor-exit v3
    :try_end_129
    .catchall {:try_start_26 .. :try_end_129} :catchall_127

    throw v2
.end method

.method private static blacklist getActiveCaches()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/PropertyInvalidatedCache;",
            ">;"
        }
    .end annotation

    .line 2135
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2136
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2137
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private blacklist getCurrentNonce()J
    .registers 3

    .line 1514
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getDisabledState()Z
    .registers 2

    .line 2117
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    return v0
.end method

.method private static blacklist getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1230
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1231
    .local v0, "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    if-nez v0, :cond_49

    .line 1232
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1233
    :try_start_d
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidCacheKey(Ljava/lang/String;)V

    .line 1234
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-object v0, v2

    .line 1235
    if-nez v0, :cond_44

    .line 1236
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->sharedMemoryOkay(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1237
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;

    const-string v3, "cache_key.system_server."

    invoke-direct {v2, p0, v3}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .local v2, "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    goto :goto_3f

    .line 1238
    .end local v2    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .restart local v0    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    :cond_2a
    const-string v2, "cache_key.test."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1239
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceLocal;

    invoke-direct {v2, p0}, Landroid/app/PropertyInvalidatedCache$NonceLocal;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .restart local v2    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    goto :goto_3f

    .line 1241
    .end local v2    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .restart local v0    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    :cond_39
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceSysprop;

    invoke-direct {v2, p0}, Landroid/app/PropertyInvalidatedCache$NonceSysprop;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1243
    :goto_3f
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    :cond_44
    monitor-exit v1

    goto :goto_49

    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_46

    throw v2

    .line 1247
    :cond_49
    :goto_49
    return-object v0
.end method

.method public static blacklist getNonceWatcher(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceWatcher;
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 1166
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V

    return-object v0
.end method

.method private blacklist getSkipsLocked()J
    .registers 7

    .line 2199
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    const/4 v0, 0x0

    .line 2200
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 2201
    int-to-long v2, v0

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v4, v4, v1

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 2200
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2203
    .end local v1    # "i":I
    :cond_11
    int-to-long v1, v0

    return-wide v1
.end method

.method private static blacklist inSharedMemoryDenyList(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1212
    const-string v0, "cache_key.system_server.package_info"

    .line 1213
    .local v0, "pkginfo":Ljava/lang/String;
    const-string v1, "cache_key.system_server.package_info"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static blacklist invalidateCache(Landroid/app/PropertyInvalidatedCache$Args;)V
    .registers 3
    .param p0, "args"    # Landroid/app/PropertyInvalidatedCache$Args;

    .line 1875
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmModule(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 1876
    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1889
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1890
    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "api"    # Ljava/lang/String;

    .line 1867
    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 1868
    return-void
.end method

.method private blacklist isActive(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)Z
    .registers 7
    .param p1, "stats"    # Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    .line 2210
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2211
    :try_start_3
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v1, v3

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getSkipsLocked()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    monitor-exit v0

    return v1

    .line 2213
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private static blacklist isReservedNonce(J)Z
    .registers 4
    .param p0, "n"    # J

    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_e

    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist isSharedMemoryAvailable()Z
    .registers 1

    .line 1200
    invoke-static {}, Lcom/android/internal/os/Flags;->applicationSharedMemoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1201
    invoke-static {}, Landroid/app/Flags;->picUsesSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1200
    :goto_f
    return v0
.end method

.method private static blacklist isSharedMemoryAvailable$ravenwood()Z
    .registers 1

    .line 1205
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)TResult;"
        }
    .end annotation

    .line 2068
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    .local p2, "proposedResult":Ljava/lang/Object;, "TResult;"
    return-object p2
.end method

.method private static native blacklist nativeGetByteBlock(JI[B)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetByteBlockHash(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetMaxByte(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetMaxNonce(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetNonce(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetByteBlock(JI[B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetNonce(JIJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist registerCache()V
    .registers 4

    .line 1411
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1412
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1413
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 1415
    :cond_10
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    monitor-exit v0

    .line 1417
    return-void

    .line 1416
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static blacklist separatePermissionNotificationsEnabled()Z
    .registers 1

    .line 88
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->isSharedMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    invoke-static {}, Landroid/app/Flags;->picSeparatePermissionNotifications()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 88
    :goto_f
    return v0
.end method

.method public static blacklist setTestMode(Z)V
    .registers 4
    .param p0, "mode"    # Z

    .line 1462
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    .line 1463
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1464
    :try_start_6
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    if-ne v1, p0, :cond_2f

    .line 1465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot set test mode redundantly: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1466
    .local v1, "msg":Ljava/lang/String;
    invoke-static {}, Landroid/app/Flags;->enforcePicTestmodeProtocol()Z

    move-result v2

    if-nez v2, :cond_29

    .line 1469
    const-string v2, "PropertyInvalidatedCache"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1467
    :cond_29
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "mode":Z
    throw v2

    .line 1472
    .end local v1    # "msg":Ljava/lang/String;
    .restart local p0    # "mode":Z
    :cond_2f
    :goto_2f
    sput-boolean p0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    .line 1473
    invoke-static {}, Landroid/app/Flags;->picTestMode()Z

    move-result v1

    if-nez v1, :cond_39

    if-nez p0, :cond_3c

    .line 1474
    :cond_39
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->setTestModeLocked(Z)V

    .line 1476
    :cond_3c
    monitor-exit v0

    .line 1477
    return-void

    .line 1476
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private static blacklist setTestModeLocked(Z)V
    .registers 4
    .param p0, "mode"    # Z

    .line 1486
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->asIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1487
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1488
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1489
    .local v2, "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    invoke-virtual {v2, p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setTestMode(Z)V

    .line 1490
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    goto :goto_a

    .line 1491
    .end local v0    # "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_22
    return-void
.end method

.method private static blacklist sharedMemoryOkay(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1219
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    if-eqz v0, :cond_14

    .line 1220
    const-string v0, "cache_key.system_server."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1221
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->inSharedMemoryDenyList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1219
    :goto_15
    return v0
.end method

.method private blacklist showDetailed([Ljava/lang/String;)Z
    .registers 9
    .param p1, "args"    # [Ljava/lang/String;

    .line 2186
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_39

    aget-object v3, p1, v2

    .line 2187
    .local v3, "a":Ljava/lang/String;
    const-string v4, "-name-has="

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2188
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-name-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 2189
    const-string v5, "-property-has="

    invoke-static {v3, v5, v4, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 2190
    const-string v5, "-property-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_38

    .line 2186
    .end local v3    # "a":Ljava/lang/String;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2191
    .restart local v3    # "a":Ljava/lang/String;
    :cond_38
    :goto_38
    return v6

    .line 2194
    .end local v3    # "a":Ljava/lang/String;
    :cond_39
    return v1
.end method

.method private static blacklist throwIfInvalidCacheKey(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 231
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 230
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "i":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid cache name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfInvalidModule(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 210
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 209
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "i":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfNotTest()V
    .registers 4

    .line 1424
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1425
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_7

    .line 1427
    return-void

    .line 1429
    :cond_7
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1430
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    if-nez v1, :cond_e

    .line 1432
    return-void

    .line 1434
    :cond_e
    invoke-virtual {v1}, Landroid/app/Instrumentation;->isInstrumenting()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1435
    return-void

    .line 1437
    :cond_15
    invoke-static {}, Landroid/app/Flags;->enforcePicTestmodeProtocol()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1440
    return-void

    .line 1438
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Test-only API called not from a test."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist throwIfNotTest$ravenwood()V
    .registers 0

    .line 1446
    return-void
.end method

.method public static blacklist uncorkInvalidations(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1918
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    .line 1919
    return-void
.end method


# virtual methods
.method public blacklist bypass(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 1554
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->shouldBypassCache(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist cacheName()Ljava/lang/String;
    .registers 2

    .line 2077
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist clear()V
    .registers 6

    .line 1525
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1529
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->clear()V

    .line 1530
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 1531
    monitor-exit v0

    .line 1532
    return-void

    .line 1531
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist corkInvalidations()V
    .registers 2

    .line 1849
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    .line 1850
    return-void
.end method

.method public blacklist disableForCurrentProcess()V
    .registers 2

    .line 1655
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method public blacklist disableInstance()V
    .registers 3

    .line 1595
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1596
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 1597
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 1598
    monitor-exit v0

    .line 1599
    return-void

    .line 1598
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist disableLocal()V
    .registers 1

    .line 1645
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    .line 1646
    return-void
.end method

.method public blacklist disableSystemWide()V
    .registers 2

    .line 1818
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    .line 1819
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableSystemWide(Ljava/lang/String;)V

    .line 1820
    return-void
.end method

.method public blacklist dumpCacheEntries(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2335
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2336
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dumpDetailed(Ljava/io/PrintWriter;)V

    .line 2337
    monitor-exit v0

    .line 2338
    return-void

    .line 2337
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist forgetDisableLocal()V
    .registers 4

    .line 1632
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1633
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1634
    monitor-exit v0

    .line 1635
    return-void

    .line 1634
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getNonce()J
    .registers 4

    .line 1175
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1176
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1177
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist getNonceWatcher()Landroid/app/PropertyInvalidatedCache$NonceWatcher;
    .registers 4

    .line 1157
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V

    return-object v0
.end method

.method public blacklist invalidateCache()V
    .registers 2

    .line 1839
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1840
    return-void
.end method

.method public blacklist isDisabled()Z
    .registers 2

    .line 1669
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final blacklist propertyName()Ljava/lang/String;
    .registers 2

    .line 2085
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 1678
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v3

    goto :goto_e

    :cond_d
    move-wide v3, v1

    .line 1679
    .local v3, "currentNonce":J
    :goto_e
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1680
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->bypass(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1681
    const-wide/16 v3, 0x3

    .line 1684
    :cond_1c
    :goto_1c
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1685
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_36

    .line 1688
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1689
    :try_start_29
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    long-to-int v6, v3

    aget-wide v7, v5, v6

    add-long/2addr v7, v1

    aput-wide v7, v5, v6

    .line 1690
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw v1

    .line 1700
    :cond_36
    :goto_36
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1705
    :cond_3b
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_3e
    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_62

    .line 1707
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v5, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1708
    .local v5, "cachedResult":Ljava/lang/Object;, "TResult;"
    if-nez v5, :cond_59

    .line 1709
    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    if-eqz v6, :cond_57

    .line 1710
    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v6, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "cacheHit":Z
    goto :goto_5a

    .line 1712
    .end local v6    # "cacheHit":Z
    :cond_57
    const/4 v6, 0x0

    .restart local v6    # "cacheHit":Z
    goto :goto_5a

    .line 1715
    .end local v6    # "cacheHit":Z
    :cond_59
    const/4 v6, 0x1

    .line 1717
    .restart local v6    # "cacheHit":Z
    :goto_5a
    if-eqz v6, :cond_69

    .line 1718
    iget-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    add-long/2addr v7, v1

    iput-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    goto :goto_69

    .line 1727
    .end local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    .end local v6    # "cacheHit":Z
    :cond_62
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 1728
    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 1729
    const/4 v6, 0x0

    .line 1730
    .restart local v6    # "cacheHit":Z
    const/4 v5, 0x0

    .line 1732
    .restart local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    :cond_69
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3e .. :try_end_6a} :catchall_d0

    .line 1740
    if-eqz v6, :cond_a1

    .line 1741
    invoke-virtual {p0, v5, p1}, Landroid/app/PropertyInvalidatedCache;->refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1742
    .local v0, "refreshedResult":Ljava/lang/Object;, "TResult;"
    if-eq v0, v5, :cond_9c

    .line 1746
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v7

    .line 1747
    .local v7, "afterRefreshNonce":J
    cmp-long v9, v3, v7

    if-eqz v9, :cond_7c

    .line 1748
    move-wide v3, v7

    .line 1755
    goto :goto_1c

    .line 1757
    :cond_7c
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1758
    :try_start_7f
    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v2, v3, v9

    if-eqz v2, :cond_86

    goto :goto_93

    .line 1762
    :cond_86
    if-nez v0, :cond_8e

    .line 1763
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->remove(Ljava/lang/Object;)V

    goto :goto_93

    .line 1765
    :cond_8e
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1, v0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1767
    :goto_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_7f .. :try_end_94} :catchall_99

    .line 1768
    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1767
    :catchall_99
    move-exception v2

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v2

    .line 1773
    .end local v7    # "afterRefreshNonce":J
    :cond_9c
    invoke-direct {p0, p1, v5}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1780
    .end local v0    # "refreshedResult":Ljava/lang/Object;, "TResult;"
    :cond_a1
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1781
    .local v7, "result":Ljava/lang/Object;, "TResult;"
    iget-object v8, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1784
    :try_start_a8
    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v0, v9, v3

    if-nez v0, :cond_c2

    .line 1785
    if-nez v7, :cond_bd

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    if-eqz v0, :cond_b5

    goto :goto_bd

    .line 1787
    :cond_b5
    if-nez v7, :cond_c2

    .line 1789
    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    goto :goto_c2

    .line 1786
    :cond_bd
    :goto_bd
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v0, p1, v7}, Landroid/app/PropertyInvalidatedCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1792
    :cond_c2
    :goto_c2
    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 1793
    monitor-exit v8
    :try_end_c8
    .catchall {:try_start_a8 .. :try_end_c8} :catchall_cd

    .line 1794
    invoke-direct {p0, p1, v7}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1793
    :catchall_cd
    move-exception v0

    :try_start_ce
    monitor-exit v8
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v0

    .line 1732
    .end local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    .end local v6    # "cacheHit":Z
    .end local v7    # "result":Ljava/lang/Object;, "TResult;"
    :catchall_d0
    move-exception v1

    :try_start_d1
    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    throw v1
.end method

.method protected blacklist queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2096
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 1543
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TQuery;)TResult;"
        }
    .end annotation

    .line 1584
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "oldResult":Ljava/lang/Object;, "TResult;"
    .local p2, "query":Ljava/lang/Object;, "TQuery;"
    return-object p1
.end method

.method public blacklist resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TResult;)Z"
        }
    .end annotation

    .line 1564
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "cachedResult":Ljava/lang/Object;, "TResult;"
    .local p2, "fetchedResult":Ljava/lang/Object;, "TResult;"
    if-eqz p2, :cond_7

    .line 1565
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1567
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist size()I
    .registers 3

    .line 2126
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2127
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2128
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist testPropertyName()V
    .registers 4

    .line 1502
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    .line 1503
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_6
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    if-eqz v1, :cond_12

    .line 1507
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setTestMode(Z)V

    .line 1508
    monitor-exit v0

    .line 1509
    return-void

    .line 1505
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot test property name with test mode off"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    throw v1

    .line 1508
    .restart local p0    # "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist uncorkInvalidations()V
    .registers 2

    .line 1859
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    .line 1860
    return-void
.end method
