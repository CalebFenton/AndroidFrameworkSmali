.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$RBClassLoader;,
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$CacheKey;,
        Ljava/util/ResourceBundle$BundleReference;,
        Ljava/util/ResourceBundle$SingleFormatControl;,
        Ljava/util/ResourceBundle$CacheKeyReference;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$KeyElementReference;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o INITIAL_CACHE_SIZE:I = 0x20

.field private static final greylist-max-o NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

.field private static final blacklist TRACE_ON:Z

.field private static final blacklist UNKNOWN_FORMAT:Ljava/lang/String; = ""

.field private static final greylist-max-o cacheList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/ResourceBundle$BundleReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile greylist-max-o cacheKey:Ljava/util/ResourceBundle$CacheKey;

.field private volatile greylist-max-o expired:Z

.field private volatile greylist-max-o keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o name:Ljava/lang/String;

.field protected whitelist test-api parent:Ljava/util/ResourceBundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetreferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smuncheckedThrow(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Ljava/util/ResourceBundle;->uncheckedThrow(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 288
    nop

    .line 336
    new-instance v0, Ljava/util/ResourceBundle$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$1;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    .line 355
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    .line 361
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 3767
    nop

    .line 3768
    const-string v0, "resource.bundle.debug"

    const-string v1, "false"

    invoke-static {v0, v1}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3767
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Ljava/util/ResourceBundle;->TRACE_ON:Z

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 391
    iput-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 419
    return-void
.end method

.method private static greylist-max-o checkList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 1749
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, v0

    .line 1750
    .local v2, "valid":Z
    :goto_d
    if-eqz v2, :cond_25

    .line 1751
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1752
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-eqz v2, :cond_25

    if-ge v4, v3, :cond_25

    .line 1753
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_20

    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v0

    :goto_21
    move v2, v5

    .line 1752
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1756
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_25
    return v2
.end method

.method public static final whitelist test-api clearCache()V
    .registers 1
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2307
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->clearCache(Ljava/lang/ClassLoader;)V

    .line 2308
    return-void
.end method

.method public static final whitelist test-api clearCache(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 2320
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ResourceBundle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljava/util/ResourceBundle$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2332
    return-void
.end method

.method private static greylist-max-o findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .registers 15
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p3, "index"    # I
    .param p4, "control"    # Ljava/util/ResourceBundle$Control;
    .param p5, "baseBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ResourceBundle$Control;",
            "Ljava/util/ResourceBundle;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .line 1767
    .local p1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 1768
    .local v0, "targetLocale":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 1769
    .local v1, "parent":Ljava/util/ResourceBundle;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p3, v2, :cond_1b

    .line 1775
    add-int/lit8 v6, p3, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object v8, p5

    .end local p0    # "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    .end local p1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local p2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "control":Ljava/util/ResourceBundle$Control;
    .end local p5    # "baseBundle":Ljava/util/ResourceBundle;
    .local v3, "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    .local v4, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local v5, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "control":Ljava/util/ResourceBundle$Control;
    .local v8, "baseBundle":Ljava/util/ResourceBundle;
    invoke-static/range {v3 .. v8}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v1

    goto :goto_2b

    .line 1777
    .end local v3    # "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    .end local v4    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v5    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "control":Ljava/util/ResourceBundle$Control;
    .end local v8    # "baseBundle":Ljava/util/ResourceBundle;
    .restart local p0    # "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    .restart local p1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local p2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "control":Ljava/util/ResourceBundle$Control;
    .restart local p5    # "baseBundle":Ljava/util/ResourceBundle;
    :cond_1b
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object v8, p5

    .end local p0    # "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    .end local p1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local p2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "control":Ljava/util/ResourceBundle$Control;
    .end local p5    # "baseBundle":Ljava/util/ResourceBundle;
    .restart local v3    # "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    .restart local v4    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v5    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "control":Ljava/util/ResourceBundle$Control;
    .restart local v8    # "baseBundle":Ljava/util/ResourceBundle;
    if-eqz v8, :cond_2b

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 1778
    return-object v8

    .line 1786
    :cond_2b
    :goto_2b
    sget-object p0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p0

    move-object p1, p0

    .local p1, "ref":Ljava/lang/Object;
    if-eqz p0, :cond_41

    .line 1787
    sget-object p0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    move-object p2, p1

    check-cast p2, Ljava/util/ResourceBundle$CacheKeyReference;

    invoke-interface {p2}, Ljava/util/ResourceBundle$CacheKeyReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 1791
    :cond_41
    const/4 p0, 0x0

    .line 1795
    .local p0, "expiredBundle":Z
    invoke-virtual {v3, v0}, Ljava/util/ResourceBundle$CacheKey;->setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;

    .line 1796
    invoke-static {v3, v7}, Ljava/util/ResourceBundle;->findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object p2

    .line 1797
    .local p2, "bundle":Ljava/util/ResourceBundle;
    invoke-static {p2}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result p4

    if-eqz p4, :cond_6d

    .line 1798
    iget-boolean p0, p2, Ljava/util/ResourceBundle;->expired:Z

    .line 1799
    if-nez p0, :cond_6d

    .line 1805
    iget-object p4, p2, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-ne p4, v1, :cond_58

    .line 1806
    return-object p2

    .line 1810
    :cond_58
    sget-object p4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ResourceBundle$BundleReference;

    .line 1812
    .local p4, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz p4, :cond_6d

    invoke-virtual {p4, p2}, Ljava/util/ResourceBundle$BundleReference;->refersTo(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6d

    .line 1813
    sget-object p5, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p5, v3, p4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1818
    .end local p4    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    :cond_6d
    sget-object p4, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq p2, p4, :cond_97

    .line 1819
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4, v4, v3, v5}, [Ljava/lang/Object;

    move-result-object p4

    const-string p5, "findBundle: %d %s %s formats: %s%n"

    invoke-static {p5, p4}, Ljava/util/ResourceBundle;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1827
    invoke-static {v3, v5, v7, p0}, Ljava/util/ResourceBundle;->loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;

    move-result-object p2

    .line 1828
    if-eqz p2, :cond_92

    .line 1829
    iget-object p4, p2, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez p4, :cond_8b

    .line 1830
    invoke-virtual {p2, v1}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 1832
    :cond_8b
    iput-object v0, p2, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1833
    invoke-static {v3, p2, v7}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object p2

    .line 1834
    return-object p2

    .line 1839
    :cond_92
    sget-object p4, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    invoke-static {v3, p4, v7}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    .line 1841
    :cond_97
    return-object v1
.end method

.method private static greylist-max-o findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 18
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .line 2129
    move-object/from16 v1, p0

    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ResourceBundle$BundleReference;

    .line 2130
    .local v2, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 2131
    return-object v3

    .line 2133
    :cond_f
    invoke-virtual {v2}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/ResourceBundle;

    .line 2134
    .local v9, "bundle":Ljava/util/ResourceBundle;
    if-nez v9, :cond_19

    .line 2135
    return-object v3

    .line 2137
    :cond_19
    iget-object v12, v9, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 2138
    .local v12, "p":Ljava/util/ResourceBundle;
    nop

    .line 2172
    if-eqz v12, :cond_32

    iget-boolean v0, v12, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_32

    .line 2173
    nop

    .line 2174
    const/4 v0, 0x1

    iput-boolean v0, v9, Ljava/util/ResourceBundle;->expired:Z

    .line 2175
    iput-object v3, v9, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 2176
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2177
    const/4 v9, 0x0

    move-object/from16 v3, p1

    goto/16 :goto_be

    .line 2179
    :cond_32
    invoke-virtual {v2}, Ljava/util/ResourceBundle$BundleReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v13

    .line 2180
    .local v13, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-static {v13}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$fgetexpirationTime(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v4

    .line 2181
    .local v4, "expirationTime":J
    iget-boolean v0, v9, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_bc

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_bc

    .line 2182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v0, v4, v10

    if-gtz v0, :cond_b9

    .line 2184
    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v9, v0, :cond_b0

    .line 2187
    monitor-enter v9

    .line 2188
    :try_start_51
    invoke-static {v13}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$fgetexpirationTime(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_a9

    move-wide v14, v10

    .line 2189
    .end local v4    # "expirationTime":J
    .local v14, "expirationTime":J
    :try_start_56
    iget-boolean v0, v9, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_9e

    cmp-long v0, v14, v6

    if-ltz v0, :cond_9e

    .line 2190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_a4

    cmp-long v0, v14, v4

    if-gtz v0, :cond_9b

    .line 2198
    :try_start_66
    invoke-virtual {v13}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2199
    invoke-virtual {v13}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v6

    .line 2200
    invoke-virtual {v13}, Ljava/util/ResourceBundle$CacheKey;->getFormat()Ljava/lang/String;

    move-result-object v7

    .line 2202
    invoke-virtual {v13}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v13}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$fgetloadTime(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    .line 2198
    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v0

    iput-boolean v0, v9, Ljava/util/ResourceBundle;->expired:Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_82} :catch_83
    .catchall {:try_start_66 .. :try_end_82} :catchall_a4

    .line 2207
    goto :goto_87

    .line 2205
    :catch_83
    move-exception v0

    .line 2206
    .local v0, "e":Ljava/lang/Exception;
    :try_start_84
    invoke-static {v1, v0}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$msetCause(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    .line 2208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_87
    iget-boolean v0, v9, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_95

    .line 2213
    iput-object v3, v9, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 2214
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_a4

    move-object/from16 v3, p1

    goto :goto_a0

    .line 2218
    :cond_95
    move-object/from16 v3, p1

    :try_start_97
    invoke-static {v13, v3}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    goto :goto_a0

    .line 2190
    :cond_9b
    move-object/from16 v3, p1

    goto :goto_a0

    .line 2189
    :cond_9e
    move-object/from16 v3, p1

    .line 2221
    :goto_a0
    monitor-exit v9
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_a2

    goto :goto_be

    :catchall_a2
    move-exception v0

    goto :goto_a7

    :catchall_a4
    move-exception v0

    move-object/from16 v3, p1

    :goto_a7
    move-wide v4, v14

    goto :goto_ac

    .end local v14    # "expirationTime":J
    .restart local v4    # "expirationTime":J
    :catchall_a9
    move-exception v0

    move-object/from16 v3, p1

    :goto_ac
    :try_start_ac
    monitor-exit v9
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ae

    throw v0

    :catchall_ae
    move-exception v0

    goto :goto_ac

    .line 2224
    :cond_b0
    move-object/from16 v3, p1

    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2225
    const/4 v9, 0x0

    goto :goto_be

    .line 2182
    :cond_b9
    move-object/from16 v3, p1

    goto :goto_be

    .line 2181
    :cond_bc
    move-object/from16 v3, p1

    .line 2229
    .end local v4    # "expirationTime":J
    .end local v13    # "key":Ljava/util/ResourceBundle$CacheKey;
    :goto_be
    return-object v9
.end method

.method public static final whitelist test-api getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 882
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 883
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 884
    invoke-static {v0, p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v2

    .line 883
    invoke-static {p0, v1, v0, v2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist test-api getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 954
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 955
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 956
    invoke-static {v0, p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v1

    .line 955
    invoke-static {p0, p1, v0, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1288
    if-eqz p2, :cond_f

    .line 1291
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 1292
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v1

    invoke-static {p0, p1, v0, p2, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1

    .line 1289
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1509
    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    .line 1512
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 1515
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0, p2, p3}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1

    .line 1510
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static final whitelist test-api getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1086
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 1089
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist test-api getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 924
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 925
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 928
    .local v1, "targetLocale":Ljava/util/Locale;
    invoke-static {p0, v1, v0, p1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 7
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/ResourceBundle$Control;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .line 1607
    .local p2, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_7

    .line 1629
    invoke-static {p0, p1, p3, p4}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0

    .line 1608
    :cond_7
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "null caller"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/ResourceBundle$Control;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .line 1588
    .local p2, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 20
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .line 1656
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    if-eqz v1, :cond_bf

    if-eqz v6, :cond_bf

    .line 1665
    new-instance v2, Ljava/util/ResourceBundle$CacheKey;

    move-object/from16 v8, p2

    invoke-direct {v2, v0, v1, v8}, Ljava/util/ResourceBundle$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    .line 1666
    .local v2, "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    const/4 v3, 0x0

    .line 1669
    .local v3, "bundle":Ljava/util/ResourceBundle;
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ResourceBundle$BundleReference;

    .line 1670
    .local v4, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v4, :cond_26

    .line 1671
    invoke-virtual {v4}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/util/ResourceBundle;

    .line 1672
    const/4 v4, 0x0

    move-object v9, v4

    goto :goto_27

    .line 1670
    :cond_26
    move-object v9, v4

    .line 1679
    .end local v4    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .local v9, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    :goto_27
    invoke-static {v3}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-static {v3}, Ljava/util/ResourceBundle;->hasValidParentChain(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1680
    return-object v3

    .line 1686
    :cond_34
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-$$Nest$sfgetINSTANCE()Ljava/util/ResourceBundle$Control;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v6, v4, :cond_43

    instance-of v4, v6, Ljava/util/ResourceBundle$SingleFormatControl;

    if-eqz v4, :cond_41

    goto :goto_43

    :cond_41
    move v4, v10

    goto :goto_44

    :cond_43
    :goto_43
    move v4, v11

    :goto_44
    move v12, v4

    .line 1688
    .local v12, "isKnownControl":Z
    invoke-virtual {v6, v0}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1689
    .local v4, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v12, :cond_5a

    invoke-static {v4}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_5a

    .line 1690
    :cond_52
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid Control: getFormats"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1693
    :cond_5a
    :goto_5a
    const/4 v5, 0x0

    .line 1694
    .local v5, "baseBundle":Ljava/util/ResourceBundle;
    move-object/from16 v7, p1

    move-object v13, v3

    move-object v14, v7

    move-object v7, v5

    .line 1695
    .end local v3    # "bundle":Ljava/util/ResourceBundle;
    .end local v5    # "baseBundle":Ljava/util/ResourceBundle;
    .local v7, "baseBundle":Ljava/util/ResourceBundle;
    .local v13, "bundle":Ljava/util/ResourceBundle;
    .local v14, "targetLocale":Ljava/util/Locale;
    :goto_60
    if-eqz v14, :cond_b2

    .line 1697
    invoke-virtual {v6, v0, v14}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v3

    .line 1698
    .local v3, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v12, :cond_77

    invoke-static {v3}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_6f

    goto :goto_77

    .line 1699
    :cond_6f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v10, "Invalid Control: getCandidateLocales"

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1705
    :cond_77
    :goto_77
    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v13

    .line 1712
    invoke-static {v13}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 1713
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v15, v13, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1714
    .local v5, "isBaseBundle":Z
    if-eqz v5, :cond_b2

    iget-object v15, v13, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v15, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b2

    .line 1715
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v11, :cond_a7

    iget-object v15, v13, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1716
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a7

    .line 1717
    goto :goto_b2

    .line 1723
    :cond_a7
    if-eqz v5, :cond_ac

    if-nez v7, :cond_ac

    .line 1724
    move-object v7, v13

    .line 1696
    .end local v3    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v5    # "isBaseBundle":Z
    :cond_ac
    invoke-virtual {v6, v0, v14}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v14

    const/4 v11, 0x1

    goto :goto_60

    .line 1729
    .end local v14    # "targetLocale":Ljava/util/Locale;
    :cond_b2
    :goto_b2
    if-nez v13, :cond_be

    .line 1730
    if-nez v7, :cond_bd

    .line 1731
    invoke-static {v2}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$mgetCause(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/util/ResourceBundle;->throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V

    .line 1733
    :cond_bd
    move-object v13, v7

    .line 1741
    :cond_be
    return-object v13

    .line 1656
    .end local v2    # "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    .end local v4    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "baseBundle":Ljava/util/ResourceBundle;
    .end local v9    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v12    # "isKnownControl":Z
    .end local v13    # "bundle":Ljava/util/ResourceBundle;
    :cond_bf
    move-object/from16 v8, p2

    .line 1657
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method private static blacklist getDefaultControl(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ResourceBundle$Control;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .line 1536
    .local p0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .param p0, "baseName"    # Ljava/lang/String;

    .line 1530
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-$$Nest$sfgetINSTANCE()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 501
    .local p0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 502
    .local v0, "cl":Ljava/lang/ClassLoader;
    :goto_8
    if-nez v0, :cond_e

    .line 510
    invoke-static {}, Ljava/util/ResourceBundle$RBClassLoader;->-$$Nest$sfgetINSTANCE()Ljava/util/ResourceBundle$RBClassLoader;

    move-result-object v0

    .line 512
    :cond_e
    return-object v0
.end method

.method private static greylist-max-o hasValidParentChain(Ljava/util/ResourceBundle;)Z
    .registers 9
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .line 2082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2083
    .local v0, "now":J
    :goto_4
    if-eqz p0, :cond_22

    .line 2084
    iget-boolean v2, p0, Ljava/util/ResourceBundle;->expired:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 2085
    return v3

    .line 2087
    :cond_c
    iget-object v2, p0, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 2088
    .local v2, "key":Ljava/util/ResourceBundle$CacheKey;
    if-eqz v2, :cond_1f

    .line 2089
    invoke-static {v2}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$fgetexpirationTime(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v4

    .line 2090
    .local v4, "expirationTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1f

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1f

    .line 2091
    return v3

    .line 2094
    .end local v4    # "expirationTime":J
    :cond_1f
    iget-object p0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 2095
    .end local v2    # "key":Ljava/util/ResourceBundle$CacheKey;
    goto :goto_4

    .line 2096
    :cond_22
    const/4 v2, 0x1

    return v2
.end method

.method private static greylist-max-o isValidBundle(Ljava/util/ResourceBundle;)Z
    .registers 2
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .line 2074
    if-eqz p0, :cond_8

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$clearCache$0(Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$CacheKey;)Z
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "key"    # Ljava/util/ResourceBundle$CacheKey;

    .line 2331
    invoke-virtual {p1}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;
    .registers 13
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .param p3, "reload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ResourceBundle$Control;",
            "Z)",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .line 2032
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 2045
    .local v3, "targetLocale":Ljava/util/Locale;
    const/4 v0, 0x0

    .line 2046
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v0

    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    .local v8, "bundle":Ljava/util/ResourceBundle;
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2049
    .local v4, "format":Ljava/lang/String;
    :try_start_17
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2050
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v5
    :try_end_1f
    .catch Ljava/lang/LinkageError; {:try_start_17 .. :try_end_1f} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_2a

    .line 2049
    move-object v1, p2

    move v6, p3

    .end local p2    # "control":Ljava/util/ResourceBundle$Control;
    .end local p3    # "reload":Z
    .local v1, "control":Ljava/util/ResourceBundle$Control;
    .local v6, "reload":Z
    :try_start_21
    invoke-virtual/range {v1 .. v6}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;

    move-result-object p2
    :try_end_25
    .catch Ljava/lang/LinkageError; {:try_start_21 .. :try_end_25} :catch_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_27

    .line 2056
    .end local v8    # "bundle":Ljava/util/ResourceBundle;
    .local p2, "bundle":Ljava/util/ResourceBundle;
    move-object v8, p2

    goto :goto_31

    .line 2051
    .end local p2    # "bundle":Ljava/util/ResourceBundle;
    .restart local v8    # "bundle":Ljava/util/ResourceBundle;
    :catch_27
    move-exception v0

    move-object p2, v0

    goto :goto_2e

    .end local v1    # "control":Ljava/util/ResourceBundle$Control;
    .end local v6    # "reload":Z
    .local p2, "control":Ljava/util/ResourceBundle$Control;
    .restart local p3    # "reload":Z
    :catch_2a
    move-exception v0

    move-object v1, p2

    move v6, p3

    move-object p2, v0

    .line 2055
    .end local p3    # "reload":Z
    .restart local v1    # "control":Ljava/util/ResourceBundle$Control;
    .restart local v6    # "reload":Z
    .local p2, "error":Ljava/lang/Throwable;
    :goto_2e
    invoke-static {p0, p2}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$msetCause(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    .line 2057
    .end local p2    # "error":Ljava/lang/Throwable;
    :goto_31
    if-eqz v8, :cond_42

    .line 2060
    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle$CacheKey;->setFormat(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v8, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    .line 2062
    iput-object v3, v8, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 2065
    const/4 p2, 0x0

    iput-boolean p2, v8, Ljava/util/ResourceBundle;->expired:Z

    .line 2066
    goto :goto_47

    .line 2068
    .end local v4    # "format":Ljava/lang/String;
    :cond_42
    move-object p2, v1

    move p3, v6

    goto :goto_a

    .line 2046
    .end local v1    # "control":Ljava/util/ResourceBundle$Control;
    .end local v6    # "reload":Z
    .local p2, "control":Ljava/util/ResourceBundle$Control;
    .restart local p3    # "reload":Z
    :cond_45
    move-object v1, p2

    move v6, p3

    .line 2070
    .end local p2    # "control":Ljava/util/ResourceBundle$Control;
    .end local p3    # "reload":Z
    .restart local v1    # "control":Ljava/util/ResourceBundle$Control;
    .restart local v6    # "reload":Z
    :goto_47
    return-object v8
.end method

.method private static greylist-max-o putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 8
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;

    .line 2244
    invoke-static {p0, p2}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    .line 2245
    invoke-static {p0}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$fgetexpirationTime(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    .line 2246
    new-instance v0, Ljava/util/ResourceBundle$CacheKey;

    invoke-direct {v0, p0}, Ljava/util/ResourceBundle$CacheKey;-><init>(Ljava/util/ResourceBundle$CacheKey;)V

    .line 2247
    .local v0, "key":Ljava/util/ResourceBundle$CacheKey;
    new-instance v1, Ljava/util/ResourceBundle$BundleReference;

    sget-object v2, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2, v0}, Ljava/util/ResourceBundle$BundleReference;-><init>(Ljava/util/ResourceBundle;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    .line 2248
    .local v1, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    iput-object v0, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 2251
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle$BundleReference;

    .line 2255
    .local v2, "result":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v2, :cond_3e

    .line 2256
    invoke-virtual {v2}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ResourceBundle;

    .line 2257
    .local v3, "rb":Ljava/util/ResourceBundle;
    if-eqz v3, :cond_39

    iget-boolean v4, v3, Ljava/util/ResourceBundle;->expired:Z

    if-nez v4, :cond_39

    .line 2259
    const/4 v4, 0x0

    iput-object v4, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 2260
    move-object p1, v3

    .line 2263
    invoke-virtual {v1}, Ljava/util/ResourceBundle$BundleReference;->clear()V

    goto :goto_3e

    .line 2267
    :cond_39
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    .end local v0    # "key":Ljava/util/ResourceBundle$CacheKey;
    .end local v1    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v2    # "result":Ljava/util/ResourceBundle$BundleReference;
    .end local v3    # "rb":Ljava/util/ResourceBundle;
    :cond_3e
    :goto_3e
    return-object p1
.end method

.method private static greylist-max-o setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    .registers 8
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .line 2275
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2276
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 2275
    invoke-virtual {p1, v0, v1}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 2277
    .local v0, "ttl":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1f

    .line 2280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2281
    .local v2, "now":J
    invoke-static {p0, v2, v3}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$fputloadTime(Ljava/util/ResourceBundle$CacheKey;J)V

    .line 2282
    add-long v4, v2, v0

    invoke-static {p0, v4, v5}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$fputexpirationTime(Ljava/util/ResourceBundle$CacheKey;J)V

    .line 2283
    .end local v2    # "now":J
    goto :goto_28

    :cond_1f
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_29

    .line 2284
    invoke-static {p0, v0, v1}, Ljava/util/ResourceBundle$CacheKey;->-$$Nest$fputexpirationTime(Ljava/util/ResourceBundle$CacheKey;J)V

    .line 2288
    :goto_28
    return-void

    .line 2286
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Control: TTL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 2107
    instance-of v0, p2, Ljava/util/MissingResourceException;

    if-eqz v0, :cond_5

    .line 2108
    const/4 p2, 0x0

    .line 2110
    :cond_5
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find bundle for base name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static varargs blacklist trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 3771
    sget-boolean v0, Ljava/util/ResourceBundle;->TRACE_ON:Z

    if-eqz v0, :cond_9

    .line 3772
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 3773
    :cond_9
    return-void
.end method

.method private static blacklist uncheckedThrow(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3555
    if-eqz p0, :cond_3

    .line 3556
    throw p0

    .line 3558
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unknown Exception"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api containsKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2367
    if-eqz p1, :cond_16

    .line 2370
    move-object v0, p0

    .local v0, "rb":Ljava/util/ResourceBundle;
    :goto_3
    if-eqz v0, :cond_14

    .line 2371
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2372
    const/4 v1, 0x1

    return v1

    .line 2370
    :cond_11
    iget-object v0, v0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_3

    .line 2375
    .end local v0    # "rb":Ljava/util/ResourceBundle;
    :cond_14
    const/4 v0, 0x0

    return v0

    .line 2368
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getBaseBundleName()Ljava/lang/String;
    .registers 2

    .line 378
    iget-object v0, p0, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist test-api getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 493
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final whitelist test-api getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 469
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_46

    .line 471
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_10

    .line 472
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 474
    :cond_10
    if-eqz v0, :cond_13

    goto :goto_46

    .line 475
    :cond_13
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_46
    :goto_46
    return-object v0
.end method

.method public final whitelist test-api getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 452
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected abstract whitelist test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected whitelist test-api handleKeySet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2412
    iget-object v0, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v0, :cond_2f

    .line 2413
    monitor-enter p0

    .line 2414
    :try_start_5
    iget-object v0, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v0, :cond_2a

    .line 2415
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2416
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 2417
    .local v1, "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2418
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2419
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 2420
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2422
    .end local v2    # "key":Ljava/lang/String;
    :cond_27
    goto :goto_12

    .line 2423
    :cond_28
    iput-object v0, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    .line 2425
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2a
    monitor-exit p0

    goto :goto_2f

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v0

    .line 2427
    :cond_2f
    :goto_2f
    iget-object v0, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2388
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, "rb":Ljava/util/ResourceBundle;
    :goto_6
    if-eqz v1, :cond_12

    .line 2389
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2388
    iget-object v1, v1, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_6

    .line 2391
    .end local v1    # "rb":Ljava/util/ResourceBundle;
    :cond_12
    return-object v0
.end method

.method protected whitelist test-api setParent(Ljava/util/ResourceBundle;)V
    .registers 2
    .param p1, "parent"    # Ljava/util/ResourceBundle;

    .line 575
    nop

    .line 576
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 577
    return-void
.end method
