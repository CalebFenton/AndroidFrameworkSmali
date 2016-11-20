.class Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;
.super Ljava/lang/Object;
.source "LocaleServiceProviderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/LocaleServiceProviderPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllAvailableLocales"
.end annotation


# static fields
.field static final allAvailableLocales:[Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 166
    const/16 v6, 0x9

    #@3
    new-array v5, v6, [Ljava/lang/Class;

    #@5
    .line 167
    const-class v6, Ljava/text/spi/BreakIteratorProvider;

    #@7
    aput-object v6, v5, v7

    #@9
    .line 168
    const-class v6, Ljava/text/spi/CollatorProvider;

    #@b
    const/4 v8, 0x1

    #@c
    aput-object v6, v5, v8

    #@e
    .line 169
    const-class v6, Ljava/text/spi/DateFormatProvider;

    #@10
    const/4 v8, 0x2

    #@11
    aput-object v6, v5, v8

    #@13
    .line 170
    const-class v6, Ljava/text/spi/DateFormatSymbolsProvider;

    #@15
    const/4 v8, 0x3

    #@16
    aput-object v6, v5, v8

    #@18
    .line 171
    const-class v6, Ljava/text/spi/DecimalFormatSymbolsProvider;

    #@1a
    const/4 v8, 0x4

    #@1b
    aput-object v6, v5, v8

    #@1d
    .line 172
    const-class v6, Ljava/text/spi/NumberFormatProvider;

    #@1f
    const/4 v8, 0x5

    #@20
    aput-object v6, v5, v8

    #@22
    .line 173
    const-class v6, Ljava/util/spi/CurrencyNameProvider;

    #@24
    const/4 v8, 0x6

    #@25
    aput-object v6, v5, v8

    #@27
    .line 174
    const-class v6, Ljava/util/spi/LocaleNameProvider;

    #@29
    const/4 v8, 0x7

    #@2a
    aput-object v6, v5, v8

    #@2c
    .line 175
    const-class v6, Ljava/util/spi/TimeZoneNameProvider;

    #@2e
    const/16 v8, 0x8

    #@30
    aput-object v6, v5, v8

    #@32
    .line 179
    .local v5, "providerClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<Ljava/util/spi/LocaleServiceProvider;>;"
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    #@35
    move-result-object v1

    #@36
    .line 180
    .local v1, "allLocales":[Ljava/util/Locale;
    new-instance v0, Ljava/util/HashSet;

    #@38
    array-length v6, v1

    #@39
    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    #@3c
    .line 181
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    array-length v8, v1

    #@3d
    move v6, v7

    #@3e
    :goto_0
    if-ge v6, v8, :cond_0

    #@40
    aget-object v2, v1, v6

    #@42
    .line 182
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->-wrap0(Ljava/util/Locale;)Ljava/util/Locale;

    #@45
    move-result-object v9

    #@46
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@49
    .line 181
    add-int/lit8 v6, v6, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 185
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    array-length v8, v5

    #@4d
    move v6, v7

    #@4e
    :goto_1
    if-ge v6, v8, :cond_1

    #@50
    aget-object v4, v5, v6

    #@52
    .line 187
    .local v4, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/spi/LocaleServiceProvider;>;"
    invoke-static {v4}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@55
    move-result-object v3

    #@56
    .line 188
    .local v3, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-static {v3}, Lsun/util/LocaleServiceProviderPool;->-wrap1(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;

    #@59
    move-result-object v9

    #@5a
    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5d
    .line 185
    add-int/lit8 v6, v6, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 191
    .end local v3    # "pool":Lsun/util/LocaleServiceProviderPool;
    .end local v4    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/spi/LocaleServiceProvider;>;"
    :cond_1
    new-array v6, v7, [Ljava/util/Locale;

    #@62
    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@65
    move-result-object v6

    #@66
    check-cast v6, [Ljava/util/Locale;

    #@68
    sput-object v6, Lsun/util/LocaleServiceProviderPool$AllAvailableLocales;->allAvailableLocales:[Ljava/util/Locale;

    #@6a
    .line 156
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
