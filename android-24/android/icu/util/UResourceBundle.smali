.class public abstract Landroid/icu/util/UResourceBundle;
.super Ljava/util/ResourceBundle;
.source "UResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/UResourceBundle$ResourceCacheKey;
    }
.end annotation


# static fields
.field public static final ARRAY:I = 0x8

.field public static final BINARY:I = 0x1

.field private static BUNDLE_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/UResourceBundle$ResourceCacheKey;",
            "Landroid/icu/util/UResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT:I = 0x7

.field public static final INT_VECTOR:I = 0xe

.field public static final NONE:I = -0x1

.field private static ROOT_CACHE:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ROOT_ICU:I = 0x1

.field private static final ROOT_JAVA:I = 0x2

.field private static final ROOT_MISSING:I = 0x0

.field public static final STRING:I = 0x0

.field public static final TABLE:I = 0x2

.field private static final cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 307
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    .line 306
    sput-object v0, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    #@7
    .line 439
    new-instance v0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;-><init>(Landroid/icu/util/UResourceBundle$ResourceCacheKey;)V

    #@d
    sput-object v0, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@f
    .line 446
    new-instance v0, Ljava/lang/ref/SoftReference;

    #@11
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@16
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@19
    .line 445
    sput-object v0, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    #@1b
    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    return-void
.end method

