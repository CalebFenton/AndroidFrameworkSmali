.class final Landroid/icu/text/CollatorServiceShim;
.super Landroid/icu/text/Collator$ServiceShim;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollatorServiceShim$CService;
    }
.end annotation


# static fields
.field private static blacklist service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmakeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .registers 1

    invoke-static {p0}, Landroid/icu/text/CollatorServiceShim;->makeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    new-instance v0, Landroid/icu/text/CollatorServiceShim$CService;

    invoke-direct {v0}, Landroid/icu/text/CollatorServiceShim$CService;-><init>()V

    sput-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/icu/text/Collator$ServiceShim;-><init>()V

    return-void
.end method

.method private static final blacklist makeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .registers 5
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;

    .line 183
    new-instance v0, Landroid/icu/util/Output;

    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 184
    .local v0, "validLocale":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/util/ULocale;>;"
    nop

    .line 185
    invoke-static {p0, v0}, Landroid/icu/impl/coll/CollationLoader;->loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v1

    .line 186
    .local v1, "t":Landroid/icu/impl/coll/CollationTailoring;
    new-instance v2, Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v3, Landroid/icu/util/ULocale;

    invoke-direct {v2, v1, v3}, Landroid/icu/text/RuleBasedCollator;-><init>(Landroid/icu/impl/coll/CollationTailoring;Landroid/icu/util/ULocale;)V

    return-object v2
.end method


# virtual methods
.method blacklist getAvailableLocales()[Ljava/util/Locale;
    .registers 3

    .line 105
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 106
    const-string v0, "android/icu/impl/data/icudata/coll"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    move-result-object v0

    .local v0, "result":[Ljava/util/Locale;
    goto :goto_17

    .line 109
    .end local v0    # "result":[Ljava/util/Locale;
    :cond_11
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 111
    .restart local v0    # "result":[Ljava/util/Locale;
    :goto_17
    return-object v0
.end method

.method blacklist getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 3

    .line 117
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 118
    const-string v0, "android/icu/impl/data/icudata/coll"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    .local v0, "result":[Landroid/icu/util/ULocale;
    goto :goto_17

    .line 121
    .end local v0    # "result":[Landroid/icu/util/ULocale;
    :cond_11
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    .line 123
    .restart local v0    # "result":[Landroid/icu/util/ULocale;
    :goto_17
    return-object v0
.end method

.method blacklist getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 5
    .param p1, "objectLocale"    # Landroid/icu/util/ULocale;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 128
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1, v0, p2}, Landroid/icu/impl/ICULocaleService;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .registers 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 39
    const-string v0, ""

    const/4 v1, 0x1

    :try_start_3
    new-array v1, v1, [Landroid/icu/util/ULocale;

    .line 40
    .local v1, "actualLoc":[Landroid/icu/util/ULocale;
    sget-object v2, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/Collator;

    .line 41
    .local v2, "coll":Landroid/icu/text/Collator;
    if-eqz v2, :cond_16

    .line 47
    invoke-virtual {v2}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Collator;

    return-object v0

    .line 44
    :cond_16
    new-instance v3, Ljava/util/MissingResourceException;

    const-string v4, "Could not locate Collator data"

    invoke-direct {v3, v4, v0, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/icu/text/CollatorServiceShim;
    .end local p1    # "locale":Landroid/icu/util/ULocale;
    throw v3
    :try_end_1e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_1e} :catch_1e

    .line 49
    .end local v1    # "actualLoc":[Landroid/icu/util/ULocale;
    .end local v2    # "coll":Landroid/icu/text/Collator;
    .restart local p0    # "this":Landroid/icu/text/CollatorServiceShim;
    .restart local p1    # "locale":Landroid/icu/util/ULocale;
    :catch_1e
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .registers 4
    .param p1, "f"    # Landroid/icu/text/Collator$CollatorFactory;

    .line 93
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    new-instance v1, Landroid/icu/text/CollatorServiceShim$1CFactory;

    invoke-direct {v1, p0, p1}, Landroid/icu/text/CollatorServiceShim$1CFactory;-><init>(Landroid/icu/text/CollatorServiceShim;Landroid/icu/text/Collator$CollatorFactory;)V

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method blacklist registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .registers 4
    .param p1, "collator"    # Landroid/icu/text/Collator;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 61
    invoke-virtual {p1, p2, p2}, Landroid/icu/text/Collator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 62
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method blacklist unregister(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "registryKey"    # Ljava/lang/Object;

    .line 98
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result v0

    return v0
.end method
