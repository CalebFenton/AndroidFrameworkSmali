.class public Landroid/icu/util/Currency;
.super Landroid/icu/util/MeasureUnit;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Currency$CurrencyUsage;,
        Landroid/icu/util/Currency$ServiceShim;,
        Landroid/icu/util/Currency$CurrencyStringInfo;,
        Landroid/icu/util/Currency$CurrencyNameResultHandler;,
        Landroid/icu/util/Currency$EquivalenceRelation;
    }
.end annotation


# static fields
.field private static ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static ALL_TENDER_CODES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/util/Currency$EquivalenceRelation",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EUR_STR:Ljava/lang/String; = "EUR"

.field public static final LONG_NAME:I = 0x1

.field public static final PLURAL_LONG_NAME:I = 0x2

.field private static final POW10:[I

.field public static final SYMBOL_NAME:I = 0x0

.field private static final UND:Landroid/icu/util/ULocale;

.field private static final currencyCodeCache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x510bc147b5e8c814L

.field private static shim:Landroid/icu/util/Currency$ServiceShim;


# instance fields
.field private final isoCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 57
    const-string/jumbo v0, "currency"

    #@6
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    sput-boolean v0, Landroid/icu/util/Currency;->DEBUG:Z

    #@c
    .line 61
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@e
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@11
    .line 60
    sput-object v0, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    #@13
    .line 86
    new-instance v0, Landroid/icu/util/Currency$EquivalenceRelation;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-direct {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;-><init>(Landroid/icu/util/Currency$EquivalenceRelation;)V

    #@19
    new-array v1, v5, [Ljava/lang/String;

    #@1b
    .line 87
    const-string/jumbo v2, "\u00a5"

    #@1e
    aput-object v2, v1, v3

    #@20
    const-string/jumbo v2, "\uffe5"

    #@23
    aput-object v2, v1, v4

    #@25
    .line 86
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    #@28
    move-result-object v0

    #@29
    const/4 v1, 0x3

    #@2a
    new-array v1, v1, [Ljava/lang/String;

    #@2c
    .line 88
    const-string/jumbo v2, "$"

    #@2f
    aput-object v2, v1, v3

    #@31
    const-string/jumbo v2, "\ufe69"

    #@34
    aput-object v2, v1, v4

    #@36
    const-string/jumbo v2, "\uff04"

    #@39
    aput-object v2, v1, v5

    #@3b
    .line 86
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    #@3e
    move-result-object v0

    #@3f
    new-array v1, v5, [Ljava/lang/String;

    #@41
    .line 89
    const-string/jumbo v2, "\u20a8"

    #@44
    aput-object v2, v1, v3

    #@46
    const-string/jumbo v2, "\u20b9"

    #@49
    aput-object v2, v1, v4

    #@4b
    .line 86
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    #@4e
    move-result-object v0

    #@4f
    new-array v1, v5, [Ljava/lang/String;

    #@51
    .line 90
    const-string/jumbo v2, "\u00a3"

    #@54
    aput-object v2, v1, v3

    #@56
    const-string/jumbo v2, "\u20a4"

    #@59
    aput-object v2, v1, v4

    #@5b
    .line 86
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    #@5e
    move-result-object v0

    #@5f
    .line 85
    sput-object v0, Landroid/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;

    #@61
    .line 233
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@63
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@66
    sput-object v0, Landroid/icu/util/Currency;->currencyCodeCache:Landroid/icu/impl/ICUCache;

    #@68
    .line 434
    new-instance v0, Landroid/icu/util/ULocale;

    #@6a
    const-string/jumbo v1, "und"

    #@6d
    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@70
    sput-object v0, Landroid/icu/util/Currency;->UND:Landroid/icu/util/ULocale;

    #@72
    .line 435
    new-array v0, v3, [Ljava/lang/String;

    #@74
    sput-object v0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@76
    .line 861
    const/16 v0, 0xa

    #@78
    new-array v0, v0, [I

    #@7a
    fill-array-data v0, :array_0

    #@7d
    sput-object v0, Landroid/icu/util/Currency;->POW10:[I

    #@7f
    .line 55
    return-void

    #@80
    .line 861
    :array_0
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

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theISOCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 853
    const-string/jumbo v0, "currency"

    #@3
    invoke-direct {p0, v0, p1}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 857
    iput-object p1, p0, Landroid/icu/util/Currency;->isoCode:Ljava/lang/String;

    #@8
    .line 852
    return-void
.end method

.method static createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 9
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 240
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@5
    move-result-object v5

    #@6
    .line 241
    .local v5, "variant":Ljava/lang/String;
    const-string/jumbo v6, "EURO"

    #@9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 242
    const-string/jumbo v6, "EUR"

    #@12
    invoke-static {v6}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@15
    move-result-object v6

    #@16
    return-object v6

    #@17
    .line 245
    :cond_0
    sget-object v6, Landroid/icu/util/Currency;->currencyCodeCache:Landroid/icu/impl/ICUCache;

    #@19
    invoke-interface {v6, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    .line 246
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_3

    #@21
    .line 247
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 249
    .local v1, "country":Ljava/lang/String;
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    #@28
    move-result-object v2

    #@29
    .line 250
    .local v2, "info":Landroid/icu/text/CurrencyMetaInfo;
    invoke-static {v1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v2, v6}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@30
    move-result-object v4

    #@31
    .line 251
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@34
    move-result v6

    #@35
    if-lez v6, :cond_4

    #@37
    .line 252
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    .end local v0    # "code":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@3d
    .line 253
    .restart local v0    # "code":Ljava/lang/String;
    const-string/jumbo v6, "PREEURO"

    #@40
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    .line 254
    .local v3, "isPreEuro":Z
    if-eqz v3, :cond_2

    #@46
    const-string/jumbo v6, "EUR"

    #@49
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_2

    #@4f
    .line 255
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@52
    move-result v6

    #@53
    const/4 v7, 0x2

    #@54
    if-ge v6, v7, :cond_1

    #@56
    .line 256
    return-object v8

    #@57
    .line 258
    :cond_1
    const/4 v6, 0x1

    #@58
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    .end local v0    # "code":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@5e
    .line 263
    .restart local v0    # "code":Ljava/lang/String;
    :cond_2
    sget-object v6, Landroid/icu/util/Currency;->currencyCodeCache:Landroid/icu/impl/ICUCache;

    #@60
    invoke-interface {v6, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@63
    .line 265
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "info":Landroid/icu/text/CurrencyMetaInfo;
    .end local v3    # "isPreEuro":Z
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@66
    move-result-object v6

    #@67
    return-object v6

    #@68
    .line 261
    .restart local v1    # "country":Ljava/lang/String;
    .restart local v2    # "info":Landroid/icu/text/CurrencyMetaInfo;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-object v8
.end method

.method private static declared-synchronized getAllCurrenciesAsSet()Ljava/util/Set;
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

    #@0
    .prologue
    const-class v3, Landroid/icu/util/Currency;

    #@2
    monitor-enter v3

    #@3
    .line 885
    :try_start_0
    sget-object v2, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    #@5
    if-nez v2, :cond_1

    #@7
    const/4 v0, 0x0

    #@8
    .line 886
    :goto_0
    if-nez v0, :cond_0

    #@a
    .line 887
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    #@d
    move-result-object v1

    #@e
    .line 889
    .local v1, "info":Landroid/icu/text/CurrencyMetaInfo;
    new-instance v2, Ljava/util/HashSet;

    #@10
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v1, v4}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1b
    .line 888
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@1e
    move-result-object v0

    #@1f
    .line 890
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/ref/SoftReference;

    #@21
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@24
    sput-object v2, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_0
    monitor-exit v3

    #@27
    .line 892
    return-object v0

    #@28
    .line 885
    .end local v0    # "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "info":Landroid/icu/text/CurrencyMetaInfo;
    :cond_1
    :try_start_1
    sget-object v2, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    #@2a
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .restart local v0    # "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    #@31
    .end local v0    # "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "info":Landroid/icu/text/CurrencyMetaInfo;
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v3

    #@33
    throw v2
.end method

.method private static declared-synchronized getAllTenderCurrencies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const-class v3, Landroid/icu/util/Currency;

    #@2
    monitor-enter v3

    #@3
    .line 872
    :try_start_0
    sget-object v2, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    #@5
    if-nez v2, :cond_1

    #@7
    const/4 v0, 0x0

    #@8
    .line 873
    :goto_0
    if-nez v0, :cond_0

    #@a
    .line 877
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@d
    move-result-object v1

    #@e
    .line 878
    .local v1, "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    invoke-static {v1}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    .line 879
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/ref/SoftReference;

    #@18
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@1b
    sput-object v2, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_0
    monitor-exit v3

    #@1e
    .line 881
    return-object v0

    #@1f
    .line 872
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    :cond_1
    :try_start_1
    sget-object v2, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    #@21
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    #@28
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Currency;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 223
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    #@3
    move-result-object v2

    #@4
    .line 224
    .local v2, "info":Landroid/icu/text/CurrencyMetaInfo;
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v2, v5}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@b
    move-result-object v3

    #@c
    .line 225
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    #@e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@11
    move-result v5

    #@12
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    #@15
    .line 226
    .local v4, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/ibm/icu/util/Currency;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "code$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .line 227
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 229
    .end local v0    # "code":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public static getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;
    .locals 4
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "d"    # Ljava/util/Date;

    #@0
    .prologue
    .line 187
    invoke-static {p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v2, v3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@b
    move-result-object v0

    #@c
    .line 188
    .local v0, "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    invoke-static {v0}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    .line 191
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 192
    const/4 v2, 0x0

    #@17
    return-object v2

    #@18
    .line 194
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1b
    move-result v2

    #@1c
    new-array v2, v2, [Ljava/lang/String;

    #@1e
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Ljava/lang/String;

    #@24
    return-object v2
.end method

.method public static getAvailableCurrencyCodes(Ljava/util/Locale;Ljava/util/Date;)[Ljava/lang/String;
    .locals 1
    .param p0, "loc"    # Ljava/util/Locale;
    .param p1, "d"    # Ljava/util/Date;

    #@0
    .prologue
    .line 209
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/util/Currency;->getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 345
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 346
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 348
    :cond_0
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@b
    invoke-virtual {v0}, Landroid/icu/util/Currency$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 359
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 360
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 362
    :cond_0
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@b
    invoke-virtual {v0}, Landroid/icu/util/Currency$ServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 164
    const-string/jumbo v1, "currency"

    #@3
    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 165
    .local v0, "currency":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .line 166
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 169
    :cond_0
    sget-object v1, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 170
    invoke-static {p0}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 173
    :cond_1
    sget-object v1, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@19
    invoke-virtual {v1, p0}, Landroid/icu/util/Currency$ServiceShim;->createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;
    .locals 2
    .param p0, "theISOCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 278
    if-nez p0, :cond_0

    #@2
    .line 279
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "The input currency code is null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 281
    :cond_0
    invoke-static {p0}, Landroid/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    .line 283
    const-string/jumbo v1, "The input currency code is not 3-letter alphabetic code."

    #@16
    .line 282
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 285
    :cond_1
    const-string/jumbo v0, "currency"

    #@1d
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1f
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/icu/util/Currency;

    #@29
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 155
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "commonlyUsed"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 400
    const-string/jumbo v4, "currency"

    #@4
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v4

    #@8
    if-nez v4, :cond_0

    #@a
    .line 401
    sget-object v4, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@c
    return-object v4

    #@d
    .line 404
    :cond_0
    if-nez p2, :cond_1

    #@f
    .line 406
    invoke-static {}, Landroid/icu/util/Currency;->getAllTenderCurrencies()Ljava/util/List;

    #@12
    move-result-object v4

    #@13
    new-array v5, v5, [Ljava/lang/String;

    #@15
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, [Ljava/lang/String;

    #@1b
    return-object v4

    #@1c
    .line 411
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 412
    .local v2, "prefRegion":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_3

    #@26
    .line 413
    sget-object v4, Landroid/icu/util/Currency;->UND:Landroid/icu/util/ULocale;

    #@28
    invoke-virtual {v4, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 414
    sget-object v4, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@30
    return-object v4

    #@31
    .line 416
    :cond_2
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@34
    move-result-object v1

    #@35
    .line 417
    .local v1, "loc":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    .line 420
    .end local v1    # "loc":Landroid/icu/util/ULocale;
    :cond_3
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->now()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, v2}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@40
    move-result-object v0

    #@41
    .line 424
    .local v0, "filter":Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    invoke-static {v0}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@44
    move-result-object v3

    #@45
    .line 427
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@48
    move-result v4

    #@49
    if-nez v4, :cond_4

    #@4b
    .line 428
    sget-object v4, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@4d
    return-object v4

    #@4e
    .line 431
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@51
    move-result v4

    #@52
    new-array v4, v4, [Ljava/lang/String;

    #@54
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@57
    move-result-object v4

    #@58
    check-cast v4, [Ljava/lang/String;

    #@5a
    return-object v4
.end method

.method private static getShim()Landroid/icu/util/Currency$ServiceShim;
    .locals 4

    #@0
    .prologue
    .line 132
    sget-object v2, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 134
    :try_start_0
    const-string/jumbo v2, "android.icu.util.CurrencyServiceShim"

    #@7
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 135
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/icu/util/Currency$ServiceShim;

    #@11
    sput-object v2, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 144
    :cond_0
    sget-object v2, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@15
    return-object v2

    #@16
    .line 137
    :catch_0
    move-exception v1

    #@17
    .line 138
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/icu/util/Currency;->DEBUG:Z

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 139
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@1e
    .line 141
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@20
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2
.end method

.method private static getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .param p0, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 945
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    #@3
    move-result-object v0

    #@4
    .line 946
    .local v0, "info":Landroid/icu/text/CurrencyMetaInfo;
    invoke-virtual {p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static isAlpha3Code(Ljava/lang/String;)Z
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x0

    #@2
    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-eq v2, v4, :cond_0

    #@8
    .line 291
    return v3

    #@9
    .line 293
    :cond_0
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    #@c
    .line 294
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 295
    .local v0, "ch":C
    const/16 v2, 0x41

    #@12
    if-lt v0, v2, :cond_1

    #@14
    const/16 v2, 0x5a

    #@16
    if-le v0, v2, :cond_2

    #@18
    const/16 v2, 0x61

    #@1a
    if-ge v0, v2, :cond_2

    #@1c
    .line 296
    :cond_1
    return v3

    #@1d
    .line 295
    :cond_2
    const/16 v2, 0x7a

    #@1f
    if-gt v0, v2, :cond_1

    #@21
    .line 293
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 300
    .end local v0    # "ch":C
    :cond_3
    const/4 v2, 0x1

    #@25
    return v2
.end method

.method public static isAvailable(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 5
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 916
    invoke-static {p0}, Landroid/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 917
    return v4

    #@8
    .line 920
    :cond_0
    if-eqz p1, :cond_1

    #@a
    if-eqz p2, :cond_1

    #@c
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 921
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v4, "To is before from"

    #@17
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v3

    #@1b
    .line 924
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1d
    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    .line 925
    invoke-static {}, Landroid/icu/util/Currency;->getAllCurrenciesAsSet()Ljava/util/Set;

    #@24
    move-result-object v3

    #@25
    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    .line 926
    .local v2, "isKnown":Z
    if-nez v2, :cond_2

    #@2b
    .line 927
    return v4

    #@2c
    .line 928
    :cond_2
    if-nez p1, :cond_3

    #@2e
    if-nez p2, :cond_3

    #@30
    .line 929
    const/4 v3, 0x1

    #@31
    return v3

    #@32
    .line 933
    :cond_3
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    #@35
    move-result-object v1

    #@36
    .line 935
    .local v1, "info":Landroid/icu/text/CurrencyMetaInfo;
    invoke-static {p1, p2}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@3d
    move-result-object v3

    #@3e
    .line 934
    invoke-virtual {v1, v3}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@41
    move-result-object v0

    #@42
    .line 936
    .local v0, "allActive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@45
    move-result v3

    #@46
    return v3
.end method

.method public static parse(Landroid/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;
    .locals 11
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x1

    #@3
    .line 659
    sget-object v7, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    #@5
    invoke-interface {v7, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Ljava/util/List;

    #@b
    .line 660
    .local v2, "currencyTrieVec":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;>;"
    if-nez v2, :cond_0

    #@d
    .line 662
    new-instance v0, Landroid/icu/impl/TextTrieMap;

    #@f
    invoke-direct {v0, v8}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    #@12
    .line 664
    .local v0, "currencyNameTrie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    new-instance v1, Landroid/icu/impl/TextTrieMap;

    #@14
    invoke-direct {v1, v10}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    #@17
    .line 665
    .local v1, "currencySymbolTrie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@19
    .end local v2    # "currencyTrieVec":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 666
    .restart local v2    # "currencyTrieVec":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 667
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 668
    invoke-static {p0, v2}, Landroid/icu/util/Currency;->setupCurrencyTrieVec(Landroid/icu/util/ULocale;Ljava/util/List;)V

    #@25
    .line 669
    sget-object v7, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    #@27
    invoke-interface {v7, p0, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2a
    .line 672
    .end local v0    # "currencyNameTrie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    .end local v1    # "currencySymbolTrie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    :cond_0
    const/4 v5, 0x0

    #@2b
    .line 673
    .local v5, "maxLength":I
    const/4 v4, 0x0

    #@2c
    .line 676
    .local v4, "isoResult":Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/icu/impl/TextTrieMap;

    #@32
    .line 677
    .restart local v0    # "currencyNameTrie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    new-instance v3, Landroid/icu/util/Currency$CurrencyNameResultHandler;

    #@34
    invoke-direct {v3, v9}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>(Landroid/icu/util/Currency$CurrencyNameResultHandler;)V

    #@37
    .line 678
    .local v3, "handler":Landroid/icu/util/Currency$CurrencyNameResultHandler;
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@3a
    move-result v7

    #@3b
    invoke-virtual {v0, p1, v7, v3}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@3e
    .line 679
    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 680
    .local v4, "isoResult":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    #@45
    move-result v5

    #@46
    .line 682
    if-eq p2, v8, :cond_1

    #@48
    .line 683
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Landroid/icu/impl/TextTrieMap;

    #@4e
    .line 684
    .restart local v1    # "currencySymbolTrie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    new-instance v3, Landroid/icu/util/Currency$CurrencyNameResultHandler;

    #@50
    .end local v3    # "handler":Landroid/icu/util/Currency$CurrencyNameResultHandler;
    invoke-direct {v3, v9}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>(Landroid/icu/util/Currency$CurrencyNameResultHandler;)V

    #@53
    .line 685
    .restart local v3    # "handler":Landroid/icu/util/Currency$CurrencyNameResultHandler;
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@56
    move-result v7

    #@57
    invoke-virtual {v1, p1, v7, v3}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@5a
    .line 686
    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    #@5d
    move-result v7

    #@5e
    if-le v7, v5, :cond_1

    #@60
    .line 687
    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    .line 688
    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    #@67
    move-result v5

    #@68
    .line 691
    .end local v1    # "currencySymbolTrie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    :cond_1
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@6b
    move-result v6

    #@6c
    .line 692
    .local v6, "start":I
    add-int v7, v6, v5

    #@6e
    invoke-virtual {p3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@71
    .line 693
    return-object v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 989
    iget-object v0, p0, Landroid/icu/util/Currency;->isoCode:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1
    .param p0, "currency"    # Landroid/icu/util/Currency;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 318
    invoke-static {}, Landroid/icu/util/Currency;->getShim()Landroid/icu/util/Currency$ServiceShim;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Landroid/icu/util/Currency$ServiceShim;->registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static setupCurrencyTrieVec(Landroid/icu/util/ULocale;Ljava/util/List;)V
    .locals 11
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 699
    .local p1, "trieVec":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;>;"
    const/4 v10, 0x0

    #@1
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v7

    #@5
    check-cast v7, Landroid/icu/impl/TextTrieMap;

    #@7
    .line 700
    .local v7, "symTrie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    const/4 v10, 0x1

    #@8
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v9

    #@c
    check-cast v9, Landroid/icu/impl/TextTrieMap;

    #@e
    .line 702
    .local v9, "trie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    invoke-static {p0}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    #@11
    move-result-object v6

    #@12
    .line 703
    .local v6, "names":Landroid/icu/text/CurrencyDisplayNames;
    invoke-virtual {v6}, Landroid/icu/text/CurrencyDisplayNames;->symbolMap()Ljava/util/Map;

    #@15
    move-result-object v10

    #@16
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v10

    #@1a
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v10

    #@22
    if-eqz v10, :cond_1

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/Map$Entry;

    #@2a
    .line 704
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v8

    #@2e
    check-cast v8, Ljava/lang/String;

    #@30
    .line 705
    .local v8, "symbol":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Ljava/lang/String;

    #@36
    .line 708
    .local v4, "isoCode":Ljava/lang/String;
    sget-object v10, Landroid/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;

    #@38
    invoke-virtual {v10, v8}, Landroid/icu/util/Currency$EquivalenceRelation;->get(Ljava/lang/Object;)Ljava/util/Set;

    #@3b
    move-result-object v10

    #@3c
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v3

    #@40
    .local v3, "equivalentSymbol$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v10

    #@44
    if-eqz v10, :cond_0

    #@46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Ljava/lang/String;

    #@4c
    .line 709
    .local v2, "equivalentSymbol":Ljava/lang/String;
    new-instance v10, Landroid/icu/util/Currency$CurrencyStringInfo;

    #@4e
    invoke-direct {v10, v4, v8}, Landroid/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    invoke-virtual {v7, v2, v10}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    #@54
    goto :goto_0

    #@55
    .line 712
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "equivalentSymbol":Ljava/lang/String;
    .end local v3    # "equivalentSymbol$iterator":Ljava/util/Iterator;
    .end local v4    # "isoCode":Ljava/lang/String;
    .end local v8    # "symbol":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Landroid/icu/text/CurrencyDisplayNames;->nameMap()Ljava/util/Map;

    #@58
    move-result-object v10

    #@59
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5c
    move-result-object v10

    #@5d
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@60
    move-result-object v1

    #@61
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@64
    move-result v10

    #@65
    if-eqz v10, :cond_2

    #@67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, Ljava/util/Map$Entry;

    #@6d
    .line 713
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@70
    move-result-object v5

    #@71
    check-cast v5, Ljava/lang/String;

    #@73
    .line 714
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@76
    move-result-object v4

    #@77
    check-cast v4, Ljava/lang/String;

    #@79
    .line 715
    .restart local v4    # "isoCode":Ljava/lang/String;
    new-instance v10, Landroid/icu/util/Currency$CurrencyStringInfo;

    #@7b
    invoke-direct {v10, v4, v5}, Landroid/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    invoke-virtual {v9, v5, v10}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    #@81
    goto :goto_1

    #@82
    .line 697
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "isoCode":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "registryKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 329
    if-nez p0, :cond_0

    #@2
    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "registryKey must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 332
    :cond_0
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 333
    const/4 v0, 0x0

    #@10
    return v0

    #@11
    .line 335
    :cond_1
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    #@13
    invoke-virtual {v0, p0}, Landroid/icu/util/Currency$ServiceShim;->unregister(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 978
    new-instance v0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;

    #@2
    iget-object v1, p0, Landroid/icu/util/Currency;->type:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@6
    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 776
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I
    .locals 3
    .param p1, "Usage"    # Landroid/icu/util/Currency$CurrencyUsage;

    #@0
    .prologue
    .line 789
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    #@3
    move-result-object v1

    #@4
    .line 790
    .local v1, "info":Landroid/icu/text/CurrencyMetaInfo;
    iget-object v2, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@6
    invoke-virtual {v1, v2, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@9
    move-result-object v0

    #@a
    .line 791
    .local v0, "digits":Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    iget v2, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    #@c
    return v2
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 615
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 633
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nameStyle"    # I
    .param p3, "pluralCount"    # Ljava/lang/String;
    .param p4, "isChoiceFormat"    # [Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 588
    const/4 v1, 0x2

    #@2
    if-eq p2, v1, :cond_0

    #@4
    .line 589
    invoke-virtual {p0, p1, p2, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 593
    :cond_0
    if-eqz p4, :cond_1

    #@b
    .line 594
    aput-boolean v2, p4, v2

    #@d
    .line 597
    :cond_1
    invoke-static {p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    #@10
    move-result-object v0

    #@11
    .line 598
    .local v0, "names":Landroid/icu/text/CurrencyDisplayNames;
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1, p3}, Landroid/icu/text/CurrencyDisplayNames;->getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nameStyle"    # I
    .param p3, "isChoiceFormat"    # [Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 538
    if-eqz p2, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    if-eq p2, v1, :cond_0

    #@6
    .line 539
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "bad name style: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 544
    :cond_0
    if-eqz p3, :cond_1

    #@22
    .line 545
    aput-boolean v2, p3, v2

    #@24
    .line 548
    :cond_1
    invoke-static {p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    #@27
    move-result-object v0

    #@28
    .line 549
    .local v0, "names":Landroid/icu/text/CurrencyDisplayNames;
    if-nez p2, :cond_2

    #@2a
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    :goto_0
    return-object v1

    #@31
    :cond_2
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    goto :goto_0
.end method

.method public getName(Ljava/util/Locale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "nameStyle"    # I
    .param p3, "pluralCount"    # Ljava/lang/String;
    .param p4, "isChoiceFormat"    # [Z

    #@0
    .prologue
    .line 559
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getName(Ljava/util/Locale;I[Z)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "nameStyle"    # I
    .param p3, "isChoiceFormat"    # [Z

    #@0
    .prologue
    .line 511
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNumericCode()I
    .locals 8

    #@0
    .prologue
    .line 453
    const/4 v4, 0x0

    #@1
    .line 456
    .local v4, "result":I
    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt55b"

    #@4
    .line 457
    const-string/jumbo v6, "currencyNumericCodes"

    #@7
    .line 458
    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@9
    .line 455
    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@c
    move-result-object v0

    #@d
    .line 459
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v5, "codeMap"

    #@10
    invoke-virtual {v0, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v1

    #@14
    .line 460
    .local v1, "codeMap":Landroid/icu/util/UResourceBundle;
    iget-object v5, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@19
    move-result-object v3

    #@1a
    .line 461
    .local v3, "numCode":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getInt()I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result v4

    #@1e
    .line 465
    .end local v0    # "bundle":Landroid/icu/util/UResourceBundle;
    .end local v1    # "codeMap":Landroid/icu/util/UResourceBundle;
    .end local v3    # "numCode":Landroid/icu/util/UResourceBundle;
    :goto_0
    return v4

    #@1f
    .line 462
    :catch_0
    move-exception v2

    #@20
    .local v2, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public getRoundingIncrement()D
    .locals 2

    #@0
    .prologue
    .line 802
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D
    .locals 8
    .param p1, "Usage"    # Landroid/icu/util/Currency$CurrencyUsage;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 814
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    #@5
    move-result-object v3

    #@6
    .line 815
    .local v3, "info":Landroid/icu/text/CurrencyMetaInfo;
    iget-object v4, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@8
    invoke-virtual {v3, v4, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@b
    move-result-object v2

    #@c
    .line 817
    .local v2, "digits":Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    iget v1, v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    #@e
    .line 821
    .local v1, "data1":I
    if-nez v1, :cond_0

    #@10
    .line 822
    return-wide v6

    #@11
    .line 825
    :cond_0
    iget v0, v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    #@13
    .line 828
    .local v0, "data0":I
    if-ltz v0, :cond_1

    #@15
    sget-object v4, Landroid/icu/util/Currency;->POW10:[I

    #@17
    array-length v4, v4

    #@18
    if-lt v0, v4, :cond_2

    #@1a
    .line 829
    :cond_1
    return-wide v6

    #@1b
    .line 834
    :cond_2
    int-to-double v4, v1

    #@1c
    sget-object v6, Landroid/icu/util/Currency;->POW10:[I

    #@1e
    aget v6, v6, v0

    #@20
    int-to-double v6, v6

    #@21
    div-double/2addr v4, v6

    #@22
    return-wide v4
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 476
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p1, "uloc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 498
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Z

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 487
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    #@2
    return-object v0
.end method