.method protected static addToCache(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 4
    .param p0, "fullName"    # Ljava/lang/String;
    .param p1, "defaultLocale"    # Landroid/icu/util/ULocale;
    .param p2, "b"    # Landroid/icu/util/UResourceBundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 338
    sget-object v2, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@2
    monitor-enter v2

    #@3
    .line 339
    :try_start_0
    sget-object v1, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@5
    invoke-static {v1, p0, p1}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->-wrap0(Landroid/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@8
    .line 340
    sget-object v1, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    #@a
    sget-object v3, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@c
    invoke-interface {v1, v3}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 341
    .local v0, "cachedBundle":Landroid/icu/util/UResourceBundle;
    if-eqz v0, :cond_0

    #@14
    monitor-exit v2

    #@15
    .line 342
    return-object v0

    #@16
    .line 344
    :cond_0
    :try_start_1
    sget-object v3, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    #@18
    sget-object v1, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@1a
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@20
    invoke-interface {v3, v1, p2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 345
    return-object p2

    #@25
    .line 338
    .end local v0    # "cachedBundle":Landroid/icu/util/UResourceBundle;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public static getBundleInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .locals 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 162
    if-nez p0, :cond_0

    #@2
    .line 163
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@5
    move-result-object p0

    #@6
    .line 165
    :cond_0
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    #@9
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 166
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@f
    const/4 v3, 0x0

    #@10
    .line 165
    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 4
    .param p0, "baseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    if-nez p0, :cond_0

    #@2
    .line 178
    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    #@5
    .line 180
    :cond_0
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@8
    move-result-object v0

    #@9
    .line 181
    .local v0, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@f
    .line 182
    const/4 v3, 0x0

    #@10
    .line 181
    invoke-static {p0, v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .locals 3
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 215
    if-nez p0, :cond_0

    #@2
    .line 216
    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    #@5
    .line 218
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 219
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@a
    move-result-object p1

    #@b
    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 222
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@11
    const/4 v2, 0x0

    #@12
    .line 221
    invoke-static {p0, v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 259
    if-nez p0, :cond_0

    #@2
    .line 260
    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    #@5
    .line 262
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 263
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@a
    move-result-object p1

    #@b
    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x0

    #@10
    invoke-static {p0, v0, p2, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@2
    .line 109
    const/4 v1, 0x0

    #@3
    .line 108
    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    #@0
    .prologue
    .line 143
    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;
    .locals 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 196
    if-nez p0, :cond_0

    #@2
    .line 197
    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    #@5
    .line 199
    :cond_0
    if-nez p1, :cond_1

    #@7
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@a
    move-result-object v0

    #@b
    .line 201
    .local v0, "uloc":Landroid/icu/util/ULocale;
    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@11
    .line 202
    const/4 v3, 0x0

    #@12
    .line 201
    invoke-static {p0, v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 199
    .end local v0    # "uloc":Landroid/icu/util/ULocale;
    :cond_1
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 3
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 237
    if-nez p0, :cond_0

    #@2
    .line 238
    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    #@5
    .line 240
    :cond_0
    if-nez p1, :cond_1

    #@7
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@a
    move-result-object v0

    #@b
    .line 241
    .local v0, "uloc":Landroid/icu/util/ULocale;
    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {p0, v1, p2, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 240
    .end local v0    # "uloc":Landroid/icu/util/ULocale;
    :cond_1
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@18
    move-result-object v0

    #@19
    goto :goto_0
.end method

.method private static getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 10
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 449
    const/4 v3, 0x0

    #@1
    .line 452
    .local v3, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v8, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    #@3
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    .end local v3    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    #@9
    .line 453
    .local v3, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_1

    #@b
    .line 454
    const-class v9, Landroid/icu/util/UResourceBundle;

    #@d
    monitor-enter v9

    #@e
    .line 455
    :try_start_0
    sget-object v8, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    #@10
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v8

    #@14
    move-object v0, v8

    #@15
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    move-object v3, v0

    #@18
    .line 456
    if-nez v3, :cond_0

    #@1a
    .line 457
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    #@1c
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 458
    .end local v3    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v4, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1
    new-instance v8, Ljava/lang/ref/SoftReference;

    #@21
    invoke-direct {v8, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@24
    sput-object v8, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@26
    move-object v3, v4

    #@27
    .end local v4    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit v9

    #@28
    .line 463
    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Ljava/lang/Integer;

    #@2e
    .line 465
    .local v6, "rootType":Ljava/lang/Integer;
    if-nez v6, :cond_2

    #@30
    .line 466
    const/16 v8, 0x2e

    #@32
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    #@35
    move-result v8

    #@36
    const/4 v9, -0x1

    #@37
    if-ne v8, v9, :cond_3

    #@39
    const-string/jumbo v5, "root"

    #@3c
    .line 467
    .local v5, "rootLocale":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    #@3d
    .line 469
    .local v7, "rt":I
    const/4 v8, 0x1

    #@3e
    :try_start_2
    invoke-static {p0, v5, p1, v8}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    #@41
    .line 470
    const/4 v7, 0x1

    #@42
    .line 480
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v6

    #@46
    .line 481
    invoke-virtual {v3, p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 484
    .end local v5    # "rootLocale":Ljava/lang/String;
    .end local v7    # "rt":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@4c
    move-result v8

    #@4d
    return v8

    #@4e
    .line 454
    .end local v6    # "rootType":Ljava/lang/Integer;
    :catchall_0
    move-exception v8

    #@4f
    :goto_2
    monitor-exit v9

    #@50
    throw v8

    #@51
    .line 466
    .restart local v6    # "rootType":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v5, ""

    #@54
    .restart local v5    # "rootLocale":Ljava/lang/String;
    goto :goto_0

    #@55
    .line 471
    .restart local v7    # "rt":I
    :catch_0
    move-exception v2

    #@56
    .line 473
    .local v2, "ex":Ljava/util/MissingResourceException;
    const/4 v8, 0x1

    #@57
    :try_start_3
    invoke-static {p0, v5, p1, v8}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    #@5a
    .line 474
    const/4 v7, 0x2

    #@5b
    goto :goto_1

    #@5c
    .line 475
    :catch_1
    move-exception v1

    #@5d
    .local v1, "e":Ljava/util/MissingResourceException;
    goto :goto_1

    #@5e
    .line 454
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    .end local v3    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "rootLocale":Ljava/lang/String;
    .end local v6    # "rootType":Ljava/lang/Integer;
    .end local v7    # "rt":I
    .restart local v4    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v8

    #@5f
    move-object v3, v4

    #@60
    .end local v4    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method private handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;
    .locals 5
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    .line 998
    invoke-direct {p0, p1, p2}, Landroid/icu/util/UResourceBundle;->resolveObject(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 999
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@6
    .line 1000
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@9
    move-result-object v1

    #@a
    .line 1001
    .local v1, "parentBundle":Landroid/icu/util/UResourceBundle;
    if-eqz v1, :cond_0

    #@c
    .line 1002
    invoke-direct {v1, p1, p2}, Landroid/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 1004
    :cond_0
    if-nez v0, :cond_1

    #@12
    .line 1005
    new-instance v2, Ljava/util/MissingResourceException;

    #@14
    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Can\'t find resource for bundle "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 1007
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 1006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 1007
    const-string/jumbo v4, ", key "

    #@2f
    .line 1006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 1008
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 1005
    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@46
    throw v2

    #@47
    .line 1010
    .end local v1    # "parentBundle":Landroid/icu/util/UResourceBundle;
    :cond_1
    return-object v0
.end method

.method protected static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    #@0
    .prologue
    .line 518
    const/4 v0, 0x0

    #@1
    .line 519
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    invoke-static {p0, p2}, Landroid/icu/util/UResourceBundle;->getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)I

    #@4
    move-result v4

    #@5
    .line 521
    .local v4, "rootType":I
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@8
    move-result-object v1

    #@9
    .line 523
    .local v1, "defaultLocale":Landroid/icu/util/ULocale;
    packed-switch v4, :pswitch_data_0

    #@c
    .line 546
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@f
    move-result-object v0

    #@10
    .line 548
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    const/4 v5, 0x1

    #@11
    invoke-static {p0, v5}, Landroid/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 554
    :goto_0
    return-object v0

    #@15
    .line 526
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    :pswitch_0
    if-eqz p3, :cond_1

    #@17
    .line 527
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 528
    .local v3, "fullName":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/icu/util/UResourceBundle;->loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@1e
    move-result-object v0

    #@1f
    .line 529
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    if-nez v0, :cond_0

    #@21
    .line 530
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@24
    move-result-object v0

    #@25
    .line 538
    .end local v3    # "fullName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    #@26
    .line 534
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@29
    move-result-object v0

    #@2a
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    goto :goto_1

    #@2b
    .line 541
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@2e
    move-result-object v5

    #@2f
    return-object v5

    #@30
    .line 549
    .end local v0    # "b":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v2

    #@31
    .line 550
    .local v2, "ex":Ljava/util/MissingResourceException;
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@34
    move-result-object v0

    #@35
    .line 552
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    const/4 v5, 0x2

    #@36
    invoke-static {p0, v5}, Landroid/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;I)V

    #@39
    goto :goto_0

    #@3a
    .line 523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .locals 3
    .param p0, "fullName"    # Ljava/lang/String;
    .param p1, "defaultLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 356
    sget-object v1, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@2
    monitor-enter v1

    #@3
    .line 357
    :try_start_0
    sget-object v0, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@5
    invoke-static {v0, p0, p1}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->-wrap0(Landroid/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@8
    .line 358
    sget-object v0, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    #@a
    sget-object v2, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@c
    invoke-interface {v0, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 356
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static resetBundleCache()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 326
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    sput-object v0, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    #@7
    .line 314
    return-void
.end method

.method private resolveObject(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;
    .locals 4
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1016
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getType()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 1017
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 1019
    :cond_0
    invoke-virtual {p0, p1, v3, p2}, Landroid/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@f
    move-result-object v1

    #@10
    .line 1020
    .local v1, "obj":Landroid/icu/util/UResourceBundle;
    if-eqz v1, :cond_2

    #@12
    .line 1021
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getType()I

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 1022
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    .line 1025
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getType()I

    #@20
    move-result v2

    #@21
    const/16 v3, 0x8

    #@23
    if-ne v2, v3, :cond_2

    #@25
    .line 1026
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->handleGetStringArray()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/icu/util/UResourceTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v2

    #@29
    return-object v2

    #@2a
    .line 1028
    :catch_0
    move-exception v0

    #@2b
    .line 1029
    .local v0, "ex":Landroid/icu/util/UResourceTypeMismatchException;
    return-object v1

    #@2c
    .line 1032
    .end local v0    # "ex":Landroid/icu/util/UResourceTypeMismatchException;
    :cond_2
    return-object v1
.end method

.method private static setRootType(Ljava/lang/String;I)V
    .locals 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "rootType"    # I

    #@0
    .prologue
    .line 488
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v3

    #@4
    .line 489
    .local v3, "rt":Ljava/lang/Integer;
    const/4 v1, 0x0

    #@5
    .line 491
    .local v1, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    #@7
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .end local v1    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    .line 492
    .local v1, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    #@f
    .line 493
    const-class v5, Landroid/icu/util/UResourceBundle;

    #@11
    monitor-enter v5

    #@12
    .line 494
    :try_start_0
    sget-object v4, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    #@14
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    move-object v0, v4

    #@19
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    move-object v1, v0

    #@1c
    .line 495
    if-nez v1, :cond_0

    #@1e
    .line 496
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    #@20
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 497
    .end local v1    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v2, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1
    new-instance v4, Ljava/lang/ref/SoftReference;

    #@25
    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@28
    sput-object v4, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2a
    move-object v1, v2

    #@2b
    .end local v2    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit v5

    #@2c
    .line 502
    :cond_1
    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 487
    return-void

    #@30
    .line 493
    :catchall_0
    move-exception v4

    #@31
    :goto_0
    monitor-exit v5

    #@32
    throw v4

    #@33
    .end local v1    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v4

    #@34
    move-object v1, v2

    #@35
    .end local v2    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0
.end method


# virtual methods
.method protected findTopLevel(I)Landroid/icu/util/UResourceBundle;
    .locals 4
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 756
    move-object v1, p0

    #@2
    .local v1, "res":Landroid/icu/util/UResourceBundle;
    :goto_0
    if-eqz v1, :cond_1

    #@4
    .line 757
    invoke-virtual {v1, p1, v2, p0}, Landroid/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    .line 758
    .local v0, "obj":Landroid/icu/util/UResourceBundle;
    if-eqz v0, :cond_0

    #@a
    move-object v2, v0

    #@b
    .line 759
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@d
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    #@14
    .line 760
    return-object v0

    #@15
    .line 756
    :cond_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@18
    move-result-object v1

    #@19
    goto :goto_0

    #@1a
    .line 763
    .end local v0    # "obj":Landroid/icu/util/UResourceBundle;
    :cond_1
    return-object v2
.end method

.method protected findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 4
    .param p1, "aKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 687
    move-object v1, p0

    #@2
    .local v1, "res":Landroid/icu/util/UResourceBundle;
    :goto_0
    if-eqz v1, :cond_1

    #@4
    .line 688
    invoke-virtual {v1, p1, v2, p0}, Landroid/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    .line 689
    .local v0, "obj":Landroid/icu/util/UResourceBundle;
    if-eqz v0, :cond_0

    #@a
    move-object v2, v0

    #@b
    .line 690
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@d
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    #@14
    .line 691
    return-object v0

    #@15
    .line 687
    :cond_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@18
    move-result-object v1

    #@19
    goto :goto_0

    #@1a
    .line 694
    .end local v0    # "obj":Landroid/icu/util/UResourceBundle;
    :cond_1
    return-object v2
.end method

.method public get(I)Landroid/icu/util/UResourceBundle;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 722
    invoke-virtual {p0, p1, v1, p0}, Landroid/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@4
    move-result-object v0

    #@5
    .line 723
    .local v0, "obj":Landroid/icu/util/UResourceBundle;
    if-nez v0, :cond_1

    #@7
    .line 724
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@a
    move-result-object v0

    #@b
    .end local v0    # "obj":Landroid/icu/util/UResourceBundle;
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@d
    .line 725
    .restart local v0    # "obj":Landroid/icu/util/UResourceBundle;
    if-eqz v0, :cond_0

    #@f
    .line 726
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@12
    move-result-object v0

    #@13
    .line 728
    :cond_0
    if-nez v0, :cond_1

    #@15
    .line 729
    new-instance v1, Ljava/util/MissingResourceException;

    #@17
    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Can\'t find resource for bundle "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 731
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 731
    const-string/jumbo v3, ", key "

    #@32
    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 732
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 732
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    .line 729
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@51
    throw v1

    #@52
    :cond_1
    move-object v1, v0

    #@53
    .line 734
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@55
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    #@5c
    .line 735
    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 5
    .param p1, "aKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 662
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@3
    move-result-object v1

    #@4
    .line 663
    .local v1, "obj":Landroid/icu/util/UResourceBundle;
    if-nez v1, :cond_0

    #@6
    .line 664
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getBaseName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {v2, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 665
    .local v0, "fullName":Ljava/lang/String;
    new-instance v2, Ljava/util/MissingResourceException;

    #@14
    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Can\'t find resource for bundle "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    const-string/jumbo v4, ", key "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 667
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 665
    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    throw v2

    #@3f
    .line 669
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected abstract getBaseName()Ljava/lang/String;
.end method

.method public getBinary()Ljava/nio/ByteBuffer;
    .locals 2

    #@0
    .prologue
    .line 569
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getBinary([B)[B
    .locals 2
    .param p1, "ba"    # [B

    #@0
    .prologue
    .line 611
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getInt()I
    .locals 2

    #@0
    .prologue
    .line 637
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getIntVector()[I
    .locals 2

    #@0
    .prologue
    .line 624
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getIterator()Landroid/icu/util/UResourceBundleIterator;
    .locals 1

    #@0
    .prologue
    .line 877
    new-instance v0, Landroid/icu/util/UResourceBundleIterator;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/UResourceBundleIterator;-><init>(Landroid/icu/util/UResourceBundle;)V

    #@5
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 886
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected abstract getLocaleID()Ljava/lang/String;
.end method

.method protected abstract getParent()Landroid/icu/util/UResourceBundle;
.end method

.method public getSize()I
    .locals 1

    #@0
    .prologue
    .line 847
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 583
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 706
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@6
    .line 707
    .local v0, "temp":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 708
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 710
    :cond_0
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 596
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 859
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getUInt()I
    .locals 2

    #@0
    .prologue
    .line 651
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract getULocale()Landroid/icu/util/ULocale;
.end method

.method public getVersion()Landroid/icu/util/VersionInfo;
    .locals 1

    #@0
    .prologue
    .line 868
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p1, "index"    # I
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 956
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p1, "aKey"    # Ljava/lang/String;
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 941
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected handleGetKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 975
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "aKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 985
    invoke-direct {p0, p1, p0}, Landroid/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected handleGetStringArray()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 965
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 835
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected isTopLevelResource()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1052
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 789
    const/4 v1, 0x0

    #@1
    .line 790
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@2
    .line 791
    .local v0, "icurb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->isTopLevelResource()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    instance-of v4, p0, Landroid/icu/impl/ICUResourceBundle;

    #@a
    if-eqz v4, :cond_0

    #@c
    move-object v0, p0

    #@d
    .line 794
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@f
    .line 795
    .local v0, "icurb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getTopLevelKeySet()Ljava/util/Set;

    #@12
    move-result-object v1

    #@13
    .line 797
    .end local v0    # "icurb":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    if-nez v1, :cond_2

    #@15
    .line 798
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->isTopLevelResource()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_5

    #@1b
    .line 800
    iget-object v4, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@1d
    if-nez v4, :cond_3

    #@1f
    .line 801
    new-instance v2, Ljava/util/TreeSet;

    #@21
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@24
    .line 813
    .local v2, "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    #@2b
    .line 814
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@2e
    move-result-object v1

    #@2f
    .line 815
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    #@31
    .line 816
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->setTopLevelKeySet(Ljava/util/Set;)V

    #@34
    .line 822
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_2
    return-object v1

    #@35
    .line 802
    :cond_3
    iget-object v4, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@37
    instance-of v4, v4, Landroid/icu/util/UResourceBundle;

    #@39
    if-eqz v4, :cond_4

    #@3b
    .line 803
    new-instance v2, Ljava/util/TreeSet;

    #@3d
    iget-object v4, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@3f
    check-cast v4, Landroid/icu/util/UResourceBundle;

    #@41
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    #@44
    move-result-object v4

    #@45
    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    #@48
    .restart local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    goto :goto_0

    #@49
    .line 807
    .end local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_4
    new-instance v2, Ljava/util/TreeSet;

    #@4b
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@4e
    .line 808
    .restart local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@50
    invoke-virtual {v4}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@53
    move-result-object v3

    #@54
    .line 809
    .local v3, "parentKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_1

    #@5a
    .line 810
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5d
    move-result-object v4

    #@5e
    check-cast v4, Ljava/lang/String;

    #@60
    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@63
    goto :goto_1

    #@64
    .line 819
    .end local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    .end local v3    # "parentKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    #@67
    move-result-object v4

    #@68
    return-object v4
.end method

.method protected abstract setLoadingStatus(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
