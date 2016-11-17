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
        Landroid/icu/text/Collator$ASCII;,
        Landroid/icu/text/Collator$CollatorFactory;,
        Landroid/icu/text/Collator$ReorderCodes;,
        Landroid/icu/text/Collator$ServiceShim;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/Collator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String; = "android/icu/impl/data/icudt56b/coll"

.field public static final CANONICAL_DECOMPOSITION:I = 0x11

.field private static final DEBUG:Z

.field public static final FULL_DECOMPOSITION:I = 0xf

.field public static final IDENTICAL:I = 0xf

.field private static final KEYWORDS:[Ljava/lang/String;

.field public static final NO_DECOMPOSITION:I = 0x10

.field public static final PRIMARY:I = 0x0

.field public static final QUATERNARY:I = 0x3

.field private static final RESOURCE:Ljava/lang/String; = "collations"

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2

.field private static shim:Landroid/icu/text/Collator$ServiceShim;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 892
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "collation"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    sput-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    #@b
    .line 1399
    const-string/jumbo v0, "collator"

    #@e
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    sput-boolean v0, Landroid/icu/text/Collator;->DEBUG:Z

    #@14
    .line 133
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private checkNotFrozen()V
    .locals 2

    #@0
    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/icu/text/Collator;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 307
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify frozen Collator"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 305
    :cond_0
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 866
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 868
    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    #@7
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@9
    .line 867
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 870
    :cond_0
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    #@10
    invoke-virtual {v0}, Landroid/icu/text/Collator$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static final getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    #@0
    .prologue
    .line 881
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 883
    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    #@7
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@9
    .line 882
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 885
    :cond_0
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    #@10
    invoke-virtual {v0}, Landroid/icu/text/Collator$ServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p0, "objectLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1077
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, p0, v1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "objectLocale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1055
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "objectLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1066
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@a
    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "objectLocale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1043
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    .line 1044
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@b
    move-result-object v2

    #@c
    .line 1043
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static getEquivalentReorderCodes(I)[I
    .locals 2
    .param p0, "reorderCode"    # I

    #@0
    .prologue
    .line 1360
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getData()Landroid/icu/impl/coll/CollationData;

    #@3
    move-result-object v0

    #@4
    .line 1361
    .local v0, "baseData":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {v0, p0}, Landroid/icu/impl/coll/CollationData;->getEquivalentScripts(I)[I

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "locID"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1032
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/text/Collator;->getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 7
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "locID"    # Landroid/icu/util/ULocale;
    .param p2, "isAvailable"    # [Z

    #@0
    .prologue
    .line 1016
    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    #@3
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@5
    const-string/jumbo v2, "collations"

    #@8
    .line 1017
    const/4 v6, 0x1

    #@9
    move-object v3, p0

    #@a
    move-object v4, p1

    #@b
    move-object v5, p2

    #@c
    .line 1016
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/ICUResourceBundle;->getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;[ZZ)Landroid/icu/util/ULocale;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static final getInstance()Landroid/icu/text/Collator;
    .locals 1

    #@0
    .prologue
    .line 435
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 775
    if-nez p0, :cond_0

    #@3
    .line 776
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@6
    move-result-object p0

    #@7
    .line 778
    :cond_0
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2, p0}, Landroid/icu/text/Collator$ServiceShim;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@e
    move-result-object v0

    #@f
    .line 779
    .local v0, "coll":Landroid/icu/text/Collator;
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    .line 781
    instance-of v2, v0, Landroid/icu/text/RuleBasedCollator;

    #@1f
    if-eqz v2, :cond_1

    #@21
    move-object v1, v0

    #@22
    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    #@24
    .line 780
    :cond_1
    invoke-static {p0, v0, v1}, Landroid/icu/text/Collator;->setAttributesFromKeywords(Landroid/icu/util/ULocale;Landroid/icu/text/Collator;Landroid/icu/text/RuleBasedCollator;)V

    #@27
    .line 783
    :cond_2
    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 807
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static final varargs getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 614
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 615
    aget-object v1, p2, v0

    #@6
    invoke-static {p1, v1}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 616
    return v0

    #@d
    .line 614
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 619
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "illegal locale keyword=value: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "="

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1
.end method

.method public static final getKeywordValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 925
    sget-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Invalid keyword: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 928
    :cond_0
    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    #@28
    const-string/jumbo v1, "collations"

    #@2b
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 13
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "commonlyUsed"    # Z

    #@0
    .prologue
    .line 952
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 953
    .local v0, "baseLoc":Ljava/lang/String;
    new-instance v11, Ljava/util/LinkedList;

    #@6
    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    #@9
    .line 956
    .local v11, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string/jumbo v12, "android/icu/impl/data/icudt56b/coll"

    #@c
    .line 955
    invoke-static {v12, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@f
    move-result-object v1

    #@10
    .line 958
    .local v1, "bundle":Landroid/icu/util/UResourceBundle;
    const/4 v6, 0x0

    #@11
    .line 959
    :goto_0
    if-eqz v1, :cond_3

    #@13
    .line 960
    const-string/jumbo v12, "collations"

    #@16
    invoke-virtual {v1, v12}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@19
    move-result-object v4

    #@1a
    .line 961
    .local v4, "collations":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@1d
    move-result-object v2

    #@1e
    .line 962
    .local v2, "collEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@21
    move-result v12

    #@22
    if-eqz v12, :cond_2

    #@24
    .line 963
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Ljava/lang/String;

    #@2a
    .line 964
    .local v5, "collkey":Ljava/lang/String;
    const-string/jumbo v12, "default"

    #@2d
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v12

    #@31
    if-eqz v12, :cond_1

    #@33
    .line 965
    if-nez v6, :cond_0

    #@35
    .line 967
    const-string/jumbo v12, "default"

    #@38
    invoke-virtual {v4, v12}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .local v6, "defcoll":Ljava/lang/String;
    goto :goto_1

    #@3d
    .line 969
    .end local v6    # "defcoll":Ljava/lang/String;
    :cond_1
    const-string/jumbo v12, "private-"

    #@40
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@43
    move-result v12

    #@44
    if-nez v12, :cond_0

    #@46
    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@49
    move-result v12

    #@4a
    if-nez v12, :cond_0

    #@4c
    .line 970
    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_1

    #@50
    .line 973
    .end local v5    # "collkey":Ljava/lang/String;
    :cond_2
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@52
    .end local v1    # "bundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@55
    move-result-object v1

    #@56
    .restart local v1    # "bundle":Landroid/icu/util/UResourceBundle;
    goto :goto_0

    #@57
    .line 976
    .end local v2    # "collEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "collations":Landroid/icu/util/UResourceBundle;
    :cond_3
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v9

    #@5b
    .line 977
    .local v9, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    #@5e
    move-result v12

    #@5f
    new-array v10, v12, [Ljava/lang/String;

    #@61
    .line 978
    .local v10, "result":[Ljava/lang/String;
    const/4 v12, 0x0

    #@62
    aput-object v6, v10, v12

    #@64
    .line 979
    const/4 v7, 0x1

    #@65
    .line 980
    .local v7, "idx":I
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@68
    move-result v12

    #@69
    if-eqz v12, :cond_5

    #@6b
    .line 981
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v3

    #@6f
    check-cast v3, Ljava/lang/String;

    #@71
    .line 982
    .local v3, "collKey":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v12

    #@75
    if-nez v12, :cond_4

    #@77
    .line 983
    add-int/lit8 v8, v7, 0x1

    #@79
    .end local v7    # "idx":I
    .local v8, "idx":I
    aput-object v3, v10, v7

    #@7b
    move v7, v8

    #@7c
    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    goto :goto_2

    #@7d
    .line 986
    .end local v3    # "collKey":Ljava/lang/String;
    :cond_5
    return-object v10
.end method

.method public static final getKeywords()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 915
    sget-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static final getReorderCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 624
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "space"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "punct"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "symbol"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "currency"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "digit"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    invoke-static {p0, p1, v0}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@24
    move-result v0

    #@25
    .line 623
    add-int/lit16 v0, v0, 0x1000

    #@27
    return v0
.end method

.method private static getShim()Landroid/icu/text/Collator$ServiceShim;
    .locals 4

    #@0
    .prologue
    .line 557
    sget-object v3, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 559
    :try_start_0
    const-string/jumbo v3, "android.icu.text.CollatorServiceShim"

    #@7
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 560
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/icu/text/Collator$ServiceShim;

    #@11
    sput-object v3, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 577
    :cond_0
    sget-object v3, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    #@15
    return-object v3

    #@16
    .line 568
    :catch_0
    move-exception v1

    #@17
    .line 570
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/icu/text/Collator;->DEBUG:Z

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 571
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@1e
    .line 573
    :cond_1
    new-instance v3, Landroid/icu/util/ICUException;

    #@20
    invoke-direct {v3, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    #@23
    throw v3

    #@24
    .line 563
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@25
    .line 565
    .local v2, "e":Ljava/util/MissingResourceException;
    throw v2
.end method

.method private static final getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 604
    const-string/jumbo v0, "yes"

    #@3
    invoke-static {p1, v0}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 605
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 607
    :cond_0
    const-string/jumbo v0, "no"

    #@e
    invoke-static {p1, v0}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 608
    const/4 v0, 0x0

    #@15
    return v0

    #@16
    .line 610
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "illegal locale keyword=value: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "="

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method public static final registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .locals 1
    .param p0, "factory"    # Landroid/icu/text/Collator$CollatorFactory;

    #@0
    .prologue
    .line 841
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1
    .param p0, "collator"    # Landroid/icu/text/Collator;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 825
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static setAttributesFromKeywords(Landroid/icu/util/ULocale;Landroid/icu/text/Collator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 16
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "coll"    # Landroid/icu/text/Collator;
    .param p2, "rbc"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 641
    const-string/jumbo v12, "colHiraganaQuaternary"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v11

    #@9
    .line 642
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_0

    #@b
    .line 643
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    #@d
    const-string/jumbo v13, "locale keyword kh/colHiraganaQuaternary"

    #@10
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@13
    throw v12

    #@14
    .line 645
    :cond_0
    const-string/jumbo v12, "variableTop"

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    .line 646
    if-eqz v11, :cond_1

    #@1f
    .line 647
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    #@21
    const-string/jumbo v13, "locale keyword vt/variableTop"

    #@24
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@27
    throw v12

    #@28
    .line 650
    :cond_1
    const-string/jumbo v12, "colStrength"

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v11

    #@31
    .line 651
    if-eqz v11, :cond_2

    #@33
    .line 653
    const-string/jumbo v12, "colStrength"

    #@36
    const/4 v13, 0x5

    #@37
    new-array v13, v13, [Ljava/lang/String;

    #@39
    .line 654
    const-string/jumbo v14, "primary"

    #@3c
    const/4 v15, 0x0

    #@3d
    aput-object v14, v13, v15

    #@3f
    const-string/jumbo v14, "secondary"

    #@42
    const/4 v15, 0x1

    #@43
    aput-object v14, v13, v15

    #@45
    const-string/jumbo v14, "tertiary"

    #@48
    const/4 v15, 0x2

    #@49
    aput-object v14, v13, v15

    #@4b
    const-string/jumbo v14, "quaternary"

    #@4e
    const/4 v15, 0x3

    #@4f
    aput-object v14, v13, v15

    #@51
    const-string/jumbo v14, "identical"

    #@54
    const/4 v15, 0x4

    #@55
    aput-object v14, v13, v15

    #@57
    .line 653
    invoke-static {v12, v11, v13}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@5a
    move-result v10

    #@5b
    .line 655
    .local v10, "strength":I
    const/4 v12, 0x3

    #@5c
    if-gt v10, v12, :cond_9

    #@5e
    .end local v10    # "strength":I
    :goto_0
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v0, v10}, Landroid/icu/text/Collator;->setStrength(I)V

    #@63
    .line 657
    :cond_2
    const-string/jumbo v12, "colBackwards"

    #@66
    move-object/from16 v0, p0

    #@68
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v11

    #@6c
    .line 658
    if-eqz v11, :cond_3

    #@6e
    .line 659
    if-eqz p2, :cond_a

    #@70
    .line 660
    const-string/jumbo v12, "colBackwards"

    #@73
    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    #@76
    move-result v12

    #@77
    move-object/from16 v0, p2

    #@79
    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setFrenchCollation(Z)V

    #@7c
    .line 666
    :cond_3
    const-string/jumbo v12, "colCaseLevel"

    #@7f
    move-object/from16 v0, p0

    #@81
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v11

    #@85
    .line 667
    if-eqz v11, :cond_4

    #@87
    .line 668
    if-eqz p2, :cond_b

    #@89
    .line 669
    const-string/jumbo v12, "colCaseLevel"

    #@8c
    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    #@8f
    move-result v12

    #@90
    move-object/from16 v0, p2

    #@92
    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setCaseLevel(Z)V

    #@95
    .line 675
    :cond_4
    const-string/jumbo v12, "colCaseFirst"

    #@98
    move-object/from16 v0, p0

    #@9a
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v11

    #@9e
    .line 676
    if-eqz v11, :cond_5

    #@a0
    .line 677
    if-eqz p2, :cond_e

    #@a2
    .line 678
    const-string/jumbo v12, "colCaseFirst"

    #@a5
    const/4 v13, 0x3

    #@a6
    new-array v13, v13, [Ljava/lang/String;

    #@a8
    const-string/jumbo v14, "no"

    #@ab
    const/4 v15, 0x0

    #@ac
    aput-object v14, v13, v15

    #@ae
    const-string/jumbo v14, "lower"

    #@b1
    const/4 v15, 0x1

    #@b2
    aput-object v14, v13, v15

    #@b4
    const-string/jumbo v14, "upper"

    #@b7
    const/4 v15, 0x2

    #@b8
    aput-object v14, v13, v15

    #@ba
    invoke-static {v12, v11, v13}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@bd
    move-result v2

    #@be
    .line 679
    .local v2, "cf":I
    if-nez v2, :cond_c

    #@c0
    .line 680
    const/4 v12, 0x0

    #@c1
    move-object/from16 v0, p2

    #@c3
    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    #@c6
    .line 681
    const/4 v12, 0x0

    #@c7
    move-object/from16 v0, p2

    #@c9
    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    #@cc
    .line 692
    .end local v2    # "cf":I
    :cond_5
    :goto_1
    const-string/jumbo v12, "colAlternate"

    #@cf
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@d4
    move-result-object v11

    #@d5
    .line 693
    if-eqz v11, :cond_6

    #@d7
    .line 694
    if-eqz p2, :cond_10

    #@d9
    .line 696
    const-string/jumbo v12, "colAlternate"

    #@dc
    const/4 v13, 0x2

    #@dd
    new-array v13, v13, [Ljava/lang/String;

    #@df
    const-string/jumbo v14, "non-ignorable"

    #@e2
    const/4 v15, 0x0

    #@e3
    aput-object v14, v13, v15

    #@e5
    const-string/jumbo v14, "shifted"

    #@e8
    const/4 v15, 0x1

    #@e9
    aput-object v14, v13, v15

    #@eb
    invoke-static {v12, v11, v13}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@ee
    move-result v12

    #@ef
    if-eqz v12, :cond_f

    #@f1
    const/4 v12, 0x1

    #@f2
    .line 695
    :goto_2
    move-object/from16 v0, p2

    #@f4
    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setAlternateHandlingShifted(Z)V

    #@f7
    .line 702
    :cond_6
    const-string/jumbo v12, "colNormalization"

    #@fa
    move-object/from16 v0, p0

    #@fc
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@ff
    move-result-object v11

    #@100
    .line 703
    if-eqz v11, :cond_7

    #@102
    .line 704
    const-string/jumbo v12, "colNormalization"

    #@105
    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    #@108
    move-result v12

    #@109
    if-eqz v12, :cond_11

    #@10b
    .line 705
    const/16 v12, 0x11

    #@10d
    .line 704
    :goto_3
    move-object/from16 v0, p1

    #@10f
    invoke-virtual {v0, v12}, Landroid/icu/text/Collator;->setDecomposition(I)V

    #@112
    .line 707
    :cond_7
    const-string/jumbo v12, "colNumeric"

    #@115
    move-object/from16 v0, p0

    #@117
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@11a
    move-result-object v11

    #@11b
    .line 708
    if-eqz v11, :cond_8

    #@11d
    .line 709
    if-eqz p2, :cond_12

    #@11f
    .line 710
    const-string/jumbo v12, "colNumeric"

    #@122
    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    #@125
    move-result v12

    #@126
    move-object/from16 v0, p2

    #@128
    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setNumericCollation(Z)V

    #@12b
    .line 716
    :cond_8
    const-string/jumbo v12, "colReorder"

    #@12e
    move-object/from16 v0, p0

    #@130
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@133
    move-result-object v11

    #@134
    .line 717
    if-eqz v11, :cond_18

    #@136
    .line 718
    const/16 v12, 0xac

    #@138
    new-array v4, v12, [I

    #@13a
    .line 719
    .local v4, "codes":[I
    const/4 v5, 0x0

    #@13b
    .line 720
    .local v5, "codesLength":I
    const/4 v9, 0x0

    #@13c
    .line 722
    .local v9, "scriptNameStart":I
    :goto_4
    array-length v12, v4

    #@13d
    if-ne v5, v12, :cond_13

    #@13f
    .line 723
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@141
    .line 724
    new-instance v13, Ljava/lang/StringBuilder;

    #@143
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    const-string/jumbo v14, "too many script codes for colReorder locale keyword: "

    #@149
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v13

    #@14d
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v13

    #@151
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v13

    #@155
    .line 723
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@158
    throw v12

    #@159
    .line 655
    .end local v4    # "codes":[I
    .end local v5    # "codesLength":I
    .end local v9    # "scriptNameStart":I
    .restart local v10    # "strength":I
    :cond_9
    const/16 v10, 0xf

    #@15b
    goto/16 :goto_0

    #@15d
    .line 662
    .end local v10    # "strength":I
    :cond_a
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    #@15f
    .line 663
    const-string/jumbo v13, "locale keyword kb/colBackwards only settable for RuleBasedCollator"

    #@162
    .line 662
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@165
    throw v12

    #@166
    .line 671
    :cond_b
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    #@168
    .line 672
    const-string/jumbo v13, "locale keyword kb/colBackwards only settable for RuleBasedCollator"

    #@16b
    .line 671
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@16e
    throw v12

    #@16f
    .line 682
    .restart local v2    # "cf":I
    :cond_c
    const/4 v12, 0x1

    #@170
    if-ne v2, v12, :cond_d

    #@172
    .line 683
    const/4 v12, 0x1

    #@173
    move-object/from16 v0, p2

    #@175
    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    #@178
    goto/16 :goto_1

    #@17a
    .line 685
    :cond_d
    const/4 v12, 0x1

    #@17b
    move-object/from16 v0, p2

    #@17d
    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    #@180
    goto/16 :goto_1

    #@182
    .line 688
    .end local v2    # "cf":I
    :cond_e
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    #@184
    .line 689
    const-string/jumbo v13, "locale keyword kf/colCaseFirst only settable for RuleBasedCollator"

    #@187
    .line 688
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@18a
    throw v12

    #@18b
    .line 696
    :cond_f
    const/4 v12, 0x0

    #@18c
    goto/16 :goto_2

    #@18e
    .line 698
    :cond_10
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    #@190
    .line 699
    const-string/jumbo v13, "locale keyword ka/colAlternate only settable for RuleBasedCollator"

    #@193
    .line 698
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@196
    throw v12

    #@197
    .line 705
    :cond_11
    const/16 v12, 0x10

    #@199
    goto/16 :goto_3

    #@19b
    .line 712
    :cond_12
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    #@19d
    .line 713
    const-string/jumbo v13, "locale keyword kn/colNumeric only settable for RuleBasedCollator"

    #@1a0
    .line 712
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1a3
    throw v12

    #@1a4
    .line 726
    .restart local v4    # "codes":[I
    .restart local v5    # "codesLength":I
    .restart local v9    # "scriptNameStart":I
    :cond_13
    move v7, v9

    #@1a5
    .line 727
    .local v7, "limit":I
    :goto_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@1a8
    move-result v12

    #@1a9
    if-ge v7, v12, :cond_14

    #@1ab
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    #@1ae
    move-result v12

    #@1af
    const/16 v13, 0x2d

    #@1b1
    if-eq v12, v13, :cond_14

    #@1b3
    add-int/lit8 v7, v7, 0x1

    #@1b5
    goto :goto_5

    #@1b6
    .line 728
    :cond_14
    invoke-virtual {v11, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b9
    move-result-object v8

    #@1ba
    .line 730
    .local v8, "scriptName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@1bd
    move-result v12

    #@1be
    const/4 v13, 0x4

    #@1bf
    if-ne v12, v13, :cond_15

    #@1c1
    .line 732
    const/16 v12, 0x100a

    #@1c3
    invoke-static {v12, v8}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    #@1c6
    move-result v3

    #@1c7
    .line 736
    .local v3, "code":I
    :goto_6
    add-int/lit8 v6, v5, 0x1

    #@1c9
    .end local v5    # "codesLength":I
    .local v6, "codesLength":I
    aput v3, v4, v5

    #@1cb
    .line 737
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@1ce
    move-result v12

    #@1cf
    if-ne v7, v12, :cond_16

    #@1d1
    .line 740
    if-nez v6, :cond_17

    #@1d3
    .line 741
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@1d5
    const-string/jumbo v13, "no script codes for colReorder locale keyword"

    #@1d8
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1db
    throw v12

    #@1dc
    .line 734
    .end local v3    # "code":I
    .end local v6    # "codesLength":I
    .restart local v5    # "codesLength":I
    :cond_15
    const-string/jumbo v12, "colReorder"

    #@1df
    invoke-static {v12, v8}, Landroid/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    #@1e2
    move-result v3

    #@1e3
    .restart local v3    # "code":I
    goto :goto_6

    #@1e4
    .line 738
    .end local v5    # "codesLength":I
    .restart local v6    # "codesLength":I
    :cond_16
    add-int/lit8 v9, v7, 0x1

    #@1e6
    move v5, v6

    #@1e7
    .end local v6    # "codesLength":I
    .restart local v5    # "codesLength":I
    goto/16 :goto_4

    #@1e9
    .line 743
    .end local v5    # "codesLength":I
    .restart local v6    # "codesLength":I
    :cond_17
    new-array v1, v6, [I

    #@1eb
    .line 744
    .local v1, "args":[I
    const/4 v12, 0x0

    #@1ec
    const/4 v13, 0x0

    #@1ed
    invoke-static {v4, v12, v1, v13, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@1f0
    .line 745
    move-object/from16 v0, p1

    #@1f2
    invoke-virtual {v0, v1}, Landroid/icu/text/Collator;->setReorderCodes([I)V

    #@1f5
    .line 747
    .end local v1    # "args":[I
    .end local v3    # "code":I
    .end local v4    # "codes":[I
    .end local v6    # "codesLength":I
    .end local v7    # "limit":I
    .end local v8    # "scriptName":Ljava/lang/String;
    .end local v9    # "scriptNameStart":I
    :cond_18
    const-string/jumbo v12, "kv"

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@1fd
    move-result-object v11

    #@1fe
    .line 748
    if-eqz v11, :cond_19

    #@200
    .line 749
    const-string/jumbo v12, "kv"

    #@203
    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    #@206
    move-result v12

    #@207
    move-object/from16 v0, p1

    #@209
    invoke-virtual {v0, v12}, Landroid/icu/text/Collator;->setMaxVariable(I)Landroid/icu/text/Collator;

    #@20c
    .line 638
    :cond_19
    return-void
.end method

.method public static final unregister(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "registryKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 851
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 852
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 854
    :cond_0
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    #@8
    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->unregister(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 443
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/Collator;
    .locals 2

    #@0
    .prologue
    .line 1389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Needs to be implemented by the subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1388
    invoke-virtual {p0}, Landroid/icu/text/Collator;->cloneAsThawed()Landroid/icu/text/Collator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1180
    check-cast p1, Ljava/lang/CharSequence;

    #@2
    .end local p1    # "source":Ljava/lang/Object;
    check-cast p2, Ljava/lang/CharSequence;

    #@4
    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1193
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 300
    if-eq p0, p1, :cond_0

    #@4
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/icu/text/Collator;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v3

    #@e
    if-ne v2, v3, :cond_1

    #@10
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1135
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public freeze()Landroid/icu/text/Collator;
    .locals 2

    #@0
    .prologue
    .line 1382
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Needs to be implemented by the subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1381
    invoke-virtual {p0}, Landroid/icu/text/Collator;->freeze()Landroid/icu/text/Collator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;
.end method

.method public getDecomposition()I
    .locals 1

    #@0
    .prologue
    .line 1118
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    #@0
    .prologue
    .line 1431
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getMaxVariable()I
    .locals 1

    #@0
    .prologue
    .line 1263
    const/16 v0, 0x1001

    #@2
    return v0
.end method

.method public abstract getRawCollationKey(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)Landroid/icu/text/RawCollationKey;
.end method

.method public getReorderCodes()[I
    .locals 2

    #@0
    .prologue
    .line 1343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Needs to be implemented by the subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getStrength()I
    .locals 1

    #@0
    .prologue
    .line 1100
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getTailoredSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    #@0
    .prologue
    .line 1147
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    const/4 v1, 0x0

    #@3
    const v2, 0x10ffff

    #@6
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@9
    return-object v0
.end method

.method public abstract getUCAVersion()Landroid/icu/util/VersionInfo;
.end method

.method public abstract getVariableTop()I
.end method

.method public abstract getVersion()Landroid/icu/util/VersionInfo;
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 1374
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setDecomposition(I)V
    .locals 0
    .param p1, "decomposition"    # I

    #@0
    .prologue
    .line 375
    invoke-direct {p0}, Landroid/icu/text/Collator;->checkNotFrozen()V

    #@3
    .line 373
    return-void
.end method

.method setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1453
    return-void
.end method

.method public setMaxVariable(I)Landroid/icu/text/Collator;
    .locals 2
    .param p1, "group"    # I

    #@0
    .prologue
    .line 1251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Needs to be implemented by the subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public varargs setReorderCodes([I)V
    .locals 2
    .param p1, "order"    # [I

    #@0
    .prologue
    .line 418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Needs to be implemented by the subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setStrength(I)V
    .locals 0
    .param p1, "newStrength"    # I

    #@0
    .prologue
    .line 330
    invoke-direct {p0}, Landroid/icu/text/Collator;->checkNotFrozen()V

    #@3
    .line 328
    return-void
.end method

.method public setStrength2(I)Landroid/icu/text/Collator;
    .locals 0
    .param p1, "newStrength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 342
    invoke-virtual {p0, p1}, Landroid/icu/text/Collator;->setStrength(I)V

    #@3
    .line 343
    return-object p0
.end method

.method public abstract setVariableTop(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVariableTop(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
