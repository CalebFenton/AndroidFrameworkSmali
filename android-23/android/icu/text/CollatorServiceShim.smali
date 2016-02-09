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
.field private static service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 1
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/text/CollatorServiceShim;->makeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 174
    new-instance v0, Landroid/icu/text/CollatorServiceShim$CService;

    #@2
    invoke-direct {v0}, Landroid/icu/text/CollatorServiceShim$CService;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@7
    .line 26
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/icu/text/Collator$ServiceShim;-><init>()V

    #@3
    return-void
.end method

.method private static final makeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 4
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 168
    new-instance v1, Landroid/icu/util/Output;

    #@2
    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@4
    invoke-direct {v1, v2}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@7
    .line 170
    .local v1, "validLocale":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/util/ULocale;>;"
    invoke-static {p0, v1}, Landroid/icu/impl/coll/CollationLoader;->loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;

    #@a
    move-result-object v0

    #@b
    .line 171
    .local v0, "t":Landroid/icu/impl/coll/CollationTailoring;
    new-instance v3, Landroid/icu/text/RuleBasedCollator;

    #@d
    iget-object v2, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@f
    check-cast v2, Landroid/icu/util/ULocale;

    #@11
    invoke-direct {v3, v0, v2}, Landroid/icu/text/RuleBasedCollator;-><init>(Landroid/icu/impl/coll/CollationTailoring;Landroid/icu/util/ULocale;)V

    #@14
    return-object v3
.end method


# virtual methods
.method getAvailableLocales()[Ljava/util/Locale;
    .locals 3

    #@0
    .prologue
    .line 93
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 94
    const-string/jumbo v1, "android/icu/impl/data/icudt55b/coll"

    #@b
    .line 95
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@d
    .line 94
    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    #@10
    move-result-object v0

    #@11
    .line 99
    .local v0, "result":[Ljava/util/Locale;
    :goto_0
    return-object v0

    #@12
    .line 97
    .end local v0    # "result":[Ljava/util/Locale;
    :cond_0
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@14
    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    #@17
    move-result-object v0

    #@18
    .restart local v0    # "result":[Ljava/util/Locale;
    goto :goto_0
.end method

.method getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 3

    #@0
    .prologue
    .line 104
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 105
    const-string/jumbo v1, "android/icu/impl/data/icudt55b/coll"

    #@b
    .line 106
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@d
    .line 105
    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    #@10
    move-result-object v0

    #@11
    .line 110
    .local v0, "result":[Landroid/icu/util/ULocale;
    :goto_0
    return-object v0

    #@12
    .line 108
    .end local v0    # "result":[Landroid/icu/util/ULocale;
    :cond_0
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@14
    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@17
    move-result-object v0

    #@18
    .restart local v0    # "result":[Landroid/icu/util/ULocale;
    goto :goto_0
.end method

.method getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p1, "objectLocale"    # Landroid/icu/util/ULocale;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 115
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@6
    invoke-virtual {v1, v0, p2}, Landroid/icu/impl/ICULocaleService;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 34
    const/4 v3, 0x1

    #@1
    :try_start_0
    new-array v0, v3, [Landroid/icu/util/ULocale;

    #@3
    .line 35
    .local v0, "actualLoc":[Landroid/icu/util/ULocale;
    sget-object v3, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@5
    invoke-virtual {v3, p1, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/icu/text/Collator;

    #@b
    .line 36
    .local v1, "coll":Landroid/icu/text/Collator;
    if-nez v1, :cond_0

    #@d
    .line 39
    new-instance v3, Ljava/util/MissingResourceException;

    #@f
    const-string/jumbo v4, "Could not locate Collator data"

    #@12
    const-string/jumbo v5, ""

    #@15
    const-string/jumbo v6, ""

    #@18
    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    throw v3
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 44
    .end local v0    # "actualLoc":[Landroid/icu/util/ULocale;
    .end local v1    # "coll":Landroid/icu/text/Collator;
    :catch_0
    move-exception v2

    #@1d
    .line 46
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Landroid/icu/util/ICUCloneNotSupportedException;

    #@1f
    invoke-direct {v3, v2}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v3

    #@23
    .line 42
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "actualLoc":[Landroid/icu/util/ULocale;
    .restart local v1    # "coll":Landroid/icu/text/Collator;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Landroid/icu/text/Collator;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    #@29
    return-object v3
.end method

.method registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .locals 2
    .param p1, "f"    # Landroid/icu/text/Collator$CollatorFactory;

    #@0
    .prologue
    .line 83
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    new-instance v1, Landroid/icu/text/CollatorServiceShim$1CFactory;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/icu/text/CollatorServiceShim$1CFactory;-><init>(Landroid/icu/text/CollatorServiceShim;Landroid/icu/text/Collator$CollatorFactory;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1
    .param p1, "collator"    # Landroid/icu/text/Collator;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 55
    invoke-virtual {p1, p2, p2}, Landroid/icu/text/Collator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@3
    .line 56
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "registryKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 87
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    #@4
    .end local p1    # "registryKey":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
