.class public final Lsun/util/LocaleServiceProviderPool;
.super Ljava/lang/Object;
.source "LocaleServiceProviderPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;,
        Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;,
        Lsun/util/LocaleServiceProviderPool$NullProvider;
    }
.end annotation


# static fields
.field private static volatile availableJRELocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static locale_ja_JP_JP:Ljava/util/Locale;

.field private static locale_th_TH_TH:Ljava/util/Locale;

.field private static poolOfPools:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;",
            "Lsun/util/LocaleServiceProviderPool;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private availableLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private providerLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providersCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-static {p0}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;
    .locals 1

    #@0
    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getProviderLocales()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@5
    .line 62
    sput-object v0, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    #@7
    .line 89
    const/4 v0, 0x0

    #@8
    sput-object v0, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    #@a
    .line 99
    new-instance v0, Ljava/util/Locale;

    #@c
    const-string/jumbo v1, "ja"

    #@f
    const-string/jumbo v2, "JP"

    #@12
    const-string/jumbo v3, "JP"

    #@15
    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    sput-object v0, Lsun/util/LocaleServiceProviderPool;->locale_ja_JP_JP:Ljava/util/Locale;

    #@1a
    .line 104
    new-instance v0, Ljava/util/Locale;

    #@1c
    const-string/jumbo v1, "th"

    #@1f
    const-string/jumbo v2, "TH"

    #@22
    const-string/jumbo v3, "TH"

    #@25
    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@28
    sput-object v0, Lsun/util/LocaleServiceProviderPool;->locale_th_TH_TH:Ljava/util/Locale;

    #@2a
    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/spi/LocaleServiceProvider;>;"
    const/4 v2, 0x0

    #@1
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 70
    new-instance v1, Ljava/util/LinkedHashSet;

    #@6
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@9
    .line 69
    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    #@b
    .line 76
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@10
    .line 75
    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    #@12
    .line 82
    iput-object v2, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    #@14
    .line 94
    iput-object v2, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    #@16
    .line 130
    :try_start_0
    new-instance v1, Lsun/util/LocaleServiceProviderPool$1;

    #@18
    invoke-direct {v1, p0, p1}, Lsun/util/LocaleServiceProviderPool$1;-><init>(Lsun/util/LocaleServiceProviderPool;Ljava/lang/Class;)V

    #@1b
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 128
    :goto_0
    return-void

    #@1f
    .line 138
    :catch_0
    move-exception v0

    #@20
    .line 139
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->config(Ljava/lang/String;)V

    #@27
    goto :goto_0
.end method

