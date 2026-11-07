.class public abstract Landroid/icu/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Collator$ServiceShim;,
        Landroid/icu/text/Collator$ASCII;,
        Landroid/icu/text/Collator$ReorderCodes;,
        Landroid/icu/text/Collator$CollatorFactory;,
        Landroid/icu/text/Collator$KeywordsSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/Collator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE:Ljava/lang/String; = "android/icu/impl/data/icudata/coll"

.field public static final whitelist test-api CANONICAL_DECOMPOSITION:I = 0x11

.field private static final greylist-max-o DEBUG:Z

.field public static final whitelist test-api FULL_DECOMPOSITION:I = 0xf

.field public static final whitelist test-api IDENTICAL:I = 0xf

.field private static final greylist-max-o KEYWORDS:[Ljava/lang/String;

.field public static final whitelist test-api NO_DECOMPOSITION:I = 0x10

.field public static final whitelist test-api PRIMARY:I = 0x0

.field public static final whitelist test-api QUATERNARY:I = 0x3

.field private static final greylist-max-o RESOURCE:Ljava/lang/String; = "collations"

.field public static final whitelist test-api SECONDARY:I = 0x1

.field public static final whitelist test-api TERTIARY:I = 0x2

.field private static greylist-max-o shim:Landroid/icu/text/Collator$ServiceShim;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 911
    const-string v0, "collation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    .line 1423
    const-string v0, "collator"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/Collator;->DEBUG:Z

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    return-void
.end method

.method private greylist-max-o checkNotFrozen()V
    .registers 3

    .line 324
    invoke-virtual {p0}, Landroid/icu/text/Collator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 327
    return-void

    .line 325
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen Collator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    .line 885
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_d

    .line 886
    const-string v0, "android/icu/impl/data/icudata/coll"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 889
    :cond_d
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    invoke-virtual {v0}, Landroid/icu/text/Collator$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 2

    .line 900
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_d

    .line 901
    const-string v0, "android/icu/impl/data/icudata/coll"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 904
    :cond_d
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    invoke-virtual {v0}, Landroid/icu/text/Collator$ServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "objectLocale"    # Landroid/icu/util/ULocale;

    .line 1095
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "objectLocale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 1073
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "objectLocale"    # Ljava/util/Locale;

    .line 1084
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "objectLocale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;

    .line 1061
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 1062
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 1061
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getEquivalentReorderCodes(I)[I
    .registers 3
    .param p0, "reorderCode"    # I

    .line 1381
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getData()Landroid/icu/impl/coll/CollationData;

    move-result-object v0

    .line 1382
    .local v0, "baseData":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {v0, p0}, Landroid/icu/impl/coll/CollationData;->getEquivalentScripts(I)[I

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist test-api getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .registers 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "locID"    # Landroid/icu/util/ULocale;

    .line 1050
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Collator;->getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .registers 10
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "locID"    # Landroid/icu/util/ULocale;
    .param p2, "isAvailable"    # [Z

    .line 1034
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "collations"

    const/4 v6, 0x1

    const-string v0, "android/icu/impl/data/icudata/coll"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p0    # "keyword":Ljava/lang/String;
    .end local p1    # "locID":Landroid/icu/util/ULocale;
    .end local p2    # "isAvailable":[Z
    .local v3, "keyword":Ljava/lang/String;
    .local v4, "locID":Landroid/icu/util/ULocale;
    .local v5, "isAvailable":[Z
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/ICUResourceBundle;->getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;[ZZ)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist test-api getInstance()Landroid/icu/text/Collator;
    .registers 1

    .line 453
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 794
    if-nez p0, :cond_6

    .line 795
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 797
    :cond_6
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    .line 798
    .local v0, "coll":Landroid/icu/text/Collator;
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 799
    nop

    .line 800
    instance-of v1, v0, Landroid/icu/text/RuleBasedCollator;

    if-eqz v1, :cond_25

    move-object v1, v0

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 799
    :goto_26
    invoke-static {p0, v0, v1}, Landroid/icu/text/Collator;->setAttributesFromKeywords(Landroid/icu/util/ULocale;Landroid/icu/text/Collator;Landroid/icu/text/RuleBasedCollator;)V

    .line 802
    :cond_29
    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 826
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method private static final varargs blacklist getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_10

    .line 634
    aget-object v1, p2, v0

    invoke-static {p1, v1}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 635
    return v0

    .line 633
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 638
    .end local v0    # "i":I
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal locale keyword=value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getKeywordValues(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "keyword"    # Ljava/lang/String;

    .line 944
    sget-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 947
    const-string v0, "android/icu/impl/data/icudata/coll"

    const-string v1, "collations"

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 945
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .registers 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "commonlyUsed"    # Z

    .line 971
    nop

    .line 972
    const-string v0, "android/icu/impl/data/icudata/coll"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 974
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/text/Collator$KeywordsSink;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/Collator$KeywordsSink;-><init>(Landroid/icu/text/Collator-IA;)V

    .line 975
    .local v1, "sink":Landroid/icu/text/Collator$KeywordsSink;
    const-string v2, "collations"

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 976
    iget-object v2, v1, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    iget-object v3, v1, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static final whitelist test-api getKeywords()[Ljava/lang/String;
    .registers 1

    .line 934
    sget-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    return-object v0
.end method

.method private static final greylist-max-o getReorderCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 642
    const-string v0, "currency"

    const-string v1, "digit"

    const-string v2, "space"

    const-string v3, "punct"

    const-string v4, "symbol"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {p0, p1, v0}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, 0x1000

    .line 642
    return v0
.end method

.method private static greylist-max-o getShim()Landroid/icu/text/Collator$ServiceShim;
    .registers 2

    .line 576
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_23

    .line 578
    :try_start_4
    const-string v0, "android.icu.text.CollatorServiceShim"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 579
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Collator$ServiceShim;

    sput-object v1, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_12} :catch_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 594
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_23

    .line 587
    :catch_13
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/icu/text/Collator;->DEBUG:Z

    if-eqz v1, :cond_1b

    .line 590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    :cond_1b
    new-instance v1, Landroid/icu/util/ICUException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_21
    move-exception v0

    .line 584
    .local v0, "e":Ljava/util/MissingResourceException;
    throw v0

    .line 596
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_23
    :goto_23
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    return-object v0
.end method

.method private static final greylist-max-o getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 623
    const-string v0, "yes"

    invoke-static {p1, v0}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 624
    const/4 v0, 0x1

    return v0

    .line 626
    :cond_a
    const-string v0, "no"

    invoke-static {p1, v0}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 627
    const/4 v0, 0x0

    return v0

    .line 629
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal locale keyword=value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final greylist-max-o registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .registers 2
    .param p0, "factory"    # Landroid/icu/text/Collator$CollatorFactory;

    .line 860
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .registers 3
    .param p0, "collator"    # Landroid/icu/text/Collator;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 844
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o setAttributesFromKeywords(Landroid/icu/util/ULocale;Landroid/icu/text/Collator;Landroid/icu/text/RuleBasedCollator;)V
    .registers 13
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "coll"    # Landroid/icu/text/Collator;
    .param p2, "rbc"    # Landroid/icu/text/RuleBasedCollator;

    .line 660
    const-string v0, "colHiraganaQuaternary"

    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_17c

    .line 664
    const-string v1, "variableTop"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    if-nez v0, :cond_174

    .line 669
    const-string v1, "colStrength"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_34

    .line 672
    const-string v2, "quaternary"

    const-string v3, "identical"

    const-string v4, "primary"

    const-string v5, "secondary"

    const-string v6, "tertiary"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 674
    .local v1, "strength":I
    const/4 v2, 0x3

    if-gt v1, v2, :cond_2f

    move v2, v1

    goto :goto_31

    :cond_2f
    const/16 v2, 0xf

    :goto_31
    invoke-virtual {p1, v2}, Landroid/icu/text/Collator;->setStrength(I)V

    .line 676
    .end local v1    # "strength":I
    :cond_34
    const-string v1, "colBackwards"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    const-string v2, "locale keyword kb/colBackwards only settable for RuleBasedCollator"

    if-eqz v0, :cond_4e

    .line 678
    if-eqz p2, :cond_48

    .line 679
    invoke-static {v1, v0}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/icu/text/RuleBasedCollator;->setFrenchCollation(Z)V

    goto :goto_4e

    .line 681
    :cond_48
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :cond_4e
    :goto_4e
    const-string v1, "colCaseLevel"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    if-eqz v0, :cond_66

    .line 687
    if-eqz p2, :cond_60

    .line 688
    invoke-static {v1, v0}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/icu/text/RuleBasedCollator;->setCaseLevel(Z)V

    goto :goto_66

    .line 690
    :cond_60
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :cond_66
    :goto_66
    const-string v1, "colCaseFirst"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_9b

    .line 696
    if-eqz p2, :cond_93

    .line 697
    const-string v4, "lower"

    const-string v5, "upper"

    const-string v6, "no"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 698
    .local v1, "cf":I
    if-nez v1, :cond_89

    .line 699
    invoke-virtual {p2, v2}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    .line 700
    invoke-virtual {p2, v2}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    goto :goto_92

    .line 701
    :cond_89
    if-ne v1, v3, :cond_8f

    .line 702
    invoke-virtual {p2, v3}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    goto :goto_92

    .line 704
    :cond_8f
    invoke-virtual {p2, v3}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    .line 706
    .end local v1    # "cf":I
    :goto_92
    goto :goto_9b

    .line 707
    :cond_93
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "locale keyword kf/colCaseFirst only settable for RuleBasedCollator"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_9b
    :goto_9b
    const-string v1, "colAlternate"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_c1

    .line 713
    if-eqz p2, :cond_b9

    .line 714
    const-string v4, "non-ignorable"

    const-string v5, "shifted"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 715
    invoke-static {v1, v0, v4}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_b5

    :cond_b4
    move v3, v2

    .line 714
    :goto_b5
    invoke-virtual {p2, v3}, Landroid/icu/text/RuleBasedCollator;->setAlternateHandlingShifted(Z)V

    goto :goto_c1

    .line 717
    :cond_b9
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "locale keyword ka/colAlternate only settable for RuleBasedCollator"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :cond_c1
    :goto_c1
    const-string v1, "colNormalization"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_d7

    .line 723
    invoke-static {v1, v0}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 724
    const/16 v1, 0x11

    goto :goto_d4

    :cond_d2
    const/16 v1, 0x10

    .line 723
    :goto_d4
    invoke-virtual {p1, v1}, Landroid/icu/text/Collator;->setDecomposition(I)V

    .line 726
    :cond_d7
    const-string v1, "colNumeric"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_f1

    .line 728
    if-eqz p2, :cond_e9

    .line 729
    invoke-static {v1, v0}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/icu/text/RuleBasedCollator;->setNumericCollation(Z)V

    goto :goto_f1

    .line 731
    :cond_e9
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "locale keyword kn/colNumeric only settable for RuleBasedCollator"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_f1
    :goto_f1
    const-string v1, "colReorder"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_164

    .line 737
    const/16 v3, 0xd5

    new-array v3, v3, [I

    .line 738
    .local v3, "codes":[I
    const/4 v4, 0x0

    .line 739
    .local v4, "codesLength":I
    const/4 v5, 0x0

    .line 741
    .local v5, "scriptNameStart":I
    :goto_ff
    array-length v6, v3

    if-eq v4, v6, :cond_14b

    .line 745
    move v6, v5

    .line 746
    .local v6, "limit":I
    :goto_103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_114

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_114

    add-int/lit8 v6, v6, 0x1

    goto :goto_103

    .line 747
    :cond_114
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 749
    .local v7, "scriptName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_126

    .line 751
    const/16 v8, 0x100a

    invoke-static {v8, v7}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v8

    .local v8, "code":I
    goto :goto_12a

    .line 753
    .end local v8    # "code":I
    :cond_126
    invoke-static {v1, v7}, Landroid/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 755
    .restart local v8    # "code":I
    :goto_12a
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "codesLength":I
    .local v9, "codesLength":I
    aput v8, v3, v4

    .line 756
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v6, v4, :cond_147

    .line 759
    .end local v6    # "limit":I
    .end local v7    # "scriptName":Ljava/lang/String;
    .end local v8    # "code":I
    if-eqz v9, :cond_13f

    .line 762
    new-array v1, v9, [I

    .line 763
    .local v1, "args":[I
    invoke-static {v3, v2, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    invoke-virtual {p1, v1}, Landroid/icu/text/Collator;->setReorderCodes([I)V

    goto :goto_164

    .line 760
    .end local v1    # "args":[I
    :cond_13f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no script codes for colReorder locale keyword"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    .restart local v6    # "limit":I
    .restart local v7    # "scriptName":Ljava/lang/String;
    .restart local v8    # "code":I
    :cond_147
    add-int/lit8 v5, v6, 0x1

    .line 758
    .end local v6    # "limit":I
    .end local v7    # "scriptName":Ljava/lang/String;
    .end local v8    # "code":I
    move v4, v9

    goto :goto_ff

    .line 742
    .end local v9    # "codesLength":I
    .restart local v4    # "codesLength":I
    :cond_14b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too many script codes for colReorder locale keyword: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    .end local v3    # "codes":[I
    .end local v4    # "codesLength":I
    .end local v5    # "scriptNameStart":I
    :cond_164
    :goto_164
    const-string v1, "kv"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_173

    .line 768
    invoke-static {v1, v0}, Landroid/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/icu/text/Collator;->setMaxVariable(I)Landroid/icu/text/Collator;

    .line 770
    :cond_173
    return-void

    .line 666
    :cond_174
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "locale keyword vt/variableTop"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    :cond_17c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "locale keyword kh/colHiraganaQuaternary"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final greylist-max-o unregister(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "registryKey"    # Ljava/lang/Object;

    .line 870
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_6

    .line 871
    const/4 v0, 0x0

    return v0

    .line 873
    :cond_6
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 462
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/text/Collator;
    .registers 3

    .line 1413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/icu/text/Collator;->cloneAsThawed()Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Ljava/lang/Object;

    .line 1199
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/Collator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected greylist-max-o doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 5
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1212
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 303
    if-eq p0, p1, :cond_11

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 1153
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api freeze()Landroid/icu/text/Collator;
    .registers 3

    .line 1405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/icu/text/Collator;->freeze()Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;
.end method

.method public whitelist test-api getDecomposition()I
    .registers 2

    .line 1136
    const/16 v0, 0x10

    return v0
.end method

.method public greylist-max-o getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    .line 1455
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api getMaxVariable()I
    .registers 2

    .line 1282
    const/16 v0, 0x1001

    return v0
.end method

.method public abstract greylist-max-o getRawCollationKey(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)Landroid/icu/text/RawCollationKey;
.end method

.method public whitelist test-api getReorderCodes()[I
    .registers 3

    .line 1364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getStrength()I
    .registers 2

    .line 1118
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist test-api getTailoredSet()Landroid/icu/text/UnicodeSet;
    .registers 4

    .line 1165
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    return-object v0
.end method

.method public abstract whitelist test-api getUCAVersion()Landroid/icu/util/VersionInfo;
.end method

.method public abstract whitelist test-api getVariableTop()I
.end method

.method public abstract whitelist test-api getVersion()Landroid/icu/util/VersionInfo;
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 1396
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api setDecomposition(I)V
    .registers 2
    .param p1, "decomposition"    # I

    .line 393
    invoke-direct {p0}, Landroid/icu/text/Collator;->checkNotFrozen()V

    .line 394
    return-void
.end method

.method greylist-max-o setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    .line 1477
    return-void
.end method

.method public whitelist test-api setMaxVariable(I)Landroid/icu/text/Collator;
    .registers 4
    .param p1, "group"    # I

    .line 1270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs whitelist test-api setReorderCodes([I)V
    .registers 4
    .param p1, "order"    # [I

    .line 436
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setStrength(I)V
    .registers 2
    .param p1, "newStrength"    # I

    .line 348
    invoke-direct {p0}, Landroid/icu/text/Collator;->checkNotFrozen()V

    .line 349
    return-void
.end method

.method public greylist-max-o setStrength2(I)Landroid/icu/text/Collator;
    .registers 2
    .param p1, "newStrength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Landroid/icu/text/Collator;->setStrength(I)V

    .line 361
    return-object p0
.end method

.method public abstract greylist-max-o setVariableTop(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o setVariableTop(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
