.class public Landroid/icu/util/Currency;
.super Landroid/icu/util/MeasureUnit;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Currency$ServiceShim;,
        Landroid/icu/util/Currency$CurrencyNameResultHandler;,
        Landroid/icu/util/Currency$CurrencyStringInfo;,
        Landroid/icu/util/Currency$CurrencyUsage;
    }
.end annotation


# static fields
.field private static greylist-max-o ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static greylist-max-o ALL_TENDER_CODES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static greylist-max-o CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List<",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final whitelist test-api FORMAL_SYMBOL_NAME:I = 0x4

.field public static final whitelist test-api LONG_NAME:I = 0x1

.field public static final whitelist test-api NARROW_SYMBOL_NAME:I = 0x3

.field public static final whitelist test-api PLURAL_LONG_NAME:I = 0x2

.field private static final greylist-max-o POW10:[I

.field public static final whitelist test-api SYMBOL_NAME:I = 0x0

.field private static final greylist-max-o UND:Landroid/icu/util/ULocale;

.field public static final whitelist test-api VARIANT_SYMBOL_NAME:I = 0x5

.field private static final greylist-max-o regionCurrencyCache:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Currency;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x510bc147b5e8c814L

.field private static greylist-max-o shim:Landroid/icu/util/Currency$ServiceShim;


# instance fields
.field private final greylist-max-o isoCode:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smloadCurrency(Ljava/lang/String;)Landroid/icu/util/Currency;
    .registers 1

    invoke-static {p0}, Landroid/icu/util/Currency;->loadCurrency(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    const-string v0, "currency"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/util/Currency;->DEBUG:Z

    .line 66
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    .line 242
    new-instance v0, Landroid/icu/util/Currency$1;

    invoke-direct {v0}, Landroid/icu/util/Currency$1;-><init>()V

    sput-object v0, Landroid/icu/util/Currency;->regionCurrencyCache:Landroid/icu/impl/CacheBase;

    .line 453
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "und"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/Currency;->UND:Landroid/icu/util/ULocale;

    .line 454
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 953
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Landroid/icu/util/Currency;->POW10:[I

    return-void

    :array_2e
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "theISOCode"    # Ljava/lang/String;

    .line 945
    const-string v0, "currency"

    invoke-direct {p0, v0, p1}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iput-object p1, p0, Landroid/icu/util/Currency;->isoCode:Ljava/lang/String;

    .line 950
    return-void
.end method

.method static greylist-max-o createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .registers 4
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/icu/util/Currency;->regionCurrencyCache:Landroid/icu/impl/CacheBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Currency;

    return-object v1
.end method

.method public static whitelist test-api fromJavaCurrency(Ljava/util/Currency;)Landroid/icu/util/Currency;
    .registers 2
    .param p0, "currency"    # Ljava/util/Currency;

    .line 317
    invoke-virtual {p0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized greylist-max-o getAllCurrenciesAsSet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/util/Currency;

    monitor-enter v0

    .line 977
    :try_start_3
    sget-object v1, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_11

    :cond_9
    sget-object v1, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 978
    .local v1, "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_11
    if-nez v1, :cond_30

    .line 979
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v2

    .line 980
    .local v2, "info":Landroid/icu/text/CurrencyMetaInfo;
    new-instance v3, Ljava/util/HashSet;

    .line 981
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 980
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    move-object v1, v3

    .line 982
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    .line 984
    .end local v2    # "info":Landroid/icu/text/CurrencyMetaInfo;
    :cond_30
    monitor-exit v0

    return-object v1

    .line 976
    .end local v1    # "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private static declared-synchronized greylist-max-o getAllTenderCurrencies()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/util/Currency;

    monitor-enter v0

    .line 964
    :try_start_3
    sget-object v1, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_11

    :cond_9
    sget-object v1, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 965
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_11
    if-nez v1, :cond_27

    .line 969
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v2

    .line 970
    .local v2, "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    invoke-static {v2}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 971
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 973
    .end local v2    # "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    :cond_27
    monitor-exit v0

    return-object v1

    .line 963
    .end local v1    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public static whitelist test-api getAvailableCurrencies()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/util/Currency;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 234
    .local v0, "info":Landroid/icu/text/CurrencyMetaInfo;
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v1

    .line 235
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 236
    .local v2, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/icu/util/Currency;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    .local v4, "code":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v4    # "code":Ljava/lang/String;
    goto :goto_19

    .line 239
    :cond_2d
    return-object v2
.end method

.method public static whitelist test-api getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;
    .registers 6
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "d"    # Ljava/util/Date;

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "region":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    .line 202
    .local v1, "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    invoke-static {v1}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v2

    .line 205
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 206
    const/4 v3, 0x0

    return-object v3

    .line 208
    :cond_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static whitelist test-api getAvailableCurrencyCodes(Ljava/util/Locale;Ljava/util/Date;)[Ljava/lang/String;
    .registers 3
    .param p0, "loc"    # Ljava/util/Locale;
    .param p1, "d"    # Ljava/util/Date;

    .line 221
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/util/Currency;->getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 370
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_9

    .line 371
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 373
    :cond_9
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    invoke-virtual {v0}, Landroid/icu/util/Currency$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 1

    .line 383
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_9

    .line 384
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 386
    :cond_9
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    invoke-virtual {v0}, Landroid/icu/util/Currency$ServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCurrencyTrieVec(Landroid/icu/util/ULocale;)Ljava/util/List;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/List<",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;"
        }
    .end annotation

    .line 736
    sget-object v0, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 737
    .local v0, "currencyTrieVec":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;>;"
    if-nez v0, :cond_2a

    .line 738
    new-instance v1, Landroid/icu/impl/TextTrieMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 740
    .local v1, "currencyNameTrie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    new-instance v2, Landroid/icu/impl/TextTrieMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 742
    .local v2, "currencySymbolTrie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 743
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-static {p0, v0}, Landroid/icu/util/Currency;->setupCurrencyTrieVec(Landroid/icu/util/ULocale;Ljava/util/List;)V

    .line 746
    sget-object v3, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v3, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    .end local v1    # "currencyNameTrie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    .end local v2    # "currencySymbolTrie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    :cond_2a
    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 178
    const-string v0, "currency"

    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "currency":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 180
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    return-object v1

    .line 183
    :cond_d
    sget-object v1, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v1, :cond_16

    .line 184
    invoke-static {p0}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v1

    return-object v1

    .line 187
    :cond_16
    sget-object v1, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    invoke-virtual {v1, p0}, Landroid/icu/util/Currency$ServiceShim;->createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;
    .registers 3
    .param p0, "theISOCode"    # Ljava/lang/String;

    .line 285
    if-eqz p0, :cond_1f

    .line 288
    invoke-static {p0}, Landroid/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 292
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "currency"

    invoke-static {v1, v0}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency;

    return-object v0

    .line 289
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input currency code is not 3-letter alphabetic code."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input currency code is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 170
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .registers 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "commonlyUsed"    # Z

    .line 423
    const-string v0, "currency"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 424
    sget-object v0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 427
    :cond_b
    if-nez p2, :cond_1b

    .line 429
    invoke-static {}, Landroid/icu/util/Currency;->getAllTenderCurrencies()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 434
    :cond_1b
    sget-object v0, Landroid/icu/util/Currency;->UND:Landroid/icu/util/ULocale;

    invoke-virtual {v0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 435
    sget-object v0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 437
    :cond_26
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "prefRegion":Ljava/lang/String;
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->now()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    .line 443
    .local v1, "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    invoke-static {v1}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v2

    .line 446
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_40

    .line 447
    sget-object v3, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v3

    .line 450
    :cond_40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static blacklist getParsingTrie(Landroid/icu/util/ULocale;I)Landroid/icu/impl/TextTrieMap;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "I)",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 727
    invoke-static {p0}, Landroid/icu/util/Currency;->getCurrencyTrieVec(Landroid/icu/util/ULocale;)Ljava/util/List;

    move-result-object v0

    .line 728
    .local v0, "currencyTrieVec":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;>;"
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 729
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TextTrieMap;

    return-object v1

    .line 731
    :cond_e
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TextTrieMap;

    return-object v1
.end method

.method private static greylist-max-o getShim()Landroid/icu/util/Currency$ServiceShim;
    .registers 3

    .line 148
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_25

    .line 150
    :try_start_4
    const-string v0, "android.icu.util.CurrencyServiceShim"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 151
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Currency$ServiceShim;

    sput-object v1, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 158
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_25

    .line 153
    :catch_13
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/icu/util/Currency;->DEBUG:Z

    if-eqz v1, :cond_1b

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_1b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    return-object v0
.end method

.method private static greylist-max-o getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .registers 3
    .param p0, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1035
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 1036
    .local v0, "info":Landroid/icu/text/CurrencyMetaInfo;
    invoke-virtual {p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o isAlpha3Code(Ljava/lang/String;)Z
    .registers 6
    .param p0, "code"    # Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    .line 298
    return v1

    .line 300
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_25

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 302
    .local v3, "ch":C
    const/16 v4, 0x41

    if-lt v3, v4, :cond_24

    const/16 v4, 0x5a

    if-le v3, v4, :cond_1c

    const/16 v4, 0x61

    if-lt v3, v4, :cond_24

    :cond_1c
    const/16 v4, 0x7a

    if-le v3, v4, :cond_21

    goto :goto_24

    .line 300
    .end local v3    # "ch":C
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 303
    .restart local v3    # "ch":C
    :cond_24
    :goto_24
    return v1

    .line 307
    .end local v0    # "i":I
    .end local v3    # "ch":C
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist test-api isAvailable(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Z
    .registers 7
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;

    .line 1006
    invoke-static {p0}, Landroid/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1007
    return v1

    .line 1010
    :cond_8
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 1011
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "To is before from"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_1b
    :goto_1b
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1015
    invoke-static {}, Landroid/icu/util/Currency;->getAllCurrenciesAsSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1016
    .local v0, "isKnown":Z
    if-nez v0, :cond_2c

    .line 1017
    return v1

    .line 1018
    :cond_2c
    if-nez p1, :cond_32

    if-nez p2, :cond_32

    .line 1019
    const/4 v1, 0x1

    return v1

    .line 1023
    :cond_32
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v1

    .line 1024
    .local v1, "info":Landroid/icu/text/CurrencyMetaInfo;
    nop

    .line 1025
    invoke-static {p1, p2}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v2

    .line 1024
    invoke-virtual {v1, v2}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v2

    .line 1026
    .local v2, "allActive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static greylist-max-o loadCurrency(Ljava/lang/String;)Landroid/icu/util/Currency;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;

    .line 261
    move-object v0, p0

    .line 262
    .local v0, "region":Ljava/lang/String;
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v1

    .line 265
    .local v1, "info":Landroid/icu/text/CurrencyMetaInfo;
    invoke-static {v0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v2

    .line 266
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 267
    invoke-static {v0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v2

    .line 269
    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    .line 270
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 271
    .local v3, "code":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v4

    return-object v4

    .line 273
    .end local v3    # "code":Ljava/lang/String;
    :cond_31
    const/4 v3, 0x0

    return-object v3
.end method

.method public static greylist-max-o parse(Landroid/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;
    .registers 12
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 696
    invoke-static {p0}, Landroid/icu/util/Currency;->getCurrencyTrieVec(Landroid/icu/util/ULocale;)Ljava/util/List;

    move-result-object v0

    .line 697
    .local v0, "currencyTrieVec":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;>;"
    const/4 v1, 0x0

    .line 698
    .local v1, "maxLength":I
    const/4 v2, 0x0

    .line 701
    .local v2, "isoResult":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/TextTrieMap;

    .line 702
    .local v4, "currencyNameTrie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    new-instance v5, Landroid/icu/util/Currency$CurrencyNameResultHandler;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>(Landroid/icu/util/Currency-IA;)V

    .line 703
    .local v5, "handler":Landroid/icu/util/Currency$CurrencyNameResultHandler;
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v4, p1, v7, v5}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 704
    invoke-virtual {v5}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    move-result-object v2

    .line 705
    invoke-virtual {v5}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v1

    .line 707
    if-eq p2, v3, :cond_46

    .line 708
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/TextTrieMap;

    .line 709
    .local v3, "currencySymbolTrie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    new-instance v7, Landroid/icu/util/Currency$CurrencyNameResultHandler;

    invoke-direct {v7, v6}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>(Landroid/icu/util/Currency-IA;)V

    move-object v5, v7

    .line 710
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v3, p1, v6, v5}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 711
    invoke-virtual {v5}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v6

    if-le v6, v1, :cond_46

    .line 712
    invoke-virtual {v5}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    move-result-object v2

    .line 713
    invoke-virtual {v5}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v1

    .line 716
    .end local v3    # "currencySymbolTrie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    :cond_46
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 717
    .local v3, "start":I
    add-int v6, v3, v1

    invoke-virtual {p3, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 718
    return-object v2
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Landroid/icu/util/Currency;->isoCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .registers 3
    .param p0, "currency"    # Landroid/icu/util/Currency;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 344
    invoke-static {}, Landroid/icu/util/Currency;->getShim()Landroid/icu/util/Currency$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/util/Currency$ServiceShim;->registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o setupCurrencyTrieVec(Landroid/icu/util/ULocale;Ljava/util/List;)V
    .registers 14
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List<",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 754
    .local p1, "trieVec":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TextTrieMap;

    .line 755
    .local v0, "symTrie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TextTrieMap;

    .line 757
    .local v1, "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    invoke-static {p0}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object v2

    .line 758
    .local v2, "names":Landroid/icu/text/CurrencyDisplayNames;
    invoke-virtual {v2}, Landroid/icu/text/CurrencyDisplayNames;->symbolMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 759
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 760
    .local v5, "symbol":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 763
    .local v6, "isoCode":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/impl/StaticUnicodeSets;->chooseCurrency(Ljava/lang/String;)Landroid/icu/impl/StaticUnicodeSets$Key;

    move-result-object v7

    .line 764
    .local v7, "key":Landroid/icu/impl/StaticUnicodeSets$Key;
    new-instance v8, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v8, v6, v5}, Landroid/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .local v8, "value":Landroid/icu/util/Currency$CurrencyStringInfo;
    if-eqz v7, :cond_5a

    .line 766
    invoke-static {v7}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v9

    .line 768
    .local v9, "equivalents":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v9}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_59

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 769
    .local v11, "equivalentSymbol":Ljava/lang/String;
    invoke-virtual {v0, v11, v8}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 770
    .end local v11    # "equivalentSymbol":Ljava/lang/String;
    goto :goto_49

    .line 771
    .end local v9    # "equivalents":Landroid/icu/text/UnicodeSet;
    :cond_59
    goto :goto_5d

    .line 772
    :cond_5a
    invoke-virtual {v0, v5, v8}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 774
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "symbol":Ljava/lang/String;
    .end local v6    # "isoCode":Ljava/lang/String;
    .end local v7    # "key":Landroid/icu/impl/StaticUnicodeSets$Key;
    .end local v8    # "value":Landroid/icu/util/Currency$CurrencyStringInfo;
    :goto_5d
    goto :goto_1e

    .line 775
    :cond_5e
    invoke-virtual {v2}, Landroid/icu/text/CurrencyDisplayNames;->nameMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 776
    .restart local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 777
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 778
    .restart local v6    # "isoCode":Ljava/lang/String;
    new-instance v7, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v7, v6, v5}, Landroid/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v7}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 779
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "isoCode":Ljava/lang/String;
    goto :goto_6a

    .line 780
    :cond_8b
    return-void
.end method

.method public static greylist-max-o unregister(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "registryKey"    # Ljava/lang/Object;

    .line 355
    if-eqz p0, :cond_f

    .line 358
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_8

    .line 359
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_8
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    invoke-virtual {v0, p0}, Landroid/icu/util/Currency$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 356
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registryKey must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1040
    new-instance v0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;

    iget-object v1, p0, Landroid/icu/util/Currency;->type:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getCurrencyCode()Ljava/lang/String;
    .registers 2

    .line 460
    iget-object v0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDefaultFractionDigits()I
    .registers 2

    .line 867
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I
    .registers 5
    .param p1, "Usage"    # Landroid/icu/util/Currency$CurrencyUsage;

    .line 885
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 886
    .local v0, "info":Landroid/icu/text/CurrencyMetaInfo;
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v1

    .line 887
    .local v1, "digits":Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    iget v2, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    return v2
.end method

.method public whitelist test-api getDisplayName()Ljava/lang/String;
    .registers 4

    .line 651
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 669
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .registers 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nameStyle"    # I
    .param p3, "pluralCount"    # Ljava/lang/String;
    .param p4, "isChoiceFormat"    # [Z

    .line 624
    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    .line 625
    invoke-virtual {p0, p1, p2, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 629
    :cond_8
    if-eqz p4, :cond_d

    .line 630
    const/4 v0, 0x0

    aput-boolean v0, p4, v0

    .line 633
    :cond_d
    invoke-static {p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object v0

    .line 634
    .local v0, "names":Landroid/icu/text/CurrencyDisplayNames;
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/icu/text/CurrencyDisplayNames;->getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;
    .registers 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nameStyle"    # I
    .param p3, "isChoiceFormat"    # [Z

    .line 561
    if-eqz p3, :cond_5

    .line 562
    const/4 v0, 0x0

    aput-boolean v0, p3, v0

    .line 565
    :cond_5
    invoke-static {p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object v0

    .line 566
    .local v0, "names":Landroid/icu/text/CurrencyDisplayNames;
    packed-switch p2, :pswitch_data_48

    .line 578
    :pswitch_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad name style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :pswitch_25
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getVariantSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 572
    :pswitch_2c
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getFormalSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 570
    :pswitch_33
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getNarrowSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 576
    :pswitch_3a
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 568
    :pswitch_41
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3a
        :pswitch_c
        :pswitch_33
        :pswitch_2c
        :pswitch_25
    .end packed-switch
.end method

.method public whitelist test-api getName(Ljava/util/Locale;ILjava/lang/String;[Z)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "nameStyle"    # I
    .param p3, "pluralCount"    # Ljava/lang/String;
    .param p4, "isChoiceFormat"    # [Z

    .line 598
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getName(Ljava/util/Locale;I[Z)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "nameStyle"    # I
    .param p3, "isChoiceFormat"    # [Z

    .line 535
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNumericCode()I
    .registers 6

    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, "result":I
    :try_start_1
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "currencyNumericCodes"

    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 476
    .local v1, "bundle":Landroid/icu/util/UResourceBundle;
    const-string v2, "codeMap"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 477
    .local v2, "codeMap":Landroid/icu/util/UResourceBundle;
    iget-object v3, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 478
    .local v3, "numCode":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v4
    :try_end_1b
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1b} :catch_1d

    move v0, v4

    .line 481
    .end local v1    # "bundle":Landroid/icu/util/UResourceBundle;
    .end local v2    # "codeMap":Landroid/icu/util/UResourceBundle;
    .end local v3    # "numCode":Landroid/icu/util/UResourceBundle;
    goto :goto_1e

    .line 479
    :catch_1d
    move-exception v1

    .line 482
    :goto_1e
    return v0
.end method

.method public whitelist test-api getRoundingIncrement()D
    .registers 3

    .line 897
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D
    .registers 10
    .param p1, "Usage"    # Landroid/icu/util/Currency$CurrencyUsage;

    .line 907
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 908
    .local v0, "info":Landroid/icu/text/CurrencyMetaInfo;
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v1

    .line 910
    .local v1, "digits":Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    iget v2, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    .line 914
    .local v2, "data1":I
    const-wide/16 v3, 0x0

    if-nez v2, :cond_11

    .line 915
    return-wide v3

    .line 918
    :cond_11
    iget v5, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    .line 921
    .local v5, "data0":I
    if-ltz v5, :cond_23

    sget-object v6, Landroid/icu/util/Currency;->POW10:[I

    array-length v6, v6

    if-lt v5, v6, :cond_1b

    goto :goto_23

    .line 927
    :cond_1b
    int-to-double v3, v2

    sget-object v6, Landroid/icu/util/Currency;->POW10:[I

    aget v6, v6, v5

    int-to-double v6, v6

    div-double/2addr v3, v6

    return-wide v3

    .line 922
    :cond_23
    :goto_23
    return-wide v3
.end method

.method public whitelist test-api getSymbol()Ljava/lang/String;
    .registers 2

    .line 492
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p1, "uloc"    # Landroid/icu/util/ULocale;

    .line 512
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 502
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toJavaCurrency()Ljava/util/Currency;
    .registers 2

    .line 326
    invoke-virtual {p0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 935
    iget-object v0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method