.method private static config(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    const-string/jumbo v1, "sun.util.LocaleServiceProviderPool"

    #@3
    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    #@6
    move-result-object v0

    #@7
    .line 145
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    invoke-virtual {v0, p0}, Lsun/util/logging/PlatformLogger;->config(Ljava/lang/String;)V

    #@a
    .line 143
    return-void
.end method

.method private findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;
    .locals 10
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 438
    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 439
    return-object v9

    #@8
    .line 442
    :cond_0
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    #@a
    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_1

    #@10
    .line 443
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    #@12
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Ljava/util/spi/LocaleServiceProvider;

    #@18
    .line 444
    .local v4, "provider":Ljava/util/spi/LocaleServiceProvider;
    invoke-static {}, Lsun/util/LocaleServiceProviderPool$NullProvider;->-get0()Lsun/util/LocaleServiceProviderPool$NullProvider;

    #@1b
    move-result-object v6

    #@1c
    if-eq v4, v6, :cond_6

    #@1e
    .line 445
    return-object v4

    #@1f
    .line 448
    .end local v4    # "provider":Ljava/util/spi/LocaleServiceProvider;
    :cond_1
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    #@21
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v3

    #@25
    .local v3, "lsp$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_5

    #@2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/util/spi/LocaleServiceProvider;

    #@31
    .line 449
    .local v2, "lsp":Ljava/util/spi/LocaleServiceProvider;
    invoke-virtual {v2}, Ljava/util/spi/LocaleServiceProvider;->getAvailableLocales()[Ljava/util/Locale;

    #@34
    move-result-object v1

    #@35
    .line 450
    .local v1, "locales":[Ljava/util/Locale;
    const/4 v6, 0x0

    #@36
    array-length v7, v1

    #@37
    :goto_0
    if-ge v6, v7, :cond_2

    #@39
    aget-object v0, v1, v6

    #@3b
    .line 452
    .local v0, "available":Ljava/util/Locale;
    invoke-static {v0}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    #@3e
    move-result-object v0

    #@3f
    .line 453
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v8

    #@43
    if-eqz v8, :cond_4

    #@45
    .line 455
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    #@47
    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, Ljava/util/spi/LocaleServiceProvider;

    #@4d
    .line 456
    .local v5, "providerInCache":Ljava/util/spi/LocaleServiceProvider;
    if-eqz v5, :cond_3

    #@4f
    .end local v5    # "providerInCache":Ljava/util/spi/LocaleServiceProvider;
    :goto_1
    return-object v5

    #@50
    .restart local v5    # "providerInCache":Ljava/util/spi/LocaleServiceProvider;
    :cond_3
    move-object v5, v2

    #@51
    .line 458
    goto :goto_1

    #@52
    .line 450
    .end local v5    # "providerInCache":Ljava/util/spi/LocaleServiceProvider;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@54
    goto :goto_0

    #@55
    .line 462
    .end local v0    # "available":Ljava/util/Locale;
    .end local v1    # "locales":[Ljava/util/Locale;
    .end local v2    # "lsp":Ljava/util/spi/LocaleServiceProvider;
    :cond_5
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providersCache:Ljava/util/Map;

    #@57
    invoke-static {}, Lsun/util/LocaleServiceProviderPool$NullProvider;->-get0()Lsun/util/LocaleServiceProviderPool$NullProvider;

    #@5a
    move-result-object v7

    #@5b
    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 464
    .end local v3    # "lsp$iterator":Ljava/util/Iterator;
    :cond_6
    return-object v9
.end method

.method public static getAllAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 203
    sget-object v0, Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;->allAvailableLocales:[Ljava/util/Locale;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/util/Locale;

    #@8
    return-object v0
.end method

.method private getJRELocales()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 265
    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    #@2
    if-nez v3, :cond_2

    #@4
    .line 266
    const-class v4, Lsun/util/LocaleServiceProviderPool;

    #@6
    monitor-enter v4

    #@7
    .line 267
    :try_start_0
    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    #@9
    if-nez v3, :cond_1

    #@b
    .line 268
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    #@e
    move-result-object v0

    #@f
    .line 269
    .local v0, "allLocales":[Ljava/util/Locale;
    new-instance v2, Ljava/util/ArrayList;

    #@11
    array-length v3, v0

    #@12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    .line 270
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v3, 0x0

    #@16
    array-length v5, v0

    #@17
    :goto_0
    if-ge v3, v5, :cond_0

    #@19
    aget-object v1, v0, v3

    #@1b
    .line 271
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    #@1e
    move-result-object v6

    #@1f
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 270
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 273
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    sput-object v2, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .end local v0    # "allLocales":[Ljava/util/Locale;
    .end local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_1
    monitor-exit v4

    #@28
    .line 277
    :cond_2
    sget-object v3, Lsun/util/LocaleServiceProviderPool;->availableJRELocales:Ljava/util/List;

    #@2a
    return-object v3

    #@2b
    .line 266
    :catchall_0
    move-exception v3

    #@2c
    monitor-exit v4

    #@2d
    throw v3
.end method

.method private varargs getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "isObjectProvider"    # Z
    .param p4, "bundleKey"    # Ljava/lang/String;
    .param p5, "bundle"    # Lsun/util/resources/OpenListResourceBundle;
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
            "<TP;TS;>;",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/String;",
            "Lsun/util/resources/OpenListResourceBundle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 360
    .local p1, "getter":Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;, "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter<TP;TS;>;"
    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    #@3
    move-result v9

    #@4
    if-eqz v9, :cond_9

    #@6
    .line 361
    if-nez p4, :cond_0

    #@8
    .line 362
    move-object/from16 p4, p6

    #@a
    .line 364
    :cond_0
    if-eqz p5, :cond_2

    #@c
    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getLocale()Ljava/util/Locale;

    #@f
    move-result-object v2

    #@10
    .line 365
    :goto_0
    invoke-static {p2}, Lsun/util/LocaleServiceProviderPool;->getLookupLocales(Ljava/util/Locale;)Ljava/util/List;

    #@13
    move-result-object v5

    #@14
    .line 366
    .local v5, "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v8, 0x0

    #@15
    .line 372
    .local v8, "providersObj":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getProviderLocales()Ljava/util/Set;

    #@18
    move-result-object v7

    #@19
    .line 373
    .local v7, "provLoc":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    const/4 v4, 0x0

    #@1a
    .end local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    .local v4, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1d
    move-result v9

    #@1e
    if-ge v4, v9, :cond_1

    #@20
    .line 374
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Ljava/util/Locale;

    #@26
    .line 375
    .local v3, "current":Ljava/util/Locale;
    if-eqz v2, :cond_3

    #@28
    .line 376
    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v9

    #@2c
    if-eqz v9, :cond_4

    #@2e
    .line 402
    .end local v3    # "current":Ljava/util/Locale;
    :cond_1
    :goto_2
    if-eqz p5, :cond_9

    #@30
    .line 403
    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getLocale()Ljava/util/Locale;

    #@33
    move-result-object v2

    #@34
    .line 405
    .local v2, "bundleLocale":Ljava/util/Locale;
    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->handleGetKeys()Ljava/util/Set;

    #@37
    move-result-object v9

    #@38
    invoke-interface {v9, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3b
    move-result v9

    #@3c
    if-eqz v9, :cond_7

    #@3e
    .line 407
    const/4 v9, 0x0

    #@3f
    return-object v9

    #@40
    .line 364
    .end local v2    # "bundleLocale":Ljava/util/Locale;
    .end local v4    # "i":I
    .end local v5    # "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v7    # "provLoc":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    :cond_2
    const/4 v2, 0x0

    #@41
    .local v2, "bundleLocale":Ljava/util/Locale;
    goto :goto_0

    #@42
    .line 380
    .end local v2    # "bundleLocale":Ljava/util/Locale;
    .restart local v3    # "current":Ljava/util/Locale;
    .restart local v4    # "i":I
    .restart local v5    # "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v7    # "provLoc":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    :cond_3
    invoke-direct {p0, v3}, Lsun/util/LocaleServiceProviderPool;->isJRESupported(Ljava/util/Locale;)Z

    #@45
    move-result v9

    #@46
    if-nez v9, :cond_1

    #@48
    .line 384
    :cond_4
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@4b
    move-result v9

    #@4c
    if-eqz v9, :cond_6

    #@4e
    .line 387
    invoke-direct {p0, v3}, Lsun/util/LocaleServiceProviderPool;->findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;

    #@51
    move-result-object v6

    #@52
    .line 388
    .local v6, "lsp":Ljava/lang/Object;, "TP;"
    if-eqz v6, :cond_6

    #@54
    .line 389
    move-object/from16 v0, p6

    #@56
    move-object/from16 v1, p7

    #@58
    invoke-interface {p1, v6, p2, v0, v1}, Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;->getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v8

    #@5c
    .line 390
    .restart local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    if-eqz v8, :cond_5

    #@5e
    .line 391
    return-object v8

    #@5f
    .line 392
    :cond_5
    if-eqz p3, :cond_6

    #@61
    .line 394
    new-instance v9, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v10, "A locale sensitive service provider returned null for a localized objects,  which should not happen.  provider: "

    #@69
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v9

    #@71
    const-string/jumbo v10, " locale: "

    #@74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    .line 393
    invoke-static {v9}, Lsun/util/LocaleServiceProviderPool;->config(Ljava/lang/String;)V

    #@83
    .line 373
    .end local v6    # "lsp":Ljava/lang/Object;, "TP;"
    .end local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@85
    goto :goto_1

    #@86
    .line 411
    .end local v3    # "current":Ljava/util/Locale;
    .local v2, "bundleLocale":Ljava/util/Locale;
    :cond_7
    invoke-direct {p0, v2}, Lsun/util/LocaleServiceProviderPool;->findProvider(Ljava/util/Locale;)Ljava/util/spi/LocaleServiceProvider;

    #@89
    move-result-object v6

    #@8a
    .line 412
    .restart local v6    # "lsp":Ljava/lang/Object;, "TP;"
    if-eqz v6, :cond_8

    #@8c
    .line 413
    move-object/from16 v0, p6

    #@8e
    move-object/from16 v1, p7

    #@90
    invoke-interface {p1, v6, p2, v0, v1}, Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;->getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    move-result-object v8

    #@94
    .line 414
    .restart local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    if-eqz v8, :cond_8

    #@96
    .line 415
    return-object v8

    #@97
    .line 421
    .end local v8    # "providersObj":Ljava/lang/Object;, "TS;"
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lsun/util/resources/OpenListResourceBundle;->getParent()Lsun/util/resources/OpenListResourceBundle;

    #@9a
    move-result-object p5

    #@9b
    goto :goto_2

    #@9c
    .line 426
    .end local v2    # "bundleLocale":Ljava/util/Locale;
    .end local v4    # "i":I
    .end local v5    # "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v6    # "lsp":Ljava/lang/Object;, "TP;"
    .end local v7    # "provLoc":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    :cond_9
    const/4 v9, 0x0

    #@9d
    return-object v9
.end method

.method private static getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 490
    move-object v3, p0

    #@1
    .line 491
    .local v3, "lookupLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Ljava/util/Locale;->getExtensionKeys()Ljava/util/Set;

    #@4
    move-result-object v1

    #@5
    .line 492
    .local v1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_0

    #@b
    .line 493
    sget-object v4, Lsun/util/LocaleServiceProviderPool;->locale_ja_JP_JP:Ljava/util/Locale;

    #@d
    invoke-virtual {p0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 512
    :cond_0
    :goto_0
    return-object v3

    #@14
    .line 494
    :cond_1
    sget-object v4, Lsun/util/LocaleServiceProviderPool;->locale_th_TH_TH:Ljava/util/Locale;

    #@16
    invoke-virtual {p0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 496
    new-instance v2, Ljava/util/Locale$Builder;

    #@1e
    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    #@21
    .line 498
    .local v2, "locbld":Ljava/util/Locale$Builder;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    #@24
    .line 499
    invoke-virtual {v2}, Ljava/util/Locale$Builder;->clearExtensions()Ljava/util/Locale$Builder;

    #@27
    .line 500
    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result-object v3

    #@2b
    goto :goto_0

    #@2c
    .line 501
    :catch_0
    move-exception v0

    #@2d
    .line 506
    .local v0, "e":Ljava/util/IllformedLocaleException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "A locale("

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, ") has non-empty extensions, but has illformed fields."

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-static {v4}, Lsun/util/LocaleServiceProviderPool;->config(Ljava/lang/String;)V

    #@4b
    .line 509
    new-instance v3, Ljava/util/Locale;

    #@4d
    .end local v3    # "lookupLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    .restart local v3    # "lookupLocale":Ljava/util/Locale;
    goto :goto_0
.end method

.method private static getLookupLocales(Ljava/util/Locale;)Ljava/util/List;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 477
    new-instance v1, Lsun/util/LocaleServiceProviderPool$2;

    #@2
    invoke-direct {v1}, Lsun/util/LocaleServiceProviderPool$2;-><init>()V

    #@5
    const-string/jumbo v2, ""

    #@8
    invoke-virtual {v1, v2, p0}, Lsun/util/LocaleServiceProviderPool$2;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    .line 478
    .local v0, "lookupLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    return-object v0
.end method

.method public static getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/spi/LocaleServiceProvider;",
            ">;)",
            "Lsun/util/LocaleServiceProviderPool;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    .local p0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/spi/LocaleServiceProvider;>;"
    sget-object v2, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    #@2
    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lsun/util/LocaleServiceProviderPool;

    #@8
    .line 111
    .local v1, "pool":Lsun/util/LocaleServiceProviderPool;
    if-nez v1, :cond_0

    #@a
    .line 113
    new-instance v0, Lsun/util/LocaleServiceProviderPool;

    #@c
    invoke-direct {v0, p0}, Lsun/util/LocaleServiceProviderPool;-><init>(Ljava/lang/Class;)V

    #@f
    .line 114
    .local v0, "newPool":Lsun/util/LocaleServiceProviderPool;
    sget-object v2, Lsun/util/LocaleServiceProviderPool;->poolOfPools:Ljava/util/concurrent/ConcurrentMap;

    #@11
    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    .end local v1    # "pool":Lsun/util/LocaleServiceProviderPool;
    check-cast v1, Lsun/util/LocaleServiceProviderPool;

    #@17
    .line 115
    .restart local v1    # "pool":Lsun/util/LocaleServiceProviderPool;
    if-nez v1, :cond_0

    #@19
    .line 116
    move-object v1, v0

    #@1a
    .line 120
    .end local v0    # "newPool":Lsun/util/LocaleServiceProviderPool;
    :cond_0
    return-object v1
.end method

.method private declared-synchronized getProviderLocales()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 233
    :try_start_0
    iget-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    #@3
    if-nez v4, :cond_1

    #@5
    .line 234
    new-instance v4, Ljava/util/HashSet;

    #@7
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@a
    iput-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    #@c
    .line 235
    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 236
    iget-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    #@14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    .local v3, "lsp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/util/spi/LocaleServiceProvider;

    #@24
    .line 237
    .local v2, "lsp":Ljava/util/spi/LocaleServiceProvider;
    invoke-virtual {v2}, Ljava/util/spi/LocaleServiceProvider;->getAvailableLocales()[Ljava/util/Locale;

    #@27
    move-result-object v1

    #@28
    .line 238
    .local v1, "locales":[Ljava/util/Locale;
    const/4 v4, 0x0

    #@29
    array-length v5, v1

    #@2a
    :goto_0
    if-ge v4, v5, :cond_0

    #@2c
    aget-object v0, v1, v4

    #@2e
    .line 239
    .local v0, "locale":Ljava/util/Locale;
    iget-object v6, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;

    #@30
    invoke-static {v0}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    #@33
    move-result-object v7

    #@34
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 238
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 244
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "locales":[Ljava/util/Locale;
    .end local v2    # "lsp":Ljava/util/spi/LocaleServiceProvider;
    .end local v3    # "lsp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lsun/util/LocaleServiceProviderPool;->providerLocales:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit p0

    #@3d
    return-object v4

    #@3e
    :catchall_0
    move-exception v4

    #@3f
    monitor-exit p0

    #@40
    throw v4
.end method

.method private isJRESupported(Ljava/util/Locale;)Z
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getJRELocales()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-static {p1}, Lsun/util/LocaleServiceProviderPool;->getLookupLocale(Ljava/util/Locale;)Ljava/util/Locale;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    return v1
.end method


# virtual methods
.method public declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 214
    :try_start_0
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 215
    new-instance v1, Ljava/util/HashSet;

    #@7
    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getJRELocales()Ljava/util/List;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@e
    iput-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    #@10
    .line 216
    invoke-virtual {p0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 217
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    #@18
    invoke-direct {p0}, Lsun/util/LocaleServiceProviderPool;->getProviderLocales()Ljava/util/Set;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@1f
    .line 220
    :cond_0
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    #@21
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@24
    move-result v1

    #@25
    new-array v0, v1, [Ljava/util/Locale;

    #@27
    .line 221
    .local v0, "tmp":[Ljava/util/Locale;
    iget-object v1, p0, Lsun/util/LocaleServiceProviderPool;->availableLocales:Ljava/util/Set;

    #@29
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 222
    return-object v0

    #@2e
    .end local v0    # "tmp":[Ljava/util/Locale;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit p0

    #@30
    throw v1
.end method

.method public varargs getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;Ljava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "bundleKey"    # Ljava/lang/String;
    .param p4, "bundle"    # Lsun/util/resources/OpenListResourceBundle;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
            "<TP;TS;>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Lsun/util/resources/OpenListResourceBundle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 350
    .local p1, "getter":Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;, "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter<TP;TS;>;"
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    move-object v6, p5

    #@7
    move-object v7, p6

    #@8
    invoke-direct/range {v0 .. v7}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public varargs getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "bundle"    # Lsun/util/resources/OpenListResourceBundle;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
            "<TP;TS;>;",
            "Ljava/util/Locale;",
            "Lsun/util/resources/OpenListResourceBundle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 326
    .local p1, "getter":Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;, "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter<TP;TS;>;"
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v5, p3

    #@6
    move-object v6, p4

    #@7
    move-object v7, p5

    #@8
    invoke-direct/range {v0 .. v7}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public varargs getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
            "<TP;TS;>;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/Object;",
            ")TS;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "getter":Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;, "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter<TP;TS;>;"
    const/4 v4, 0x0

    #@1
    .line 305
    const/4 v3, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v5, v4

    #@6
    move-object v6, v4

    #@7
    move-object v7, p3

    #@8
    invoke-direct/range {v0 .. v7}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObjectImpl(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;ZLjava/lang/String;Lsun/util/resources/OpenListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public hasProviders()Z
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lsun/util/LocaleServiceProviderPool;->providers:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method
